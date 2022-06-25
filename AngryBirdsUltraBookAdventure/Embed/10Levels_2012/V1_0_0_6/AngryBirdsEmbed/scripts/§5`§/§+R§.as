package §5`§
{
   public class §+R§
   {
       
      
      private var §+T§:Vector.<§%F§>;
      
      public function §+R§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               this.§+T§ = new Vector.<§%F§>();
            }
         }
      }
      
      public function addFrame(param1:§%F§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1 == null)
            {
               if(!(_loc3_ && this))
               {
                  throw new Error("Trying to add a null frame");
               }
            }
            this.§+T§.push(param1);
         }
      }
      
      public function getFrame(param1:int) : §%F§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() >= this.§+T§.length)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(int(this.§+T§.length - 1));
                     if(!_loc2_)
                     {
                        param1 = §§pop();
                        if(_loc3_ || _loc3_)
                        {
                           addr63:
                           §§push(param1);
                           if(_loc3_ || _loc2_)
                           {
                           }
                           addr108:
                           if(§§pop() >= this.§+T§.length)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr120);
                              }
                              else
                              {
                                 §§goto(addr122);
                              }
                           }
                        }
                        §§goto(addr122);
                     }
                     §§push(§§pop() < 0);
                     if(_loc3_ || param1)
                     {
                        if(!§§pop())
                        {
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr99);
                           }
                        }
                        §§goto(addr108);
                     }
                     addr99:
                     §§pop();
                     if(_loc3_ || _loc3_)
                     {
                        addr107:
                        §§goto(addr108);
                        §§push(param1);
                     }
                     addr120:
                     return null;
                  }
                  addr122:
                  return this.§+T§[param1];
               }
            }
            §§goto(addr63);
         }
         §§goto(addr107);
      }
      
      public function getFrameCount() : int
      {
         return this.§+T§.length;
      }
      
      public function getSubAnimation(param1:String) : §+R§
      {
         return null;
      }
   }
}
