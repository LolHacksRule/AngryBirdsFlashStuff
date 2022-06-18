package §7S§
{
   import §;0§.b2internal;
   
   use namespace b2internal;
   
   public class §<!;§
   {
       
      
      b2internal var §;!H§:int;
      
      b2internal var §?!X§:int;
      
      b2internal var §?!D§:int;
      
      b2internal var § q§:int;
      
      b2internal var §!!&§:b2ContactID;
      
      public function §<!;§()
      {
         super();
      }
      
      public function get §^E§() : int
      {
         return this.§;!H§;
      }
      
      public function set §^E§(param1:int) : void
      {
         this.§;!H§ = param1;
         this.§!!&§.§^>§ = this.§!!&§.§^>§ & 4294967040 | this.§;!H§ & 255;
      }
      
      public function get §^!K§() : int
      {
         return this.§?!X§;
      }
      
      public function set §^!K§(param1:int) : void
      {
         this.§?!X§ = param1;
         this.§!!&§.§^>§ = this.§!!&§.§^>§ & 4294902015 | this.§?!X§ << 8 & 65280;
      }
      
      public function get §7!<§() : int
      {
         return this.§?!D§;
      }
      
      public function set §7!<§(param1:int) : void
      {
         this.§?!D§ = param1;
         this.§!!&§.§^>§ = this.§!!&§.§^>§ & 4278255615 | this.§?!D§ << 16 & 16711680;
      }
      
      public function get §"X§() : int
      {
         return this.§ q§;
      }
      
      public function set §"X§(param1:int) : void
      {
         this.§ q§ = param1;
         this.§!!&§.§^>§ = this.§!!&§.§^>§ & 16777215 | this.§ q§ << 24 & 4278190080;
      }
   }
}
