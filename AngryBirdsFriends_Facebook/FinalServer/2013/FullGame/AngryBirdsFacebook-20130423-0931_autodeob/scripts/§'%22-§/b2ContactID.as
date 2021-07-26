package §'"-§
{
   import §,"[§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §]§:§<L§;
      
      b2internal var §&m§:uint;
      
      public function b2ContactID()
      {
         this.§]§ = new §<L§();
         super();
         this.§]§.§8!W§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§&m§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§&m§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§&m§ = param1;
         this.§]§.§?!S§ = this.§&m§ & 255;
         this.§]§.§-!C§ = (this.§&m§ & 65280) >> 8 & 255;
         this.§]§.§9"Y§ = (this.§&m§ & 16711680) >> 16 & 255;
         this.§]§.§;]§ = (this.§&m§ & 4278190080) >> 24 & 255;
      }
   }
}
