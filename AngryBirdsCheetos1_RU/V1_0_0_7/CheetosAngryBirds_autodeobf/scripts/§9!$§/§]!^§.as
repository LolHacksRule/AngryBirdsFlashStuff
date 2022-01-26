package §9!$§
{
   import §'!3§.b2internal;
   
   use namespace b2internal;
   
   public class §]!^§
   {
       
      
      b2internal var §?!N§:int;
      
      b2internal var §!N§:int;
      
      b2internal var § else§:int;
      
      b2internal var §]!K§:int;
      
      b2internal var §9^§:b2ContactID;
      
      public function §]!^§()
      {
         super();
      }
      
      public function get §9!-§() : int
      {
         return this.§?!N§;
      }
      
      public function set §9!-§(param1:int) : void
      {
         this.§?!N§ = param1;
         this.§9^§.§@E§ = this.§9^§.§@E§ & 4294967040 | this.§?!N§ & 255;
      }
      
      public function get §%!R§() : int
      {
         return this.§!N§;
      }
      
      public function set §%!R§(param1:int) : void
      {
         this.§!N§ = param1;
         this.§9^§.§@E§ = this.§9^§.§@E§ & 4294902015 | this.§!N§ << 8 & 65280;
      }
      
      public function get §3Z§() : int
      {
         return this.§ else§;
      }
      
      public function set §3Z§(param1:int) : void
      {
         this.§ else§ = param1;
         this.§9^§.§@E§ = this.§9^§.§@E§ & 4278255615 | this.§ else§ << 16 & 16711680;
      }
      
      public function get §&4§() : int
      {
         return this.§]!K§;
      }
      
      public function set §&4§(param1:int) : void
      {
         this.§]!K§ = param1;
         this.§9^§.§@E§ = this.§9^§.§@E§ & 16777215 | this.§]!K§ << 24 & 4278190080;
      }
   }
}
