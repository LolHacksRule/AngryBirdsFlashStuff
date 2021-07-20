package §!m§
{
   import §+!g§.b2internal;
   
   use namespace b2internal;
   
   public class § 2§
   {
       
      
      b2internal var §2!>§:int;
      
      b2internal var §2N§:int;
      
      b2internal var §%=§:int;
      
      b2internal var §&!;§:int;
      
      b2internal var §[m§:b2ContactID;
      
      public function § 2§()
      {
         super();
      }
      
      public function get §set §() : int
      {
         return this.§2!>§;
      }
      
      public function set §set §(param1:int) : void
      {
         this.§2!>§ = param1;
         this.§[m§.§1o§ = this.§[m§.§1o§ & 4294967040 | this.§2!>§ & 255;
      }
      
      public function get §-!A§() : int
      {
         return this.§2N§;
      }
      
      public function set §-!A§(param1:int) : void
      {
         this.§2N§ = param1;
         this.§[m§.§1o§ = this.§[m§.§1o§ & 4294902015 | this.§2N§ << 8 & 65280;
      }
      
      public function get §=!<§() : int
      {
         return this.§%=§;
      }
      
      public function set §=!<§(param1:int) : void
      {
         this.§%=§ = param1;
         this.§[m§.§1o§ = this.§[m§.§1o§ & 4278255615 | this.§%=§ << 16 & 16711680;
      }
      
      public function get §[f§() : int
      {
         return this.§&!;§;
      }
      
      public function set §[f§(param1:int) : void
      {
         this.§&!;§ = param1;
         this.§[m§.§1o§ = this.§[m§.§1o§ & 16777215 | this.§&!;§ << 24 & 4278190080;
      }
   }
}
