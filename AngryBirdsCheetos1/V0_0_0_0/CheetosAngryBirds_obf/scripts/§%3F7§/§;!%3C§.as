package §?7§
{
   import §@,§.§4h§;
   
   public class §;!<§
   {
      
      public static var §8?§:Array;
       
      
      public function §;!<§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §%!-§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         if(_loc8_)
         {
            §8?§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(!_loc7_)
               {
                  §4h§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
                  if(_loc8_ || param2)
                  {
                     addr226:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        while(true)
                        {
                           §4h§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
                           addr238:
                           while(true)
                           {
                           }
                        }
                        addr232:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           addr219:
                           while(true)
                           {
                              §4h§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
                              addr225:
                              while(true)
                              {
                              }
                           }
                           addr219:
                        }
                        while(true)
                        {
                           if(_loc4_.attribute("restitution").length() <= 0)
                           {
                              if(_loc8_ || param1)
                              {
                                 §4h§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
                              }
                              while(true)
                              {
                                 addr143:
                                 if(_loc7_ && param3)
                                 {
                                    continue;
                                 }
                                 §4h§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
                                 loop12:
                                 for(; _loc8_; loop13:
                                 while(true)
                                 {
                                    §<L§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                    if(_loc7_ && param3)
                                    {
                                       continue loop12;
                                    }
                                    addr87:
                                    if(!(_loc7_ && param1))
                                    {
                                       if(_loc8_ || param3)
                                       {
                                          if(!(_loc7_ && §;!<§))
                                          {
                                             if(_loc8_ || param2)
                                             {
                                                if(false)
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(_loc4_.attribute("colors").length() > 0)
                                                      {
                                                         continue loop13;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            addr136:
                                                            if(_loc7_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr143);
                                                         }
                                                         addr168:
                                                         addr190:
                                                         while(_loc8_)
                                                         {
                                                            while(true)
                                                            {
                                                               §4h§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
                                                               break loop12;
                                                            }
                                                         }
                                                         loop7:
                                                         while(true)
                                                         {
                                                            addr161:
                                                            while(true)
                                                            {
                                                               if(_loc4_.attribute("defence").length() > 0)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr168);
                                                               continue loop7;
                                                            }
                                                         }
                                                         §§goto(addr87);
                                                      }
                                                      while(true)
                                                      {
                                                         §4h§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
                                                         §§goto(addr190);
                                                         §§goto(addr136);
                                                      }
                                                   }
                                                   addr117:
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr232);
                                          }
                                          else
                                          {
                                             §§goto(addr219);
                                          }
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr134);
                                 })
                                 {
                                    if(!_loc7_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr238);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr117);
                                 }
                              }
                           }
                           while(true)
                           {
                              if(_loc4_.attribute("strength").length() <= 0)
                              {
                                 §§goto(addr184);
                              }
                              §§goto(addr161);
                           }
                        }
                     }
                  }
                  §§goto(addr219);
               }
               §§goto(addr170);
            }
            §§goto(addr226);
         }
         if(_loc8_ || §;!<§)
         {
            §`8§(param2,param3);
         }
      }
      
      public static function §`8§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§#!+§ = null;
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
                  if(_loc4_ = §<!2§(_loc3_.@id))
                  {
                     if(_loc8_ || §;!<§)
                     {
                        _loc4_.§+!V§(_loc3_);
                        if(_loc7_)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     §4h§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
                  }
                  continue;
               }
               if(!_loc7_)
               {
                  if(!_loc7_)
                  {
                     if(!(_loc7_ && param1))
                     {
                        _loc5_ = 0;
                        if(!(_loc7_ && param2))
                        {
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr150:
                           addr149:
                           addr147:
                        }
                        §§goto(addr150);
                     }
                     return;
                  }
                  §§goto(addr150);
               }
               §§goto(addr149);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §<!2§(_loc3_.@id))
               {
                  if(!(_loc7_ && param1))
                  {
                     _loc4_.§<8§(_loc3_);
                     if(!_loc8_)
                     {
                     }
                  }
               }
               else
               {
                  §4h§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
               }
               continue;
            }
            §§goto(addr150);
         }
      }
      
      public static function §<L§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_)
         {
            §8?§[§8?§.length] = new §#!+§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §<!2§(param1:String) : §#!+§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §8?§.length)
            {
               if(_loc3_)
               {
                  if(_loc4_ && §;!<§)
                  {
                     loop1:
                     while(_loc4_)
                     {
                        while(true)
                        {
                           _loc2_++;
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  if(_loc4_)
                  {
                     break;
                  }
                  §4h§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
               }
               return null;
            }
            if((§8?§[_loc2_] as §#!+§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr56);
         }
         return §#!+§(§8?§[_loc2_]);
      }
   }
}
