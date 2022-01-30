package §!;§
{
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class §#!3§
   {
       
      
      b2internal var §`P§:int;
      
      b2internal var §%!A§:int;
      
      b2internal var §=X§:int;
      
      b2internal var §9`§:int;
      
      b2internal var §<!i§:b2ContactID;
      
      public function §#!3§()
      {
         super();
      }
      
      public function get §`!X§() : int
      {
         return this.§`P§;
      }
      
      public function set §`!X§(param1:int) : void
      {
         this.§`P§ = param1;
         this.§<!i§.§#y§ = this.§<!i§.§#y§ & 4294967040 | this.§`P§ & 255;
      }
      
      public function get §&!m§() : int
      {
         return this.§%!A§;
      }
      
      public function set §&!m§(param1:int) : void
      {
         this.§%!A§ = param1;
         this.§<!i§.§#y§ = this.§<!i§.§#y§ & 4294902015 | this.§%!A§ << 8 & 65280;
      }
      
      public function get §?!D§() : int
      {
         return this.§=X§;
      }
      
      public function set §?!D§(param1:int) : void
      {
         this.§=X§ = param1;
         this.§<!i§.§#y§ = this.§<!i§.§#y§ & 4278255615 | this.§=X§ << 16 & 16711680;
      }
      
      public function get §=!d§() : int
      {
         return this.§9`§;
      }
      
      public function set §=!d§(param1:int) : void
      {
         this.§9`§ = param1;
         this.§<!i§.§#y§ = this.§<!i§.§#y§ & 16777215 | this.§9`§ << 24 & 4278190080;
      }
   }
}
