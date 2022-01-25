package §7!&§
{
   import §'I§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §]u§:§=!%§;
      
      b2internal var §#!P§:uint;
      
      public function b2ContactID()
      {
         this.§]u§ = new §=!%§();
         super();
         this.§]u§.§9!-§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§#!P§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§#!P§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§#!P§ = param1;
         this.§]u§.§,Q§ = this.§#!P§ & 255;
         this.§]u§.§""'§ = (this.§#!P§ & 65280) >> 8 & 255;
         this.§]u§.§%!V§ = (this.§#!P§ & 16711680) >> 16 & 255;
         this.§]u§.§+"-§ = (this.§#!P§ & 4278190080) >> 24 & 255;
      }
   }
}
