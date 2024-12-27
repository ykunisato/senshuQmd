library(hexSticker)
library(tidyverse)

set.seed(1234)
# データ生成関数（y軸の範囲を拡大）
create_sigmoid_data <- function(shift = 0, scale = 1) {
  x <- seq(-2, 2, length.out = 200)  # x軸の範囲を狭く
  y <- 2 * (1 / (1 + exp(-scale * (x - shift)))) - 1  # y軸の範囲を-1から1に
  data.frame(x = x, y = y)
}

# 5本のS字カーブを生成
curves_data <- bind_rows(
  create_sigmoid_data(shift = -0.6, scale = 2.0) %>% mutate(curve = "1"),
  create_sigmoid_data(shift = -0.3, scale = 1.8) %>% mutate(curve = "2"),
  create_sigmoid_data(shift = 0.0, scale = 1.6) %>% mutate(curve = "3"),
  create_sigmoid_data(shift = 0.3, scale = 1.4) %>% mutate(curve = "4"),
  create_sigmoid_data(shift = 0.6, scale = 1.2) %>% mutate(curve = "5")
)

# 緑色のグラデーション
green_palette <- c(
  "#004D40", # Teal Dark
  "#00796B", # Teal
  "#009688", # Teal Light
  "#4DB6AC", # Teal Lighter
  "#B2DFDB"  # Teal Lightest
)

# プロット作成
p <- ggplot(curves_data, aes(x = x, y = y, color = curve, group = curve)) +
  geom_line(size = 1.5, alpha = 0.8) +
  scale_color_manual(values = green_palette) +
  theme_void() +
  theme(
    legend.position = "none",
    plot.background = element_rect(fill = "#C0CDDC", color = NA),
    panel.background = element_rect(fill = "#C0CDDC", color = NA)
  ) +
  coord_fixed(ratio = 1.1) 

# make sticker
sticker(p, package="senshuQmd", 
        p_size = 45, p_family = "sans",
        s_x = 1, s_y = 0.8, s_width = 1.5, s_height = 5.5,
        h_fill = "#C0CDDC",h_color = "#00487C",
        filename="style-guide/senshuQmd.png",dpi = 600)
