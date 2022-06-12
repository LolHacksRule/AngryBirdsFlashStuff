package §-g§
{
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §6n§:§1!m§;
      
      b2internal var §@!<§:uint;
      
      public function b2ContactID()
      {
         this.§6n§ = new §1!m§();
         super();
         this.§6n§.§"!P§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§@!<§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§@!<§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§@!<§ = param1;
         this.§6n§.§["!§ = this.§@!<§ & 255;
         this.§6n§.§!x§ = (this.§@!<§ & 65280) >> 8 & 255;
         this.§6n§.§3!f§ = (this.§@!<§ & 16711680) >> 16 & 255;
         this.§6n§.§2"6§ = (this.§@!<§ & 4278190080) >> 24 & 255;
      }
   }
}
