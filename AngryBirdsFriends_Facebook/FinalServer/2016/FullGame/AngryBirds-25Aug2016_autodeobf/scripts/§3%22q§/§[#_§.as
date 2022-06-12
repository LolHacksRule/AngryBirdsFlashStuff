package §3"q§
{
   import §0H§.b2internal;
   
   use namespace b2internal;
   
   public class §[#_§
   {
       
      
      b2internal var §>"w§:int;
      
      b2internal var §0#G§:int;
      
      b2internal var §<#0§:int;
      
      b2internal var §%?§:int;
      
      b2internal var §]"q§:b2ContactID;
      
      public function §[#_§()
      {
         super();
      }
      
      public function get §?!e§() : int
      {
         return this.§>"w§;
      }
      
      public function set §?!e§(param1:int) : void
      {
         this.§>"w§ = param1;
         this.§]"q§.§&"Z§ = this.§]"q§.§&"Z§ & 4294967040 | this.§>"w§ & 255;
      }
      
      public function get §]$3§() : int
      {
         return this.§0#G§;
      }
      
      public function set §]$3§(param1:int) : void
      {
         this.§0#G§ = param1;
         this.§]"q§.§&"Z§ = this.§]"q§.§&"Z§ & 4294902015 | this.§0#G§ << 8 & 65280;
      }
      
      public function get §<V§() : int
      {
         return this.§<#0§;
      }
      
      public function set §<V§(param1:int) : void
      {
         this.§<#0§ = param1;
         this.§]"q§.§&"Z§ = this.§]"q§.§&"Z§ & 4278255615 | this.§<#0§ << 16 & 16711680;
      }
      
      public function get §#!§() : int
      {
         return this.§%?§;
      }
      
      public function set §#!§(param1:int) : void
      {
         this.§%?§ = param1;
         this.§]"q§.§&"Z§ = this.§]"q§.§&"Z§ & 16777215 | this.§%?§ << 24 & 4278190080;
      }
   }
}
