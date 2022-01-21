package §<!!§
{
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §^!C§:§6B§;
      
      b2internal var §21§:uint;
      
      public function b2ContactID()
      {
         this.§^!C§ = new §6B§();
         super();
         this.§^!C§.§]!M§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§21§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§21§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§21§ = param1;
         this.§^!C§.§ T§ = this.§21§ & 255;
         this.§^!C§.§3!O§ = (this.§21§ & 65280) >> 8 & 255;
         this.§^!C§.§ p§ = (this.§21§ & 16711680) >> 16 & 255;
         this.§^!C§.§>!>§ = (this.§21§ & 4278190080) >> 24 & 255;
      }
   }
}
