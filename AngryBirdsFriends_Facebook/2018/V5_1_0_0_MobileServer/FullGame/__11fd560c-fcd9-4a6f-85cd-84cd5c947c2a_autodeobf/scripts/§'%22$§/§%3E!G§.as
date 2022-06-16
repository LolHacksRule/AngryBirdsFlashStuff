package §'"$§
{
   import §,!s§.b2internal;
   
   use namespace b2internal;
   
   public class §>!G§
   {
       
      
      b2internal var §-# §:int;
      
      b2internal var §-"`§:int;
      
      b2internal var §7#T§:int;
      
      b2internal var §>q§:int;
      
      b2internal var §]G§:b2ContactID;
      
      public function §>!G§()
      {
         super();
      }
      
      public function get §3F§() : int
      {
         return this.§-# §;
      }
      
      public function set §3F§(param1:int) : void
      {
         this.§-# § = param1;
         this.§]G§.§"!f§ = this.§]G§.§"!f§ & 4294967040 | this.§-# § & 255;
      }
      
      public function get §@#g§() : int
      {
         return this.§-"`§;
      }
      
      public function set §@#g§(param1:int) : void
      {
         this.§-"`§ = param1;
         this.§]G§.§"!f§ = this.§]G§.§"!f§ & 4294902015 | this.§-"`§ << 8 & 65280;
      }
      
      public function get §]#Q§() : int
      {
         return this.§7#T§;
      }
      
      public function set §]#Q§(param1:int) : void
      {
         this.§7#T§ = param1;
         this.§]G§.§"!f§ = this.§]G§.§"!f§ & 4278255615 | this.§7#T§ << 16 & 16711680;
      }
      
      public function get §`#v§() : int
      {
         return this.§>q§;
      }
      
      public function set §`#v§(param1:int) : void
      {
         this.§>q§ = param1;
         this.§]G§.§"!f§ = this.§]G§.§"!f§ & 16777215 | this.§>q§ << 24 & 4278190080;
      }
   }
}
