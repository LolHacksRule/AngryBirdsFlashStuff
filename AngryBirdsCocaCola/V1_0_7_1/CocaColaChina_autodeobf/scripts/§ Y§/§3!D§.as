package § Y§
{
   import §#!M§.b2internal;
   
   use namespace b2internal;
   
   public class §3!D§
   {
       
      
      b2internal var §^L§:int;
      
      b2internal var §4!!§:int;
      
      b2internal var §@@§:int;
      
      b2internal var §=!`§:int;
      
      b2internal var §[!J§:b2ContactID;
      
      public function §3!D§()
      {
         super();
      }
      
      public function get §]_§() : int
      {
         return this.§^L§;
      }
      
      public function set §]_§(param1:int) : void
      {
         this.§^L§ = param1;
         this.§[!J§.§"!1§ = this.§[!J§.§"!1§ & 4294967040 | this.§^L§ & 255;
      }
      
      public function get §`!P§() : int
      {
         return this.§4!!§;
      }
      
      public function set §`!P§(param1:int) : void
      {
         this.§4!!§ = param1;
         this.§[!J§.§"!1§ = this.§[!J§.§"!1§ & 4294902015 | this.§4!!§ << 8 & 65280;
      }
      
      public function get §2!4§() : int
      {
         return this.§@@§;
      }
      
      public function set §2!4§(param1:int) : void
      {
         this.§@@§ = param1;
         this.§[!J§.§"!1§ = this.§[!J§.§"!1§ & 4278255615 | this.§@@§ << 16 & 16711680;
      }
      
      public function get §`!S§() : int
      {
         return this.§=!`§;
      }
      
      public function set §`!S§(param1:int) : void
      {
         this.§=!`§ = param1;
         this.§[!J§.§"!1§ = this.§[!J§.§"!1§ & 16777215 | this.§=!`§ << 24 & 4278190080;
      }
   }
}
