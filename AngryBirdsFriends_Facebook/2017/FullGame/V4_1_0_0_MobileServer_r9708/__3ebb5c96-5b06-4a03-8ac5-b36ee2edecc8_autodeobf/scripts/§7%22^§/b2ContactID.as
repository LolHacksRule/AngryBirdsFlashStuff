package §7"^§
{
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §&0§:§^#i§;
      
      b2internal var §?"c§:uint;
      
      public function b2ContactID()
      {
         this.§&0§ = new §^#i§();
         super();
         this.§&0§.§4#4§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§?"c§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§?"c§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§?"c§ = param1;
         this.§&0§.§6Y§ = this.§?"c§ & 255;
         this.§&0§.§`w§ = (this.§?"c§ & 65280) >> 8 & 255;
         this.§&0§.§;E§ = (this.§?"c§ & 16711680) >> 16 & 255;
         this.§&0§.§7#y§ = (this.§?"c§ & 4278190080) >> 24 & 255;
      }
   }
}
