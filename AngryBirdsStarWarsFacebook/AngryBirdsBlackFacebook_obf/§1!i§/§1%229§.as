package §1!i§
{
   public class §1"9§
   {
       
      
      public function §1"9§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §;!P§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(_loc5_ in param3)
         {
            if(_loc11_)
            {
               var _loc9_:int = 0;
               if(!(_loc12_ && param1))
               {
                  loop1:
                  for each(_loc6_ in param1[_loc5_].§*§)
                  {
                     if(!(_loc12_ && param1))
                     {
                        §§push(param4);
                        if(!(_loc12_ && param2))
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(delete param2[_loc5_][_loc6_.name()]);
                                 addr140:
                                 while(true)
                                 {
                                    §§pop();
                                    addr141:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr134:
                           }
                           loop3:
                           while(true)
                           {
                              if(param2[_loc5_].length() == 0)
                              {
                                 while(true)
                                 {
                                    param2.appendChild(new XML("<" + _loc5_ + "/>"));
                                    addr122:
                                    while(true)
                                    {
                                       if(_loc12_)
                                       {
                                          §§goto(addr134);
                                       }
                                    }
                                    §§goto(addr141);
                                 }
                                 addr113:
                              }
                              loop6:
                              while(param2[_loc5_])
                              {
                                 if(!_loc12_)
                                 {
                                    param2[_loc5_].appendChild(_loc6_);
                                 }
                                 if(_loc11_)
                                 {
                                    if(!(_loc12_ && param2))
                                    {
                                       if(_loc11_ || param2)
                                       {
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                break loop6;
                                             }
                                             continue loop3;
                                          }
                                          addr104:
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr113);
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr122);
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr104);
                  }
               }
            }
         }
      }
   }
}
