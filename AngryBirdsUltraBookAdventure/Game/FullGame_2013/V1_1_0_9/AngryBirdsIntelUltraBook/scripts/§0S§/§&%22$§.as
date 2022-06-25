package §0S§
{
   import §1!B§.§<m§;
   
   public class §&"$§
   {
      
      public static var §]!n§:Array;
       
      
      public function §&"$§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §!L§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(_loc7_)
         {
            §]!n§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(_loc7_)
               {
                  §§push(§<m§);
                  §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
                  if(!(_loc8_ && §&"$§))
                  {
                     §§push(§§pop() + _loc4_.@id);
                  }
                  §§pop().log(§§pop());
                  if(_loc7_ || param2)
                  {
                     addr242:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        while(true)
                        {
                           §§push(§<m§);
                           §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                           if(_loc7_ || §&"$§)
                           {
                              §§push(§§pop() + _loc4_.@id);
                           }
                           §§pop().log(§§pop());
                           addr271:
                           while(true)
                           {
                           }
                        }
                        addr258:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           while(true)
                           {
                              §§push(§<m§);
                              §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                              if(_loc7_ || param3)
                              {
                                 §§push(§§pop() + _loc4_.@id);
                              }
                              §§pop().log(§§pop());
                              addr241:
                              while(true)
                              {
                              }
                           }
                           addr228:
                        }
                        while(true)
                        {
                           if(_loc4_.attribute("restitution").length() <= 0)
                           {
                              while(true)
                              {
                                 §§push(§<m§);
                                 §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                                 if(!(_loc8_ && param1))
                                 {
                                    §§push(§§pop() + _loc4_.@id);
                                 }
                                 §§pop().log(§§pop());
                                 addr220:
                                 while(true)
                                 {
                                 }
                              }
                              addr207:
                           }
                           while(true)
                           {
                              if(_loc4_.attribute("strength").length() <= 0)
                              {
                                 addr182:
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 §§goto(addr207);
                              }
                              loop3:
                              while(true)
                              {
                                 if(_loc4_.attribute("defence").length() <= 0)
                                 {
                                    while(true)
                                    {
                                       §§push(§<m§);
                                       §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                       if(!(_loc8_ && §&"$§))
                                       {
                                          §§push(§§pop() + _loc4_.@id);
                                       }
                                       §§pop().log(§§pop());
                                       addr174:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr161:
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc4_.attribute("colors").length() <= 0)
                                    {
                                       loop7:
                                       while(!_loc8_)
                                       {
                                          if(!_loc8_)
                                          {
                                             §§push(§<m§);
                                             §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                                             if(_loc7_ || param3)
                                             {
                                                §§push(§§pop() + _loc4_.@id);
                                             }
                                             §§pop().log(§§pop());
                                             loop8:
                                             while(_loc7_ || §&"$§)
                                             {
                                                if(_loc7_)
                                                {
                                                   while(true)
                                                   {
                                                      §[h§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                      if(!_loc7_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(_loc8_ && param1)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr228);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr220);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               continue loop3;
                                                            }
                                                         }
                                                         addr197:
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   addr67:
                                                }
                                                §§goto(addr271);
                                             }
                                             §§goto(addr182);
                                          }
                                          else
                                          {
                                             §§goto(addr161);
                                          }
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr67);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     addr66:
                  }
                  while(true)
                  {
                     §§push(§<m§);
                     §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                     if(_loc7_ || param2)
                     {
                        §§push(§§pop() + _loc4_.@id);
                     }
                     §§pop().log(§§pop());
                     §§goto(addr197);
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr242);
         }
         if(_loc7_)
         {
            §"!v§(param2,param3);
         }
      }
      
      public static function §"!v§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§ L§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(!(_loc7_ && §&"$§))
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = §<!w§(_loc3_.@id))
                  {
                     if(_loc8_ || §&"$§)
                     {
                        _loc4_.§4!Q§(_loc3_);
                        if(_loc8_ || §&"$§)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§<m§);
                     §§push("WARNING! Damage material multiplier with unknown material!!");
                     if(_loc8_ || param2)
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  continue;
               }
               if(!(_loc7_ && _loc3_))
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     if(!(_loc7_ && param1))
                     {
                        _loc5_ = 0;
                        if(_loc8_)
                        {
                           addr121:
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr166:
                        }
                     }
                     return;
                  }
               }
               §§goto(addr121);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §<!w§(_loc3_.@id))
               {
                  if(!_loc7_)
                  {
                     _loc4_.§^!F§(_loc3_);
                     if(_loc7_)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  §§push(§<m§);
                  §§push("WARNING! Velocity material multiplier with unknown material!!");
                  if(_loc8_)
                  {
                     §§push(§§pop() + _loc3_.@id);
                  }
                  §§pop().log(§§pop());
               }
               continue;
            }
            §§goto(addr121);
         }
      }
      
      public static function §[h§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || param3)
         {
            §]!n§[§]!n§.length] = new § L§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §<!w§(param1:String) : § L§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §]!n§.length)
            {
               if(_loc4_ || param1)
               {
                  §§push(§<m§);
                  §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                  if(_loc4_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(!_loc4_)
               {
                  continue;
               }
               if(!(_loc3_ && §&"$§))
               {
                  return null;
               }
               addr97:
            }
            else if((§]!n§[_loc2_] as § L§).mName.toLowerCase() == param1.toLowerCase())
            {
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr97);
            }
            _loc2_++;
         }
         return § L§(§]!n§[_loc2_]);
      }
   }
}
