package §7!&§
{
   import §'I§.b2internal;
   
   use namespace b2internal;
   
   public class §=!%§
   {
       
      
      b2internal var §,Q§:int;
      
      b2internal var §""'§:int;
      
      b2internal var §%!V§:int;
      
      b2internal var §+"-§:int;
      
      b2internal var §9!-§:b2ContactID;
      
      public function §=!%§()
      {
         super();
      }
      
      public function get §`#§() : int
      {
         return this.§,Q§;
      }
      
      public function set §`#§(param1:int) : void
      {
         this.§,Q§ = param1;
         this.§9!-§.§#!P§ = this.§9!-§.§#!P§ & 4294967040 | this.§,Q§ & 255;
      }
      
      public function get §?!F§() : int
      {
         return this.§""'§;
      }
      
      public function set §?!F§(param1:int) : void
      {
         this.§""'§ = param1;
         this.§9!-§.§#!P§ = this.§9!-§.§#!P§ & 4294902015 | this.§""'§ << 8 & 65280;
      }
      
      public function get §`R§() : int
      {
         return this.§%!V§;
      }
      
      public function set §`R§(param1:int) : void
      {
         this.§%!V§ = param1;
         this.§9!-§.§#!P§ = this.§9!-§.§#!P§ & 4278255615 | this.§%!V§ << 16 & 16711680;
      }
      
      public function get §@"+§() : int
      {
         return this.§+"-§;
      }
      
      public function set §@"+§(param1:int) : void
      {
         this.§+"-§ = param1;
         this.§9!-§.§#!P§ = this.§9!-§.§#!P§ & 16777215 | this.§+"-§ << 24 & 4278190080;
      }
   }
}
