package §?§
{
   import § !5§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §2X§:§1!"§;
      
      b2internal var §8d§:uint;
      
      public function b2ContactID()
      {
         this.§2X§ = new §1!"§();
         super();
         this.§2X§.§6E§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§8d§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§8d§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§8d§ = param1;
         this.§2X§.§7!A§ = this.§8d§ & 255;
         this.§2X§.§]M§ = (this.§8d§ & 65280) >> 8 & 255;
         this.§2X§.§&!H§ = (this.§8d§ & 16711680) >> 16 & 255;
         this.§2X§.§>[§ = (this.§8d§ & 4278190080) >> 24 & 255;
      }
   }
}
