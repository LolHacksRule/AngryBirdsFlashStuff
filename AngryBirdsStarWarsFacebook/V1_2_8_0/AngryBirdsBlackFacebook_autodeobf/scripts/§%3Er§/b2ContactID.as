package §>r§
{
   import §7!I§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §'!B§:§]"q§;
      
      b2internal var §^!7§:uint;
      
      public function b2ContactID()
      {
         this.§'!B§ = new §]"q§();
         super();
         this.§'!B§.§@#'§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§^!7§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§^!7§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§^!7§ = param1;
         this.§'!B§.§;!S§ = this.§^!7§ & 255;
         this.§'!B§.§!`§ = (this.§^!7§ & 65280) >> 8 & 255;
         this.§'!B§.§3-§ = (this.§^!7§ & 16711680) >> 16 & 255;
         this.§'!B§.§0m§ = (this.§^!7§ & 4278190080) >> 24 & 255;
      }
   }
}
