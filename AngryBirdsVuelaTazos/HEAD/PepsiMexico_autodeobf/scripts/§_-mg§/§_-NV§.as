package §_-mg§
{
   import §_-rz§.b2internal;
   
   use namespace b2internal;
   
   public class §_-NV§
   {
       
      
      b2internal var §_-Nu§:int;
      
      b2internal var §_-t4§:int;
      
      b2internal var §_-2z§:int;
      
      b2internal var §_-L7§:int;
      
      b2internal var §_-mL§:b2ContactID;
      
      public function §_-NV§()
      {
         super();
      }
      
      public function get §switch§() : int
      {
         return this.§_-Nu§;
      }
      
      public function set §switch§(param1:int) : void
      {
         this.§_-Nu§ = param1;
         this.§_-mL§.§_-je§ = this.§_-mL§.§_-je§ & 4294967040 | this.§_-Nu§ & 255;
      }
      
      public function get §_-dQ§() : int
      {
         return this.§_-t4§;
      }
      
      public function set §_-dQ§(param1:int) : void
      {
         this.§_-t4§ = param1;
         this.§_-mL§.§_-je§ = this.§_-mL§.§_-je§ & 4294902015 | this.§_-t4§ << 8 & 65280;
      }
      
      public function get §_-qT§() : int
      {
         return this.§_-2z§;
      }
      
      public function set §_-qT§(param1:int) : void
      {
         this.§_-2z§ = param1;
         this.§_-mL§.§_-je§ = this.§_-mL§.§_-je§ & 4278255615 | this.§_-2z§ << 16 & 16711680;
      }
      
      public function get §_-ci§() : int
      {
         return this.§_-L7§;
      }
      
      public function set §_-ci§(param1:int) : void
      {
         this.§_-L7§ = param1;
         this.§_-mL§.§_-je§ = this.§_-mL§.§_-je§ & 16777215 | this.§_-L7§ << 24 & 4278190080;
      }
   }
}
