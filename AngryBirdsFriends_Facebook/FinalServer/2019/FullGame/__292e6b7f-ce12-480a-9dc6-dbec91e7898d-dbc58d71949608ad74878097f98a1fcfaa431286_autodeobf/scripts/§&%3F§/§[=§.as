package §&?§
{
   import §`!P§.§%#D§;
   import §`!P§.§+#u§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §[=§ implements §]#N§
   {
       
      
      private var §"!z§:Dictionary;
      
      private var §6!!§:int;
      
      public function §[=§()
      {
         this.§"!z§ = new Dictionary(true);
         super();
      }
      
      public final function get(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:§%#D§ = null;
         var _loc5_:§+#u§ = null;
         if(this.§"!z§[param2] == null)
         {
            if(param3)
            {
               param1 = this.§?&§(param1);
            }
            (_loc4_ = new §%#D§()).loadBytes(param1);
            _loc5_ = _loc4_.§""T§(0);
            this.§"!z§[param2] = _loc5_.§>!s§(false);
            this.onLevelLoaded(param2);
         }
      }
      
      public function dispose() : void
      {
         this.§<"5§();
      }
      
      public function §^!W§(param1:String) : String
      {
         return this.§"!z§[param1];
      }
      
      protected function onLevelLoaded(param1:String) : void
      {
      }
      
      private function §?&§(param1:ByteArray) : ByteArray
      {
         var i:int = 0;
         var bytes:ByteArray = param1;
         this.§6!!§ = 56895 & 25147 >> 1;
         i = Math.min(bytes.length,65536) - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§6"N§() * 255);
            i -= 2;
         }
         i = bytes.length - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§6"N§() * 255);
            i -= int(this.§6"N§() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         i = bytes.length - 1;
         while(i >= startByte)
         {
            bytes[i] -= int(this.§6"N§() * 255);
            i -= 2;
         }
         try
         {
            bytes.inflate();
         }
         catch(e:Error)
         {
            throw new Error("Error uncompressing level, " + e.toString(),e.errorID);
         }
         return bytes;
      }
      
      private function §6"N§() : Number
      {
         this.§6!!§ ^= this.§6!!§ << 21;
         this.§6!!§ ^= this.§6!!§ >>> 35;
         this.§6!!§ ^= this.§6!!§ << 4;
         if(this.§6!!§ < 0)
         {
            this.§6!!§ &= 2147483647;
         }
         return this.§6!!§ / 2147483647;
      }
      
      private function §<"5§() : void
      {
         this.§"!z§ = null;
      }
   }
}
