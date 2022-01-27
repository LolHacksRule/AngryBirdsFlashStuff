package §`!E§
{
   import §0^§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §;!#§:§"!4§;
      
      b2internal var §"!$§:uint;
      
      public function b2ContactID()
      {
         this.§;!#§ = new §"!4§();
         super();
         this.§;!#§.§&T§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§"!$§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§"!$§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§"!$§ = param1;
         this.§;!#§.§'!A§ = this.§"!$§ & 255;
         this.§;!#§.§,H§ = (this.§"!$§ & 65280) >> 8 & 255;
         this.§;!#§.§`!4§ = (this.§"!$§ & 16711680) >> 16 & 255;
         this.§;!#§.§^L§ = (this.§"!$§ & 4278190080) >> 24 & 255;
      }
   }
}
