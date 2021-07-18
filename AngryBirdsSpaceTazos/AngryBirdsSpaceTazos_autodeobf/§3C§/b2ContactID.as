package §3c§
{
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §;!B§:§=!s§;
      
      b2internal var §=^§:uint;
      
      public function b2ContactID()
      {
         this.§;!B§ = new §=!s§();
         super();
         this.§;!B§.§&!?§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§=^§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§=^§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§=^§ = param1;
         this.§;!B§.§?"#§ = this.§=^§ & 255;
         this.§;!B§.§%!G§ = (this.§=^§ & 65280) >> 8 & 255;
         this.§;!B§.§&J§ = (this.§=^§ & 16711680) >> 16 & 255;
         this.§;!B§.§""H§ = (this.§=^§ & 4278190080) >> 24 & 255;
      }
   }
}
