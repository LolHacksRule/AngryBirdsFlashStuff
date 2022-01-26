package §_-Jx§
{
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class §_-YO§
   {
       
      
      b2internal var §_-7e§:int;
      
      b2internal var §_-q3§:int;
      
      b2internal var §_-KP§:int;
      
      b2internal var §_-lS§:int;
      
      b2internal var §_-Oy§:b2ContactID;
      
      public function §_-YO§()
      {
         super();
      }
      
      public function get §_-0X§() : int
      {
         return this.§_-7e§;
      }
      
      public function set §_-0X§(param1:int) : void
      {
         this.§_-7e§ = param1;
         this.§_-Oy§.§_-0L§ = this.§_-Oy§.§_-0L§ & 4294967040 | this.§_-7e§ & 255;
      }
      
      public function get §_-iC§() : int
      {
         return this.§_-q3§;
      }
      
      public function set §_-iC§(param1:int) : void
      {
         this.§_-q3§ = param1;
         this.§_-Oy§.§_-0L§ = this.§_-Oy§.§_-0L§ & 4294902015 | this.§_-q3§ << 8 & 65280;
      }
      
      public function get §_-g1§() : int
      {
         return this.§_-KP§;
      }
      
      public function set §_-g1§(param1:int) : void
      {
         this.§_-KP§ = param1;
         this.§_-Oy§.§_-0L§ = this.§_-Oy§.§_-0L§ & 4278255615 | this.§_-KP§ << 16 & 16711680;
      }
      
      public function get §_-CI§() : int
      {
         return this.§_-lS§;
      }
      
      public function set §_-CI§(param1:int) : void
      {
         this.§_-lS§ = param1;
         this.§_-Oy§.§_-0L§ = this.§_-Oy§.§_-0L§ & 16777215 | this.§_-lS§ << 24 & 4278190080;
      }
   }
}
