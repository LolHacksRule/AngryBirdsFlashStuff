package §_-iw§
{
   import §_-bW§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §_-sg§:§_-O4§;
      
      b2internal var §_-L7§:uint;
      
      public function b2ContactID()
      {
         this.§_-sg§ = new §_-O4§();
         super();
         this.§_-sg§.§_-4M§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§_-L7§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§_-L7§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§_-L7§ = param1;
         this.§_-sg§.§_-Hm§ = this.§_-L7§ & 255;
         this.§_-sg§.§_-m2§ = (this.§_-L7§ & 65280) >> 8 & 255;
         this.§_-sg§.§ if§ = (this.§_-L7§ & 16711680) >> 16 & 255;
         this.§_-sg§.§_-aJ§ = (this.§_-L7§ & 4278190080) >> 24 & 255;
      }
   }
}
