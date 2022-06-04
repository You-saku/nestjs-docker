// バリデーション導入
import { IsEmail, IsNotEmpty, IsString} from 'class-validator';
export class CreateUserDto {
    @IsEmail()
    @IsNotEmpty()
    email: string;

    @IsString({message: "名前は文字列でお願いします。"},) //カスタムメッセージ
    name: string;
}
