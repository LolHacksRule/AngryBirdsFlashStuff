package §]7§
{
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §,!W§:§9!^§;
      
      b2internal var §3>§:uint;
      
      public function b2ContactID()
      {
         this.§,!W§ = new §9!^§();
         super();
         this.§,!W§.§4u§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§3>§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§3>§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§3>§ = param1;
         this.§,!W§.§0!3§ = this.§3>§ & 255;
         this.§,!W§.§-n§ = (this.§3>§ & 65280) >> 8 & 255;
         this.§,!W§.§>p§ = (this.§3>§ & 16711680) >> 16 & 255;
         this.§,!W§.§`!V§ = (this.§3>§ & 4278190080) >> 24 & 255;
      }
   }
}
