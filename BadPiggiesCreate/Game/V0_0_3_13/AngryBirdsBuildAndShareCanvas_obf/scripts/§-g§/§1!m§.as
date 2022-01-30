package §-g§
{
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class §1!m§
   {
       
      
      b2internal var §["!§:int;
      
      b2internal var §!x§:int;
      
      b2internal var §3!f§:int;
      
      b2internal var §2"6§:int;
      
      b2internal var §"!P§:b2ContactID;
      
      public function §1!m§()
      {
         super();
      }
      
      public function get §#!w§() : int
      {
         return this.§["!§;
      }
      
      public function set §#!w§(param1:int) : void
      {
         this.§["!§ = param1;
         this.§"!P§.§@!<§ = this.§"!P§.§@!<§ & 4294967040 | this.§["!§ & 255;
      }
      
      public function get §0!0§() : int
      {
         return this.§!x§;
      }
      
      public function set §0!0§(param1:int) : void
      {
         this.§!x§ = param1;
         this.§"!P§.§@!<§ = this.§"!P§.§@!<§ & 4294902015 | this.§!x§ << 8 & 65280;
      }
      
      public function get §`!E§() : int
      {
         return this.§3!f§;
      }
      
      public function set §`!E§(param1:int) : void
      {
         this.§3!f§ = param1;
         this.§"!P§.§@!<§ = this.§"!P§.§@!<§ & 4278255615 | this.§3!f§ << 16 & 16711680;
      }
      
      public function get §%+§() : int
      {
         return this.§2"6§;
      }
      
      public function set §%+§(param1:int) : void
      {
         this.§2"6§ = param1;
         this.§"!P§.§@!<§ = this.§"!P§.§@!<§ & 16777215 | this.§2"6§ << 24 & 4278190080;
      }
   }
}
