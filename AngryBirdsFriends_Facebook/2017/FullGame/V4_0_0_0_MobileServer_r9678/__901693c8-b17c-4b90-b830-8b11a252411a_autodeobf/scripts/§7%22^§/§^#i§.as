package §7"^§
{
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class §^#i§
   {
       
      
      b2internal var §6Y§:int;
      
      b2internal var §`w§:int;
      
      b2internal var §;E§:int;
      
      b2internal var §7#y§:int;
      
      b2internal var §4#4§:b2ContactID;
      
      public function §^#i§()
      {
         super();
      }
      
      public function get §4#R§() : int
      {
         return this.§6Y§;
      }
      
      public function set §4#R§(param1:int) : void
      {
         this.§6Y§ = param1;
         this.§4#4§.§?"c§ = this.§4#4§.§?"c§ & 4294967040 | this.§6Y§ & 255;
      }
      
      public function get §@!U§() : int
      {
         return this.§`w§;
      }
      
      public function set §@!U§(param1:int) : void
      {
         this.§`w§ = param1;
         this.§4#4§.§?"c§ = this.§4#4§.§?"c§ & 4294902015 | this.§`w§ << 8 & 65280;
      }
      
      public function get §+^§() : int
      {
         return this.§;E§;
      }
      
      public function set §+^§(param1:int) : void
      {
         this.§;E§ = param1;
         this.§4#4§.§?"c§ = this.§4#4§.§?"c§ & 4278255615 | this.§;E§ << 16 & 16711680;
      }
      
      public function get §5#c§() : int
      {
         return this.§7#y§;
      }
      
      public function set §5#c§(param1:int) : void
      {
         this.§7#y§ = param1;
         this.§4#4§.§?"c§ = this.§4#4§.§?"c§ & 16777215 | this.§7#y§ << 24 & 4278190080;
      }
   }
}
