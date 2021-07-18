package §_-vg§
{
   import §_-Xz§.§_-Ps§;
   import §_-xo§.§_-t9§;
   
   public class §_-wZ§ extends §_-t9§
   {
       
      
      private var §_-XB§:Function;
      
      private var §_-q7§:Array;
      
      private var §_-wJ§:Function;
      
      private var §_-FH§:Array;
      
      public function §_-wZ§(param1:§_-Ps§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         super(param1);
         if(_loc8_ || this)
         {
            this.§_-XB§ = param2;
            this.§_-q7§ = param3;
            if(param4)
            {
               if(_loc8_)
               {
                  if(param5 != null)
                  {
                     if(_loc8_ || param2)
                     {
                        this.§_-wJ§ = param5;
                     }
                     else
                     {
                        addr70:
                        this.§_-FH§ = param3;
                        §§goto(addr73);
                     }
                     addr73:
                     return;
                  }
                  this.§_-wJ§ = param2;
                  if(!_loc8_)
                  {
                  }
                  §§goto(addr70);
                  §§goto(addr70);
               }
               this.§_-FH§ = param6;
               addr64:
            }
            §§goto(addr70);
         }
         §§goto(addr64);
      }
      
      override protected function rollback() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-wJ§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(null);
               if(_loc2_)
               {
                  if(§§pop() != §§pop())
                  {
                     if(!(_loc1_ && this))
                     {
                        addr53:
                        this.§_-wJ§.apply(null,this.§_-FH§);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
      
      override protected function action() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-XB§);
            if(_loc1_)
            {
               §§push(null);
               if(_loc1_ || _loc2_)
               {
                  if(§§pop() != §§pop())
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        addr52:
                        this.§_-XB§.apply(null,this.§_-q7§);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
   }
}
