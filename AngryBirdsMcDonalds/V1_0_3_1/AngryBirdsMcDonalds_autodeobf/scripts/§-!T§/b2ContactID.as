package §-!T§
{
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §=!+§:§="§;
      
      b2internal var §@!1§:uint;
      
      public function b2ContactID()
      {
         this.§=!+§ = new §="§();
         super();
         this.§=!+§.§ g§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§@!1§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§@!1§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§@!1§ = param1;
         this.§=!+§.§+v§ = this.§@!1§ & 255;
         this.§=!+§.§+!9§ = (this.§@!1§ & 65280) >> 8 & 255;
         this.§=!+§.§[6§ = (this.§@!1§ & 16711680) >> 16 & 255;
         this.§=!+§.§'>§ = (this.§@!1§ & 4278190080) >> 24 & 255;
      }
   }
}
