package §,P§
{
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class §+3§
   {
       
      
      b2internal var §!!?§:int;
      
      b2internal var §#!7§:int;
      
      b2internal var §!!j§:int;
      
      b2internal var §#!^§:int;
      
      b2internal var §]F§:b2ContactID;
      
      public function §+3§()
      {
         super();
      }
      
      public function get §5!o§() : int
      {
         return this.§!!?§;
      }
      
      public function set §5!o§(param1:int) : void
      {
         this.§!!?§ = param1;
         this.§]F§.§ g§ = this.§]F§.§ g§ & 4294967040 | this.§!!?§ & 255;
      }
      
      public function get §7![§() : int
      {
         return this.§#!7§;
      }
      
      public function set §7![§(param1:int) : void
      {
         this.§#!7§ = param1;
         this.§]F§.§ g§ = this.§]F§.§ g§ & 4294902015 | this.§#!7§ << 8 & 65280;
      }
      
      public function get §^g§() : int
      {
         return this.§!!j§;
      }
      
      public function set §^g§(param1:int) : void
      {
         this.§!!j§ = param1;
         this.§]F§.§ g§ = this.§]F§.§ g§ & 4278255615 | this.§!!j§ << 16 & 16711680;
      }
      
      public function get §@!g§() : int
      {
         return this.§#!^§;
      }
      
      public function set §@!g§(param1:int) : void
      {
         this.§#!^§ = param1;
         this.§]F§.§ g§ = this.§]F§.§ g§ & 16777215 | this.§#!^§ << 24 & 4278190080;
      }
   }
}
