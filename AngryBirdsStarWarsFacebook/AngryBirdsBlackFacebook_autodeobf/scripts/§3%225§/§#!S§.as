package §3"5§
{
   import §5"i§.b2internal;
   
   use namespace b2internal;
   
   public class §#!S§
   {
       
      
      b2internal var §?"0§:int;
      
      b2internal var §?!-§:int;
      
      b2internal var §`!g§:int;
      
      b2internal var §?!=§:int;
      
      b2internal var §,U§:b2ContactID;
      
      public function §#!S§()
      {
         super();
      }
      
      public function get §7!b§() : int
      {
         return this.§?"0§;
      }
      
      public function set §7!b§(param1:int) : void
      {
         this.§?"0§ = param1;
         this.§,U§.§8"p§ = this.§,U§.§8"p§ & 4294967040 | this.§?"0§ & 255;
      }
      
      public function get §4"f§() : int
      {
         return this.§?!-§;
      }
      
      public function set §4"f§(param1:int) : void
      {
         this.§?!-§ = param1;
         this.§,U§.§8"p§ = this.§,U§.§8"p§ & 4294902015 | this.§?!-§ << 8 & 65280;
      }
      
      public function get §^"F§() : int
      {
         return this.§`!g§;
      }
      
      public function set §^"F§(param1:int) : void
      {
         this.§`!g§ = param1;
         this.§,U§.§8"p§ = this.§,U§.§8"p§ & 4278255615 | this.§`!g§ << 16 & 16711680;
      }
      
      public function get §]"e§() : int
      {
         return this.§?!=§;
      }
      
      public function set §]"e§(param1:int) : void
      {
         this.§?!=§ = param1;
         this.§,U§.§8"p§ = this.§,U§.§8"p§ & 16777215 | this.§?!=§ << 24 & 4278190080;
      }
   }
}
