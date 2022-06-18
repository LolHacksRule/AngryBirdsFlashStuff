package §!!#§
{
   import §4! §.b2internal;
   
   use namespace b2internal;
   
   public class §!!Y§
   {
       
      
      b2internal var §-!N§:int;
      
      b2internal var §!!N§:int;
      
      b2internal var §;M§:int;
      
      b2internal var §"!W§:int;
      
      b2internal var §=`§:b2ContactID;
      
      public function §!!Y§()
      {
         super();
      }
      
      public function get §"m§() : int
      {
         return this.§-!N§;
      }
      
      public function set §"m§(param1:int) : void
      {
         this.§-!N§ = param1;
         this.§=`§.§@x§ = this.§=`§.§@x§ & 4294967040 | this.§-!N§ & 255;
      }
      
      public function get §5!R§() : int
      {
         return this.§!!N§;
      }
      
      public function set §5!R§(param1:int) : void
      {
         this.§!!N§ = param1;
         this.§=`§.§@x§ = this.§=`§.§@x§ & 4294902015 | this.§!!N§ << 8 & 65280;
      }
      
      public function get §+!M§() : int
      {
         return this.§;M§;
      }
      
      public function set §+!M§(param1:int) : void
      {
         this.§;M§ = param1;
         this.§=`§.§@x§ = this.§=`§.§@x§ & 4278255615 | this.§;M§ << 16 & 16711680;
      }
      
      public function get §-!Z§() : int
      {
         return this.§"!W§;
      }
      
      public function set §-!Z§(param1:int) : void
      {
         this.§"!W§ = param1;
         this.§=`§.§@x§ = this.§=`§.§@x§ & 16777215 | this.§"!W§ << 24 & 4278190080;
      }
   }
}
