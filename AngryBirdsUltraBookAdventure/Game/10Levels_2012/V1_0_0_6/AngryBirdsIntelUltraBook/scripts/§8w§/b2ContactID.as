package §8w§
{
   import §3!m§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §<S§:§>d§;
      
      b2internal var §6N§:uint;
      
      public function b2ContactID()
      {
         this.§<S§ = new §>d§();
         super();
         this.§<S§.§50§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§6N§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§6N§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§6N§ = param1;
         this.§<S§.§^%§ = this.§6N§ & 255;
         this.§<S§.§&t§ = (this.§6N§ & 65280) >> 8 & 255;
         this.§<S§.§52§ = (this.§6N§ & 16711680) >> 16 & 255;
         this.§<S§.§%!6§ = (this.§6N§ & 4278190080) >> 24 & 255;
      }
   }
}
