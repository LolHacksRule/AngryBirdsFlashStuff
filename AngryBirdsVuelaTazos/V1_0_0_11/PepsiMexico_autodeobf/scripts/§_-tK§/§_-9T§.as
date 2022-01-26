package §_-tK§
{
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class §_-9T§
   {
       
      
      b2internal var §_-dP§:int;
      
      b2internal var §_-3H§:int;
      
      b2internal var §_-P2§:int;
      
      b2internal var §_-OK§:int;
      
      b2internal var §_-5U§:b2ContactID;
      
      public function §_-9T§()
      {
         super();
      }
      
      public function get §_-hI§() : int
      {
         return this.§_-dP§;
      }
      
      public function set §_-hI§(param1:int) : void
      {
         this.§_-dP§ = param1;
         this.§_-5U§.§_-gg§ = this.§_-5U§.§_-gg§ & 4294967040 | this.§_-dP§ & 255;
      }
      
      public function get §_-Cq§() : int
      {
         return this.§_-3H§;
      }
      
      public function set §_-Cq§(param1:int) : void
      {
         this.§_-3H§ = param1;
         this.§_-5U§.§_-gg§ = this.§_-5U§.§_-gg§ & 4294902015 | this.§_-3H§ << 8 & 65280;
      }
      
      public function get §_-a3§() : int
      {
         return this.§_-P2§;
      }
      
      public function set §_-a3§(param1:int) : void
      {
         this.§_-P2§ = param1;
         this.§_-5U§.§_-gg§ = this.§_-5U§.§_-gg§ & 4278255615 | this.§_-P2§ << 16 & 16711680;
      }
      
      public function get §_-G8§() : int
      {
         return this.§_-OK§;
      }
      
      public function set §_-G8§(param1:int) : void
      {
         this.§_-OK§ = param1;
         this.§_-5U§.§_-gg§ = this.§_-5U§.§_-gg§ & 16777215 | this.§_-OK§ << 24 & 4278190080;
      }
   }
}
