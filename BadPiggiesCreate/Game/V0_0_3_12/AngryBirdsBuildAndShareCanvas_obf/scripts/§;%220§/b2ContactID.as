package §;"0§
{
   import §6!`§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §<!b§:§"!I§;
      
      b2internal var §4!§:uint;
      
      public function b2ContactID()
      {
         this.§<!b§ = new §"!I§();
         super();
         this.§<!b§.§&o§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§4!§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§4!§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§4!§ = param1;
         this.§<!b§.§?!Q§ = this.§4!§ & 255;
         this.§<!b§.§&"8§ = (this.§4!§ & 65280) >> 8 & 255;
         this.§<!b§.§%V§ = (this.§4!§ & 16711680) >> 16 & 255;
         this.§<!b§.§5!J§ = (this.§4!§ & 4278190080) >> 24 & 255;
      }
   }
}
