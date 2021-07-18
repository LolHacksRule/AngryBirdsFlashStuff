package §59§
{
   public class §#l§
   {
       
      
      private var §?!§:int;
      
      private var §2"Q§:int;
      
      private var § 0§:int;
      
      private var §8d§:int;
      
      public function §#l§(param1:int, param2:int, param3:int, param4:int = 0)
      {
         super();
         this.§?!§ = param1;
         this.§2"Q§ = param2;
         this.§ 0§ = param3;
         this.§8d§ = param4;
      }
      
      public static function §?[§(param1:Object) : §#l§
      {
         return new §#l§(param1.tq,param1.fq,param1.p,param1.cp);
      }
      
      public function get § !?§() : int
      {
         return this.§?!§;
      }
      
      public function get §4!m§() : int
      {
         return this.§2"Q§;
      }
      
      public function §#!-§() : String
      {
         return Math.round(this.§2"Q§ / this.§?!§ * 100).toString() + "%";
      }
      
      public function get price() : int
      {
         return this.§ 0§;
      }
      
      public function get §0H§() : int
      {
         return this.§8d§;
      }
   }
}
