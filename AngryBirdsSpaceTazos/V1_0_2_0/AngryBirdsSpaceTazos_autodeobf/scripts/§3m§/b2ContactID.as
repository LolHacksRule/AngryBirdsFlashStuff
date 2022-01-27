package §3m§
{
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §[%§:§&!-§;
      
      b2internal var §&!z§:uint;
      
      public function b2ContactID()
      {
         this.§[%§ = new §&!-§();
         super();
         this.§[%§.§^z§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§&!z§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§&!z§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§&!z§ = param1;
         this.§[%§.§`"B§ = this.§&!z§ & 255;
         this.§[%§.§7v§ = (this.§&!z§ & 65280) >> 8 & 255;
         this.§[%§.§@l§ = (this.§&!z§ & 16711680) >> 16 & 255;
         this.§[%§.§0!Z§ = (this.§&!z§ & 4278190080) >> 24 & 255;
      }
   }
}
