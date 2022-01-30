package §1!1§
{
   import §!S§.b2internal;
   
   use namespace b2internal;
   
   public class §2!K§
   {
       
      
      b2internal var §]!r§:int;
      
      b2internal var §3Q§:int;
      
      b2internal var §&!A§:int;
      
      b2internal var §,!L§:int;
      
      b2internal var §&!+§:b2ContactID;
      
      public function §2!K§()
      {
         super();
      }
      
      public function get §0y§() : int
      {
         return this.§]!r§;
      }
      
      public function set §0y§(param1:int) : void
      {
         this.§]!r§ = param1;
         this.§&!+§.§!!s§ = this.§&!+§.§!!s§ & 4294967040 | this.§]!r§ & 255;
      }
      
      public function get §;!"§() : int
      {
         return this.§3Q§;
      }
      
      public function set §;!"§(param1:int) : void
      {
         this.§3Q§ = param1;
         this.§&!+§.§!!s§ = this.§&!+§.§!!s§ & 4294902015 | this.§3Q§ << 8 & 65280;
      }
      
      public function get §default§() : int
      {
         return this.§&!A§;
      }
      
      public function set §default§(param1:int) : void
      {
         this.§&!A§ = param1;
         this.§&!+§.§!!s§ = this.§&!+§.§!!s§ & 4278255615 | this.§&!A§ << 16 & 16711680;
      }
      
      public function get §'M§() : int
      {
         return this.§,!L§;
      }
      
      public function set §'M§(param1:int) : void
      {
         this.§,!L§ = param1;
         this.§&!+§.§!!s§ = this.§&!+§.§!!s§ & 16777215 | this.§,!L§ << 24 & 4278190080;
      }
   }
}
