package §!§
{
   import §'!_§.b2internal;
   
   use namespace b2internal;
   
   public class §super§
   {
       
      
      b2internal var §6G§:int;
      
      b2internal var §#a§:int;
      
      b2internal var §,!Q§:int;
      
      b2internal var §<!X§:int;
      
      b2internal var §<!,§:b2ContactID;
      
      public function §super§()
      {
         super();
      }
      
      public function get §]u§() : int
      {
         return this.§6G§;
      }
      
      public function set §]u§(param1:int) : void
      {
         this.§6G§ = param1;
         this.§<!,§.§+!t§ = this.§<!,§.§+!t§ & 4294967040 | this.§6G§ & 255;
      }
      
      public function get §@!q§() : int
      {
         return this.§#a§;
      }
      
      public function set §@!q§(param1:int) : void
      {
         this.§#a§ = param1;
         this.§<!,§.§+!t§ = this.§<!,§.§+!t§ & 4294902015 | this.§#a§ << 8 & 65280;
      }
      
      public function get §]"0§() : int
      {
         return this.§,!Q§;
      }
      
      public function set §]"0§(param1:int) : void
      {
         this.§,!Q§ = param1;
         this.§<!,§.§+!t§ = this.§<!,§.§+!t§ & 4278255615 | this.§,!Q§ << 16 & 16711680;
      }
      
      public function get §6u§() : int
      {
         return this.§<!X§;
      }
      
      public function set §6u§(param1:int) : void
      {
         this.§<!X§ = param1;
         this.§<!,§.§+!t§ = this.§<!,§.§+!t§ & 16777215 | this.§<!X§ << 24 & 4278190080;
      }
   }
}
