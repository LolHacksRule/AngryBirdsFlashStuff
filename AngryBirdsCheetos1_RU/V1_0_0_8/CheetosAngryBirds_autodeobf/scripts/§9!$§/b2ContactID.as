package §9!$§
{
   import §'!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var § ^§:§]!^§;
      
      b2internal var §@E§:uint;
      
      public function b2ContactID()
      {
         this.§ ^§ = new §]!^§();
         super();
         this.§ ^§.§9^§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§@E§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§@E§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§@E§ = param1;
         this.§ ^§.§?!N§ = this.§@E§ & 255;
         this.§ ^§.§!N§ = (this.§@E§ & 65280) >> 8 & 255;
         this.§ ^§.§ else§ = (this.§@E§ & 16711680) >> 16 & 255;
         this.§ ^§.§]!K§ = (this.§@E§ & 4278190080) >> 24 & 255;
      }
   }
}
