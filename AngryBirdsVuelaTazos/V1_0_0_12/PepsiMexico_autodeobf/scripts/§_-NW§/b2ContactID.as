package §_-Nw§
{
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §_-41§:§_-wj§;
      
      b2internal var §_-lX§:uint;
      
      public function b2ContactID()
      {
         this.§_-41§ = new §_-wj§();
         super();
         this.§_-41§.§_-pi§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§_-lX§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§_-lX§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§_-lX§ = param1;
         this.§_-41§.§_-eG§ = this.§_-lX§ & 255;
         this.§_-41§.§ true§ = (this.§_-lX§ & 65280) >> 8 & 255;
         this.§_-41§.§_-jc§ = (this.§_-lX§ & 16711680) >> 16 & 255;
         this.§_-41§.§_-mv§ = (this.§_-lX§ & 4278190080) >> 24 & 255;
      }
   }
}
