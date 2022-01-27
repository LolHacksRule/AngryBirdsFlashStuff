package §3m§
{
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class §&!-§
   {
       
      
      b2internal var §`"B§:int;
      
      b2internal var §7v§:int;
      
      b2internal var §@l§:int;
      
      b2internal var §0!Z§:int;
      
      b2internal var §^z§:b2ContactID;
      
      public function §&!-§()
      {
         super();
      }
      
      public function get §^3§() : int
      {
         return this.§`"B§;
      }
      
      public function set §^3§(param1:int) : void
      {
         this.§`"B§ = param1;
         this.§^z§.§&!z§ = this.§^z§.§&!z§ & 4294967040 | this.§`"B§ & 255;
      }
      
      public function get §9^§() : int
      {
         return this.§7v§;
      }
      
      public function set §9^§(param1:int) : void
      {
         this.§7v§ = param1;
         this.§^z§.§&!z§ = this.§^z§.§&!z§ & 4294902015 | this.§7v§ << 8 & 65280;
      }
      
      public function get §9,§() : int
      {
         return this.§@l§;
      }
      
      public function set §9,§(param1:int) : void
      {
         this.§@l§ = param1;
         this.§^z§.§&!z§ = this.§^z§.§&!z§ & 4278255615 | this.§@l§ << 16 & 16711680;
      }
      
      public function get §>L§() : int
      {
         return this.§0!Z§;
      }
      
      public function set §>L§(param1:int) : void
      {
         this.§0!Z§ = param1;
         this.§^z§.§&!z§ = this.§^z§.§&!z§ & 16777215 | this.§0!Z§ << 24 & 4278190080;
      }
   }
}
