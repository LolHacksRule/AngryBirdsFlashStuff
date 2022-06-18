package §<!^§
{
   import §8!%§.b2internal;
   
   use namespace b2internal;
   
   public class §^!J§
   {
       
      
      b2internal var §7O§:int;
      
      b2internal var §2!0§:int;
      
      b2internal var §?!`§:int;
      
      b2internal var §0q§:int;
      
      b2internal var §=O§:b2ContactID;
      
      public function §^!J§()
      {
         super();
      }
      
      public function get §=H§() : int
      {
         return this.§7O§;
      }
      
      public function set §=H§(param1:int) : void
      {
         this.§7O§ = param1;
         this.§=O§.§0!#§ = this.§=O§.§0!#§ & 4294967040 | this.§7O§ & 255;
      }
      
      public function get §8!H§() : int
      {
         return this.§2!0§;
      }
      
      public function set §8!H§(param1:int) : void
      {
         this.§2!0§ = param1;
         this.§=O§.§0!#§ = this.§=O§.§0!#§ & 4294902015 | this.§2!0§ << 8 & 65280;
      }
      
      public function get §<!Y§() : int
      {
         return this.§?!`§;
      }
      
      public function set §<!Y§(param1:int) : void
      {
         this.§?!`§ = param1;
         this.§=O§.§0!#§ = this.§=O§.§0!#§ & 4278255615 | this.§?!`§ << 16 & 16711680;
      }
      
      public function get §&d§() : int
      {
         return this.§0q§;
      }
      
      public function set §&d§(param1:int) : void
      {
         this.§0q§ = param1;
         this.§=O§.§0!#§ = this.§=O§.§0!#§ & 16777215 | this.§0q§ << 24 & 4278190080;
      }
   }
}
