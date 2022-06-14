package §55§
{
   import §4!!§.b2internal;
   
   use namespace b2internal;
   
   public class §7#§
   {
       
      
      b2internal var §4P§:int;
      
      b2internal var §[!#§:int;
      
      b2internal var §0R§:int;
      
      b2internal var §#=§:int;
      
      b2internal var §4G§:b2ContactID;
      
      public function §7#§()
      {
         super();
      }
      
      public function get §%i§() : int
      {
         return this.§4P§;
      }
      
      public function set §%i§(param1:int) : void
      {
         this.§4P§ = param1;
         this.§4G§.§'3§ = this.§4G§.§'3§ & 4294967040 | this.§4P§ & 255;
      }
      
      public function get §,!0§() : int
      {
         return this.§[!#§;
      }
      
      public function set §,!0§(param1:int) : void
      {
         this.§[!#§ = param1;
         this.§4G§.§'3§ = this.§4G§.§'3§ & 4294902015 | this.§[!#§ << 8 & 65280;
      }
      
      public function get §!O§() : int
      {
         return this.§0R§;
      }
      
      public function set §!O§(param1:int) : void
      {
         this.§0R§ = param1;
         this.§4G§.§'3§ = this.§4G§.§'3§ & 4278255615 | this.§0R§ << 16 & 16711680;
      }
      
      public function get §2"-§() : int
      {
         return this.§#=§;
      }
      
      public function set §2"-§(param1:int) : void
      {
         this.§#=§ = param1;
         this.§4G§.§'3§ = this.§4G§.§'3§ & 16777215 | this.§#=§ << 24 & 4278190080;
      }
   }
}
