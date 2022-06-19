package § G§
{
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class §4!-§
   {
       
      
      b2internal var §7!D§:int;
      
      b2internal var §@!H§:int;
      
      b2internal var §<e§:int;
      
      b2internal var §2h§:int;
      
      b2internal var §1!?§:b2ContactID;
      
      public function §4!-§()
      {
         super();
      }
      
      public function get §'f§() : int
      {
         return this.§7!D§;
      }
      
      public function set §'f§(param1:int) : void
      {
         this.§7!D§ = param1;
         this.§1!?§.§32§ = this.§1!?§.§32§ & 4294967040 | this.§7!D§ & 255;
      }
      
      public function get §2H§() : int
      {
         return this.§@!H§;
      }
      
      public function set §2H§(param1:int) : void
      {
         this.§@!H§ = param1;
         this.§1!?§.§32§ = this.§1!?§.§32§ & 4294902015 | this.§@!H§ << 8 & 65280;
      }
      
      public function get §!!;§() : int
      {
         return this.§<e§;
      }
      
      public function set §!!;§(param1:int) : void
      {
         this.§<e§ = param1;
         this.§1!?§.§32§ = this.§1!?§.§32§ & 4278255615 | this.§<e§ << 16 & 16711680;
      }
      
      public function get §2x§() : int
      {
         return this.§2h§;
      }
      
      public function set §2x§(param1:int) : void
      {
         this.§2h§ = param1;
         this.§1!?§.§32§ = this.§1!?§.§32§ & 16777215 | this.§2h§ << 24 & 4278190080;
      }
   }
}
