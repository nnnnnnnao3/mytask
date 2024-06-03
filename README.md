# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| profile  | text   |             |
| birthday | date   |             |

### Association

- has_many :tasks

## tasks テーブル

| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| task_title | string     | null: false |
| user       | references | null: false |

### Association

- belongs_to :user
- has_many :task_items

## task_items テーブル

| Column    | Type       | Options        |
| --------- | ---------- | -------------- |
| task      | references | null: false    |
| completed | boolean    | default: false |
| task_text | string     |                |
| memo      | text       |                |
| due_date  | date       |                |

### Association

- belongs_to :task
