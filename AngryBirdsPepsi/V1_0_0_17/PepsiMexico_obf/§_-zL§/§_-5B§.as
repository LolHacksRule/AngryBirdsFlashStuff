package §_-zL§
{
   public class §_-5B§
   {
      
      public static var §_-X8§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-X8§ = {
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
         }
      }
      
      public function §_-5B§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §_-rm§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§_-X8§[param1])
            {
               if(!(_loc2_ && §_-5B§))
               {
                  return §_-X8§[param1];
               }
            }
         }
         return §_-X8§.UNEXPECTED_ERROR;
      }
      
      public static function §_-ns§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1;
         if(!(_loc4_ && _loc3_))
         {
            if("nickName" === _loc2_)
            {
               if(!_loc4_)
               {
                  §§push(0);
                  if(!_loc3_)
                  {
                     addr113:
                  }
               }
               else
               {
                  addr86:
                  §§push(1);
                  if(_loc4_ && _loc2_)
                  {
                  }
               }
            }
            else if("password" === _loc2_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§goto(addr86);
               }
               else
               {
                  addr105:
                  §§push(2);
                  if(_loc3_ || param1)
                  {
                     §§goto(addr113);
                  }
                  else
                  {
                     addr127:
                  }
               }
            }
            else
            {
               if("id" === _loc2_)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     §§goto(addr105);
                  }
                  addr132:
                  switch(§§pop())
                  {
                     case 0:
                        return "Apodo ";
                     case 1:
                        return "Contraseña ";
                     case 2:
                        return "Email ";
                     case 3:
                        return "Edad ";
                     default:
                        return "";
                  }
               }
               else
               {
                  if("age" !== _loc2_)
                  {
                     §§goto(addr132);
                     §§push(4);
                  }
                  §§goto(addr132);
               }
               §§push(3);
               if(!_loc4_)
               {
                  §§goto(addr127);
               }
            }
            §§goto(addr132);
         }
         §§goto(addr86);
      }
   }
}
