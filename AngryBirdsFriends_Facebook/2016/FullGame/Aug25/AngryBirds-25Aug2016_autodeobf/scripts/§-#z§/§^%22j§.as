package §-#z§
{
   import §'!?§.§`!'§;
   import §'!?§.§with§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §^"j§ implements §[@§
   {
       
      
      private var §^$#§:Dictionary;
      
      private var §17§:int;
      
      public function §^"j§()
      {
         this.§^$#§ = new Dictionary(true);
         super();
      }
      
      public final function §#b§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:§`!'§ = null;
         var _loc5_:§with§ = null;
         if(this.§^$#§[param2] == null)
         {
            if(param3)
            {
               param1 = this.§1$8§(param1);
            }
            (_loc4_ = new §`!'§()).loadBytes(param1);
            _loc5_ = _loc4_.§4!!§(0);
            this.§^$#§[param2] = _loc5_.§-!t§(false);
            this.onLevelLoaded(param2);
         }
      }
      
      public function dispose() : void
      {
         this.§[#-§();
      }
      
      public function §-!o§(param1:String) : String
      {
         return this.§^$#§[param1];
      }
      
      protected function onLevelLoaded(param1:String) : void
      {
      }
      
      private function §1$8§(param1:ByteArray) : ByteArray
      {
         var i:int = 0;
         var bytes:ByteArray = param1;
         this.§17§ = 56895 & 25147 >> 1;
         i = Math.min(bytes.length,65536) - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§>g§() * 255);
            i -= 2;
         }
         i = bytes.length - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§>g§() * 255);
            i -= int(this.§>g§() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         i = bytes.length - 1;
         while(i >= startByte)
         {
            bytes[i] -= int(this.§>g§() * 255);
            i -= 2;
         }
         try
         {
            bytes.inflate();
            return bytes;
         }
         catch(e:Error)
         {
            throw new Error("Error uncompressing level, " + e.toString(),e.errorID);
         }
      }
      
      private function §>g§() : Number
      {
         this.§17§ ^= this.§17§ << 21;
         this.§17§ ^= this.§17§ >>> 35;
         this.§17§ ^= this.§17§ << 4;
         if(this.§17§ < 0)
         {
            this.§17§ &= 2147483647;
         }
         return this.§17§ / 2147483647;
      }
      
      private function §[#-§() : void
      {
         this.§^$#§ = null;
      }
   }
}
