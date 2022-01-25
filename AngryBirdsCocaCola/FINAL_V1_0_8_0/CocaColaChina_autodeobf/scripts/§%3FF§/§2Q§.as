package §?F§
{
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class §2Q§
   {
       
      
      b2internal var §1!#§:int;
      
      b2internal var §+"§:int;
      
      b2internal var §1!"§:int;
      
      b2internal var §&!I§:int;
      
      b2internal var §#!O§:b2ContactID;
      
      public function §2Q§()
      {
         super();
      }
      
      public function get §?b§() : int
      {
         return this.§1!#§;
      }
      
      public function set §?b§(param1:int) : void
      {
         this.§1!#§ = param1;
         this.§#!O§.§3j§ = this.§#!O§.§3j§ & 4294967040 | this.§1!#§ & 255;
      }
      
      public function get §`w§() : int
      {
         return this.§+"§;
      }
      
      public function set §`w§(param1:int) : void
      {
         this.§+"§ = param1;
         this.§#!O§.§3j§ = this.§#!O§.§3j§ & 4294902015 | this.§+"§ << 8 & 65280;
      }
      
      public function get §=!b§() : int
      {
         return this.§1!"§;
      }
      
      public function set §=!b§(param1:int) : void
      {
         this.§1!"§ = param1;
         this.§#!O§.§3j§ = this.§#!O§.§3j§ & 4278255615 | this.§1!"§ << 16 & 16711680;
      }
      
      public function get §@!#§() : int
      {
         return this.§&!I§;
      }
      
      public function set §@!#§(param1:int) : void
      {
         this.§&!I§ = param1;
         this.§#!O§.§3j§ = this.§#!O§.§3j§ & 16777215 | this.§&!I§ << 24 & 4278190080;
      }
   }
}
