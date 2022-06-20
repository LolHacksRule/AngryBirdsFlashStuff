package §6!d§
{
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class §0z§
   {
       
      
      b2internal var §`;§:int;
      
      b2internal var §@"-§:int;
      
      b2internal var § !T§:int;
      
      b2internal var §%!$§:int;
      
      b2internal var §2"A§:b2ContactID;
      
      public function §0z§()
      {
         super();
      }
      
      public function get §&!'§() : int
      {
         return this.§`;§;
      }
      
      public function set §&!'§(param1:int) : void
      {
         this.§`;§ = param1;
         this.§2"A§.§5!F§ = this.§2"A§.§5!F§ & 4294967040 | this.§`;§ & 255;
      }
      
      public function get §3!D§() : int
      {
         return this.§@"-§;
      }
      
      public function set §3!D§(param1:int) : void
      {
         this.§@"-§ = param1;
         this.§2"A§.§5!F§ = this.§2"A§.§5!F§ & 4294902015 | this.§@"-§ << 8 & 65280;
      }
      
      public function get §6b§() : int
      {
         return this.§ !T§;
      }
      
      public function set §6b§(param1:int) : void
      {
         this.§ !T§ = param1;
         this.§2"A§.§5!F§ = this.§2"A§.§5!F§ & 4278255615 | this.§ !T§ << 16 & 16711680;
      }
      
      public function get §=I§() : int
      {
         return this.§%!$§;
      }
      
      public function set §=I§(param1:int) : void
      {
         this.§%!$§ = param1;
         this.§2"A§.§5!F§ = this.§2"A§.§5!F§ & 16777215 | this.§%!$§ << 24 & 4278190080;
      }
   }
}
