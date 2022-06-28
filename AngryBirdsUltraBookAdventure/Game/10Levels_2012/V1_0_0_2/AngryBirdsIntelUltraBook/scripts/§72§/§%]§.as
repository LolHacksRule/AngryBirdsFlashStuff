package §72§
{
   import §7!u§.b2internal;
   
   use namespace b2internal;
   
   public class §%]§
   {
       
      
      b2internal var §class§:int;
      
      b2internal var §!!4§:int;
      
      b2internal var §`V§:int;
      
      b2internal var §!3§:int;
      
      b2internal var §+![§:b2ContactID;
      
      public function §%]§()
      {
         super();
      }
      
      public function get §]p§() : int
      {
         return this.§class§;
      }
      
      public function set §]p§(param1:int) : void
      {
         this.§class§ = param1;
         this.§+![§.§?R§ = this.§+![§.§?R§ & 4294967040 | this.§class§ & 255;
      }
      
      public function get §"!o§() : int
      {
         return this.§!!4§;
      }
      
      public function set §"!o§(param1:int) : void
      {
         this.§!!4§ = param1;
         this.§+![§.§?R§ = this.§+![§.§?R§ & 4294902015 | this.§!!4§ << 8 & 65280;
      }
      
      public function get §8!"§() : int
      {
         return this.§`V§;
      }
      
      public function set §8!"§(param1:int) : void
      {
         this.§`V§ = param1;
         this.§+![§.§?R§ = this.§+![§.§?R§ & 4278255615 | this.§`V§ << 16 & 16711680;
      }
      
      public function get §7!i§() : int
      {
         return this.§!3§;
      }
      
      public function set §7!i§(param1:int) : void
      {
         this.§!3§ = param1;
         this.§+![§.§?R§ = this.§+![§.§?R§ & 16777215 | this.§!3§ << 24 & 4278190080;
      }
   }
}
