package §<!!§
{
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class §6B§
   {
       
      
      b2internal var § T§:int;
      
      b2internal var §3!O§:int;
      
      b2internal var § p§:int;
      
      b2internal var §>!>§:int;
      
      b2internal var §]!M§:b2ContactID;
      
      public function §6B§()
      {
         super();
      }
      
      public function get §2!,§() : int
      {
         return this.§ T§;
      }
      
      public function set §2!,§(param1:int) : void
      {
         this.§ T§ = param1;
         this.§]!M§.§21§ = this.§]!M§.§21§ & 4294967040 | this.§ T§ & 255;
      }
      
      public function get §=!9§() : int
      {
         return this.§3!O§;
      }
      
      public function set §=!9§(param1:int) : void
      {
         this.§3!O§ = param1;
         this.§]!M§.§21§ = this.§]!M§.§21§ & 4294902015 | this.§3!O§ << 8 & 65280;
      }
      
      public function get §<!G§() : int
      {
         return this.§ p§;
      }
      
      public function set §<!G§(param1:int) : void
      {
         this.§ p§ = param1;
         this.§]!M§.§21§ = this.§]!M§.§21§ & 4278255615 | this.§ p§ << 16 & 16711680;
      }
      
      public function get §9%§() : int
      {
         return this.§>!>§;
      }
      
      public function set §9%§(param1:int) : void
      {
         this.§>!>§ = param1;
         this.§]!M§.§21§ = this.§]!M§.§21§ & 16777215 | this.§>!>§ << 24 & 4278190080;
      }
   }
}
