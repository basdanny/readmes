#!/bin/sh
exec scala "$0" "$@"
!#


import java.awt.image.BufferedImage
import java.io.File
import java.nio.file.Paths

import javax.imageio.stream.FileImageOutputStream
import javax.imageio.{IIOImage, ImageIO, ImageWriteParam, ImageWriter}

object ImageTest extends App {

  val imagePath  = args(0)
  println(imagePath)

  // Target max size
  val ImageMaxWidth = 1920
  val ImageMaxHeight = 1080

  // Load image from disk
  val originalImage: BufferedImage = ImageIO.read(new File(imagePath))

  // resize
  val (newImageWidth, newImageHeight) = getNewScaleSize()
  val resizedImage = new BufferedImage(newImageWidth, newImageHeight, BufferedImage.TYPE_INT_RGB)
  val g = resizedImage.getGraphics
  g.drawImage(originalImage, 0, 0, newImageWidth, newImageHeight, null)
  g.dispose()

  //reduce quality
  val iterator = ImageIO.getImageWritersByFormatName("jpeg")
  val imageWriter = iterator.next()
  val imageWriteParam = imageWriter.getDefaultWriteParam()
  imageWriteParam.setCompressionMode(ImageWriteParam.MODE_EXPLICIT)
  imageWriteParam.setCompressionQuality(0.85f)


  val fileOutput = new File(getOutputPath)
  if (fileOutput.exists) fileOutput.delete
  val output = new FileImageOutputStream(fileOutput)
  imageWriter.setOutput(output)

  val image = new IIOImage(resizedImage, null, null)
  imageWriter.write(null, image, imageWriteParam)
  imageWriter.dispose()


  def getNewScaleSize() = {
    var imageHeight = originalImage.getHeight.toDouble
    var imageWidth = originalImage.getWidth.toDouble
    if (imageWidth > ImageMaxWidth) {
      val ratio = ImageMaxWidth / imageWidth
      imageWidth = ImageMaxWidth
      imageHeight *= ratio
    }
    if (imageHeight > ImageMaxHeight) {
      val ratio = ImageMaxHeight / imageHeight
      imageHeight = ImageMaxHeight
      imageWidth *= ratio
    }
    (imageWidth.toInt, imageHeight.toInt)
  }

  def getOutputPath = {
    val path = Paths.get(imagePath)
    Paths.get(path.getParent.toString, "_" + path.getFileName.toString).toString
  }
}
