package §2!#§
{
   import flash.utils.ByteArray;
   
   public class ChecksumUtil
   {
      
      private static var crcTable:Array = §`!^§();
       
      
      public function ChecksumUtil()
      {
         super();
      }
      
      private static function §`!^§() : Array
      {
         var i:uint = 0;
         var j:uint = 0;
         var c:uint = 0;
         var table:Array = [];
         for(i = 0; i < 256; i++)
         {
            c = i;
            for(j = 0; j < 8; j++)
            {
               if(c & 1)
               {
                  c = 3988292384 ^ c >>> 1;
               }
               else
               {
                  c >>>= 1;
               }
            }
            table.push(c);
         }
         return table;
      }
      
      public static function §?p§(data:ByteArray, start:uint = 0, len:uint = 0) : uint
      {
         var i:uint = 0;
         if(start >= data.length)
         {
            start = data.length;
         }
         if(len == 0)
         {
            len = data.length - start;
         }
         if(len + start > data.length)
         {
            len = data.length - start;
         }
         var c:uint = 4294967295;
         for(i = start; i < len; i++)
         {
            c = uint(crcTable[(c ^ data[i]) & 255]) ^ c >>> 8;
         }
         return c ^ 4294967295;
      }
      
      public static function §[2§(data:ByteArray, start:uint = 0, len:uint = 0) : uint
      {
         if(start >= data.length)
         {
            start = data.length;
         }
         if(len == 0)
         {
            len = data.length - start;
         }
         if(len + start > data.length)
         {
            len = data.length - start;
         }
         var i:uint = start;
         var a:uint = 1;
         for(var b:uint = 0; i < start + len; )
         {
            a = (a + data[i]) % 65521;
            b = (a + b) % 65521;
            i++;
         }
         return b << 16 | a;
      }
   }
}
