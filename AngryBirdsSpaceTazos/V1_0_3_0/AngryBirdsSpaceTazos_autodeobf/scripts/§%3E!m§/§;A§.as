package §>!m§
{
   import §8K§.b2internal;
   
   use namespace b2internal;
   
   public class §;A§
   {
       
      
      b2internal var §;!O§:int;
      
      b2internal var §?"&§:int;
      
      b2internal var §=f§:int;
      
      b2internal var §3!E§:int;
      
      b2internal var §+>§:b2ContactID;
      
      public function §;A§()
      {
         super();
      }
      
      public function get §9!v§() : int
      {
         return this.§;!O§;
      }
      
      public function set §9!v§(param1:int) : void
      {
         this.§;!O§ = param1;
         this.§+>§.§-!I§ = this.§+>§.§-!I§ & 4294967040 | this.§;!O§ & 255;
      }
      
      public function get §@!o§() : int
      {
         return this.§?"&§;
      }
      
      public function set §@!o§(param1:int) : void
      {
         this.§?"&§ = param1;
         this.§+>§.§-!I§ = this.§+>§.§-!I§ & 4294902015 | this.§?"&§ << 8 & 65280;
      }
      
      public function get §,"9§() : int
      {
         return this.§=f§;
      }
      
      public function set §,"9§(param1:int) : void
      {
         this.§=f§ = param1;
         this.§+>§.§-!I§ = this.§+>§.§-!I§ & 4278255615 | this.§=f§ << 16 & 16711680;
      }
      
      public function get §0w§() : int
      {
         return this.§3!E§;
      }
      
      public function set §0w§(param1:int) : void
      {
         this.§3!E§ = param1;
         this.§+>§.§-!I§ = this.§+>§.§-!I§ & 16777215 | this.§3!E§ << 24 & 4278190080;
      }
   }
}
