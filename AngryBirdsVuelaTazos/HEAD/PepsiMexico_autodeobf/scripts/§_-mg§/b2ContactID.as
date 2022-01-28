package §_-mg§
{
   import §_-rz§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §_-Jd§:§_-NV§;
      
      b2internal var §_-je§:uint;
      
      public function b2ContactID()
      {
         this.§_-Jd§ = new §_-NV§();
         super();
         this.§_-Jd§.§_-mL§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§_-je§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§_-je§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§_-je§ = param1;
         this.§_-Jd§.§_-Nu§ = this.§_-je§ & 255;
         this.§_-Jd§.§_-t4§ = (this.§_-je§ & 65280) >> 8 & 255;
         this.§_-Jd§.§_-2z§ = (this.§_-je§ & 16711680) >> 16 & 255;
         this.§_-Jd§.§_-L7§ = (this.§_-je§ & 4278190080) >> 24 & 255;
      }
   }
}
