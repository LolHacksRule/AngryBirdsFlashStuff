package §!4§
{
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class §%W§
   {
       
      
      b2internal var § ?§:int;
      
      b2internal var §+S§:int;
      
      b2internal var §9g§:int;
      
      b2internal var §]Z§:int;
      
      b2internal var §=D§:b2ContactID;
      
      public function §%W§()
      {
         super();
      }
      
      public function get §6x§() : int
      {
         return this.§ ?§;
      }
      
      public function set §6x§(param1:int) : void
      {
         this.§ ?§ = param1;
         this.§=D§.§0k§ = this.§=D§.§0k§ & 4294967040 | this.§ ?§ & 255;
      }
      
      public function get §;!'§() : int
      {
         return this.§+S§;
      }
      
      public function set §;!'§(param1:int) : void
      {
         this.§+S§ = param1;
         this.§=D§.§0k§ = this.§=D§.§0k§ & 4294902015 | this.§+S§ << 8 & 65280;
      }
      
      public function get § 2§() : int
      {
         return this.§9g§;
      }
      
      public function set § 2§(param1:int) : void
      {
         this.§9g§ = param1;
         this.§=D§.§0k§ = this.§=D§.§0k§ & 4278255615 | this.§9g§ << 16 & 16711680;
      }
      
      public function get §1!$§() : int
      {
         return this.§]Z§;
      }
      
      public function set §1!$§(param1:int) : void
      {
         this.§]Z§ = param1;
         this.§=D§.§0k§ = this.§=D§.§0k§ & 16777215 | this.§]Z§ << 24 & 4278190080;
      }
   }
}
