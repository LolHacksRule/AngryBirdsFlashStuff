package §;!7§
{
   import §"!R§.b2internal;
   
   use namespace b2internal;
   
   public class §;V§
   {
       
      
      b2internal var §-G§:int;
      
      b2internal var §&z§:int;
      
      b2internal var §="§:int;
      
      b2internal var §"!1§:int;
      
      b2internal var §%j§:b2ContactID;
      
      public function §;V§()
      {
         super();
      }
      
      public function get §!=§() : int
      {
         return this.§-G§;
      }
      
      public function set §!=§(param1:int) : void
      {
         this.§-G§ = param1;
         this.§%j§.§=Y§ = this.§%j§.§=Y§ & 4294967040 | this.§-G§ & 255;
      }
      
      public function get § !&§() : int
      {
         return this.§&z§;
      }
      
      public function set § !&§(param1:int) : void
      {
         this.§&z§ = param1;
         this.§%j§.§=Y§ = this.§%j§.§=Y§ & 4294902015 | this.§&z§ << 8 & 65280;
      }
      
      public function get §7`§() : int
      {
         return this.§="§;
      }
      
      public function set §7`§(param1:int) : void
      {
         this.§="§ = param1;
         this.§%j§.§=Y§ = this.§%j§.§=Y§ & 4278255615 | this.§="§ << 16 & 16711680;
      }
      
      public function get §3@§() : int
      {
         return this.§"!1§;
      }
      
      public function set §3@§(param1:int) : void
      {
         this.§"!1§ = param1;
         this.§%j§.§=Y§ = this.§%j§.§=Y§ & 16777215 | this.§"!1§ << 24 & 4278190080;
      }
   }
}
