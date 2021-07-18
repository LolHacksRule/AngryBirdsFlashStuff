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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               this.§?!§ = param1;
               while(true)
               {
                  this.§2"Q§ = param2;
                  continue loop0;
                  addr72:
                  if(!(_loc5_ && param2))
                  {
                     this.§8d§ = param4;
                     addr79:
                     if(_loc6_ || param2)
                     {
                        return;
                        addr55:
                     }
                     while(!(_loc5_ && param3))
                     {
                        §§goto(addr72);
                        §§goto(addr79);
                     }
                     continue loop0;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
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
