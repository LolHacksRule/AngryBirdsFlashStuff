package §]7§
{
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class §9!^§
   {
       
      
      b2internal var §0!3§:int;
      
      b2internal var §-n§:int;
      
      b2internal var §>p§:int;
      
      b2internal var §`!V§:int;
      
      b2internal var §4u§:b2ContactID;
      
      public function §9!^§()
      {
         super();
      }
      
      public function get §?<§() : int
      {
         return this.§0!3§;
      }
      
      public function set §?<§(param1:int) : void
      {
         this.§0!3§ = param1;
         this.§4u§.§3>§ = this.§4u§.§3>§ & 4294967040 | this.§0!3§ & 255;
      }
      
      public function get §-[§() : int
      {
         return this.§-n§;
      }
      
      public function set §-[§(param1:int) : void
      {
         this.§-n§ = param1;
         this.§4u§.§3>§ = this.§4u§.§3>§ & 4294902015 | this.§-n§ << 8 & 65280;
      }
      
      public function get §1!O§() : int
      {
         return this.§>p§;
      }
      
      public function set §1!O§(param1:int) : void
      {
         this.§>p§ = param1;
         this.§4u§.§3>§ = this.§4u§.§3>§ & 4278255615 | this.§>p§ << 16 & 16711680;
      }
      
      public function get §7,§() : int
      {
         return this.§`!V§;
      }
      
      public function set §7,§(param1:int) : void
      {
         this.§`!V§ = param1;
         this.§4u§.§3>§ = this.§4u§.§3>§ & 16777215 | this.§`!V§ << 24 & 4278190080;
      }
   }
}
