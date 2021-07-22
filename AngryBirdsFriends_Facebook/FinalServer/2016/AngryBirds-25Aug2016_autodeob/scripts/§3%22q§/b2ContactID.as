package §3"q§
{
   import §0H§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §,"p§:§[#_§;
      
      b2internal var §&"Z§:uint;
      
      public function b2ContactID()
      {
         this.§,"p§ = new §[#_§();
         super();
         this.§,"p§.§]"q§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§&"Z§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§&"Z§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§&"Z§ = param1;
         this.§,"p§.§>"w§ = this.§&"Z§ & 255;
         this.§,"p§.§0#G§ = (this.§&"Z§ & 65280) >> 8 & 255;
         this.§,"p§.§<#0§ = (this.§&"Z§ & 16711680) >> 16 & 255;
         this.§,"p§.§%?§ = (this.§&"Z§ & 4278190080) >> 24 & 255;
      }
   }
}
