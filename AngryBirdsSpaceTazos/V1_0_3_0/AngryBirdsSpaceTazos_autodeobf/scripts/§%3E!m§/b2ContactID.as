package §>!m§
{
   import §8K§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §5X§:§;A§;
      
      b2internal var §-!I§:uint;
      
      public function b2ContactID()
      {
         this.§5X§ = new §;A§();
         super();
         this.§5X§.§+>§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§-!I§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§-!I§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§-!I§ = param1;
         this.§5X§.§;!O§ = this.§-!I§ & 255;
         this.§5X§.§?"&§ = (this.§-!I§ & 65280) >> 8 & 255;
         this.§5X§.§=f§ = (this.§-!I§ & 16711680) >> 16 & 255;
         this.§5X§.§3!E§ = (this.§-!I§ & 4278190080) >> 24 & 255;
      }
   }
}
