package §;!Z§
{
   import §'!a§.b2internal;
   
   use namespace b2internal;
   
   public class §"f§
   {
       
      
      b2internal var §8!>§:int;
      
      b2internal var §=y§:int;
      
      b2internal var §9L§:int;
      
      b2internal var §38§:int;
      
      b2internal var §1";§:b2ContactID;
      
      public function §"f§()
      {
         super();
      }
      
      public function get §&"B§() : int
      {
         return this.§8!>§;
      }
      
      public function set §&"B§(param1:int) : void
      {
         this.§8!>§ = param1;
         this.§1";§.§+"D§ = this.§1";§.§+"D§ & 4294967040 | this.§8!>§ & 255;
      }
      
      public function get §6!Q§() : int
      {
         return this.§=y§;
      }
      
      public function set §6!Q§(param1:int) : void
      {
         this.§=y§ = param1;
         this.§1";§.§+"D§ = this.§1";§.§+"D§ & 4294902015 | this.§=y§ << 8 & 65280;
      }
      
      public function get §>" §() : int
      {
         return this.§9L§;
      }
      
      public function set §>" §(param1:int) : void
      {
         this.§9L§ = param1;
         this.§1";§.§+"D§ = this.§1";§.§+"D§ & 4278255615 | this.§9L§ << 16 & 16711680;
      }
      
      public function get §`b§() : int
      {
         return this.§38§;
      }
      
      public function set §`b§(param1:int) : void
      {
         this.§38§ = param1;
         this.§1";§.§+"D§ = this.§1";§.§+"D§ & 16777215 | this.§38§ << 24 & 4278190080;
      }
   }
}
