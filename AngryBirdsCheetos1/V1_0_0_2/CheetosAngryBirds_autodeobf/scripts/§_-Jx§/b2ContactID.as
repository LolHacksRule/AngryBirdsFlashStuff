package §_-Jx§
{
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §_-TZ§:§_-YO§;
      
      b2internal var §_-0L§:uint;
      
      public function b2ContactID()
      {
         this.§_-TZ§ = new §_-YO§();
         super();
         this.§_-TZ§.§_-Oy§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§_-0L§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§_-0L§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§_-0L§ = param1;
         this.§_-TZ§.§_-7e§ = this.§_-0L§ & 255;
         this.§_-TZ§.§_-q3§ = (this.§_-0L§ & 65280) >> 8 & 255;
         this.§_-TZ§.§_-KP§ = (this.§_-0L§ & 16711680) >> 16 & 255;
         this.§_-TZ§.§_-lS§ = (this.§_-0L§ & 4278190080) >> 24 & 255;
      }
   }
}
