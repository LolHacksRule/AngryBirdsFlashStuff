package §3c§
{
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class §=!s§
   {
       
      
      b2internal var §?"#§:int;
      
      b2internal var §%!G§:int;
      
      b2internal var §&J§:int;
      
      b2internal var §""H§:int;
      
      b2internal var §&!?§:b2ContactID;
      
      public function §=!s§()
      {
         super();
      }
      
      public function get §+"0§() : int
      {
         return this.§?"#§;
      }
      
      public function set §+"0§(param1:int) : void
      {
         this.§?"#§ = param1;
         this.§&!?§.§=^§ = this.§&!?§.§=^§ & 4294967040 | this.§?"#§ & 255;
      }
      
      public function get §25§() : int
      {
         return this.§%!G§;
      }
      
      public function set §25§(param1:int) : void
      {
         this.§%!G§ = param1;
         this.§&!?§.§=^§ = this.§&!?§.§=^§ & 4294902015 | this.§%!G§ << 8 & 65280;
      }
      
      public function get §#"!§() : int
      {
         return this.§&J§;
      }
      
      public function set §#"!§(param1:int) : void
      {
         this.§&J§ = param1;
         this.§&!?§.§=^§ = this.§&!?§.§=^§ & 4278255615 | this.§&J§ << 16 & 16711680;
      }
      
      public function get §9!2§() : int
      {
         return this.§""H§;
      }
      
      public function set §9!2§(param1:int) : void
      {
         this.§""H§ = param1;
         this.§&!?§.§=^§ = this.§&!?§.§=^§ & 16777215 | this.§""H§ << 24 & 4278190080;
      }
   }
}
