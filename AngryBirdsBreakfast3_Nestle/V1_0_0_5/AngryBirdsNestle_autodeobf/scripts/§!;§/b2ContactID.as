package §!;§
{
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §4!J§:§#!3§;
      
      b2internal var §#y§:uint;
      
      public function b2ContactID()
      {
         this.§4!J§ = new §#!3§();
         super();
         this.§4!J§.§<!i§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§#y§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§#y§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§#y§ = param1;
         this.§4!J§.§`P§ = this.§#y§ & 255;
         this.§4!J§.§%!A§ = (this.§#y§ & 65280) >> 8 & 255;
         this.§4!J§.§=X§ = (this.§#y§ & 16711680) >> 16 & 255;
         this.§4!J§.§9`§ = (this.§#y§ & 4278190080) >> 24 & 255;
      }
   }
}
