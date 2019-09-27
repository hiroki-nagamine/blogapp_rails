# 10人の会員を作成するコード
  names = %w(Taro Jiro Hana Patrick Paul John Ansony Chad Josh flea)
  fnames = ["佐藤","鈴木","高橋","田中"]
  gnames = ["太郎","次郎","花子"]
  0.upto(9) do |idx|
    Member.create(
      number: idx + 10,
      name: names[idx],
      full_name: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
      email: "#{names[idx]}@example.com",
      birthday: "1981-12-01",
      sex: [1, 1, 2][idx % 3],
      administrator: (idx == 0),
      password: "asagao!",
      password_confirmation: "asagao!"
    )
  end

  0.upto(29) do |idx| #10回繰り返す
    Member.create(
      number: idx + 20,
      name: "John#{idx + 1}",
      full_name: "John Doe#{idx + 1}",
      email: "John#{idx+1}@example.com",
      birthday: "1981-12-01",
      sex: 1,
      administrator: false,
      password: "password",
      password_confirmation: "password"
    )
    end
