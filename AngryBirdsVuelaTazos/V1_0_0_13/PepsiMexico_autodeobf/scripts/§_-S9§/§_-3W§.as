package §_-S9§
{
   public class §_-3W§
   {
      
      public static var §_-f7§:Object = {
         "CODE_NOT_EXIST":"El código no existe",
         "CODE_ASSIGNED":"El código ya ha sido utilizado",
         "CODE_COMPETITION_NOT_STARTED":"La competencia no ha comenzado",
         "UNEXPECTED_ERROR":"Información no válida",
         "PLAYER_ID_USED":"Email usado por otro usuario",
         "PLAYER_REQUIRED":"Email y contraseña son obligatorios",
         "PLAYER_INVALID":"Usuario inválido",
         "PLAYER_INVALID_LOGIN":"Información de acceso no válida",
         "PLAYER_INVALID_LEVEL_PROFILE":"Invalid level profile",
         "PLAYER_BANNED":"Usuario temporalmente deshabilitado",
         "FIELD_NOT_VALID":"no válido",
         "FIELD_OBLIGATORY":"es obligatorio",
         "FIELD_LENGTH":"excede la longitud máxima",
         "AGE_REQUIRED":"Edad es obligatorio",
         "NICKNAME_LENGTH":"Apodo debe tener mas de 5 caracteres",
         "PASSWORD_LENGTH":"Contraseña debe tener mas de 5 caracteres",
         "EMAIL_REQUIRED":"Email es obligatorio",
         "EMAIL_INVALID":"Email no tiene un formato válido",
         "PASSWORDS_DONT_MATCH":"Contraseña no válida",
         "CONNECTION_ERROR_RETRY":"Error de conexión, por favor inténtelo de nuevo",
         "EMAIL_MISSING":"Email es obligatorio",
         "EMAIL_LOWERCASE":"Email no tiene un formato válido (utilice letras minúsculas)",
         "PASSWORD_MISSING":"Contraseña es obligatoria",
         "AGE_UNDER_13":"La edad mínima permitida es 13 años"
      };
       
      
      public function §_-3W§()
      {
         super();
      }
      
      public static function §_-kZ§(param1:String) : String
      {
         if(§_-f7§[param1])
         {
            return §_-f7§[param1];
         }
         return §_-f7§.UNEXPECTED_ERROR;
      }
      
      public static function §_-Zu§(param1:String) : String
      {
         switch(param1)
         {
            case "nickName":
               return "Apodo ";
            case "password":
               return "Contraseña ";
            case "id":
               return "Email ";
            case "age":
               return "Edad ";
            default:
               return "";
         }
      }
   }
}
