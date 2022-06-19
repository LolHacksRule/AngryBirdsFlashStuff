package §9"§
{
   import §2!F§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §;f§:§"X§;
      
      b2internal var §case §:uint;
      
      public function b2ContactID()
      {
         this.§;f§ = new §"X§();
         super();
         this.§;f§.§9f§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§case §;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§case §;
      }
      
      public function set key(param1:uint) : void
      {
         this.§case § = param1;
         this.§;f§.§]!L§ = this.§case § & 255;
         this.§;f§.§"!I§ = (this.§case § & 65280) >> 8 & 255;
         this.§;f§.§+!0§ = (this.§case § & 16711680) >> 16 & 255;
         this.§;f§.§=t§ = (this.§case § & 4278190080) >> 24 & 255;
      }
   }
}
