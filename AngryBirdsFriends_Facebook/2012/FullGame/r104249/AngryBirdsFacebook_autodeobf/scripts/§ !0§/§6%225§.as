package § !0§
{
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class §6"5§
   {
       
      
      b2internal var §4X§:int;
      
      b2internal var §?a§:int;
      
      b2internal var §%j§:int;
      
      b2internal var §,z§:int;
      
      b2internal var §4e§:b2ContactID;
      
      public function §6"5§()
      {
         super();
      }
      
      public function get §2r§() : int
      {
         return this.§4X§;
      }
      
      public function set §2r§(param1:int) : void
      {
         this.§4X§ = param1;
         this.§4e§.§>c§ = this.§4e§.§>c§ & 4294967040 | this.§4X§ & 255;
      }
      
      public function get §]v§() : int
      {
         return this.§?a§;
      }
      
      public function set §]v§(param1:int) : void
      {
         this.§?a§ = param1;
         this.§4e§.§>c§ = this.§4e§.§>c§ & 4294902015 | this.§?a§ << 8 & 65280;
      }
      
      public function get §2!4§() : int
      {
         return this.§%j§;
      }
      
      public function set §2!4§(param1:int) : void
      {
         this.§%j§ = param1;
         this.§4e§.§>c§ = this.§4e§.§>c§ & 4278255615 | this.§%j§ << 16 & 16711680;
      }
      
      public function get §`!2§() : int
      {
         return this.§,z§;
      }
      
      public function set §`!2§(param1:int) : void
      {
         this.§,z§ = param1;
         this.§4e§.§>c§ = this.§4e§.§>c§ & 16777215 | this.§,z§ << 24 & 4278190080;
      }
   }
}
