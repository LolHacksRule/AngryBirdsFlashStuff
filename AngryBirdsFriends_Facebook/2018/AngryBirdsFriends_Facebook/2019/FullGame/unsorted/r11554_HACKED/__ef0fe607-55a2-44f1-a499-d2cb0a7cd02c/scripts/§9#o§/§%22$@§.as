package §9#o§
{
   import §2"_§.§3§;
   import §2"_§.§6!L§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §"$@§ implements §%"N§
   {
       
      
      private var §'!3§:Dictionary;
      
      private var §"#b§:int;
      
      public function §"$@§()
      {
         this.§'!3§ = new Dictionary(true);
         super();
      }
      
      public final function §-"=§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:§6!L§ = null;
         var _loc5_:§3#8§ = null;
         if(this.§'!3§[param2] == null)
         {
            if(param3)
            {
               param1 = this.§4""§(param1);
            }
            (_loc4_ = new §6!L§()).loadBytes(param1);
            _loc5_ = _loc4_.§-$+§(0);
            this.§'!3§[param2] = _loc5_.§"$4§(false);
            this.onLevelLoaded(param2);
         }
      }
      
      public function dispose() : void
      {
         this.§## §();
      }
      
      public function §4#q§(param1:String) : String
      {
         return this.§'!3§[param1];
      }
      
      protected function onLevelLoaded(param1:String) : void
      {
      }
      
      private function §4""§(param1:ByteArray) : ByteArray
      {
         var i:int = 0;
         var bytes:ByteArray = param1;
         this.§"#b§ = 56895 & 25147 >> 1;
         i = Math.min(bytes.length,65536) - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§`$!§() * 255);
            i -= 2;
         }
         i = bytes.length - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§`$!§() * 255);
            i -= int(this.§`$!§() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         i = bytes.length - 1;
         while(i >= startByte)
         {
            bytes[i] -= int(this.§`$!§() * 255);
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
      
      private function §`$!§() : Number
      {
         this.§"#b§ ^= this.§"#b§ << 21;
         this.§"#b§ ^= this.§"#b§ >>> 35;
         this.§"#b§ ^= this.§"#b§ << 4;
         if(this.§"#b§ < 0)
         {
            this.§"#b§ &= 2147483647;
         }
         return this.§"#b§ / 2147483647;
      }
      
      private function §## §() : void
      {
         this.§'!3§ = null;
      }
   }
}
