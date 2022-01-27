package §%!#§
{
   import §9!s§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §7"P§:§#3§;
      
      b2internal var §!"r§:uint;
      
      public function b2ContactID()
      {
         this.§7"P§ = new §#3§();
         super();
         this.§7"P§.§[U§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§!"r§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§!"r§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§!"r§ = param1;
         this.§7"P§.§5"w§ = this.§!"r§ & 255;
         this.§7"P§.§'!C§ = (this.§!"r§ & 65280) >> 8 & 255;
         this.§7"P§.§;n§ = (this.§!"r§ & 16711680) >> 16 & 255;
         this.§7"P§.§;#6§ = (this.§!"r§ & 4278190080) >> 24 & 255;
      }
   }
}
