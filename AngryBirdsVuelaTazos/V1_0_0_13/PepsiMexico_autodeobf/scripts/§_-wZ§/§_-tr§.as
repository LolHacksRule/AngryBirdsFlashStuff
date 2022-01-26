package §_-wZ§
{
   import §_-SM§.b2internal;
   
   use namespace b2internal;
   
   public class §_-tr§
   {
       
      
      b2internal var § in§:int;
      
      b2internal var §_-aH§:int;
      
      b2internal var §_-8H§:int;
      
      b2internal var §_-rm§:int;
      
      b2internal var §_-VI§:b2ContactID;
      
      public function §_-tr§()
      {
         super();
      }
      
      public function get §_-aj§() : int
      {
         return this.§ in§;
      }
      
      public function set §_-aj§(param1:int) : void
      {
         this.§ in§ = param1;
         this.§_-VI§.§_-Qt§ = this.§_-VI§.§_-Qt§ & 4294967040 | this.§ in§ & 255;
      }
      
      public function get §_-pA§() : int
      {
         return this.§_-aH§;
      }
      
      public function set §_-pA§(param1:int) : void
      {
         this.§_-aH§ = param1;
         this.§_-VI§.§_-Qt§ = this.§_-VI§.§_-Qt§ & 4294902015 | this.§_-aH§ << 8 & 65280;
      }
      
      public function get §_-AA§() : int
      {
         return this.§_-8H§;
      }
      
      public function set §_-AA§(param1:int) : void
      {
         this.§_-8H§ = param1;
         this.§_-VI§.§_-Qt§ = this.§_-VI§.§_-Qt§ & 4278255615 | this.§_-8H§ << 16 & 16711680;
      }
      
      public function get §_-vE§() : int
      {
         return this.§_-rm§;
      }
      
      public function set §_-vE§(param1:int) : void
      {
         this.§_-rm§ = param1;
         this.§_-VI§.§_-Qt§ = this.§_-VI§.§_-Qt§ & 16777215 | this.§_-rm§ << 24 & 4278190080;
      }
   }
}
