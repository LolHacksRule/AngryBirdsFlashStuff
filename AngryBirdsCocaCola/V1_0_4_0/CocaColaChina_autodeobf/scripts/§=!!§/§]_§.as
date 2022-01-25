package §=!!§
{
   import §7!C§.b2internal;
   
   use namespace b2internal;
   
   public class §]_§
   {
       
      
      b2internal var §`!P§:int;
      
      b2internal var §2!4§:int;
      
      b2internal var §`!S§:int;
      
      b2internal var §[!J§:int;
      
      b2internal var §'k§:b2ContactID;
      
      public function §]_§()
      {
         super();
      }
      
      public function get §^L§() : int
      {
         return this.§`!P§;
      }
      
      public function set §^L§(param1:int) : void
      {
         this.§`!P§ = param1;
         this.§'k§.§1!Z§ = this.§'k§.§1!Z§ & 4294967040 | this.§`!P§ & 255;
      }
      
      public function get §4!!§() : int
      {
         return this.§2!4§;
      }
      
      public function set §4!!§(param1:int) : void
      {
         this.§2!4§ = param1;
         this.§'k§.§1!Z§ = this.§'k§.§1!Z§ & 4294902015 | this.§2!4§ << 8 & 65280;
      }
      
      public function get §@@§() : int
      {
         return this.§`!S§;
      }
      
      public function set §@@§(param1:int) : void
      {
         this.§`!S§ = param1;
         this.§'k§.§1!Z§ = this.§'k§.§1!Z§ & 4278255615 | this.§`!S§ << 16 & 16711680;
      }
      
      public function get §=!`§() : int
      {
         return this.§[!J§;
      }
      
      public function set §=!`§(param1:int) : void
      {
         this.§[!J§ = param1;
         this.§'k§.§1!Z§ = this.§'k§.§1!Z§ & 16777215 | this.§[!J§ << 24 & 4278190080;
      }
   }
}
