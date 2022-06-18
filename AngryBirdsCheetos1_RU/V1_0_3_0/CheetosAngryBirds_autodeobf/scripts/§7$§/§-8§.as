package §7$§
{
   import §#,§.b2internal;
   
   use namespace b2internal;
   
   public class §-8§
   {
       
      
      b2internal var §5!O§:int;
      
      b2internal var §2@§:int;
      
      b2internal var §1!?§:int;
      
      b2internal var §<7§:int;
      
      b2internal var §;w§:b2ContactID;
      
      public function §-8§()
      {
         super();
      }
      
      public function get §-!E§() : int
      {
         return this.§5!O§;
      }
      
      public function set §-!E§(param1:int) : void
      {
         this.§5!O§ = param1;
         this.§;w§.§&%§ = this.§;w§.§&%§ & 4294967040 | this.§5!O§ & 255;
      }
      
      public function get §]'§() : int
      {
         return this.§2@§;
      }
      
      public function set §]'§(param1:int) : void
      {
         this.§2@§ = param1;
         this.§;w§.§&%§ = this.§;w§.§&%§ & 4294902015 | this.§2@§ << 8 & 65280;
      }
      
      public function get §1b§() : int
      {
         return this.§1!?§;
      }
      
      public function set §1b§(param1:int) : void
      {
         this.§1!?§ = param1;
         this.§;w§.§&%§ = this.§;w§.§&%§ & 4278255615 | this.§1!?§ << 16 & 16711680;
      }
      
      public function get §"D§() : int
      {
         return this.§<7§;
      }
      
      public function set §"D§(param1:int) : void
      {
         this.§<7§ = param1;
         this.§;w§.§&%§ = this.§;w§.§&%§ & 16777215 | this.§<7§ << 24 & 4278190080;
      }
   }
}
