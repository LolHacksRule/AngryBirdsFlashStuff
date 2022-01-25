package §&!P§
{
   import §@g§.b2internal;
   
   use namespace b2internal;
   
   public class § 0§
   {
       
      
      b2internal var §;P§:int;
      
      b2internal var §%i§:int;
      
      b2internal var §3q§:int;
      
      b2internal var §^!5§:int;
      
      b2internal var §[3§:b2ContactID;
      
      public function § 0§()
      {
         super();
      }
      
      public function get §^S§() : int
      {
         return this.§;P§;
      }
      
      public function set §^S§(param1:int) : void
      {
         this.§;P§ = param1;
         this.§[3§.§[!m§ = this.§[3§.§[!m§ & 4294967040 | this.§;P§ & 255;
      }
      
      public function get §-Y§() : int
      {
         return this.§%i§;
      }
      
      public function set §-Y§(param1:int) : void
      {
         this.§%i§ = param1;
         this.§[3§.§[!m§ = this.§[3§.§[!m§ & 4294902015 | this.§%i§ << 8 & 65280;
      }
      
      public function get §%%§() : int
      {
         return this.§3q§;
      }
      
      public function set §%%§(param1:int) : void
      {
         this.§3q§ = param1;
         this.§[3§.§[!m§ = this.§[3§.§[!m§ & 4278255615 | this.§3q§ << 16 & 16711680;
      }
      
      public function get §3>§() : int
      {
         return this.§^!5§;
      }
      
      public function set §3>§(param1:int) : void
      {
         this.§^!5§ = param1;
         this.§[3§.§[!m§ = this.§[3§.§[!m§ & 16777215 | this.§^!5§ << 24 & 4278190080;
      }
   }
}
