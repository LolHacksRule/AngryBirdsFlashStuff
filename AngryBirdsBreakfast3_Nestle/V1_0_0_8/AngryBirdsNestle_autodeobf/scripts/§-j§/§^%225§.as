package §-j§
{
   import §7!F§.b2internal;
   
   use namespace b2internal;
   
   public class §^"5§
   {
       
      
      b2internal var §#;§:int;
      
      b2internal var §`!5§:int;
      
      b2internal var §]"1§:int;
      
      b2internal var §^!2§:int;
      
      b2internal var §[G§:b2ContactID;
      
      public function §^"5§()
      {
         super();
      }
      
      public function get §-N§() : int
      {
         return this.§#;§;
      }
      
      public function set §-N§(param1:int) : void
      {
         this.§#;§ = param1;
         this.§[G§.§#!`§ = this.§[G§.§#!`§ & 4294967040 | this.§#;§ & 255;
      }
      
      public function get §"!B§() : int
      {
         return this.§`!5§;
      }
      
      public function set §"!B§(param1:int) : void
      {
         this.§`!5§ = param1;
         this.§[G§.§#!`§ = this.§[G§.§#!`§ & 4294902015 | this.§`!5§ << 8 & 65280;
      }
      
      public function get §<r§() : int
      {
         return this.§]"1§;
      }
      
      public function set §<r§(param1:int) : void
      {
         this.§]"1§ = param1;
         this.§[G§.§#!`§ = this.§[G§.§#!`§ & 4278255615 | this.§]"1§ << 16 & 16711680;
      }
      
      public function get §^!o§() : int
      {
         return this.§^!2§;
      }
      
      public function set §^!o§(param1:int) : void
      {
         this.§^!2§ = param1;
         this.§[G§.§#!`§ = this.§[G§.§#!`§ & 16777215 | this.§^!2§ << 24 & 4278190080;
      }
   }
}
