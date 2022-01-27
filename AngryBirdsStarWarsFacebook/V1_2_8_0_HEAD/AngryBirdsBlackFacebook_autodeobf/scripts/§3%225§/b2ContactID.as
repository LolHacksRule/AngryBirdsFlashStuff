package §3"5§
{
   import §5"i§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §="i§:§#!S§;
      
      b2internal var §8"p§:uint;
      
      public function b2ContactID()
      {
         this.§="i§ = new §#!S§();
         super();
         this.§="i§.§,U§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§8"p§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§8"p§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§8"p§ = param1;
         this.§="i§.§?"0§ = this.§8"p§ & 255;
         this.§="i§.§?!-§ = (this.§8"p§ & 65280) >> 8 & 255;
         this.§="i§.§`!g§ = (this.§8"p§ & 16711680) >> 16 & 255;
         this.§="i§.§?!=§ = (this.§8"p§ & 4278190080) >> 24 & 255;
      }
   }
}
