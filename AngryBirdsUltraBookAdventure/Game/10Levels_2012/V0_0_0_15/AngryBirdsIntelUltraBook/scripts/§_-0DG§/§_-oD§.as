package §_-0DG§
{
   import §_-0BH§.§_-FK§;
   
   public class §_-oD§
   {
      
      public static var §_-UR§:Array;
       
      
      public function §_-oD§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §_-0BI§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         if(_loc8_ || §_-oD§)
         {
            §_-UR§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(_loc8_)
               {
                  §§push(§_-FK§);
                  §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
                  if(_loc8_ || param1)
                  {
                     §§push(§§pop() + _loc4_.@id);
                  }
                  §§pop().log(§§pop());
                  if(_loc8_ || param2)
                  {
                     addr268:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        while(true)
                        {
                           §§push(§_-FK§);
                           §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                           if(!(_loc7_ && param3))
                           {
                              §§push(§§pop() + _loc4_.@id);
                           }
                           §§pop().log(§§pop());
                           addr297:
                           while(true)
                           {
                           }
                        }
                        addr274:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           loop15:
                           while(true)
                           {
                              §§push(§_-FK§);
                              §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                              if(_loc8_ || param3)
                              {
                                 §§push(§§pop() + _loc4_.@id);
                              }
                              §§pop().log(§§pop());
                              addr267:
                              while(true)
                              {
                                 continue loop15;
                              }
                           }
                           addr254:
                        }
                        while(true)
                        {
                           if(_loc4_.attribute("restitution").length() <= 0)
                           {
                              addr233:
                              while(true)
                              {
                                 §§push(§_-FK§);
                                 §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                                 if(!(_loc7_ && §_-oD§))
                                 {
                                    §§push(§§pop() + _loc4_.@id);
                                 }
                                 §§pop().log(§§pop());
                                 addr246:
                                 while(true)
                                 {
                                 }
                              }
                              addr233:
                           }
                           while(true)
                           {
                              if(_loc4_.attribute("strength").length() <= 0)
                              {
                                 while(!(_loc7_ && param3))
                                 {
                                    §§push(§_-FK§);
                                    §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                                    if(_loc8_ || param1)
                                    {
                                       §§push(§§pop() + _loc4_.@id);
                                    }
                                    §§pop().log(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       addr152:
                                       loop8:
                                       while(_loc4_.attribute("defence").length() <= 0)
                                       {
                                          while(true)
                                          {
                                             §§push(§_-FK§);
                                             §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                             if(_loc8_ || param3)
                                             {
                                                §§push(§§pop() + _loc4_.@id);
                                             }
                                             §§pop().log(§§pop());
                                             continue loop7;
                                          }
                                          while(true)
                                          {
                                             break loop8;
                                             addr190:
                                             if(_loc8_ || §_-oD§)
                                             {
                                                continue;
                                             }
                                             §§goto(addr274);
                                          }
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          if(_loc4_.attribute("colors").length() <= 0)
                                          {
                                             if(!(_loc7_ && §_-oD§))
                                             {
                                                if(_loc8_ || §_-oD§)
                                                {
                                                   §§push(§_-FK§);
                                                   §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop() + _loc4_.@id);
                                                   }
                                                   §§pop().log(§§pop());
                                                   loop9:
                                                   for(; _loc8_; while(true)
                                                   {
                                                      §_-035§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                      if(_loc7_ && param1)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(_loc8_ || param2)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop2;
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr254);
                                                   },§§goto(addr159))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   continue loop7;
                                                   addr137:
                                                }
                                                §§goto(addr267);
                                             }
                                             §§goto(addr137);
                                          }
                                          §§goto(addr73);
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr297);
                              }
                              §§goto(addr152);
                           }
                        }
                     }
                  }
                  §§goto(addr197);
               }
               §§goto(addr233);
            }
            §§goto(addr268);
         }
         if(_loc8_ || param3)
         {
            §_-K-§(param2,param3);
         }
      }
      
      public static function §_-K-§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§_-au§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc8_ || §_-oD§)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = §_-sd§(_loc3_.@id))
                  {
                     if(_loc8_ || _loc3_)
                     {
                        _loc4_.§return§(_loc3_);
                        if(_loc7_)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     §§push(§_-FK§);
                     §§push("WARNING! Damage material multiplier with unknown material!!");
                     if(!_loc7_)
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  continue;
               }
               if(!(_loc7_ && §_-oD§))
               {
                  if(_loc8_ || param1)
                  {
                     if(_loc8_)
                     {
                        _loc5_ = 0;
                        if(_loc8_ || §_-oD§)
                        {
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr174:
                           addr173:
                           addr171:
                        }
                        §§goto(addr174);
                     }
                     return;
                  }
                  §§goto(addr174);
               }
               §§goto(addr173);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §_-sd§(_loc3_.@id))
               {
                  if(!(_loc7_ && §_-oD§))
                  {
                     _loc4_.§_-hA§(_loc3_);
                     if(_loc7_ && §_-oD§)
                     {
                     }
                  }
               }
               else
               {
                  §§push(§_-FK§);
                  §§push("WARNING! Velocity material multiplier with unknown material!!");
                  if(_loc8_ || param1)
                  {
                     §§push(§§pop() + _loc3_.@id);
                  }
                  §§pop().log(§§pop());
               }
               continue;
            }
            §§goto(addr174);
         }
      }
      
      public static function §_-035§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && §_-oD§))
         {
            §_-UR§[§_-UR§.length] = new §_-au§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §_-sd§(param1:String) : §_-au§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §_-UR§.length)
            {
               if(!(_loc4_ && _loc3_))
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     addr75:
                     _loc2_++;
                     continue;
                  }
                  if(!(_loc3_ || §_-oD§))
                  {
                     break;
                  }
                  §§push(§_-FK§);
                  §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                  if(!_loc4_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               return null;
            }
            if((§_-UR§[_loc2_] as §_-au§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr75);
         }
         return §_-au§(§_-UR§[_loc2_]);
      }
   }
}
