package §]M§
{
   import §"v§.b2internal;
   
   use namespace b2internal;
   
   public class §#!L§
   {
       
      
      b2internal var §'-§:int;
      
      b2internal var §catch§:int;
      
      b2internal var §#!4§:int;
      
      b2internal var §2!-§:int;
      
      b2internal var §<d§:b2ContactID;
      
      public function §#!L§()
      {
         super();
      }
      
      public function get §-z§() : int
      {
         return this.§'-§;
      }
      
      public function set §-z§(param1:int) : void
      {
         this.§'-§ = param1;
         this.§<d§.§0!%§ = this.§<d§.§0!%§ & 4294967040 | this.§'-§ & 255;
      }
      
      public function get §-a§() : int
      {
         return this.§catch§;
      }
      
      public function set §-a§(param1:int) : void
      {
         this.§catch§ = param1;
         this.§<d§.§0!%§ = this.§<d§.§0!%§ & 4294902015 | this.§catch§ << 8 & 65280;
      }
      
      public function get §]!>§() : int
      {
         return this.§#!4§;
      }
      
      public function set §]!>§(param1:int) : void
      {
         this.§#!4§ = param1;
         this.§<d§.§0!%§ = this.§<d§.§0!%§ & 4278255615 | this.§#!4§ << 16 & 16711680;
      }
      
      public function get §87§() : int
      {
         return this.§2!-§;
      }
      
      public function set §87§(param1:int) : void
      {
         this.§2!-§ = param1;
         this.§<d§.§0!%§ = this.§<d§.§0!%§ & 16777215 | this.§2!-§ << 24 & 4278190080;
      }
   }
}
