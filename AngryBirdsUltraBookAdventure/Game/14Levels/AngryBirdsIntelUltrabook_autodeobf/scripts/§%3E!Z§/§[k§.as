package §>!Z§
{
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class §[k§
   {
       
      
      b2internal var §7m§:int;
      
      b2internal var §`!J§:int;
      
      b2internal var §4!+§:int;
      
      b2internal var §!!P§:int;
      
      b2internal var §<!O§:b2ContactID;
      
      public function §[k§()
      {
         super();
      }
      
      public function get §<!y§() : int
      {
         return this.§7m§;
      }
      
      public function set §<!y§(param1:int) : void
      {
         this.§7m§ = param1;
         this.§<!O§.§7!U§ = this.§<!O§.§7!U§ & 4294967040 | this.§7m§ & 255;
      }
      
      public function get §?! §() : int
      {
         return this.§`!J§;
      }
      
      public function set §?! §(param1:int) : void
      {
         this.§`!J§ = param1;
         this.§<!O§.§7!U§ = this.§<!O§.§7!U§ & 4294902015 | this.§`!J§ << 8 & 65280;
      }
      
      public function get §'!c§() : int
      {
         return this.§4!+§;
      }
      
      public function set §'!c§(param1:int) : void
      {
         this.§4!+§ = param1;
         this.§<!O§.§7!U§ = this.§<!O§.§7!U§ & 4278255615 | this.§4!+§ << 16 & 16711680;
      }
      
      public function get §?!`§() : int
      {
         return this.§!!P§;
      }
      
      public function set §?!`§(param1:int) : void
      {
         this.§!!P§ = param1;
         this.§<!O§.§7!U§ = this.§<!O§.§7!U§ & 16777215 | this.§!!P§ << 24 & 4278190080;
      }
   }
}
