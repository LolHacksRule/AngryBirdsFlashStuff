package §`!M§
{
   public class §8!>§
   {
       
      
      protected var §#!!§:Number;
      
      protected var §!!3§:Number;
      
      protected var §?z§:Number;
      
      protected var §<L§:Boolean;
      
      public function §8!>§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super();
            while(true)
            {
               this.§#!!§ = param1;
               loop3:
               while(!(_loc6_ && param1))
               {
                  this.§<L§ = param4;
                  if(!_loc5_)
                  {
                     continue;
                  }
                  addr44:
                  if(_loc5_ || this)
                  {
                     addr51:
                     if(_loc6_ && param3)
                     {
                        while(true)
                        {
                           this.§!!3§ = param2;
                           addr85:
                           while(true)
                           {
                              this.§?z§ = param3;
                              continue loop3;
                              §§goto(addr44);
                           }
                           §§goto(addr51);
                        }
                        addr90:
                     }
                     return;
                  }
                  §§goto(addr85);
               }
            }
         }
         §§goto(addr90);
      }
      
      public function get x() : Number
      {
         return this.§#!!§;
      }
      
      public function get y() : Number
      {
         return this.§!!3§;
      }
      
      public function get scale() : Number
      {
         return this.§?z§;
      }
      
      public function get §"!j§() : Boolean
      {
         return this.§<L§;
      }
   }
}
