package §<"§
{
   import §4x§.b2internal;
   
   use namespace b2internal;
   
   public class §`!'§
   {
       
      
      b2internal var §%!E§:int;
      
      b2internal var §3o§:int;
      
      b2internal var §&7§:int;
      
      b2internal var § N§:int;
      
      b2internal var §;o§:b2ContactID;
      
      public function §`!'§()
      {
         super();
      }
      
      public function get §>E§() : int
      {
         return this.§%!E§;
      }
      
      public function set §>E§(param1:int) : void
      {
         this.§%!E§ = param1;
         this.§;o§.§=y§ = this.§;o§.§=y§ & 4294967040 | this.§%!E§ & 255;
      }
      
      public function get §9E§() : int
      {
         return this.§3o§;
      }
      
      public function set §9E§(param1:int) : void
      {
         this.§3o§ = param1;
         this.§;o§.§=y§ = this.§;o§.§=y§ & 4294902015 | this.§3o§ << 8 & 65280;
      }
      
      public function get §]u§() : int
      {
         return this.§&7§;
      }
      
      public function set §]u§(param1:int) : void
      {
         this.§&7§ = param1;
         this.§;o§.§=y§ = this.§;o§.§=y§ & 4278255615 | this.§&7§ << 16 & 16711680;
      }
      
      public function get §"!X§() : int
      {
         return this.§ N§;
      }
      
      public function set §"!X§(param1:int) : void
      {
         this.§ N§ = param1;
         this.§;o§.§=y§ = this.§;o§.§=y§ & 16777215 | this.§ N§ << 24 & 4278190080;
      }
   }
}
