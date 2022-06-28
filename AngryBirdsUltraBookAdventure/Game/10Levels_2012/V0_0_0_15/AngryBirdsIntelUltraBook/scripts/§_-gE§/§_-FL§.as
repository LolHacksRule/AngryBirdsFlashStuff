package §_-gE§
{
   import §_-5§.b2internal;
   
   use namespace b2internal;
   
   public class §_-FL§
   {
       
      
      b2internal var §_-m9§:int;
      
      b2internal var §_-08u§:int;
      
      b2internal var §_-0Cg§:int;
      
      b2internal var §_-000§:int;
      
      b2internal var §_-Vs§:b2ContactID;
      
      public function §_-FL§()
      {
         super();
      }
      
      public function get §_-uj§() : int
      {
         return this.§_-m9§;
      }
      
      public function set §_-uj§(param1:int) : void
      {
         this.§_-m9§ = param1;
         this.§_-Vs§.§_-Tb§ = this.§_-Vs§.§_-Tb§ & 4294967040 | this.§_-m9§ & 255;
      }
      
      public function get §_-09v§() : int
      {
         return this.§_-08u§;
      }
      
      public function set §_-09v§(param1:int) : void
      {
         this.§_-08u§ = param1;
         this.§_-Vs§.§_-Tb§ = this.§_-Vs§.§_-Tb§ & 4294902015 | this.§_-08u§ << 8 & 65280;
      }
      
      public function get §_-Cq§() : int
      {
         return this.§_-0Cg§;
      }
      
      public function set §_-Cq§(param1:int) : void
      {
         this.§_-0Cg§ = param1;
         this.§_-Vs§.§_-Tb§ = this.§_-Vs§.§_-Tb§ & 4278255615 | this.§_-0Cg§ << 16 & 16711680;
      }
      
      public function get §_-W§() : int
      {
         return this.§_-000§;
      }
      
      public function set §_-W§(param1:int) : void
      {
         this.§_-000§ = param1;
         this.§_-Vs§.§_-Tb§ = this.§_-Vs§.§_-Tb§ & 16777215 | this.§_-000§ << 24 & 4278190080;
      }
   }
}
