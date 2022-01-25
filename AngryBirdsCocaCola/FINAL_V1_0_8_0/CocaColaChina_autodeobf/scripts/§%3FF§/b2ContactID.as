package §?F§
{
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §`!R§:§2Q§;
      
      b2internal var §3j§:uint;
      
      public function b2ContactID()
      {
         this.§`!R§ = new §2Q§();
         super();
         this.§`!R§.§#!O§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§3j§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§3j§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§3j§ = param1;
         this.§`!R§.§1!#§ = this.§3j§ & 255;
         this.§`!R§.§+"§ = (this.§3j§ & 65280) >> 8 & 255;
         this.§`!R§.§1!"§ = (this.§3j§ & 16711680) >> 16 & 255;
         this.§`!R§.§&!I§ = (this.§3j§ & 4278190080) >> 24 & 255;
      }
   }
}
