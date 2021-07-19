package § G§
{
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §?s§:§4!-§;
      
      b2internal var §32§:uint;
      
      public function b2ContactID()
      {
         this.§?s§ = new §4!-§();
         super();
         this.§?s§.§1!?§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§32§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§32§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§32§ = param1;
         this.§?s§.§7!D§ = this.§32§ & 255;
         this.§?s§.§@!H§ = (this.§32§ & 65280) >> 8 & 255;
         this.§?s§.§<e§ = (this.§32§ & 16711680) >> 16 & 255;
         this.§?s§.§2h§ = (this.§32§ & 4278190080) >> 24 & 255;
      }
   }
}
