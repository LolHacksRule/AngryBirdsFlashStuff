package §5!o§
{
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class §4!j§
   {
       
      
      b2internal var §>#§:int;
      
      b2internal var § ",§:int;
      
      b2internal var §8!i§:int;
      
      b2internal var §<N§:int;
      
      b2internal var §=!e§:b2ContactID;
      
      public function §4!j§()
      {
         super();
      }
      
      public function get §5"'§() : int
      {
         return this.§>#§;
      }
      
      public function set §5"'§(param1:int) : void
      {
         this.§>#§ = param1;
         this.§=!e§.§,!K§ = this.§=!e§.§,!K§ & 4294967040 | this.§>#§ & 255;
      }
      
      public function get §#"3§() : int
      {
         return this.§ ",§;
      }
      
      public function set §#"3§(param1:int) : void
      {
         this.§ ",§ = param1;
         this.§=!e§.§,!K§ = this.§=!e§.§,!K§ & 4294902015 | this.§ ",§ << 8 & 65280;
      }
      
      public function get §1!i§() : int
      {
         return this.§8!i§;
      }
      
      public function set §1!i§(param1:int) : void
      {
         this.§8!i§ = param1;
         this.§=!e§.§,!K§ = this.§=!e§.§,!K§ & 4278255615 | this.§8!i§ << 16 & 16711680;
      }
      
      public function get §'!+§() : int
      {
         return this.§<N§;
      }
      
      public function set §'!+§(param1:int) : void
      {
         this.§<N§ = param1;
         this.§=!e§.§,!K§ = this.§=!e§.§,!K§ & 16777215 | this.§<N§ << 24 & 4278190080;
      }
   }
}
