package §_-yI§
{
   import §_-b4§.b2internal;
   
   use namespace b2internal;
   
   public class §_-Lf§
   {
       
      
      b2internal var §_-A3§:int;
      
      b2internal var §_-3M§:int;
      
      b2internal var §_-Cg§:int;
      
      b2internal var §_-py§:int;
      
      b2internal var §_-6D§:b2ContactID;
      
      public function §_-Lf§()
      {
         super();
      }
      
      public function get §_-9o§() : int
      {
         return this.§_-A3§;
      }
      
      public function set §_-9o§(param1:int) : void
      {
         this.§_-A3§ = param1;
         this.§_-6D§.§_-gq§ = this.§_-6D§.§_-gq§ & 4294967040 | this.§_-A3§ & 255;
      }
      
      public function get §_-Gz§() : int
      {
         return this.§_-3M§;
      }
      
      public function set §_-Gz§(param1:int) : void
      {
         this.§_-3M§ = param1;
         this.§_-6D§.§_-gq§ = this.§_-6D§.§_-gq§ & 4294902015 | this.§_-3M§ << 8 & 65280;
      }
      
      public function get §_-Uu§() : int
      {
         return this.§_-Cg§;
      }
      
      public function set §_-Uu§(param1:int) : void
      {
         this.§_-Cg§ = param1;
         this.§_-6D§.§_-gq§ = this.§_-6D§.§_-gq§ & 4278255615 | this.§_-Cg§ << 16 & 16711680;
      }
      
      public function get §_-m5§() : int
      {
         return this.§_-py§;
      }
      
      public function set §_-m5§(param1:int) : void
      {
         this.§_-py§ = param1;
         this.§_-6D§.§_-gq§ = this.§_-6D§.§_-gq§ & 16777215 | this.§_-py§ << 24 & 4278190080;
      }
   }
}
