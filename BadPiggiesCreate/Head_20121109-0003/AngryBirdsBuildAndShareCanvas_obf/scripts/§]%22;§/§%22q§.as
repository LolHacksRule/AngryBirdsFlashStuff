package §]";§
{
   import §6]§.§,"0§;
   
   public class §"q§
   {
      
      public static var §<z§:Array;
       
      
      public function §"q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §9!p§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(!(_loc8_ && param3))
         {
            §<z§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(_loc7_)
               {
                  §,"0§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
                  if(_loc7_ || param2)
                  {
                     addr225:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        loop17:
                        while(true)
                        {
                           §,"0§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
                           addr237:
                           addr216:
                           while(true)
                           {
                           }
                           loop6:
                           while(true)
                           {
                              §,"0§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
                              loop7:
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    §§goto(addr237);
                                 }
                                 addr195:
                                 while(true)
                                 {
                                    if(_loc4_.attribute("restitution").length() <= 0)
                                    {
                                       while(true)
                                       {
                                          §,"0§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
                                          addr208:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr202:
                                    }
                                    while(true)
                                    {
                                       if(_loc4_.attribute("strength").length() <= 0)
                                       {
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                continue loop7;
                                             }
                                             if(!_loc7_)
                                             {
                                                continue loop17;
                                             }
                                             §,"0§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
                                             while(true)
                                             {
                                             }
                                          }
                                          addr184:
                                       }
                                       while(_loc4_.attribute("defence").length() <= 0)
                                       {
                                          if(!_loc8_)
                                          {
                                             if(!(_loc8_ && §"q§))
                                             {
                                                §,"0§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
                                                while(!(_loc7_ || §"q§))
                                                {
                                                   §§goto(addr194);
                                                }
                                                addr169:
                                                break;
                                                addr169:
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr169);
                                       }
                                       addr133:
                                       addr131:
                                       while(true)
                                       {
                                          if(_loc4_.attribute("colors").length() <= 0)
                                          {
                                             while(true)
                                             {
                                                §,"0§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
                                                addr146:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr140:
                                          }
                                          while(true)
                                          {
                                             §0!r§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                             if(!(_loc8_ && param1))
                                             {
                                                if(!(_loc8_ && param3))
                                                {
                                                   break;
                                                }
                                                §§goto(addr140);
                                             }
                                             §§goto(addr146);
                                          }
                                          if(!(_loc8_ && param2))
                                          {
                                             if(!(_loc8_ && param3))
                                             {
                                                if(_loc7_ || §"q§)
                                                {
                                                   addr119:
                                                   if(_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr202);
                                             }
                                             else
                                             {
                                                §§goto(addr184);
                                             }
                                          }
                                          §§goto(addr169);
                                       }
                                       while(false)
                                       {
                                          §§goto(addr133);
                                          §§goto(addr119);
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           §§goto(addr216);
                        }
                        §§goto(addr195);
                     }
                  }
               }
               §§goto(addr131);
            }
            §§goto(addr225);
         }
         if(_loc7_ || param1)
         {
            §;A§(param2,param3);
         }
      }
      
      public static function §;A§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:§0A§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc7_ || _loc3_)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = §6x§(_loc3_.@id))
                  {
                     if(!(_loc8_ && _loc3_))
                     {
                        _loc4_.§#S§(_loc3_);
                        if(_loc8_ && _loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §,"0§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
                  }
                  continue;
               }
               if(_loc7_)
               {
                  if(!(_loc8_ && param1))
                  {
                     if(!_loc8_)
                     {
                        _loc5_ = 0;
                        if(_loc7_)
                        {
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr154:
                           addr153:
                           addr151:
                        }
                        §§goto(addr154);
                     }
                     return;
                  }
                  §§goto(addr154);
               }
               §§goto(addr153);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §6x§(_loc3_.@id))
               {
                  if(!(_loc8_ && param1))
                  {
                     _loc4_.§9'§(_loc3_);
                     if(_loc8_)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  §,"0§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
               }
               continue;
            }
            §§goto(addr154);
         }
      }
      
      public static function §0!r§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || param2)
         {
            §<z§[§<z§.length] = new §0A§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §6x§(param1:String) : §0A§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §<z§.length)
            {
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     §,"0§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
                     break;
                  }
                  loop1:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        _loc2_++;
                        continue loop1;
                     }
                  }
                  if(_loc4_ && §"q§)
                  {
                     addr83:
                  }
                  continue;
                  return §0A§(§<z§[_loc2_]);
               }
               break;
            }
            if((§<z§[_loc2_] as §0A§).mName.toLowerCase() != param1.toLowerCase())
            {
               §§goto(addr49);
            }
            §§goto(addr83);
            §§goto(addr49);
         }
         return null;
      }
   }
}
