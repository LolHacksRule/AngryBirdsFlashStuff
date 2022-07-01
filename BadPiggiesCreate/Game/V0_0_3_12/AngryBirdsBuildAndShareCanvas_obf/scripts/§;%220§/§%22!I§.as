package §;"0§
{
   import §6!`§.b2internal;
   
   use namespace b2internal;
   
   public class §"!I§
   {
       
      
      b2internal var §?!Q§:int;
      
      b2internal var §&"8§:int;
      
      b2internal var §%V§:int;
      
      b2internal var §5!J§:int;
      
      b2internal var §&o§:b2ContactID;
      
      public function §"!I§()
      {
         super();
      }
      
      public function get §4"§() : int
      {
         return this.§?!Q§;
      }
      
      public function set §4"§(param1:int) : void
      {
         this.§?!Q§ = param1;
         this.§&o§.§4!§ = this.§&o§.§4!§ & 4294967040 | this.§?!Q§ & 255;
      }
      
      public function get §9!X§() : int
      {
         return this.§&"8§;
      }
      
      public function set §9!X§(param1:int) : void
      {
         this.§&"8§ = param1;
         this.§&o§.§4!§ = this.§&o§.§4!§ & 4294902015 | this.§&"8§ << 8 & 65280;
      }
      
      public function get §`!v§() : int
      {
         return this.§%V§;
      }
      
      public function set §`!v§(param1:int) : void
      {
         this.§%V§ = param1;
         this.§&o§.§4!§ = this.§&o§.§4!§ & 4278255615 | this.§%V§ << 16 & 16711680;
      }
      
      public function get §]I§() : int
      {
         return this.§5!J§;
      }
      
      public function set §]I§(param1:int) : void
      {
         this.§5!J§ = param1;
         this.§&o§.§4!§ = this.§&o§.§4!§ & 16777215 | this.§5!J§ << 24 & 4278190080;
      }
   }
}
