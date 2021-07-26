package §<T§
{
   public class §'!O§ extends §""#§
   {
       
      
      private var §^!L§:Object;
      
      public function §'!O§(param1:String, param2:String, param3:String, param4:Boolean = true, param5:int = 1)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super(param1,param3,param4,param5);
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  §§push(§§pop() == null);
                  if(!_loc7_)
                  {
                     §§push(!§§pop());
                     if(!_loc7_)
                     {
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 this.§^!L§ = JSON.parse(param2);
                              }
                              if(_loc6_)
                              {
                                 addr82:
                                 break;
                              }
                              §§push(§§pop() == "");
                              continue loop0;
                              if(!(_loc7_ && param2))
                              {
                                 §§push(!§§pop());
                              }
                              if(!(_loc7_ && param3))
                              {
                                 continue;
                              }
                              addr94:
                              while(true)
                              {
                                 §§pop();
                                 continue loop1;
                              }
                              addr94:
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr94);
               }
            }
         }
         §§goto(addr82);
      }
      
      override protected function getFullFilename(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§findproperty(§%Q§));
            if(_loc4_ || param1)
            {
               §§push(§%Q§);
               if(!(_loc3_ && _loc3_))
               {
                  §§pop().§%Q§ = §§pop() || "";
                  addr46:
                  §§push("/flash/packages/");
                  if(!_loc3_)
                  {
                     §§push(§§pop() + param1);
                     if(!_loc3_)
                     {
                        addr53:
                        §§push(§§pop() + ".");
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() + §'!'§);
                        }
                     }
                     var _loc2_:String = §§pop();
                     if(_loc4_ || _loc2_)
                     {
                        §§push(Boolean(this.§^!L§));
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              loop2:
                              while(true)
                              {
                                 §§pop();
                                 addr140:
                                 while(true)
                                 {
                                    §§push(Boolean(this.§^!L§[_loc2_]));
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                              }
                              addr139:
                           }
                           loop0:
                           for(; §§pop(); §§goto(addr140))
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 while(true)
                                 {
                                    _loc2_ = this.§^!L§[_loc2_];
                                 }
                                 addr118:
                              }
                              while(true)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                           }
                           return §%Q§ + _loc2_;
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr53);
               }
            }
            §§goto(addr43);
         }
         §§goto(addr46);
      }
   }
}
