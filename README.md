# README

# アプリケーション名  

TimePlan 

# アプリケーション概要	

予定を登録し登録した予定の一覧を表示します。自身が登録した予定は、編集・削除することが出来ます。

# URL

Herokuによるデプロイ

https://timeplan-0514.herokuapp.com/

# テスト用アカウント

ゲストログインをお使いください。

# 利用方法  

1.アプリにログインしてください。アカウントをお持ちでない場合は、新規登録を行いアカウントを作成してください。

2.予定を追加します。タイトル、内容、時間を入力し登録してください。（内容の入力は任意）

3.登録した予定をクリックすると予定の詳細を見ることが出来ます。詳細ページには編集ボタンと削除ボタンがあり、予定の編集と削除を行えます。

4,Todayボタンをクリックすると今日の予定の一覧を表示します。

5.ログアウトボタンでログアウトを行えます。

# アプリケーションを作成した背景

社会人、主婦、学生などの予定が多い方のタスク管理を行い、やるべきことを明確化するためにこのアプリケーションを作成しました。

# 洗い出した要件  

↓要件定義をまとめたスプレッドシート↓

https://docs.google.com/spreadsheets/d/1kojqVt-u0HomASj4gK248UVPuycxRp1Tr6TbNO3xBX0/edit#gid=982722306

# 実装機能 

<h2>1.ユーザー登録機能</h2>

名前、メールアドレス、パスワードを入力することでユーザーを作成することが出来ます。
[![Image from Gyazo](https://i.gyazo.com/c2755a13a23076f27e0e8d688252f07f.jpg)](https://gyazo.com/c2755a13a23076f27e0e8d688252f07f)

<h2>2.予定追加機能</h2>

タイトル、内容、日時を入力し、登録ボタンを押すと予定を登録することが出来ます。（内容は、入力しなくても登録可能です）
[![Image from Gyazo](https://i.gyazo.com/770dee404ceabcdc76d3cee6ceacd9b7.gif)](https://gyazo.com/770dee404ceabcdc76d3cee6ceacd9b7)  

<h2>3.予定詳細機能</h2>  

タイトルをクリックすると予定詳細ページに遷移でき、予定の詳細を確認することが出来ます。
[![Image from Gyazo](https://i.gyazo.com/73ed830052ab6eb4981f733f96e75930.gif)](https://gyazo.com/73ed830052ab6eb4981f733f96e75930)  

<h2>4.予定編集機能</h2>  

詳細ページの編集ボタンをクリックすることで、編集ページに遷移することが出来ます。タイトル、内容、日時を編集することが出来ます。
[![Image from Gyazo](https://i.gyazo.com/9854a0a101069ee4ad4124e729aa2e00.gif)](https://gyazo.com/9854a0a101069ee4ad4124e729aa2e00)

<h2>5.予定削除機能</h2>  

詳細ページの削除ボタンをクリックすると、「本当に？」という最終確認が表示されます。最終確認のOKボタンをクリックすると予定が削除されます。
[![Image from Gyazo](https://i.gyazo.com/224b20cbe5c0eea4b5d300304fc4757b.gif)](https://gyazo.com/224b20cbe5c0eea4b5d300304fc4757b)  

<h2>6.Today機能</h2>  

今日登録されている予定の一覧を表示します。
[![Image from Gyazo](https://i.gyazo.com/f26fa04192c283676bf2895b4928908f.gif)](https://gyazo.com/f26fa04192c283676bf2895b4928908f)

# 実装予定の機能

1.今日の予定を表示するページに天気予報API,ニュースAPIを実装したいと考えています。今日の予定を確認するついでに天気予報、ニュースも一緒に見ることが出来たならとても便利だからです。

2.カレンダー共有機能を実装したいと考えています。会社のメンバー、友達同士などで共有しチーム内で予定を確認する事で効率が上がると思います。

# データベース設計  

[![Image from Gyazo](https://i.gyazo.com/a4de1f9d49891a11af00003f2d48244c.png)](https://gyazo.com/a4de1f9d49891a11af00003f2d48244c)

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/08e4e03d2b244c5e0acfeb4931ed304d.png)](https://gyazo.com/08e4e03d2b244c5e0acfeb4931ed304d)