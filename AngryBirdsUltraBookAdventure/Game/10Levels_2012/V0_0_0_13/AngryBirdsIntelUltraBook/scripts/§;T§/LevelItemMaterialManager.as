package §;T§
{
   import §6b§.Log;
   
   public class LevelItemMaterialManager
   {
      
      public static var §2Q§:Array;
       
      
      public function LevelItemMaterialManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §class§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         if(!_loc7_)
         {
            §2Q§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc8_)
            {
               if(_loc4_.attribute("bodyType").length() <= 0)
               {
                  while(true)
                  {
                     §§push(Log);
                     §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
                     if(!_loc7_)
                     {
                        §§push(§§pop() + _loc4_.@id);
                     }
                     §§pop().log(§§pop());
                     addr286:
                     while(true)
                     {
                     }
                  }
                  addr276:
               }
               loop3:
               while(true)
               {
                  if(_loc4_.attribute("density").length() <= 0)
                  {
                     while(true)
                     {
                        §§push(Log);
                        §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                        if(!(_loc7_ && LevelItemMaterialManager))
                        {
                           §§push(§§pop() + _loc4_.@id);
                        }
                        §§pop().log(§§pop());
                        addr259:
                        addr202:
                        while(true)
                        {
                        }
                        if(!(_loc8_ || param1))
                        {
                           continue;
                        }
                        if(_loc8_)
                        {
                           loop12:
                           while(true)
                           {
                              if(_loc4_.attribute("strength").length() <= 0)
                              {
                                 loop13:
                                 while(true)
                                 {
                                    §§push(Log);
                                    §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() + _loc4_.@id);
                                    }
                                    §§pop().log(§§pop());
                                    addr173:
                                    loop14:
                                    for(; !(_loc7_ && param1); while(_loc8_ || param2)
                                    {
                                       §§goto(addr73);
                                       §§goto(addr82);
                                    })
                                    {
                                       while(true)
                                       {
                                          if(_loc4_.attribute("defence").length() <= 0)
                                          {
                                             if(_loc8_)
                                             {
                                                §§push(Log);
                                                §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() + _loc4_.@id);
                                                }
                                                §§pop().log(§§pop());
                                             }
                                             continue loop14;
                                          }
                                          addr73:
                                          loop17:
                                          while(true)
                                          {
                                             if(_loc4_.attribute("colors").length() <= 0)
                                             {
                                                if(_loc8_)
                                                {
                                                   addr82:
                                                   if(!(_loc7_ && LevelItemMaterialManager))
                                                   {
                                                      continue loop13;
                                                   }
                                                   continue loop14;
                                                }
                                                addr118:
                                                while(true)
                                                {
                                                }
                                                addr118:
                                             }
                                             while(true)
                                             {
                                                §-5§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr118);
                                             }
                                             addr64:
                                             if(!(_loc7_ && LevelItemMaterialManager))
                                             {
                                                while(false)
                                                {
                                                   continue loop17;
                                                }
                                                continue loop0;
                                                addr71:
                                             }
                                             addr234:
                                             while(_loc8_)
                                             {
                                                while(true)
                                                {
                                                   if(_loc4_.attribute("restitution").length() > 0)
                                                   {
                                                      continue loop12;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§push(Log);
                                                         §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§§pop() + _loc4_.@id);
                                                         }
                                                         §§pop().log(§§pop());
                                                         break loop14;
                                                      }
                                                      break;
                                                      addr96:
                                                      if(_loc7_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(Log);
                                                      §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         §§push(§§pop() + _loc4_.@id);
                                                      }
                                                      §§pop().log(§§pop());
                                                      §§goto(addr118);
                                                   }
                                                   §§goto(addr259);
                                                }
                                                §§goto(addr64);
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       if(_loc8_)
                                       {
                                          §§goto(addr202);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(Log);
                                             §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                                             if(!(_loc7_ && param2))
                                             {
                                                §§push(§§pop() + _loc4_.@id);
                                             }
                                             §§pop().log(§§pop());
                                             break loop11;
                                          }
                                          addr219:
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr234);
                                 }
                              }
                              §§goto(addr119);
                           }
                        }
                        §§goto(addr276);
                     }
                  }
                  while(true)
                  {
                     if(_loc4_.attribute("friction").length() <= 0)
                     {
                        §§goto(addr219);
                     }
                     §§goto(addr181);
                     §§goto(addr259);
                  }
               }
            }
            §§goto(addr71);
         }
         if(_loc8_ || param2)
         {
            §"j§(param2,param3);
         }
      }
      
      public static function §"j§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:LevelItemMaterial = null;
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
                  _loc4_ = §@!4§(_loc3_.@id);
                  if(_loc8_)
                  {
                     if(!_loc4_)
                     {
                        §§push(Log);
                        §§push("WARNING! Damage material multiplier with unknown material!!");
                        if(_loc8_)
                        {
                           §§push(§§pop() + _loc3_.@id);
                        }
                        §§pop().log(§§pop());
                        continue;
                     }
                     if(!(_loc8_ || LevelItemMaterialManager))
                     {
                        continue;
                     }
                  }
                  _loc4_.§ !X§(_loc3_);
                  if(_loc8_ || _loc3_)
                  {
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
                        if(_loc8_)
                        {
                           addr112:
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr178:
                        }
                     }
                     return;
                  }
               }
               §§goto(addr112);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               _loc4_ = §@!4§(_loc3_.@id);
               if(!(_loc7_ && param1))
               {
                  if(_loc4_)
                  {
                     if(_loc8_)
                     {
                        _loc4_.§`p§(_loc3_);
                        if(_loc7_ && LevelItemMaterialManager)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(Log);
                     §§push("WARNING! Velocity material multiplier with unknown material!!");
                     if(_loc8_ || _loc3_)
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
               }
               continue;
            }
            §§goto(addr112);
         }
      }
      
      public static function §-5§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!_loc9_)
         {
            §2Q§[§2Q§.length] = new LevelItemMaterial(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §@!4§(param1:String) : LevelItemMaterial
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(_loc3_ || param1)
               {
                  if(_loc3_)
                  {
                     if(§§pop() >= §2Q§.length)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           if(_loc4_ && param1)
                           {
                              addr106:
                              _loc2_++;
                              addr102:
                              continue;
                           }
                           if(_loc4_ && LevelItemMaterialManager)
                           {
                              break;
                           }
                           §§push(Log);
                           §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                           if(_loc3_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().log(§§pop());
                        }
                        return null;
                     }
                     if((§2Q§[_loc2_] as LevelItemMaterial).mName.toLowerCase() == param1.toLowerCase())
                     {
                        break;
                     }
                  }
               }
               §§goto(addr102);
            }
            §§goto(addr106);
         }
         return LevelItemMaterial(§2Q§[_loc2_]);
      }
   }
}
