import pandas as pd
path = input("Path:")
path_input = path + "\\LuocdoQuanhe.xlsx"
# print(path_output)
# read file
with pd.ExcelFile(path_input) as excel:
	cap = pd.read_excel(excel,"CAP",header = None)
	loai_truong = pd.read_excel(excel,"LOAITRUONG",header = None)
	loai_hinh = pd.read_excel(excel,"LOAIHINH",header = None)
	so_gd = pd.read_excel(excel,"SOGD",header = None)
	phong_gd = pd.read_excel(excel,"PHONGGD",header = None)
	ds_truong = pd.read_excel(excel,"DSTRUONG",header = None)

# insert data into CAP
path_cap = path + "\\cap.sql"
print(path_cap)
file_sql = open(path_cap, mode = 'w', encoding = "utf-8-sig")
file_sql.write("use truonghoc\n")
for i in range(1,cap.shape[0]):
	row = cap.iloc[i]
	for i in range(len(row)):
		if row[i] == "nan":
			row[i] = "NULL"
		else:
			row[i] = ("N\'" + row[i].strip() + "\'")
	file_sql.write("INSERT INTO CAP VALUE({0},{1});\n".format(row[0],row[1]))


# insert data into LOAITRUONG
path_lt = path + "\\loaitruong.sql"
print(path_lt)
file_sql = open(path_lt, mode = 'w', encoding = "utf-8-sig")
file_sql.write("use truonghoc\n")
for i in range(1,loai_truong.shape[0]):
	row = loai_truong.iloc[i]
	for i in range(len(row)):
		if row[i] == "nan":
			row[i] = "NULL"
		else:
			row[i] = ("N\'" + row[i].strip() + "\'")
	file_sql.write("INSERT INTO LOAITRUONG VALUE({0},{1});\n".format(row[0],row[1]))


# insert data into LOAIHINH
path_lh = path + "\\loaihinh.sql"
print(path_lh)
file_sql = open(path_lh, mode = 'w', encoding = "utf-8-sig")
file_sql.write("use truonghoc\n")
for i in range(1,loai_hinh.shape[0]):
	row = loai_hinh.iloc[i]
	for i in range(len(row)):
		if row[i] == "nan":
			row[i] = "NULL"
		else:
			row[i] = ("N\'" + row[i].strip() + "\'")
	file_sql.write("INSERT INTO LOAIHINH VALUE({0},{1});\n".format(row[0],row[1]))


# insert data into SOGD
path_sgd = path + "\\sogd.sql"
print(path_sgd)
file_sql = open(path_sgd, mode = 'w', encoding = "utf-8-sig")
file_sql.write("use truonghoc\n")
for i in range(1,so_gd.shape[0]):
	row = so_gd.iloc[i]
	for i in range(len(row)):
		if row[i] == "nan":
			row[i] = "NULL"
		else:
			row[i] = ("N\'" + row[i].strip() + "\'")
	file_sql.write("INSERT INTO SOGD VALUE({0},{1});\n".format(row[0],row[1]))

# insert data into PHONGGD
path_pgd = path + "\\phonggd.sql"
print(path_pgd)
file_sql = open(path_pgd, mode = 'w', encoding = "utf-8-sig")
file_sql.write("use truonghoc\n")
for i in range(1,phong_gd.shape[0]):
	row = phong_gd.iloc[i]
	for i in range(len(row)):
		if row[i] == "nan":
			row[i] = "NULL"
		else:
			row[i] = ("N\'" + row[i].strip() + "\'")
	file_sql.write("INSERT INTO PHONGGD VALUE({0},{1},{2});\n".format(row[0],row[1],row[2]))

# insert data into DSTRUONG
path_dstrg = path + "\\dstruong.sql"
print(path_dstrg)
file_sql = open(path_dstrg, mode = 'w', encoding = "utf-8-sig")
file_sql.write("use truonghoc\n")
for i in range(1,ds_truong.shape[0]):
	row = ds_truong.iloc[i]
	for i in range(len(row)):
		row[i] = str(row[i])
		if row[i] == "nan":
			row[i] = "NULL"
		else:
			row[i] = ("N\'" + row[i].strip() + "\'")
	file_sql.write("INSERT INTO DSTRUONG VALUE({0},{1},{2},{3},{4},{5},{6},{7});\n".format(row[0],row[1],row[2],row[3],row[4],row[5],row[6],row[7]))