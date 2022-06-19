package §9"§
{
   import §2!F§.b2internal;
   
   use namespace b2internal;
   
   public class §"X§
   {
       
      
      b2internal var §]!L§:int;
      
      b2internal var §"!I§:int;
      
      b2internal var §+!0§:int;
      
      b2internal var §=t§:int;
      
      b2internal var §9f§:b2ContactID;
      
      public function §"X§()
      {
         super();
      }
      
      public function get §<!S§() : int
      {
         return this.§]!L§;
      }
      
      public function set §<!S§(param1:int) : void
      {
         this.§]!L§ = param1;
         this.§9f§.§case § = this.§9f§.§case § & 4294967040 | this.§]!L§ & 255;
      }
      
      public function get § null§() : int
      {
         return this.§"!I§;
      }
      
      public function set § null§(param1:int) : void
      {
         this.§"!I§ = param1;
         this.§9f§.§case § = this.§9f§.§case § & 4294902015 | this.§"!I§ << 8 & 65280;
      }
      
      public function get §!R§() : int
      {
         return this.§+!0§;
      }
      
      public function set §!R§(param1:int) : void
      {
         this.§+!0§ = param1;
         this.§9f§.§case § = this.§9f§.§case § & 4278255615 | this.§+!0§ << 16 & 16711680;
      }
      
      public function get §'!H§() : int
      {
         return this.§=t§;
      }
      
      public function set §'!H§(param1:int) : void
      {
         this.§=t§ = param1;
         this.§9f§.§case § = this.§9f§.§case § & 16777215 | this.§=t§ << 24 & 4278190080;
      }
   }
}
