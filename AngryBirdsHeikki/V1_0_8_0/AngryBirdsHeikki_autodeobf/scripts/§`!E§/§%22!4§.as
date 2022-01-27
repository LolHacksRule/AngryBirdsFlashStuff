package §`!E§
{
   import §0^§.b2internal;
   
   use namespace b2internal;
   
   public class §"!4§
   {
       
      
      b2internal var §'!A§:int;
      
      b2internal var §,H§:int;
      
      b2internal var §`!4§:int;
      
      b2internal var §^L§:int;
      
      b2internal var §&T§:b2ContactID;
      
      public function §"!4§()
      {
         super();
      }
      
      public function get §,!K§() : int
      {
         return this.§'!A§;
      }
      
      public function set §,!K§(param1:int) : void
      {
         this.§'!A§ = param1;
         this.§&T§.§"!$§ = this.§&T§.§"!$§ & 4294967040 | this.§'!A§ & 255;
      }
      
      public function get §@r§() : int
      {
         return this.§,H§;
      }
      
      public function set §@r§(param1:int) : void
      {
         this.§,H§ = param1;
         this.§&T§.§"!$§ = this.§&T§.§"!$§ & 4294902015 | this.§,H§ << 8 & 65280;
      }
      
      public function get §^!a§() : int
      {
         return this.§`!4§;
      }
      
      public function set §^!a§(param1:int) : void
      {
         this.§`!4§ = param1;
         this.§&T§.§"!$§ = this.§&T§.§"!$§ & 4278255615 | this.§`!4§ << 16 & 16711680;
      }
      
      public function get §!!H§() : int
      {
         return this.§^L§;
      }
      
      public function set §!!H§(param1:int) : void
      {
         this.§^L§ = param1;
         this.§&T§.§"!$§ = this.§&T§.§"!$§ & 16777215 | this.§^L§ << 24 & 4278190080;
      }
   }
}
