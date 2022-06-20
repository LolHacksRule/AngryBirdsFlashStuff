package §9$A§
{
   import §1#F§.b2internal;
   
   use namespace b2internal;
   
   public class §^#f§
   {
       
      
      b2internal var §`7§:int;
      
      b2internal var §,R§:int;
      
      b2internal var §'"r§:int;
      
      b2internal var §!#[§:int;
      
      b2internal var §7A§:b2ContactID;
      
      public function §^#f§()
      {
         super();
      }
      
      public function get §3!q§() : int
      {
         return this.§`7§;
      }
      
      public function set §3!q§(param1:int) : void
      {
         this.§`7§ = param1;
         this.§7A§.§2"l§ = this.§7A§.§2"l§ & 4294967040 | this.§`7§ & 255;
      }
      
      public function get §##Q§() : int
      {
         return this.§,R§;
      }
      
      public function set §##Q§(param1:int) : void
      {
         this.§,R§ = param1;
         this.§7A§.§2"l§ = this.§7A§.§2"l§ & 4294902015 | this.§,R§ << 8 & 65280;
      }
      
      public function get §#!Z§() : int
      {
         return this.§'"r§;
      }
      
      public function set §#!Z§(param1:int) : void
      {
         this.§'"r§ = param1;
         this.§7A§.§2"l§ = this.§7A§.§2"l§ & 4278255615 | this.§'"r§ << 16 & 16711680;
      }
      
      public function get § else§() : int
      {
         return this.§!#[§;
      }
      
      public function set § else§(param1:int) : void
      {
         this.§!#[§ = param1;
         this.§7A§.§2"l§ = this.§7A§.§2"l§ & 16777215 | this.§!#[§ << 24 & 4278190080;
      }
   }
}
