package §%4§
{
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class §5!9§
   {
       
      
      b2internal var §7!e§:int;
      
      b2internal var §?"$§:int;
      
      b2internal var §1!9§:int;
      
      b2internal var §--§:int;
      
      b2internal var §>x§:b2ContactID;
      
      public function §5!9§()
      {
         super();
      }
      
      public function get §%;§() : int
      {
         return this.§7!e§;
      }
      
      public function set §%;§(param1:int) : void
      {
         this.§7!e§ = param1;
         this.§>x§.§9!e§ = this.§>x§.§9!e§ & 4294967040 | this.§7!e§ & 255;
      }
      
      public function get §0!I§() : int
      {
         return this.§?"$§;
      }
      
      public function set §0!I§(param1:int) : void
      {
         this.§?"$§ = param1;
         this.§>x§.§9!e§ = this.§>x§.§9!e§ & 4294902015 | this.§?"$§ << 8 & 65280;
      }
      
      public function get §;!2§() : int
      {
         return this.§1!9§;
      }
      
      public function set §;!2§(param1:int) : void
      {
         this.§1!9§ = param1;
         this.§>x§.§9!e§ = this.§>x§.§9!e§ & 4278255615 | this.§1!9§ << 16 & 16711680;
      }
      
      public function get §0F§() : int
      {
         return this.§--§;
      }
      
      public function set §0F§(param1:int) : void
      {
         this.§--§ = param1;
         this.§>x§.§9!e§ = this.§>x§.§9!e§ & 16777215 | this.§--§ << 24 & 4278190080;
      }
   }
}
