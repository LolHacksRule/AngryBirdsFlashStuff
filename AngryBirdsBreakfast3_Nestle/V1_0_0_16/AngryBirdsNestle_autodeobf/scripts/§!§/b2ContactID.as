package §!§
{
   import §'!_§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §;!m§:§super§;
      
      b2internal var §+!t§:uint;
      
      public function b2ContactID()
      {
         this.§;!m§ = new §super§();
         super();
         this.§;!m§.§<!,§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§+!t§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§+!t§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§+!t§ = param1;
         this.§;!m§.§6G§ = this.§+!t§ & 255;
         this.§;!m§.§#a§ = (this.§+!t§ & 65280) >> 8 & 255;
         this.§;!m§.§,!Q§ = (this.§+!t§ & 16711680) >> 16 & 255;
         this.§;!m§.§<!X§ = (this.§+!t§ & 4278190080) >> 24 & 255;
      }
   }
}
