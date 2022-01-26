package §_-iw§
{
   import §_-bW§.b2internal;
   
   use namespace b2internal;
   
   public class §_-O4§
   {
       
      
      b2internal var §_-Hm§:int;
      
      b2internal var §_-m2§:int;
      
      b2internal var § if§:int;
      
      b2internal var §_-aJ§:int;
      
      b2internal var §_-4M§:b2ContactID;
      
      public function §_-O4§()
      {
         super();
      }
      
      public function get §_-Xh§() : int
      {
         return this.§_-Hm§;
      }
      
      public function set §_-Xh§(param1:int) : void
      {
         this.§_-Hm§ = param1;
         this.§_-4M§.§_-L7§ = this.§_-4M§.§_-L7§ & 4294967040 | this.§_-Hm§ & 255;
      }
      
      public function get §package§() : int
      {
         return this.§_-m2§;
      }
      
      public function set §package§(param1:int) : void
      {
         this.§_-m2§ = param1;
         this.§_-4M§.§_-L7§ = this.§_-4M§.§_-L7§ & 4294902015 | this.§_-m2§ << 8 & 65280;
      }
      
      public function get §_-wz§() : int
      {
         return this.§ if§;
      }
      
      public function set §_-wz§(param1:int) : void
      {
         this.§ if§ = param1;
         this.§_-4M§.§_-L7§ = this.§_-4M§.§_-L7§ & 4278255615 | this.§ if§ << 16 & 16711680;
      }
      
      public function get §_-KR§() : int
      {
         return this.§_-aJ§;
      }
      
      public function set §_-KR§(param1:int) : void
      {
         this.§_-aJ§ = param1;
         this.§_-4M§.§_-L7§ = this.§_-4M§.§_-L7§ & 16777215 | this.§_-aJ§ << 24 & 4278190080;
      }
   }
}
