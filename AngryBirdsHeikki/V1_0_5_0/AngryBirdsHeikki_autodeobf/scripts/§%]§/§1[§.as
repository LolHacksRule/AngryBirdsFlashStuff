package §%]§
{
   import §3'§.b2internal;
   
   use namespace b2internal;
   
   public class §1[§
   {
       
      
      b2internal var §0!3§:int;
      
      b2internal var §1!5§:int;
      
      b2internal var §;p§:int;
      
      b2internal var §1J§:int;
      
      b2internal var § !d§:b2ContactID;
      
      public function §1[§()
      {
         super();
      }
      
      public function get §0D§() : int
      {
         return this.§0!3§;
      }
      
      public function set §0D§(param1:int) : void
      {
         this.§0!3§ = param1;
         this.§ !d§.§+!L§ = this.§ !d§.§+!L§ & 4294967040 | this.§0!3§ & 255;
      }
      
      public function get § !b§() : int
      {
         return this.§1!5§;
      }
      
      public function set § !b§(param1:int) : void
      {
         this.§1!5§ = param1;
         this.§ !d§.§+!L§ = this.§ !d§.§+!L§ & 4294902015 | this.§1!5§ << 8 & 65280;
      }
      
      public function get §]0§() : int
      {
         return this.§;p§;
      }
      
      public function set §]0§(param1:int) : void
      {
         this.§;p§ = param1;
         this.§ !d§.§+!L§ = this.§ !d§.§+!L§ & 4278255615 | this.§;p§ << 16 & 16711680;
      }
      
      public function get §"z§() : int
      {
         return this.§1J§;
      }
      
      public function set §"z§(param1:int) : void
      {
         this.§1J§ = param1;
         this.§ !d§.§+!L§ = this.§ !d§.§+!L§ & 16777215 | this.§1J§ << 24 & 4278190080;
      }
   }
}
