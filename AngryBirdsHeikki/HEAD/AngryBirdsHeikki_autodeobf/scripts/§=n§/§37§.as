package §=n§
{
   import §6%§.b2internal;
   
   use namespace b2internal;
   
   public class §37§
   {
       
      
      b2internal var §]o§:int;
      
      b2internal var §"!&§:int;
      
      b2internal var §-!@§:int;
      
      b2internal var §[>§:int;
      
      b2internal var §`!]§:b2ContactID;
      
      public function §37§()
      {
         super();
      }
      
      public function get §22§() : int
      {
         return this.§]o§;
      }
      
      public function set §22§(param1:int) : void
      {
         this.§]o§ = param1;
         this.§`!]§.§@L§ = this.§`!]§.§@L§ & 4294967040 | this.§]o§ & 255;
      }
      
      public function get §,!;§() : int
      {
         return this.§"!&§;
      }
      
      public function set §,!;§(param1:int) : void
      {
         this.§"!&§ = param1;
         this.§`!]§.§@L§ = this.§`!]§.§@L§ & 4294902015 | this.§"!&§ << 8 & 65280;
      }
      
      public function get §@!b§() : int
      {
         return this.§-!@§;
      }
      
      public function set §@!b§(param1:int) : void
      {
         this.§-!@§ = param1;
         this.§`!]§.§@L§ = this.§`!]§.§@L§ & 4278255615 | this.§-!@§ << 16 & 16711680;
      }
      
      public function get §1z§() : int
      {
         return this.§[>§;
      }
      
      public function set §1z§(param1:int) : void
      {
         this.§[>§ = param1;
         this.§`!]§.§@L§ = this.§`!]§.§@L§ & 16777215 | this.§[>§ << 24 & 4278190080;
      }
   }
}
