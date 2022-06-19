package §_-Kz§
{
   import §_-Jf§.b2internal;
   
   use namespace b2internal;
   
   public class §_-6J§
   {
       
      
      b2internal var §_-N0§:int;
      
      b2internal var §_-NT§:int;
      
      b2internal var §_-zf§:int;
      
      b2internal var §_-j9§:int;
      
      b2internal var §_-7L§:b2ContactID;
      
      public function §_-6J§()
      {
         super();
      }
      
      public function get §_-t0§() : int
      {
         return this.§_-N0§;
      }
      
      public function set §_-t0§(param1:int) : void
      {
         this.§_-N0§ = param1;
         this.§_-7L§.§_-Gv§ = this.§_-7L§.§_-Gv§ & 4294967040 | this.§_-N0§ & 255;
      }
      
      public function get §_-6B§() : int
      {
         return this.§_-NT§;
      }
      
      public function set §_-6B§(param1:int) : void
      {
         this.§_-NT§ = param1;
         this.§_-7L§.§_-Gv§ = this.§_-7L§.§_-Gv§ & 4294902015 | this.§_-NT§ << 8 & 65280;
      }
      
      public function get §_-1o§() : int
      {
         return this.§_-zf§;
      }
      
      public function set §_-1o§(param1:int) : void
      {
         this.§_-zf§ = param1;
         this.§_-7L§.§_-Gv§ = this.§_-7L§.§_-Gv§ & 4278255615 | this.§_-zf§ << 16 & 16711680;
      }
      
      public function get §_-Em§() : int
      {
         return this.§_-j9§;
      }
      
      public function set §_-Em§(param1:int) : void
      {
         this.§_-j9§ = param1;
         this.§_-7L§.§_-Gv§ = this.§_-7L§.§_-Gv§ & 16777215 | this.§_-j9§ << 24 & 4278190080;
      }
   }
}
