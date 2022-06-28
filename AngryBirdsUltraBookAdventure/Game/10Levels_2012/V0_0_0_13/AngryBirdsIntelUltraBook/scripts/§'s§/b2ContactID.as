package §'s§
{
   import §+!,§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var features:§+n§;
      
      b2internal var § k§:uint;
      
      public function b2ContactID()
      {
         this.features = new §+n§();
         super();
         this.features.§@!e§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§ k§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§ k§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§ k§ = param1;
         this.features.§ P§ = this.§ k§ & 255;
         this.features.§switch§ = (this.§ k§ & 65280) >> 8 & 255;
         this.features.§?!3§ = (this.§ k§ & 16711680) >> 16 & 255;
         this.features.§]<§ = (this.§ k§ & 4278190080) >> 24 & 255;
      }
   }
}
