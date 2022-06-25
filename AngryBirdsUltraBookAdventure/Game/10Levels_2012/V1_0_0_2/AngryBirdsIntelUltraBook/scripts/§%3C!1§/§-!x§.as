package §<!1§
{
   import §^_§.§!>§;
   
   public class §-!x§
   {
      
      public static var §<]§:Array;
       
      
      public function §-!x§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §0b§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         if(!_loc7_)
         {
            §<]§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(_loc8_ || param2)
               {
                  §§push(§!>§);
                  §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
                  if(_loc8_ || param3)
                  {
                     §§push(§§pop() + _loc4_.@id);
                  }
                  §§pop().log(§§pop());
                  if(!_loc7_)
                  {
                     addr231:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        if(_loc8_)
                        {
                           §§push(§!>§);
                           §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                           if(_loc8_ || param3)
                           {
                              §§push(§§pop() + _loc4_.@id);
                           }
                           §§pop().log(§§pop());
                        }
                        while(true)
                        {
                        }
                        addr262:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           addr222:
                           while(true)
                           {
                              §§push(§!>§);
                              §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + _loc4_.@id);
                              }
                              §§pop().log(§§pop());
                              addr230:
                              while(true)
                              {
                              }
                           }
                           addr222:
                        }
                        loop14:
                        while(true)
                        {
                           if(_loc4_.attribute("restitution").length() <= 0)
                           {
                              addr199:
                              if(_loc8_)
                              {
                                 addr201:
                                 while(true)
                                 {
                                    §§push(§!>§);
                                    §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                                    if(_loc8_ || §-!x§)
                                    {
                                       §§push(§§pop() + _loc4_.@id);
                                    }
                                    §§pop().log(§§pop());
                                 }
                                 addr201:
                              }
                              while(true)
                              {
                              }
                              §§goto(addr201);
                              addr214:
                           }
                           while(true)
                           {
                              if(_loc4_.attribute("strength").length() <= 0)
                              {
                                 if(_loc8_ || §-!x§)
                                 {
                                    §§push(§!>§);
                                    §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() + _loc4_.@id);
                                    }
                                    §§pop().log(§§pop());
                                 }
                                 while(_loc8_)
                                 {
                                 }
                                 §§goto(addr222);
                                 addr189:
                              }
                              while(true)
                              {
                                 if(_loc4_.attribute("defence").length() <= 0)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       if(_loc8_)
                                       {
                                          §§push(§!>§);
                                          §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                          if(_loc8_ || param3)
                                          {
                                             §§push(§§pop() + _loc4_.@id);
                                          }
                                          §§pop().log(§§pop());
                                          while(!(_loc7_ && param2))
                                          {
                                             loop9:
                                             while(!(_loc7_ && §-!x§))
                                             {
                                                if(_loc8_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§!>§);
                                                      §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                                                      if(_loc8_)
                                                      {
                                                         §§push(§§pop() + _loc4_.@id);
                                                      }
                                                      §§pop().log(§§pop());
                                                      loop10:
                                                      while(!_loc7_)
                                                      {
                                                         while(true)
                                                         {
                                                            §&!K§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc8_ || param2)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop9;
                                                            }
                                                            continue loop10;
                                                         }
                                                         addr68:
                                                         if(false)
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc4_.attribute("colors").length() <= 0)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               §§goto(addr68);
                                                               §§goto(addr68);
                                                            }
                                                            addr98:
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr230);
                                             }
                                          }
                                          §§goto(addr214);
                                       }
                                       else
                                       {
                                          §§goto(addr262);
                                       }
                                    }
                                    continue loop14;
                                 }
                                 §§goto(addr98);
                              }
                           }
                           §§goto(addr199);
                        }
                     }
                  }
                  §§goto(addr201);
               }
               §§goto(addr222);
            }
            §§goto(addr231);
         }
         if(_loc8_)
         {
            §"!t§(param2,param3);
         }
      }
      
      public static function §"!t§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§0"§ = null;
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
                  if(_loc4_ = §@1§(_loc3_.@id))
                  {
                     if(_loc8_ || param2)
                     {
                        _loc4_.§]^§(_loc3_);
                        if(_loc7_ && §-!x§)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§!>§);
                     §§push("WARNING! Damage material multiplier with unknown material!!");
                     if(!_loc7_)
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  continue;
               }
               if(!_loc7_)
               {
                  if(_loc8_)
                  {
                     if(!_loc7_)
                     {
                        _loc5_ = 0;
                        if(!_loc7_)
                        {
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr149:
                           addr148:
                           addr146:
                        }
                        §§goto(addr149);
                     }
                     return;
                  }
                  §§goto(addr149);
               }
               §§goto(addr148);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §@1§(_loc3_.@id))
               {
                  if(!_loc7_)
                  {
                     _loc4_.§?I§(_loc3_);
                     if(!_loc8_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(§!>§);
                  §§push("WARNING! Velocity material multiplier with unknown material!!");
                  if(_loc8_)
                  {
                     §§push(§§pop() + _loc3_.@id);
                  }
                  §§pop().log(§§pop());
               }
               continue;
            }
            §§goto(addr149);
         }
      }
      
      public static function §&!K§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_)
         {
            §<]§[§<]§.length] = new §0"§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §@1§(param1:String) : §0"§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §<]§.length)
            {
               if(_loc4_)
               {
                  §§push(§!>§);
                  §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                  if(!_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(!_loc3_)
               {
                  break;
               }
               loop1:
               while(!(_loc4_ || _loc3_))
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if((§<]§[_loc2_] as §0"§).mName.toLowerCase() == param1.toLowerCase())
            {
               §§goto(addr91);
            }
            §§goto(addr69);
         }
         if(_loc4_ || §-!x§)
         {
            return null;
         }
         addr91:
         return §0"§(§<]§[_loc2_]);
      }
   }
}
