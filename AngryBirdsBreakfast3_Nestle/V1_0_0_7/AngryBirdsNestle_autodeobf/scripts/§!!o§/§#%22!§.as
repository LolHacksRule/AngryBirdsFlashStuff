package §!!o§
{
   import §!r§.b2internal;
   
   use namespace b2internal;
   
   public class §#"!§
   {
       
      
      b2internal var §-J§:int;
      
      b2internal var §@C§:int;
      
      b2internal var §7G§:int;
      
      b2internal var §[E§:int;
      
      b2internal var §-!$§:b2ContactID;
      
      public function §#"!§()
      {
         super();
      }
      
      public function get §[y§() : int
      {
         return this.§-J§;
      }
      
      public function set §[y§(param1:int) : void
      {
         this.§-J§ = param1;
         this.§-!$§.§3e§ = this.§-!$§.§3e§ & 4294967040 | this.§-J§ & 255;
      }
      
      public function get §9"$§() : int
      {
         return this.§@C§;
      }
      
      public function set §9"$§(param1:int) : void
      {
         this.§@C§ = param1;
         this.§-!$§.§3e§ = this.§-!$§.§3e§ & 4294902015 | this.§@C§ << 8 & 65280;
      }
      
      public function get §[§() : int
      {
         return this.§7G§;
      }
      
      public function set §[§(param1:int) : void
      {
         this.§7G§ = param1;
         this.§-!$§.§3e§ = this.§-!$§.§3e§ & 4278255615 | this.§7G§ << 16 & 16711680;
      }
      
      public function get §!!p§() : int
      {
         return this.§[E§;
      }
      
      public function set §!!p§(param1:int) : void
      {
         this.§[E§ = param1;
         this.§-!$§.§3e§ = this.§-!$§.§3e§ & 16777215 | this.§[E§ << 24 & 4278190080;
      }
   }
}
