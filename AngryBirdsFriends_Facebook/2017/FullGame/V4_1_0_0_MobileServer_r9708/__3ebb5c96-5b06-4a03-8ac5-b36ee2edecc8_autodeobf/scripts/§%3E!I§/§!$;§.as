package §>!I§
{
   import §5$=§.§%#v§;
   import §5$=§.§+!P§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §!$;§ implements § "6§
   {
       
      
      private var final:Dictionary;
      
      private var §,!X§:int;
      
      public function §!$;§()
      {
         this.final = new Dictionary(true);
         super();
      }
      
      public final function §0#o§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:§%#v§ = null;
         var _loc5_:§+!P§ = null;
         if(this.final[param2] == null)
         {
            if(param3)
            {
               param1 = this.§2"f§(param1);
            }
            (_loc4_ = new §%#v§()).loadBytes(param1);
            _loc5_ = _loc4_.§2#,§(0);
            this.final[param2] = _loc5_.§6!#§(false);
            this.onLevelLoaded(param2);
         }
      }
      
      public function dispose() : void
      {
         this.§>!q§();
      }
      
      public function §^!e§(param1:String) : String
      {
         return this.final[param1];
      }
      
      protected function onLevelLoaded(param1:String) : void
      {
      }
      
      private function §2"f§(param1:ByteArray) : ByteArray
      {
         var i:int = 0;
         var bytes:ByteArray = param1;
         this.§,!X§ = 56895 & 25147 >> 1;
         i = Math.min(bytes.length,65536) - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§?#f§() * 255);
            i -= 2;
         }
         i = bytes.length - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§?#f§() * 255);
            i -= int(this.§?#f§() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         i = bytes.length - 1;
         while(i >= startByte)
         {
            bytes[i] -= int(this.§?#f§() * 255);
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
      
      private function §?#f§() : Number
      {
         this.§,!X§ ^= this.§,!X§ << 21;
         this.§,!X§ ^= this.§,!X§ >>> 35;
         this.§,!X§ ^= this.§,!X§ << 4;
         if(this.§,!X§ < 0)
         {
            this.§,!X§ &= 2147483647;
         }
         return this.§,!X§ / 2147483647;
      }
      
      private function §>!q§() : void
      {
         this.final = null;
      }
   }
}
