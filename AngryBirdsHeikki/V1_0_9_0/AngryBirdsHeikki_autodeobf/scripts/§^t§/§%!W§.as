package §^t§
{
   import §+&§.b2internal;
   
   use namespace b2internal;
   
   public class §%!W§
   {
       
      
      b2internal var §7!0§:int;
      
      b2internal var §8U§:int;
      
      b2internal var § f§:int;
      
      b2internal var §6t§:int;
      
      b2internal var §>!?§:b2ContactID;
      
      public function §%!W§()
      {
         super();
      }
      
      public function get §#B§() : int
      {
         return this.§7!0§;
      }
      
      public function set §#B§(param1:int) : void
      {
         this.§7!0§ = param1;
         this.§>!?§.§<!^§ = this.§>!?§.§<!^§ & 4294967040 | this.§7!0§ & 255;
      }
      
      public function get § 4§() : int
      {
         return this.§8U§;
      }
      
      public function set § 4§(param1:int) : void
      {
         this.§8U§ = param1;
         this.§>!?§.§<!^§ = this.§>!?§.§<!^§ & 4294902015 | this.§8U§ << 8 & 65280;
      }
      
      public function get §6!f§() : int
      {
         return this.§ f§;
      }
      
      public function set §6!f§(param1:int) : void
      {
         this.§ f§ = param1;
         this.§>!?§.§<!^§ = this.§>!?§.§<!^§ & 4278255615 | this.§ f§ << 16 & 16711680;
      }
      
      public function get §"q§() : int
      {
         return this.§6t§;
      }
      
      public function set §"q§(param1:int) : void
      {
         this.§6t§ = param1;
         this.§>!?§.§<!^§ = this.§>!?§.§<!^§ & 16777215 | this.§6t§ << 24 & 4278190080;
      }
   }
}
