package §&!-§
{
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class §6!"§
   {
       
      
      b2internal var §8!-§:int;
      
      b2internal var §;?§:int;
      
      b2internal var §;!7§:int;
      
      b2internal var §3!K§:int;
      
      b2internal var §0!-§:b2ContactID;
      
      public function §6!"§()
      {
         super();
      }
      
      public function get §-7§() : int
      {
         return this.§8!-§;
      }
      
      public function set §-7§(param1:int) : void
      {
         this.§8!-§ = param1;
         this.§0!-§.§,V§ = this.§0!-§.§,V§ & 4294967040 | this.§8!-§ & 255;
      }
      
      public function get § !=§() : int
      {
         return this.§;?§;
      }
      
      public function set § !=§(param1:int) : void
      {
         this.§;?§ = param1;
         this.§0!-§.§,V§ = this.§0!-§.§,V§ & 4294902015 | this.§;?§ << 8 & 65280;
      }
      
      public function get §3!R§() : int
      {
         return this.§;!7§;
      }
      
      public function set §3!R§(param1:int) : void
      {
         this.§;!7§ = param1;
         this.§0!-§.§,V§ = this.§0!-§.§,V§ & 4278255615 | this.§;!7§ << 16 & 16711680;
      }
      
      public function get §<!J§() : int
      {
         return this.§3!K§;
      }
      
      public function set §<!J§(param1:int) : void
      {
         this.§3!K§ = param1;
         this.§0!-§.§,V§ = this.§0!-§.§,V§ & 16777215 | this.§3!K§ << 24 & 4278190080;
      }
   }
}
