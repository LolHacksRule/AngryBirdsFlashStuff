package §0!2§
{
   import §;]§.b2internal;
   
   use namespace b2internal;
   
   public class §%!8§
   {
       
      
      b2internal var §'f§:int;
      
      b2internal var §2H§:int;
      
      b2internal var §!!;§:int;
      
      b2internal var §2x§:int;
      
      b2internal var §2h§:b2ContactID;
      
      public function §%!8§()
      {
         super();
      }
      
      public function get §4!-§() : int
      {
         return this.§'f§;
      }
      
      public function set §4!-§(param1:int) : void
      {
         this.§'f§ = param1;
         this.§2h§.§?s§ = this.§2h§.§?s§ & 4294967040 | this.§'f§ & 255;
      }
      
      public function get §7!D§() : int
      {
         return this.§2H§;
      }
      
      public function set §7!D§(param1:int) : void
      {
         this.§2H§ = param1;
         this.§2h§.§?s§ = this.§2h§.§?s§ & 4294902015 | this.§2H§ << 8 & 65280;
      }
      
      public function get §@!H§() : int
      {
         return this.§!!;§;
      }
      
      public function set §@!H§(param1:int) : void
      {
         this.§!!;§ = param1;
         this.§2h§.§?s§ = this.§2h§.§?s§ & 4278255615 | this.§!!;§ << 16 & 16711680;
      }
      
      public function get §<e§() : int
      {
         return this.§2x§;
      }
      
      public function set §<e§(param1:int) : void
      {
         this.§2x§ = param1;
         this.§2h§.§?s§ = this.§2h§.§?s§ & 16777215 | this.§2x§ << 24 & 4278190080;
      }
   }
}
