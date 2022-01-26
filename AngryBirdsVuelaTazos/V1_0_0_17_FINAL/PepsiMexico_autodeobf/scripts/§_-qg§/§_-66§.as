package §_-qg§
{
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class §_-66§
   {
       
      
      b2internal var §_-aR§:int;
      
      b2internal var §_-ZM§:int;
      
      b2internal var §_-sl§:int;
      
      b2internal var §_-hF§:int;
      
      b2internal var §_-nN§:b2ContactID;
      
      public function §_-66§()
      {
         super();
      }
      
      public function get §_-cf§() : int
      {
         return this.§_-aR§;
      }
      
      public function set §_-cf§(param1:int) : void
      {
         this.§_-aR§ = param1;
         this.§_-nN§.§_-Bj§ = this.§_-nN§.§_-Bj§ & 4294967040 | this.§_-aR§ & 255;
      }
      
      public function get §_-qC§() : int
      {
         return this.§_-ZM§;
      }
      
      public function set §_-qC§(param1:int) : void
      {
         this.§_-ZM§ = param1;
         this.§_-nN§.§_-Bj§ = this.§_-nN§.§_-Bj§ & 4294902015 | this.§_-ZM§ << 8 & 65280;
      }
      
      public function get §_-qs§() : int
      {
         return this.§_-sl§;
      }
      
      public function set §_-qs§(param1:int) : void
      {
         this.§_-sl§ = param1;
         this.§_-nN§.§_-Bj§ = this.§_-nN§.§_-Bj§ & 4278255615 | this.§_-sl§ << 16 & 16711680;
      }
      
      public function get §_-oN§() : int
      {
         return this.§_-hF§;
      }
      
      public function set §_-oN§(param1:int) : void
      {
         this.§_-hF§ = param1;
         this.§_-nN§.§_-Bj§ = this.§_-nN§.§_-Bj§ & 16777215 | this.§_-hF§ << 24 & 4278190080;
      }
   }
}
