package com.hurlant.crypto
{
   import com.hurlant.crypto.symmetric.AESKey;
   import com.hurlant.crypto.symmetric.CBCMode;
   import com.hurlant.crypto.symmetric.ICipher;
   import com.hurlant.crypto.symmetric.IPad;
   import flash.utils.ByteArray;
   
   public class Crypto
   {
       
      
      public function Crypto()
      {
         super();
      }
      
      public static function getCipher(param1:String, param2:ByteArray, param3:IPad = null) : ICipher
      {
         var _loc4_:Array = param1.split("-");
         switch(_loc4_[0])
         {
            case "aes":
            case "aes128":
            case "aes192":
            case "aes256":
               _loc4_.shift();
               if(param2.length * 8 == _loc4_[0])
               {
                  _loc4_.shift();
               }
               return new CBCMode(new AESKey(param2),param3);
            default:
               return null;
         }
      }
      
      public static function getKeySize(param1:String) : uint
      {
         var _loc2_:Array = param1.split("-");
         switch(_loc2_[0])
         {
            case "aes128":
               return 16;
            case "aes192":
               return 24;
            case "aes256":
               return 32;
            case "aes":
               _loc2_.shift();
               return parseInt(_loc2_[0]) / 8;
            default:
               return 0;
         }
      }
   }
}
