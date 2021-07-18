package §"n§
{
   public class §[!e§
   {
       
      
      public function §[!e§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §[!4§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(_loc5_ in param3)
         {
            if(!(_loc11_ && param3))
            {
               var _loc9_:int = 0;
               if(!(_loc11_ && param3))
               {
                  loop1:
                  for each(_loc6_ in param1[_loc5_].§*§)
                  {
                     if(!_loc11_)
                     {
                        §§push(param4);
                        if(_loc12_ || param2)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(delete param2[_loc5_][_loc6_.name()]);
                                 addr141:
                                 while(true)
                                 {
                                    §§pop();
                                    addr142:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr84:
                                 if(_loc11_ && param2)
                                 {
                                    continue;
                                 }
                                 param2[_loc5_].appendChild(_loc6_);
                                 addr96:
                                 if(!_loc11_)
                                 {
                                    if(_loc12_ || param2)
                                    {
                                       if(true)
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          if(param2[_loc5_].length() == 0)
                                          {
                                             while(_loc12_)
                                             {
                                                param2.appendChild(new XML("<" + _loc5_ + "/>"));
                                                while(true)
                                                {
                                                }
                                             }
                                             §§goto(addr142);
                                             addr114:
                                          }
                                          while(param2[_loc5_])
                                          {
                                             if(_loc12_)
                                             {
                                                §§goto(addr84);
                                             }
                                             §§goto(addr96);
                                          }
                                          continue loop1;
                                       }
                                       addr107:
                                    }
                                    §§goto(addr114);
                                 }
                                 §§goto(addr125);
                              }
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr125);
                  }
               }
            }
         }
      }
   }
}
