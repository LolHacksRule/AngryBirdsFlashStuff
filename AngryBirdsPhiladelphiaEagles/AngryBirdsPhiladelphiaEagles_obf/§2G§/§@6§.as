package §2G§
{
   import §`K§.§ L§;
   
   public class §@6§
   {
      
      public static var §0B§:Array;
       
      
      public function §@6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §8s§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(!_loc8_)
         {
            §0B§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §§push(§ L§);
               §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
               if(_loc7_)
               {
                  §§push(§§pop() + _loc4_.@id);
               }
               §§pop().log(§§pop());
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               loop1:
               while(true)
               {
                  §§push(§ L§);
                  §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                  if(_loc7_)
                  {
                     §§push(§§pop() + _loc4_.@id);
                  }
                  §§pop().log(§§pop());
                  addr226:
                  loop2:
                  while(true)
                  {
                     addr186:
                     §§push(§ L§);
                     §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                     if(_loc7_ || §@6§)
                     {
                        §§push(§§pop() + _loc4_.@id);
                     }
                     §§pop().log(§§pop());
                     if(!_loc7_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("restitution").length() <= 0)
                        {
                           while(true)
                           {
                              §§push(§ L§);
                              §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                              if(_loc7_)
                              {
                                 §§push(§§pop() + _loc4_.@id);
                              }
                              §§pop().log(§§pop());
                              addr174:
                              addr184:
                              while(_loc7_)
                              {
                              }
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr186);
                              }
                              continue loop2;
                              loop13:
                              while(!(_loc8_ && param2))
                              {
                                 §§push(§ L§);
                                 §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() + _loc4_.@id);
                                 }
                                 §§pop().log(§§pop());
                                 loop14:
                                 while(!_loc8_)
                                 {
                                    while(true)
                                    {
                                       §`8§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                       if(!_loc8_)
                                       {
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          continue loop13;
                                       }
                                       continue loop14;
                                    }
                                    addr53:
                                    if(!(_loc8_ && param3))
                                    {
                                       addr83:
                                       if(false)
                                       {
                                          addr85:
                                          while(true)
                                          {
                                             if(_loc4_.attribute("colors").length() <= 0)
                                             {
                                                continue loop13;
                                             }
                                             §§goto(addr53);
                                             §§goto(addr83);
                                          }
                                          addr85:
                                       }
                                       continue loop0;
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       addr120:
                                       while(true)
                                       {
                                          if(_loc4_.attribute("defence").length() <= 0)
                                          {
                                             break loop14;
                                          }
                                          §§goto(addr85);
                                          continue loop9;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(§ L§);
                                    §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() + _loc4_.@id);
                                    }
                                    §§pop().log(§§pop());
                                    §§goto(addr85);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc4_.attribute("strength").length() <= 0)
                           {
                              if(_loc7_)
                              {
                                 §§push(§ L§);
                                 §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                                 if(!(_loc8_ && param3))
                                 {
                                    §§push(§§pop() + _loc4_.@id);
                                 }
                                 §§pop().log(§§pop());
                                 §§goto(addr158);
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr120);
                        }
                     }
                  }
               }
            }
            while(true)
            {
               if(_loc4_.attribute("friction").length() <= 0)
               {
                  §§goto(addr184);
               }
               §§goto(addr159);
               §§goto(addr226);
            }
         }
         if(!(_loc8_ && param1))
         {
            §3W§(param2,param3);
         }
      }
      
      public static function §3W§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:§,6§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(!(_loc8_ && param1))
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = §6k§(_loc3_.@id))
                  {
                     if(_loc7_ || _loc3_)
                     {
                        _loc4_.§9W§(_loc3_);
                        if(!_loc7_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§ L§);
                     §§push("WARNING! Damage material multiplier with unknown material!!");
                     if(!(_loc8_ && param2))
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  continue;
               }
               if(_loc7_ || _loc3_)
               {
                  if(_loc7_ || _loc3_)
                  {
                     if(!_loc8_)
                     {
                        _loc5_ = 0;
                        if(!_loc8_)
                        {
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr158:
                           addr157:
                           addr155:
                        }
                        §§goto(addr158);
                     }
                     return;
                  }
                  §§goto(addr158);
               }
               §§goto(addr157);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §6k§(_loc3_.@id))
               {
                  if(_loc7_)
                  {
                     _loc4_.§0!M§(_loc3_);
                     if(_loc8_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(§ L§);
                  §§push("WARNING! Velocity material multiplier with unknown material!!");
                  if(_loc7_)
                  {
                     §§push(§§pop() + _loc3_.@id);
                  }
                  §§pop().log(§§pop());
               }
               continue;
            }
            §§goto(addr158);
         }
      }
      
      public static function §`8§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || param3)
         {
            §0B§[§0B§.length] = new §,6§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §6k§(param1:String) : §,6§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §0B§.length)
            {
               if(_loc4_)
               {
                  break;
               }
               if(_loc3_)
               {
                  §§push(§ L§);
                  §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  break;
               }
               loop2:
               while(_loc4_ && param1)
               {
                  while(true)
                  {
                     addr51:
                     while(true)
                     {
                        _loc2_++;
                        continue loop2;
                     }
                     continue loop2;
                  }
               }
               continue;
            }
            if((§0B§[_loc2_] as §,6§).mName.toLowerCase() == param1.toLowerCase())
            {
               if(_loc3_)
               {
                  return §,6§(§0B§[_loc2_]);
               }
               §§goto(addr91);
            }
            §§goto(addr51);
         }
         return null;
      }
   }
}
