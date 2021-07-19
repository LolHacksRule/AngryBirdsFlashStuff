package §-r§
{
   import §"0§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §1!e§:§3"§;
      
      b2internal var § use§:uint;
      
      public function b2ContactID()
      {
         this.§1!e§ = new §3"§();
         super();
         this.§1!e§.§-O§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§ use§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§ use§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§ use§ = param1;
         this.§1!e§.§@!C§ = this.§ use§ & 255;
         this.§1!e§.§7!#§ = (this.§ use§ & 65280) >> 8 & 255;
         this.§1!e§.§10§ = (this.§ use§ & 16711680) >> 16 & 255;
         this.§1!e§.§&y§ = (this.§ use§ & 4278190080) >> 24 & 255;
      }
   }
}
