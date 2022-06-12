package § !0§
{
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §0!5§:§6"5§;
      
      b2internal var §>c§:uint;
      
      public function b2ContactID()
      {
         this.§0!5§ = new §6"5§();
         super();
         this.§0!5§.§4e§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§>c§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§>c§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§>c§ = param1;
         this.§0!5§.§4X§ = this.§>c§ & 255;
         this.§0!5§.§?a§ = (this.§>c§ & 65280) >> 8 & 255;
         this.§0!5§.§%j§ = (this.§>c§ & 16711680) >> 16 & 255;
         this.§0!5§.§,z§ = (this.§>c§ & 4278190080) >> 24 & 255;
      }
   }
}
