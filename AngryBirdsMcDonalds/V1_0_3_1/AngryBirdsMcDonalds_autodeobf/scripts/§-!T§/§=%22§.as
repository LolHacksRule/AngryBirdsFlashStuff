package §-!T§
{
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class §="§
   {
       
      
      b2internal var §+v§:int;
      
      b2internal var §+!9§:int;
      
      b2internal var §[6§:int;
      
      b2internal var §'>§:int;
      
      b2internal var § g§:b2ContactID;
      
      public function §="§()
      {
         super();
      }
      
      public function get §-!W§() : int
      {
         return this.§+v§;
      }
      
      public function set §-!W§(param1:int) : void
      {
         this.§+v§ = param1;
         this.§ g§.§@!1§ = this.§ g§.§@!1§ & 4294967040 | this.§+v§ & 255;
      }
      
      public function get §return§() : int
      {
         return this.§+!9§;
      }
      
      public function set §return§(param1:int) : void
      {
         this.§+!9§ = param1;
         this.§ g§.§@!1§ = this.§ g§.§@!1§ & 4294902015 | this.§+!9§ << 8 & 65280;
      }
      
      public function get §9!Q§() : int
      {
         return this.§[6§;
      }
      
      public function set §9!Q§(param1:int) : void
      {
         this.§[6§ = param1;
         this.§ g§.§@!1§ = this.§ g§.§@!1§ & 4278255615 | this.§[6§ << 16 & 16711680;
      }
      
      public function get §for§() : int
      {
         return this.§'>§;
      }
      
      public function set §for§(param1:int) : void
      {
         this.§'>§ = param1;
         this.§ g§.§@!1§ = this.§ g§.§@!1§ & 16777215 | this.§'>§ << 24 & 4278190080;
      }
   }
}
