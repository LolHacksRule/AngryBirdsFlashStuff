package §4$E§
{
   import §?N§.b2internal;
   
   use namespace b2internal;
   
   public class §;#7§
   {
       
      
      b2internal var §,">§:int;
      
      b2internal var §2"x§:int;
      
      b2internal var §-$$§:int;
      
      b2internal var §@h§:int;
      
      b2internal var §3"s§:b2ContactID;
      
      public function §;#7§()
      {
         super();
      }
      
      public function get §+d§() : int
      {
         return this.§,">§;
      }
      
      public function set §+d§(param1:int) : void
      {
         this.§,">§ = param1;
         this.§3"s§.§@!y§ = this.§3"s§.§@!y§ & 4294967040 | this.§,">§ & 255;
      }
      
      public function get §<#B§() : int
      {
         return this.§2"x§;
      }
      
      public function set §<#B§(param1:int) : void
      {
         this.§2"x§ = param1;
         this.§3"s§.§@!y§ = this.§3"s§.§@!y§ & 4294902015 | this.§2"x§ << 8 & 65280;
      }
      
      public function get §;$-§() : int
      {
         return this.§-$$§;
      }
      
      public function set §;$-§(param1:int) : void
      {
         this.§-$$§ = param1;
         this.§3"s§.§@!y§ = this.§3"s§.§@!y§ & 4278255615 | this.§-$$§ << 16 & 16711680;
      }
      
      public function get §@!v§() : int
      {
         return this.§@h§;
      }
      
      public function set §@!v§(param1:int) : void
      {
         this.§@h§ = param1;
         this.§3"s§.§@!y§ = this.§3"s§.§@!y§ & 16777215 | this.§@h§ << 24 & 4278190080;
      }
   }
}
