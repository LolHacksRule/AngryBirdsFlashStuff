package §!u§
{
   import §54§.b2internal;
   
   use namespace b2internal;
   
   public class §>!K§
   {
       
      
      b2internal var §14§:int;
      
      b2internal var §'! §:int;
      
      b2internal var §^Y§:int;
      
      b2internal var §#!I§:int;
      
      b2internal var §4o§:b2ContactID;
      
      public function §>!K§()
      {
         super();
      }
      
      public function get §<C§() : int
      {
         return this.§14§;
      }
      
      public function set §<C§(param1:int) : void
      {
         this.§14§ = param1;
         this.§4o§.§]v§ = this.§4o§.§]v§ & 4294967040 | this.§14§ & 255;
      }
      
      public function get §`^§() : int
      {
         return this.§'! §;
      }
      
      public function set §`^§(param1:int) : void
      {
         this.§'! § = param1;
         this.§4o§.§]v§ = this.§4o§.§]v§ & 4294902015 | this.§'! § << 8 & 65280;
      }
      
      public function get §&`§() : int
      {
         return this.§^Y§;
      }
      
      public function set §&`§(param1:int) : void
      {
         this.§^Y§ = param1;
         this.§4o§.§]v§ = this.§4o§.§]v§ & 4278255615 | this.§^Y§ << 16 & 16711680;
      }
      
      public function get §8[§() : int
      {
         return this.§#!I§;
      }
      
      public function set §8[§(param1:int) : void
      {
         this.§#!I§ = param1;
         this.§4o§.§]v§ = this.§4o§.§]v§ & 16777215 | this.§#!I§ << 24 & 4278190080;
      }
   }
}
