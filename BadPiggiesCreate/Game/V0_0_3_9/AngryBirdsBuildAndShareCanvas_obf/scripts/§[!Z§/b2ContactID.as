package §[!Z§
{
   import §7"'§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §6y§:§&!^§;
      
      b2internal var §'a§:uint;
      
      public function b2ContactID()
      {
         this.§6y§ = new §&!^§();
         super();
         this.§6y§.§9!L§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§'a§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§'a§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§'a§ = param1;
         this.§6y§.§9!"§ = this.§'a§ & 255;
         this.§6y§.§%"+§ = (this.§'a§ & 65280) >> 8 & 255;
         this.§6y§.§^!§ = (this.§'a§ & 16711680) >> 16 & 255;
         this.§6y§.§-!a§ = (this.§'a§ & 4278190080) >> 24 & 255;
      }
   }
}
