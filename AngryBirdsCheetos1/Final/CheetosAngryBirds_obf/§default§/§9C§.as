package §default§
{
   import § !G§.§ #§;
   
   public class §9C§
   {
      
      public static var §^,§:Array;
       
      
      public function §9C§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §`!S§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(_loc7_)
         {
            §^,§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(_loc7_ || param1)
               {
                  § #§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
                  if(_loc7_ || §9C§)
                  {
                     addr215:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        addr221:
                        while(true)
                        {
                           § #§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
                           addr227:
                           while(true)
                           {
                           }
                        }
                        addr221:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           if(_loc7_ || param1)
                           {
                              § #§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
                           }
                           while(true)
                           {
                           }
                           addr214:
                        }
                        while(true)
                        {
                           if(_loc4_.attribute("restitution").length() <= 0)
                           {
                              loop4:
                              for(; !_loc8_; while(true)
                              {
                                 if(!(_loc7_ || §9C§))
                                 {
                                    continue loop4;
                                 }
                                 § #§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
                                 §§goto(addr168);
                              })
                              {
                                 § #§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
                                 while(true)
                                 {
                                    addr168:
                                    loop8:
                                    for(; _loc7_ || param2; while(!(_loc8_ && param1))
                                    {
                                       §§goto(addr65);
                                    })
                                    {
                                       if(_loc7_)
                                       {
                                          while(true)
                                          {
                                             if(_loc4_.attribute("defence").length() <= 0)
                                             {
                                                while(true)
                                                {
                                                   § #§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
                                                   addr147:
                                                   addr86:
                                                   while(true)
                                                   {
                                                   }
                                                   if(!(_loc7_ || param2))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      if(false)
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc4_.attribute("colors").length() <= 0)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(_loc7_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     § #§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
                                                                     continue loop8;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr147);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §8r§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                                  if(_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr86);
                                                               addr65:
                                                            }
                                                         }
                                                         addr97:
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr221);
                                                }
                                             }
                                             §§goto(addr97);
                                          }
                                          addr134:
                                       }
                                       §§goto(addr227);
                                    }
                                 }
                              }
                              continue;
                           }
                           while(true)
                           {
                              if(_loc4_.attribute("strength").length() <= 0)
                              {
                                 §§goto(addr155);
                              }
                              §§goto(addr134);
                              §§goto(addr193);
                           }
                        }
                     }
                  }
                  §§goto(addr227);
               }
               §§goto(addr221);
            }
            §§goto(addr215);
         }
         if(_loc7_)
         {
            §5P§(param2,param3);
         }
      }
      
      public static function §5P§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§-g§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc8_)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = §%!L§(_loc3_.@id))
                  {
                     if(_loc8_ || param1)
                     {
                        _loc4_.§4!L§(_loc3_);
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     § #§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
                  }
                  continue;
               }
               if(!_loc7_)
               {
                  if(_loc8_)
                  {
                     if(_loc8_ || _loc3_)
                     {
                        _loc5_ = 0;
                        if(_loc8_ || param1)
                        {
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr145:
                           addr144:
                           addr142:
                        }
                        §§goto(addr145);
                     }
                     return;
                  }
                  §§goto(addr145);
               }
               §§goto(addr144);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §%!L§(_loc3_.@id))
               {
                  if(!_loc7_)
                  {
                     _loc4_.§3U§(_loc3_);
                     if(!_loc8_)
                     {
                     }
                  }
               }
               else
               {
                  § #§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
               }
               continue;
            }
            §§goto(addr145);
         }
      }
      
      public static function §8r§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || param1)
         {
            §^,§[§^,§.length] = new §-g§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §%!L§(param1:String) : §-g§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §^,§.length)
            {
               if(_loc3_)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  § #§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
               }
               if(_loc3_ || param1)
               {
                  return null;
               }
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if((§^,§[_loc2_] as §-g§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr56);
         }
         return §-g§(§^,§[_loc2_]);
      }
   }
}
