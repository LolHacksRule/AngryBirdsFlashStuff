package §'"-§
{
   import §,"[§.b2internal;
   
   use namespace b2internal;
   
   public class §<L§
   {
       
      
      b2internal var §?!S§:int;
      
      b2internal var §-!C§:int;
      
      b2internal var §9"Y§:int;
      
      b2internal var §;]§:int;
      
      b2internal var §8!W§:b2ContactID;
      
      public function §<L§()
      {
         super();
      }
      
      public function get §1g§() : int
      {
         return this.§?!S§;
      }
      
      public function set §1g§(param1:int) : void
      {
         this.§?!S§ = param1;
         this.§8!W§.§&m§ = this.§8!W§.§&m§ & 4294967040 | this.§?!S§ & 255;
      }
      
      public function get §&V§() : int
      {
         return this.§-!C§;
      }
      
      public function set §&V§(param1:int) : void
      {
         this.§-!C§ = param1;
         this.§8!W§.§&m§ = this.§8!W§.§&m§ & 4294902015 | this.§-!C§ << 8 & 65280;
      }
      
      public function get §%!#§() : int
      {
         return this.§9"Y§;
      }
      
      public function set §%!#§(param1:int) : void
      {
         this.§9"Y§ = param1;
         this.§8!W§.§&m§ = this.§8!W§.§&m§ & 4278255615 | this.§9"Y§ << 16 & 16711680;
      }
      
      public function get §2=§() : int
      {
         return this.§;]§;
      }
      
      public function set §2=§(param1:int) : void
      {
         this.§;]§ = param1;
         this.§8!W§.§&m§ = this.§8!W§.§&m§ & 16777215 | this.§;]§ << 24 & 4278190080;
      }
   }
}
