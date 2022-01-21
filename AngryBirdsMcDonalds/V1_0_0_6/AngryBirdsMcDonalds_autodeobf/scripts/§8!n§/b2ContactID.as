package §8!n§
{
   import §7!Y§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §0!e§:§6!X§;
      
      b2internal var native:uint;
      
      public function b2ContactID()
      {
         this.§0!e§ = new §6!X§();
         super();
         this.§0!e§.§1n§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.native;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.native;
      }
      
      public function set key(param1:uint) : void
      {
         this.native = param1;
         this.§0!e§.§^X§ = this.native & 255;
         this.§0!e§.§'!Y§ = (this.native & 65280) >> 8 & 255;
         this.§0!e§.§[!P§ = (this.native & 16711680) >> 16 & 255;
         this.§0!e§.§2!b§ = (this.native & 4278190080) >> 24 & 255;
      }
   }
}
