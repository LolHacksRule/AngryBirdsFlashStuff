package §_-wZ§
{
   import §_-SM§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §_-nm§:§_-tr§;
      
      b2internal var §_-Qt§:uint;
      
      public function b2ContactID()
      {
         this.§_-nm§ = new §_-tr§();
         super();
         this.§_-nm§.§_-VI§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§_-Qt§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§_-Qt§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§_-Qt§ = param1;
         this.§_-nm§.§ in§ = this.§_-Qt§ & 255;
         this.§_-nm§.§_-aH§ = (this.§_-Qt§ & 65280) >> 8 & 255;
         this.§_-nm§.§_-8H§ = (this.§_-Qt§ & 16711680) >> 16 & 255;
         this.§_-nm§.§_-rm§ = (this.§_-Qt§ & 4278190080) >> 24 & 255;
      }
   }
}
