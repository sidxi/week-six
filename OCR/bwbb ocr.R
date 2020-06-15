library(magick)
library(magrittr)
library(tesseract)
text <- image_read("bwbb5July1992_Page_1_Image_0001.png") %>%
  image_resize("2000") %>%
  image_convert(colorspace = 'gray') %>%
  image_trim() %>%
  image_ocr()
write.table(text, "output.txt")

text <- image_read("bwbb5July1992_Page_2_Image_0001.png") %>%
  image_resize("2000") %>%
  image_convert(colorspace = 'gray') %>%
  image_trim() %>%
  image_ocr()
write.table(text, "bwbb5July1992.2.txt")
