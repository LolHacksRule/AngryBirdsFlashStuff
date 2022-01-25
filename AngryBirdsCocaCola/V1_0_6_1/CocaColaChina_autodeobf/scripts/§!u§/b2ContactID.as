package §!u§
{
   import §54§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §,!;§:§>!K§;
      
      b2internal var §]v§:uint;
      
      public function b2ContactID()
      {
         this.§,!;§ = new §>!K§();
         super();
         this.§,!;§.§4o§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§]v§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§]v§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§]v§ = param1;
         this.§,!;§.§14§ = this.§]v§ & 255;
         this.§,!;§.§'! § = (this.§]v§ & 65280) >> 8 & 255;
         this.§,!;§.§^Y§ = (this.§]v§ & 16711680) >> 16 & 255;
         this.§,!;§.§#!I§ = (this.§]v§ & 4278190080) >> 24 & 255;
      }
   }
}
