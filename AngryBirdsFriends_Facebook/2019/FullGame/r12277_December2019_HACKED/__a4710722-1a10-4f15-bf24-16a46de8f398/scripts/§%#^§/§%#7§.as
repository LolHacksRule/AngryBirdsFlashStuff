package §%#^§
{
   import §9G§.§+$6§;
   import §9G§.§5# §;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §%#7§ implements §%![§
   {
       
      
      private var §<!>§:Dictionary;
      
      private var §>!$§:int;
      
      public function §%#7§()
      {
         this.§<!>§ = new Dictionary(true);
         super();
      }
      
      public final function §]#U§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:§+$6§ = null;
         var _loc5_:§5# § = null;
         if(this.§<!>§[param2] == null)
         {
            if(param3)
            {
               param1 = this.§3#C§(param1);
            }
            (_loc4_ = new §+$6§()).loadBytes(param1);
            _loc5_ = _loc4_.§?+§(0);
            this.§<!>§[param2] = _loc5_.§&!>§(false);
            this.onLevelLoaded(param2);
         }
      }
      
      public function dispose() : void
      {
         this.§##P§();
      }
      
      public function §<#3§(param1:String) : String
      {
         return this.§<!>§[param1];
      }
      
      protected function onLevelLoaded(param1:String) : void
      {
      }
      
      private function §3#C§(param1:ByteArray) : ByteArray
      {
         var i:int = 0;
         var bytes:ByteArray = param1;
         this.§>!$§ = 56895 & 25147 >> 1;
         i = Math.min(bytes.length,65536) - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§!!?§() * 255);
            i -= 2;
         }
         i = bytes.length - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§!!?§() * 255);
            i -= int(this.§!!?§() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         i = bytes.length - 1;
         while(i >= startByte)
         {
            bytes[i] -= int(this.§!!?§() * 255);
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
      
      private function §!!?§() : Number
      {
         this.§>!$§ ^= this.§>!$§ << 21;
         this.§>!$§ ^= this.§>!$§ >>> 35;
         this.§>!$§ ^= this.§>!$§ << 4;
         if(this.§>!$§ < 0)
         {
            this.§>!$§ &= 2147483647;
         }
         return this.§>!$§ / 2147483647;
      }
      
      private function §##P§() : void
      {
         this.§<!>§ = null;
      }
   }
}
