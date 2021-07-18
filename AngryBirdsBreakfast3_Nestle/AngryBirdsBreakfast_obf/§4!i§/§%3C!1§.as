package §4!i§
{
   public class §<!1§
   {
       
      
      public function §<!1§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §3M§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(_loc5_ in param3)
         {
            if(_loc12_ || param1)
            {
               var _loc9_:int = 0;
               if(_loc12_)
               {
                  for each(_loc6_ in param1[_loc5_].§*§)
                  {
                     if(!(_loc11_ && param1))
                     {
                        §§push(param4);
                        if(!(_loc11_ && param1))
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
                              }
                              addr135:
                           }
                           loop3:
                           while(true)
                           {
                              if(param2[_loc5_].length() == 0)
                              {
                                 if(_loc12_)
                                 {
                                    if(_loc12_)
                                    {
                                       while(true)
                                       {
                                          param2.appendChild(new XML("<" + _loc5_ + "/>"));
                                          addr125:
                                          loop4:
                                          while(true)
                                          {
                                             addr67:
                                             while(true)
                                             {
                                                if(!param2[_loc5_])
                                                {
                                                   break loop3;
                                                }
                                                if(_loc11_ && param2)
                                                {
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             addr103:
                                             if(true)
                                             {
                                                break loop3;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       addr116:
                                    }
                                    else
                                    {
                                       §§goto(addr135);
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr67);
                           }
                           continue;
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr116);
                  }
               }
            }
         }
      }
   }
}
