package §[!Z§
{
   import §7"'§.b2internal;
   
   use namespace b2internal;
   
   public class §&!^§
   {
       
      
      b2internal var §9!"§:int;
      
      b2internal var §%"+§:int;
      
      b2internal var §^!§:int;
      
      b2internal var §-!a§:int;
      
      b2internal var §9!L§:b2ContactID;
      
      public function §&!^§()
      {
         super();
      }
      
      public function get §<!6§() : int
      {
         return this.§9!"§;
      }
      
      public function set §<!6§(param1:int) : void
      {
         this.§9!"§ = param1;
         this.§9!L§.§'a§ = this.§9!L§.§'a§ & 4294967040 | this.§9!"§ & 255;
      }
      
      public function get §&""§() : int
      {
         return this.§%"+§;
      }
      
      public function set §&""§(param1:int) : void
      {
         this.§%"+§ = param1;
         this.§9!L§.§'a§ = this.§9!L§.§'a§ & 4294902015 | this.§%"+§ << 8 & 65280;
      }
      
      public function get §&!G§() : int
      {
         return this.§^!§;
      }
      
      public function set §&!G§(param1:int) : void
      {
         this.§^!§ = param1;
         this.§9!L§.§'a§ = this.§9!L§.§'a§ & 4278255615 | this.§^!§ << 16 & 16711680;
      }
      
      public function get §;!H§() : int
      {
         return this.§-!a§;
      }
      
      public function set §;!H§(param1:int) : void
      {
         this.§-!a§ = param1;
         this.§9!L§.§'a§ = this.§9!L§.§'a§ & 16777215 | this.§-!a§ << 24 & 4278190080;
      }
   }
}
