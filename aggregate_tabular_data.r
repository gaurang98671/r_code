df <- data.frame(
  id = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15),
  empname = c("Giyu Tomioka", "Mitsuri Kanroji", "Obanai Iguro", "Sanemi Shinazugawa", "Gyomei Himejima", 
              "Muichiro Tokito", "Shinobu Kocho", "Kyojuro Rengoku", "Tengen Uzui", "Kanao Tsuyuri", 
              "Tanjiro Kamado", "Zenitsu Agatsuma", "Inosuke Hashibira", "Aoi Kanzaki", "Nezuko Kamado"),
  address = c("Vashi", "Thane", "Vashi", "Airoli", "Rabale", "Kurla", "Vashi", "Thane", "Vashi", "Airoli", 
              "Rabale", "Kurla", "Rabale", "Kurla", "Vashi"),
  sal = c(100,100,150,100,120,150,150,100,120,150,150,150,100,100,120),
  dept = c("IT", "Sales", "IT", "IT", "Sales","Sales", "IT", "IT", "Sales","Sales", "IT", "IT", "Sales",
           "Sales", "IT"),
  stringsAsFactors = FALSE
)
sum1 = aggregate(df[4],by=list(df$dept),FUN=sum, na.rm=TRUE)
print("Sum")
print(sum1)
min1 = aggregate(df[4],by=list(df$dept),FUN=min, na.rm=TRUE)
print("Min")
print(min1)
max1 = aggregate(df[4],by=list(df$dept),FUN=max, na.rm=TRUE)
print("Max")
print(max1)
mean1 = aggregate(df[4],by=list(df$dept),FUN=mean, na.rm=TRUE)
print("Mean")
print(mean1)
