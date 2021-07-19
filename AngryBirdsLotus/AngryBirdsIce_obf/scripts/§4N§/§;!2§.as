package §4N§
{
   import §;8§.§3f§;
   
   public class §;!2§
   {
      
      public static var §in§:Array;
       
      
      public function §;!2§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §=r§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         if(_loc8_ || param1)
         {
            §in§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(!(_loc7_ && param2))
               {
                  §§push(§3f§);
                  §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
                  if(_loc8_)
                  {
                     §§push(§§pop() + _loc4_.@id);
                  }
                  §§pop().log(§§pop());
                  addr238:
                  if(_loc4_.attribute("density").length() <= 0)
                  {
                     §§push(§3f§);
                     §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                     if(_loc8_)
                     {
                        §§push(§§pop() + _loc4_.@id);
                     }
                     §§pop().log(§§pop());
                     while(true)
                     {
                     }
                     addr252:
                  }
                  while(true)
                  {
                     if(_loc4_.attribute("friction").length() <= 0)
                     {
                        §§push(§3f§);
                        §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                        if(_loc8_)
                        {
                           §§push(§§pop() + _loc4_.@id);
                        }
                        §§pop().log(§§pop());
                        loop3:
                        while(true)
                        {
                           addr158:
                           addr165:
                           while(_loc7_ && param2)
                           {
                              continue loop3;
                           }
                           loop1:
                           while(true)
                           {
                              addr94:
                              loop2:
                              while(true)
                              {
                                 if(_loc4_.attribute("colors").length() <= 0)
                                 {
                                    if(!(_loc8_ || param1))
                                    {
                                       continue loop1;
                                    }
                                    if(!_loc7_)
                                    {
                                       if(_loc8_)
                                       {
                                          if(_loc8_ || §;!2§)
                                          {
                                             §§push(§3f§);
                                             §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                                             if(_loc8_ || param3)
                                             {
                                                §§push(§§pop() + _loc4_.@id);
                                             }
                                             §§pop().log(§§pop());
                                             loop7:
                                             while(true)
                                             {
                                                addr66:
                                                while(true)
                                                {
                                                   §>Y§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      break;
                                                   }
                                                   continue loop7;
                                                }
                                                if(true)
                                                {
                                                   break loop2;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr252);
                                          }
                                       }
                                       else
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§3f§);
                                                   §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      §§push(§§pop() + _loc4_.@id);
                                                   }
                                                   §§pop().log(§§pop());
                                                   addr166:
                                                   while(_loc4_.attribute("strength").length() <= 0)
                                                   {
                                                      if(_loc8_ || param1)
                                                      {
                                                         §§push(§3f§);
                                                         §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() + _loc4_.@id);
                                                         }
                                                         §§pop().log(§§pop());
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                                addr198:
                                             }
                                             while(true)
                                             {
                                                if(_loc4_.attribute("defence").length() > 0)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(§3f§);
                                       §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() + _loc4_.@id);
                                       }
                                       §§pop().log(§§pop());
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr66);
                              }
                              continue loop0;
                           }
                        }
                        addr237:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("restitution").length() <= 0)
                        {
                           §§goto(addr198);
                        }
                        §§goto(addr166);
                        §§goto(addr237);
                     }
                     §§goto(addr94);
                  }
               }
               §§goto(addr165);
            }
            §§goto(addr238);
         }
         if(_loc8_)
         {
            §'i§(param2,param3);
         }
      }
      
      public static function §'i§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§`!%§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc8_ || param1)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = §`x§(_loc3_.@id))
                  {
                     if(_loc8_)
                     {
                        _loc4_.§3g§(_loc3_);
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     §§push(§3f§);
                     §§push("WARNING! Damage material multiplier with unknown material!!");
                     if(!_loc7_)
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  continue;
               }
               if(!(_loc7_ && §;!2§))
               {
                  if(_loc8_)
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        _loc5_ = 0;
                        if(_loc8_ || param2)
                        {
                           addr106:
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr156:
                        }
                     }
                     return;
                  }
               }
               §§goto(addr106);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §`x§(_loc3_.@id))
               {
                  if(_loc8_)
                  {
                     _loc4_.§7?§(_loc3_);
                     if(_loc8_ || §;!2§)
                     {
                     }
                  }
               }
               else
               {
                  §§push(§3f§);
                  §§push("WARNING! Velocity material multiplier with unknown material!!");
                  if(_loc8_)
                  {
                     §§push(§§pop() + _loc3_.@id);
                  }
                  §§pop().log(§§pop());
               }
               continue;
            }
            §§goto(addr106);
         }
      }
      
      public static function §>Y§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!_loc9_)
         {
            §in§[§in§.length] = new §`!%§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §`x§(param1:String) : §`!%§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §in§.length)
            {
               if(_loc4_ || _loc2_)
               {
                  if(!(_loc4_ || §;!2§))
                  {
                     break;
                  }
                  §§push(§3f§);
                  §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(_loc3_)
               {
                  continue;
               }
               if(_loc4_)
               {
                  return null;
               }
            }
            else if((§in§[_loc2_] as §`!%§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            _loc2_++;
         }
         return §`!%§(§in§[_loc2_]);
      }
   }
}
