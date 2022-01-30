package §&!n§
{
   import §8,§.b2internal;
   
   use namespace b2internal;
   
   public class §'R§
   {
       
      
      b2internal var §7,§:int;
      
      b2internal var §55§:int;
      
      b2internal var §;x§:int;
      
      b2internal var §9!h§:int;
      
      b2internal var §'0§:b2ContactID;
      
      public function §'R§()
      {
         super();
      }
      
      public function get §]!"§() : int
      {
         return this.§7,§;
      }
      
      public function set §]!"§(param1:int) : void
      {
         this.§7,§ = param1;
         this.§'0§.§7"3§ = this.§'0§.§7"3§ & 4294967040 | this.§7,§ & 255;
      }
      
      public function get §<!'§() : int
      {
         return this.§55§;
      }
      
      public function set §<!'§(param1:int) : void
      {
         this.§55§ = param1;
         this.§'0§.§7"3§ = this.§'0§.§7"3§ & 4294902015 | this.§55§ << 8 & 65280;
      }
      
      public function get §"y§() : int
      {
         return this.§;x§;
      }
      
      public function set §"y§(param1:int) : void
      {
         this.§;x§ = param1;
         this.§'0§.§7"3§ = this.§'0§.§7"3§ & 4278255615 | this.§;x§ << 16 & 16711680;
      }
      
      public function get §]p§() : int
      {
         return this.§9!h§;
      }
      
      public function set §]p§(param1:int) : void
      {
         this.§9!h§ = param1;
         this.§'0§.§7"3§ = this.§'0§.§7"3§ & 16777215 | this.§9!h§ << 24 & 4278190080;
      }
   }
}
