package §-r§
{
   import §"0§.b2internal;
   
   use namespace b2internal;
   
   public class §3"§
   {
       
      
      b2internal var §@!C§:int;
      
      b2internal var §7!#§:int;
      
      b2internal var §10§:int;
      
      b2internal var §&y§:int;
      
      b2internal var §-O§:b2ContactID;
      
      public function §3"§()
      {
         super();
      }
      
      public function get §-c§() : int
      {
         return this.§@!C§;
      }
      
      public function set §-c§(param1:int) : void
      {
         this.§@!C§ = param1;
         this.§-O§.§ use§ = this.§-O§.§ use§ & 4294967040 | this.§@!C§ & 255;
      }
      
      public function get §+!S§() : int
      {
         return this.§7!#§;
      }
      
      public function set §+!S§(param1:int) : void
      {
         this.§7!#§ = param1;
         this.§-O§.§ use§ = this.§-O§.§ use§ & 4294902015 | this.§7!#§ << 8 & 65280;
      }
      
      public function get §+J§() : int
      {
         return this.§10§;
      }
      
      public function set §+J§(param1:int) : void
      {
         this.§10§ = param1;
         this.§-O§.§ use§ = this.§-O§.§ use§ & 4278255615 | this.§10§ << 16 & 16711680;
      }
      
      public function get §+!@§() : int
      {
         return this.§&y§;
      }
      
      public function set §+!@§(param1:int) : void
      {
         this.§&y§ = param1;
         this.§-O§.§ use§ = this.§-O§.§ use§ & 16777215 | this.§&y§ << 24 & 4278190080;
      }
   }
}
