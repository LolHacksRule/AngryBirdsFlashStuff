package §-u§
{
   import §"!z§.§<!l§;
   import §"!z§.§^a§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §8#i§ implements §+'§
   {
       
      
      private var §3q§:Dictionary;
      
      private var §",§:int;
      
      public function §8#i§()
      {
         this.§3q§ = new Dictionary(true);
         super();
      }
      
      public final function §&#B§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:§<!l§ = null;
         var _loc5_:§^a§ = null;
         if(this.§3q§[param2] == null)
         {
            if(param3)
            {
               param1 = this.§=@§(param1);
            }
            (_loc4_ = new §<!l§()).loadBytes(param1);
            _loc5_ = _loc4_.§?"=§(0);
            this.§3q§[param2] = _loc5_.§1$6§(false);
            this.onLevelLoaded(param2);
         }
      }
      
      public function dispose() : void
      {
         this.§6V§();
      }
      
      public function §2!O§(param1:String) : String
      {
         return this.§3q§[param1];
      }
      
      protected function onLevelLoaded(param1:String) : void
      {
      }
      
      private function §=@§(param1:ByteArray) : ByteArray
      {
         var i:int = 0;
         var bytes:ByteArray = param1;
         this.§",§ = 56895 & 25147 >> 1;
         i = Math.min(bytes.length,65536) - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§ !!§() * 255);
            i -= 2;
         }
         i = bytes.length - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§ !!§() * 255);
            i -= int(this.§ !!§() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         i = bytes.length - 1;
         while(i >= startByte)
         {
            bytes[i] -= int(this.§ !!§() * 255);
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
      
      private function § !!§() : Number
      {
         this.§",§ ^= this.§",§ << 21;
         this.§",§ ^= this.§",§ >>> 35;
         this.§",§ ^= this.§",§ << 4;
         if(this.§",§ < 0)
         {
            this.§",§ &= 2147483647;
         }
         return this.§",§ / 2147483647;
      }
      
      private function §6V§() : void
      {
         this.§3q§ = null;
      }
   }
}
