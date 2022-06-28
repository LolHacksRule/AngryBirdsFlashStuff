package §`!H§
{
   import §8!H§.b2internal;
   
   use namespace b2internal;
   
   public class §#_§
   {
       
      
      b2internal var §7Y§:int;
      
      b2internal var §9!B§:int;
      
      b2internal var §@!W§:int;
      
      b2internal var § r§:int;
      
      b2internal var §4!2§:b2ContactID;
      
      public function §#_§()
      {
         super();
      }
      
      public function get §+c§() : int
      {
         return this.§7Y§;
      }
      
      public function set §+c§(param1:int) : void
      {
         this.§7Y§ = param1;
         this.§4!2§.§^%§ = this.§4!2§.§^%§ & 4294967040 | this.§7Y§ & 255;
      }
      
      public function get §8!O§() : int
      {
         return this.§9!B§;
      }
      
      public function set §8!O§(param1:int) : void
      {
         this.§9!B§ = param1;
         this.§4!2§.§^%§ = this.§4!2§.§^%§ & 4294902015 | this.§9!B§ << 8 & 65280;
      }
      
      public function get §,Z§() : int
      {
         return this.§@!W§;
      }
      
      public function set §,Z§(param1:int) : void
      {
         this.§@!W§ = param1;
         this.§4!2§.§^%§ = this.§4!2§.§^%§ & 4278255615 | this.§@!W§ << 16 & 16711680;
      }
      
      public function get § !h§() : int
      {
         return this.§ r§;
      }
      
      public function set § !h§(param1:int) : void
      {
         this.§ r§ = param1;
         this.§4!2§.§^%§ = this.§4!2§.§^%§ & 16777215 | this.§ r§ << 24 & 4278190080;
      }
   }
}
