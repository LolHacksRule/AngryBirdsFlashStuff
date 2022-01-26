package §_-Et§
{
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class §_-W9§
   {
       
      
      b2internal var §_-UM§:int;
      
      b2internal var §_-Gn§:int;
      
      b2internal var §_-dY§:int;
      
      b2internal var §_-FA§:int;
      
      b2internal var §_-bT§:b2ContactID;
      
      public function §_-W9§()
      {
         super();
      }
      
      public function get §_-Mr§() : int
      {
         return this.§_-UM§;
      }
      
      public function set §_-Mr§(param1:int) : void
      {
         this.§_-UM§ = param1;
         this.§_-bT§.§_-Qf§ = this.§_-bT§.§_-Qf§ & 4294967040 | this.§_-UM§ & 255;
      }
      
      public function get §_-tP§() : int
      {
         return this.§_-Gn§;
      }
      
      public function set §_-tP§(param1:int) : void
      {
         this.§_-Gn§ = param1;
         this.§_-bT§.§_-Qf§ = this.§_-bT§.§_-Qf§ & 4294902015 | this.§_-Gn§ << 8 & 65280;
      }
      
      public function get §_-I8§() : int
      {
         return this.§_-dY§;
      }
      
      public function set §_-I8§(param1:int) : void
      {
         this.§_-dY§ = param1;
         this.§_-bT§.§_-Qf§ = this.§_-bT§.§_-Qf§ & 4278255615 | this.§_-dY§ << 16 & 16711680;
      }
      
      public function get §_-vm§() : int
      {
         return this.§_-FA§;
      }
      
      public function set §_-vm§(param1:int) : void
      {
         this.§_-FA§ = param1;
         this.§_-bT§.§_-Qf§ = this.§_-bT§.§_-Qf§ & 16777215 | this.§_-FA§ << 24 & 4278190080;
      }
   }
}
