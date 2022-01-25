package §;!7§
{
   import §"!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §^!-§:§;V§;
      
      b2internal var §=Y§:uint;
      
      public function b2ContactID()
      {
         this.§^!-§ = new §;V§();
         super();
         this.§^!-§.§%j§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§=Y§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§=Y§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§=Y§ = param1;
         this.§^!-§.§-G§ = this.§=Y§ & 255;
         this.§^!-§.§&z§ = (this.§=Y§ & 65280) >> 8 & 255;
         this.§^!-§.§="§ = (this.§=Y§ & 16711680) >> 16 & 255;
         this.§^!-§.§"!1§ = (this.§=Y§ & 4278190080) >> 24 & 255;
      }
   }
}
