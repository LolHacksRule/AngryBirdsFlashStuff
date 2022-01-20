package §,!V§
{
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class §?!Q§
   {
       
      
      b2internal var §!!l§:int;
      
      b2internal var §=!O§:int;
      
      b2internal var §<!b§:int;
      
      b2internal var §#!U§:int;
      
      b2internal var §4!7§:b2ContactID;
      
      public function §?!Q§()
      {
         super();
      }
      
      public function get § G§() : int
      {
         return this.§!!l§;
      }
      
      public function set § G§(param1:int) : void
      {
         this.§!!l§ = param1;
         this.§4!7§.§^0§ = this.§4!7§.§^0§ & 4294967040 | this.§!!l§ & 255;
      }
      
      public function get §&;§() : int
      {
         return this.§=!O§;
      }
      
      public function set §&;§(param1:int) : void
      {
         this.§=!O§ = param1;
         this.§4!7§.§^0§ = this.§4!7§.§^0§ & 4294902015 | this.§=!O§ << 8 & 65280;
      }
      
      public function get §;>§() : int
      {
         return this.§<!b§;
      }
      
      public function set §;>§(param1:int) : void
      {
         this.§<!b§ = param1;
         this.§4!7§.§^0§ = this.§4!7§.§^0§ & 4278255615 | this.§<!b§ << 16 & 16711680;
      }
      
      public function get §8!k§() : int
      {
         return this.§#!U§;
      }
      
      public function set §8!k§(param1:int) : void
      {
         this.§#!U§ = param1;
         this.§4!7§.§^0§ = this.§4!7§.§^0§ & 16777215 | this.§#!U§ << 24 & 4278190080;
      }
   }
}
