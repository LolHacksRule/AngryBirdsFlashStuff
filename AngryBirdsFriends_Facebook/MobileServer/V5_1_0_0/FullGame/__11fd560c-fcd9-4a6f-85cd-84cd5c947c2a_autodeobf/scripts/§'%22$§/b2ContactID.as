package §'"$§
{
   import §,!s§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §&!d§:§>!G§;
      
      b2internal var §"!f§:uint;
      
      public function b2ContactID()
      {
         this.§&!d§ = new §>!G§();
         super();
         this.§&!d§.§]G§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§"!f§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§"!f§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§"!f§ = param1;
         this.§&!d§.§-# § = this.§"!f§ & 255;
         this.§&!d§.§-"`§ = (this.§"!f§ & 65280) >> 8 & 255;
         this.§&!d§.§7#T§ = (this.§"!f§ & 16711680) >> 16 & 255;
         this.§&!d§.§>q§ = (this.§"!f§ & 4278190080) >> 24 & 255;
      }
   }
}
