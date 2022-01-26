package §%!B§
{
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class §,%§
   {
       
      
      b2internal var §5!S§:int;
      
      b2internal var §!!4§:int;
      
      b2internal var §5!5§:int;
      
      b2internal var §4m§:int;
      
      b2internal var §2T§:b2ContactID;
      
      public function §,%§()
      {
         super();
      }
      
      public function get §>1§() : int
      {
         return this.§5!S§;
      }
      
      public function set §>1§(param1:int) : void
      {
         this.§5!S§ = param1;
         this.§2T§.§6!T§ = this.§2T§.§6!T§ & 4294967040 | this.§5!S§ & 255;
      }
      
      public function get § w§() : int
      {
         return this.§!!4§;
      }
      
      public function set § w§(param1:int) : void
      {
         this.§!!4§ = param1;
         this.§2T§.§6!T§ = this.§2T§.§6!T§ & 4294902015 | this.§!!4§ << 8 & 65280;
      }
      
      public function get §"!5§() : int
      {
         return this.§5!5§;
      }
      
      public function set §"!5§(param1:int) : void
      {
         this.§5!5§ = param1;
         this.§2T§.§6!T§ = this.§2T§.§6!T§ & 4278255615 | this.§5!5§ << 16 & 16711680;
      }
      
      public function get §-b§() : int
      {
         return this.§4m§;
      }
      
      public function set §-b§(param1:int) : void
      {
         this.§4m§ = param1;
         this.§2T§.§6!T§ = this.§2T§.§6!T§ & 16777215 | this.§4m§ << 24 & 4278190080;
      }
   }
}
