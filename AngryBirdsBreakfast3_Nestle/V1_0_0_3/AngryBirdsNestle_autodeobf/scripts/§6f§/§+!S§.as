package §6f§
{
   import § !%§.b2internal;
   
   use namespace b2internal;
   
   public class §+!S§
   {
       
      
      b2internal var §1"§:int;
      
      b2internal var §<!e§:int;
      
      b2internal var §@5§:int;
      
      b2internal var §?!"§:int;
      
      b2internal var §<U§:b2ContactID;
      
      public function §+!S§()
      {
         super();
      }
      
      public function get §2<§() : int
      {
         return this.§1"§;
      }
      
      public function set §2<§(param1:int) : void
      {
         this.§1"§ = param1;
         this.§<U§.§@1§ = this.§<U§.§@1§ & 4294967040 | this.§1"§ & 255;
      }
      
      public function get §4!w§() : int
      {
         return this.§<!e§;
      }
      
      public function set §4!w§(param1:int) : void
      {
         this.§<!e§ = param1;
         this.§<U§.§@1§ = this.§<U§.§@1§ & 4294902015 | this.§<!e§ << 8 & 65280;
      }
      
      public function get §"!H§() : int
      {
         return this.§@5§;
      }
      
      public function set §"!H§(param1:int) : void
      {
         this.§@5§ = param1;
         this.§<U§.§@1§ = this.§<U§.§@1§ & 4278255615 | this.§@5§ << 16 & 16711680;
      }
      
      public function get §;!p§() : int
      {
         return this.§?!"§;
      }
      
      public function set §;!p§(param1:int) : void
      {
         this.§?!"§ = param1;
         this.§<U§.§@1§ = this.§<U§.§@1§ & 16777215 | this.§?!"§ << 24 & 4278190080;
      }
   }
}
