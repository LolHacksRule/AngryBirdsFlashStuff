package §>r§
{
   import §7!I§.b2internal;
   
   use namespace b2internal;
   
   public class §]"q§
   {
       
      
      b2internal var §;!S§:int;
      
      b2internal var §!`§:int;
      
      b2internal var §3-§:int;
      
      b2internal var §0m§:int;
      
      b2internal var §@#'§:b2ContactID;
      
      public function §]"q§()
      {
         super();
      }
      
      public function get §'!'§() : int
      {
         return this.§;!S§;
      }
      
      public function set §'!'§(param1:int) : void
      {
         this.§;!S§ = param1;
         this.§@#'§.§^!7§ = this.§@#'§.§^!7§ & 4294967040 | this.§;!S§ & 255;
      }
      
      public function get §9!+§() : int
      {
         return this.§!`§;
      }
      
      public function set §9!+§(param1:int) : void
      {
         this.§!`§ = param1;
         this.§@#'§.§^!7§ = this.§@#'§.§^!7§ & 4294902015 | this.§!`§ << 8 & 65280;
      }
      
      public function get §`"R§() : int
      {
         return this.§3-§;
      }
      
      public function set §`"R§(param1:int) : void
      {
         this.§3-§ = param1;
         this.§@#'§.§^!7§ = this.§@#'§.§^!7§ & 4278255615 | this.§3-§ << 16 & 16711680;
      }
      
      public function get §6!<§() : int
      {
         return this.§0m§;
      }
      
      public function set §6!<§(param1:int) : void
      {
         this.§0m§ = param1;
         this.§@#'§.§^!7§ = this.§@#'§.§^!7§ & 16777215 | this.§0m§ << 24 & 4278190080;
      }
   }
}
