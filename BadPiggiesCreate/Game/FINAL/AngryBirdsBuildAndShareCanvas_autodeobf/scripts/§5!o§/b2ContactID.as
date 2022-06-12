package §5!o§
{
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §+!x§:§4!j§;
      
      b2internal var §,!K§:uint;
      
      public function b2ContactID()
      {
         this.§+!x§ = new §4!j§();
         super();
         this.§+!x§.§=!e§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§,!K§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§,!K§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§,!K§ = param1;
         this.§+!x§.§>#§ = this.§,!K§ & 255;
         this.§+!x§.§ ",§ = (this.§,!K§ & 65280) >> 8 & 255;
         this.§+!x§.§8!i§ = (this.§,!K§ & 16711680) >> 16 & 255;
         this.§+!x§.§<N§ = (this.§,!K§ & 4278190080) >> 24 & 255;
      }
   }
}
