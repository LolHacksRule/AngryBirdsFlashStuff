package §8w§
{
   import §3!m§.b2internal;
   
   use namespace b2internal;
   
   public class §>d§
   {
       
      
      b2internal var §^%§:int;
      
      b2internal var §&t§:int;
      
      b2internal var §52§:int;
      
      b2internal var §%!6§:int;
      
      b2internal var §50§:b2ContactID;
      
      public function §>d§()
      {
         super();
      }
      
      public function get §-!f§() : int
      {
         return this.§^%§;
      }
      
      public function set §-!f§(param1:int) : void
      {
         this.§^%§ = param1;
         this.§50§.§6N§ = this.§50§.§6N§ & 4294967040 | this.§^%§ & 255;
      }
      
      public function get §,!i§() : int
      {
         return this.§&t§;
      }
      
      public function set §,!i§(param1:int) : void
      {
         this.§&t§ = param1;
         this.§50§.§6N§ = this.§50§.§6N§ & 4294902015 | this.§&t§ << 8 & 65280;
      }
      
      public function get §&!c§() : int
      {
         return this.§52§;
      }
      
      public function set §&!c§(param1:int) : void
      {
         this.§52§ = param1;
         this.§50§.§6N§ = this.§50§.§6N§ & 4278255615 | this.§52§ << 16 & 16711680;
      }
      
      public function get §"P§() : int
      {
         return this.§%!6§;
      }
      
      public function set §"P§(param1:int) : void
      {
         this.§%!6§ = param1;
         this.§50§.§6N§ = this.§50§.§6N§ & 16777215 | this.§%!6§ << 24 & 4278190080;
      }
   }
}
