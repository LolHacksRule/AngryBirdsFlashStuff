package §1!1§
{
   import §!S§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §5!;§:§2!K§;
      
      b2internal var §!!s§:uint;
      
      public function b2ContactID()
      {
         this.§5!;§ = new §2!K§();
         super();
         this.§5!;§.§&!+§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§!!s§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§!!s§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§!!s§ = param1;
         this.§5!;§.§]!r§ = this.§!!s§ & 255;
         this.§5!;§.§3Q§ = (this.§!!s§ & 65280) >> 8 & 255;
         this.§5!;§.§&!A§ = (this.§!!s§ & 16711680) >> 16 & 255;
         this.§5!;§.§,!L§ = (this.§!!s§ & 4278190080) >> 24 & 255;
      }
   }
}
