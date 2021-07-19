package § !Y§
{
   public class §1!j§
   {
       
      
      public function §1!j§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §8"+§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(_loc5_ in param3)
         {
            if(_loc11_ || §1!j§)
            {
               var _loc9_:int = 0;
               if(!(_loc12_ && param2))
               {
                  loop1:
                  for each(_loc6_ in param1[_loc5_].§*§)
                  {
                     if(!_loc12_)
                     {
                        §§push(param4);
                        if(!(_loc12_ && §1!j§))
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(delete param2[_loc5_][_loc6_.name()]);
                                 addr145:
                                 while(true)
                                 {
                                    §§pop();
                                    addr146:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr102:
                                 if(!(_loc11_ || param2))
                                 {
                                    continue;
                                 }
                                 if(true)
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    if(param2[_loc5_].length() == 0)
                                    {
                                       while(true)
                                       {
                                          param2.appendChild(new XML("<" + _loc5_ + "/>"));
                                          addr127:
                                          while(_loc11_)
                                          {
                                          }
                                          §§goto(addr146);
                                       }
                                       addr118:
                                    }
                                    while(param2[_loc5_])
                                    {
                                       if(_loc11_ || param1)
                                       {
                                          if(_loc11_ || §1!j§)
                                          {
                                             while(true)
                                             {
                                                param2[_loc5_].appendChild(_loc6_);
                                                addr100:
                                                while(true)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      §§goto(addr102);
                                                   }
                                                }
                                             }
                                             addr95:
                                          }
                                          else
                                          {
                                             §§goto(addr118);
                                          }
                                          §§goto(addr127);
                                       }
                                       §§goto(addr100);
                                    }
                                    continue loop1;
                                 }
                                 addr111:
                              }
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr95);
                  }
               }
            }
         }
      }
   }
}
