package §>#G§
{
   import §9!N§.§1" §;
   import §9!N§.§["]§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §=a§ implements §!#R§
   {
       
      
      private var §]!$§:Dictionary;
      
      private var §;f§:int;
      
      public function §=a§()
      {
         this.§]!$§ = new Dictionary(true);
         super();
      }
      
      public final function §`"s§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:§["]§ = null;
         var _loc5_:§1" § = null;
         if(this.§]!$§[param2] == null)
         {
            if(param3)
            {
               param1 = this.§;!9§(param1);
            }
            (_loc4_ = new §["]§()).loadBytes(param1);
            _loc5_ = _loc4_.§?c§(0);
            this.§]!$§[param2] = _loc5_.§<"N§(false);
            this.onLevelLoaded(param2);
         }
      }
      
      public function dispose() : void
      {
         this.§^"#§();
      }
      
      public function §;"U§(param1:String) : String
      {
         return this.§]!$§[param1];
      }
      
      protected function onLevelLoaded(param1:String) : void
      {
      }
      
      private function §;!9§(param1:ByteArray) : ByteArray
      {
         var i:int = 0;
         var bytes:ByteArray = param1;
         this.§;f§ = 56895 & 25147 >> 1;
         i = Math.min(bytes.length,65536) - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§-$6§() * 255);
            i -= 2;
         }
         i = bytes.length - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§-$6§() * 255);
            i -= int(this.§-$6§() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         i = bytes.length - 1;
         while(i >= startByte)
         {
            bytes[i] -= int(this.§-$6§() * 255);
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
      
      private function §-$6§() : Number
      {
         this.§;f§ ^= this.§;f§ << 21;
         this.§;f§ ^= this.§;f§ >>> 35;
         this.§;f§ ^= this.§;f§ << 4;
         if(this.§;f§ < 0)
         {
            this.§;f§ &= 2147483647;
         }
         return this.§;f§ / 2147483647;
      }
      
      private function §^"#§() : void
      {
         this.§]!$§ = null;
      }
   }
}
