package §]M§
{
   import §"v§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §<!E§:§#!L§;
      
      b2internal var §0!%§:uint;
      
      public function b2ContactID()
      {
         this.§<!E§ = new §#!L§();
         super();
         this.§<!E§.§<d§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§0!%§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§0!%§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§0!%§ = param1;
         this.§<!E§.§'-§ = this.§0!%§ & 255;
         this.§<!E§.§catch§ = (this.§0!%§ & 65280) >> 8 & 255;
         this.§<!E§.§#!4§ = (this.§0!%§ & 16711680) >> 16 & 255;
         this.§<!E§.§2!-§ = (this.§0!%§ & 4278190080) >> 24 & 255;
      }
   }
}
