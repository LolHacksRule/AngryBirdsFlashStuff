package com.rovio.adobe.crypto
{
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import flash.utils.describeType;
   
   public class HMAC
   {
       
      
      public function HMAC()
      {
         super();
      }
      
      public static function hash(secret:String, message:String, algorithm:Object = null) : String
      {
         var text:ByteArray = new ByteArray();
         var k_secret:ByteArray = new ByteArray();
         text.writeUTFBytes(message);
         k_secret.writeUTFBytes(secret);
         return hashBytes(k_secret,text,algorithm);
      }
      
      public static function hashBytes(secret:ByteArray, message:ByteArray, algorithm:Object = null) : String
      {
         var byte:int = 0;
         var ipad:ByteArray = new ByteArray();
         var opad:ByteArray = new ByteArray();
         var endian:String = Endian.BIG_ENDIAN;
         if(algorithm == null)
         {
            algorithm = MD5;
         }
         if(describeType(algorithm).@name.toString() == "com.adobe.crypto::MD5")
         {
            endian = Endian.LITTLE_ENDIAN;
         }
         if(secret.length > 64)
         {
            algorithm.hashBytes(secret);
            secret = new ByteArray();
            secret.endian = endian;
            while(algorithm.digest.bytesAvailable != 0)
            {
               secret.writeInt(algorithm.digest.readInt());
            }
         }
         secret.length = 64;
         secret.position = 0;
         for(var x:int = 0; x < 64; x++)
         {
            byte = secret.readByte();
            ipad.writeByte(54 ^ byte);
            opad.writeByte(92 ^ byte);
         }
         ipad.writeBytes(message);
         algorithm.hashBytes(ipad);
         var tmp:ByteArray = new ByteArray();
         tmp.endian = endian;
         while(algorithm.digest.bytesAvailable != 0)
         {
            tmp.writeInt(algorithm.digest.readInt());
         }
         tmp.position = 0;
         while(tmp.bytesAvailable != 0)
         {
            opad.writeByte(tmp.readUnsignedByte());
         }
         return algorithm.hashBytes(opad);
      }
   }
}
