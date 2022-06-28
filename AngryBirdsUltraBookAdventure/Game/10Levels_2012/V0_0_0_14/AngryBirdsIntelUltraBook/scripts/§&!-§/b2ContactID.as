package §&!-§
{
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §1W§:§6!"§;
      
      b2internal var §,V§:uint;
      
      public function b2ContactID()
      {
         this.§1W§ = new §6!"§();
         super();
         this.§1W§.§0!-§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§,V§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§,V§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§,V§ = param1;
         this.§1W§.§8!-§ = this.§,V§ & 255;
         this.§1W§.§;?§ = (this.§,V§ & 65280) >> 8 & 255;
         this.§1W§.§;!7§ = (this.§,V§ & 16711680) >> 16 & 255;
         this.§1W§.§3!K§ = (this.§,V§ & 4278190080) >> 24 & 255;
      }
   }
}
