package §_-Nw§
{
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class §_-wj§
   {
       
      
      b2internal var §_-eG§:int;
      
      b2internal var § true§:int;
      
      b2internal var §_-jc§:int;
      
      b2internal var §_-mv§:int;
      
      b2internal var §_-pi§:b2ContactID;
      
      public function §_-wj§()
      {
         super();
      }
      
      public function get §_-mE§() : int
      {
         return this.§_-eG§;
      }
      
      public function set §_-mE§(param1:int) : void
      {
         this.§_-eG§ = param1;
         this.§_-pi§.§_-lX§ = this.§_-pi§.§_-lX§ & 4294967040 | this.§_-eG§ & 255;
      }
      
      public function get §_-kJ§() : int
      {
         return this.§ true§;
      }
      
      public function set §_-kJ§(param1:int) : void
      {
         this.§ true§ = param1;
         this.§_-pi§.§_-lX§ = this.§_-pi§.§_-lX§ & 4294902015 | this.§ true§ << 8 & 65280;
      }
      
      public function get §_-Gm§() : int
      {
         return this.§_-jc§;
      }
      
      public function set §_-Gm§(param1:int) : void
      {
         this.§_-jc§ = param1;
         this.§_-pi§.§_-lX§ = this.§_-pi§.§_-lX§ & 4278255615 | this.§_-jc§ << 16 & 16711680;
      }
      
      public function get §_-kS§() : int
      {
         return this.§_-mv§;
      }
      
      public function set §_-kS§(param1:int) : void
      {
         this.§_-mv§ = param1;
         this.§_-pi§.§_-lX§ = this.§_-pi§.§_-lX§ & 16777215 | this.§_-mv§ << 24 & 4278190080;
      }
   }
}
