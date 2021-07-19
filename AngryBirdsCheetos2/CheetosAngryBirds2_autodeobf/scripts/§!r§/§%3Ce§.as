package §!r§
{
   import §>^§.§!6§;
   
   public class §<e§
   {
      
      public static var §?!T§:Array;
       
      
      public function §<e§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §[!&§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(_loc7_ || param1)
         {
            §?!T§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(!_loc8_)
               {
                  §!6§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
                  if(!(_loc8_ && §<e§))
                  {
                     addr198:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        if(_loc7_ || param2)
                        {
                           §!6§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
                        }
                        while(true)
                        {
                        }
                        addr217:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           while(true)
                           {
                              §!6§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
                              addr197:
                              while(true)
                              {
                              }
                              addr176:
                              if(!(_loc7_ || param2))
                              {
                                 continue;
                              }
                              addr149:
                              if(_loc4_.attribute("strength").length() <= 0)
                              {
                                 addr156:
                                 §!6§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
                                 while(true)
                                 {
                                 }
                                 addr162:
                              }
                              while(true)
                              {
                                 if(_loc4_.attribute("defence").length() <= 0)
                                 {
                                    if(_loc7_)
                                    {
                                       if(!_loc8_)
                                       {
                                          §!6§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
                                          loop3:
                                          while(true)
                                          {
                                             if(!_loc8_)
                                             {
                                                while(true)
                                                {
                                                   if(_loc4_.attribute("colors").length() > 0)
                                                   {
                                                      do
                                                      {
                                                         §6w§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                         if(_loc8_)
                                                         {
                                                            continue loop3;
                                                         }
                                                      }
                                                      while(!_loc7_);
                                                      
                                                      if(!_loc8_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr162);
                                                      addr65:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §!6§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
                                                               continue loop3;
                                                            }
                                                            addr170:
                                                            §!6§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
                                                         }
                                                         §§goto(addr176);
                                                      }
                                                      §§goto(addr156);
                                                   }
                                                }
                                                continue loop0;
                                                addr92:
                                             }
                                             §§goto(addr217);
                                          }
                                          addr146:
                                       }
                                       else
                                       {
                                          §§goto(addr197);
                                       }
                                       while(_loc4_.attribute("restitution").length() <= 0)
                                       {
                                          §§goto(addr170);
                                       }
                                       §§goto(addr149);
                                       addr163:
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr92);
                              }
                           }
                        }
                        §§goto(addr163);
                     }
                  }
                  §§goto(addr156);
               }
               §§goto(addr197);
            }
            §§goto(addr198);
         }
         if(!_loc8_)
         {
            §+!&§(param2,param3);
         }
      }
      
      public static function §+!&§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§9!,§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(!(_loc7_ && param2))
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = §]!c§(_loc3_.@id))
                  {
                     if(!_loc7_)
                     {
                        _loc4_.§%!W§(_loc3_);
                        if(!(_loc8_ || _loc3_))
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     §!6§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
                  }
                  continue;
               }
               if(!_loc7_)
               {
                  if(!(_loc7_ && §<e§))
                  {
                     if(!_loc7_)
                     {
                        _loc5_ = 0;
                        if(!(_loc7_ && param1))
                        {
                           addr104:
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr147:
                        }
                     }
                     return;
                  }
               }
               §§goto(addr104);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §]!c§(_loc3_.@id))
               {
                  if(_loc8_)
                  {
                     _loc4_.§[5§(_loc3_);
                     if(!_loc8_)
                     {
                     }
                  }
               }
               else
               {
                  §!6§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
               }
               continue;
            }
            §§goto(addr104);
         }
      }
      
      public static function §6w§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_)
         {
            §?!T§[§?!T§.length] = new §9!,§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §]!c§(param1:String) : §9!,§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §?!T§.length)
            {
               if(!(_loc3_ && §<e§))
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  §!6§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
               }
               if(_loc4_)
               {
                  return null;
               }
               loop1:
               while(!(_loc4_ || §<e§))
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if((§?!T§[_loc2_] as §9!,§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr57);
         }
         return §9!,§(§?!T§[_loc2_]);
      }
   }
}
