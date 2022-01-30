package §!!o§
{
   import §!r§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §9!C§:§#"!§;
      
      b2internal var §3e§:uint;
      
      public function b2ContactID()
      {
         this.§9!C§ = new §#"!§();
         super();
         this.§9!C§.§-!$§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§3e§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§3e§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§3e§ = param1;
         this.§9!C§.§-J§ = this.§3e§ & 255;
         this.§9!C§.§@C§ = (this.§3e§ & 65280) >> 8 & 255;
         this.§9!C§.§7G§ = (this.§3e§ & 16711680) >> 16 & 255;
         this.§9!C§.§[E§ = (this.§3e§ & 4278190080) >> 24 & 255;
      }
   }
}
