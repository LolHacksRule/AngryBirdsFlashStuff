package §^9§
{
   import §'F§.b2internal;
   
   use namespace b2internal;
   
   public class §>!_§
   {
       
      
      b2internal var § !J§:int;
      
      b2internal var §#!u§:int;
      
      b2internal var §?!]§:int;
      
      b2internal var §,"$§:int;
      
      b2internal var §]!A§:b2ContactID;
      
      public function §>!_§()
      {
         super();
      }
      
      public function get §5!q§() : int
      {
         return this.§ !J§;
      }
      
      public function set §5!q§(param1:int) : void
      {
         this.§ !J§ = param1;
         this.§]!A§.§?" § = this.§]!A§.§?" § & 4294967040 | this.§ !J§ & 255;
      }
      
      public function get §95§() : int
      {
         return this.§#!u§;
      }
      
      public function set §95§(param1:int) : void
      {
         this.§#!u§ = param1;
         this.§]!A§.§?" § = this.§]!A§.§?" § & 4294902015 | this.§#!u§ << 8 & 65280;
      }
      
      public function get §!"+§() : int
      {
         return this.§?!]§;
      }
      
      public function set §!"+§(param1:int) : void
      {
         this.§?!]§ = param1;
         this.§]!A§.§?" § = this.§]!A§.§?" § & 4278255615 | this.§?!]§ << 16 & 16711680;
      }
      
      public function get §#!t§() : int
      {
         return this.§,"$§;
      }
      
      public function set §#!t§(param1:int) : void
      {
         this.§,"$§ = param1;
         this.§]!A§.§?" § = this.§]!A§.§?" § & 16777215 | this.§,"$§ << 24 & 4278190080;
      }
   }
}
