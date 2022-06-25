package §package§
{
   import §<u§.Log;
   
   public class LevelItemMaterialManager
   {
      
      public static var §1!3§:Array;
       
      
      public function LevelItemMaterialManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §5y§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(_loc7_ || LevelItemMaterialManager)
         {
            §1!3§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(!(_loc8_ && LevelItemMaterialManager))
            {
               if(_loc4_.attribute("bodyType").length() <= 0)
               {
                  loop1:
                  while(true)
                  {
                     §§push(Log);
                     §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
                     if(!_loc8_)
                     {
                        §§push(§§pop() + _loc4_.@id);
                     }
                     §§pop().log(§§pop());
                     addr300:
                     while(true)
                     {
                        loop7:
                        while(!(_loc8_ && param2))
                        {
                           §§push(Log);
                           §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                           if(_loc7_ || LevelItemMaterialManager)
                           {
                              §§push(§§pop() + _loc4_.@id);
                           }
                           §§pop().log(§§pop());
                           loop8:
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 if(_loc4_.attribute("restitution").length() <= 0)
                                 {
                                    if(!(_loc8_ && LevelItemMaterialManager))
                                    {
                                       continue loop8;
                                    }
                                    addr225:
                                    while(true)
                                    {
                                       addr172:
                                       loop12:
                                       while(!(_loc8_ && param3))
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(Log);
                                             §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() + _loc4_.@id);
                                             }
                                             §§pop().log(§§pop());
                                             loop13:
                                             for(; !_loc8_; while(_loc7_ || param2)
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr80);
                                                }
                                             })
                                             {
                                                while(true)
                                                {
                                                   if(_loc4_.attribute("defence").length() > 0)
                                                   {
                                                      do
                                                      {
                                                         if(_loc4_.attribute("colors").length() <= 0)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               addr89:
                                                               if(_loc7_ || LevelItemMaterialManager)
                                                               {
                                                                  §§push(Log);
                                                                  §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                                                                  if(!(_loc8_ && param2))
                                                                  {
                                                                     §§push(§§pop() + _loc4_.@id);
                                                                  }
                                                                  §§pop().log(§§pop());
                                                               }
                                                               else
                                                               {
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc8_ && param3))
                                                                     {
                                                                        §§push(Log);
                                                                        §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() + _loc4_.@id);
                                                                        }
                                                                        §§pop().log(§§pop());
                                                                        continue loop13;
                                                                     }
                                                                     addr263:
                                                                     while(true)
                                                                     {
                                                                        §§push(Log);
                                                                        §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() + _loc4_.@id);
                                                                        }
                                                                        §§pop().log(§§pop());
                                                                        break loop15;
                                                                     }
                                                                     §§goto(addr89);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr226:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_.attribute("friction").length() <= 0)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  addr130:
                                                                  addr273:
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr51:
                                                            do
                                                            {
                                                               §#!?§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                            }
                                                            while(!(_loc7_ || param2));
                                                            
                                                            continue;
                                                            addr51:
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(_loc8_ && LevelItemMaterialManager)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr51);
                                                               }
                                                               §§goto(addr273);
                                                               continue loop12;
                                                            }
                                                            continue loop13;
                                                            §§goto(addr51);
                                                         }
                                                      }
                                                      while(false);
                                                      
                                                      continue loop0;
                                                      addr80:
                                                   }
                                                   §§goto(addr130);
                                                }
                                             }
                                             continue loop1;
                                          }
                                          continue loop7;
                                       }
                                    }
                                    addr225:
                                 }
                                 while(true)
                                 {
                                    if(_loc4_.attribute("strength").length() <= 0)
                                    {
                                       §§goto(addr172);
                                    }
                                    §§goto(addr123);
                                    §§goto(addr225);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  if(_loc4_.attribute("density").length() <= 0)
                  {
                     §§goto(addr263);
                  }
                  §§goto(addr226);
                  §§goto(addr300);
               }
            }
            §§goto(addr164);
         }
         if(_loc7_ || LevelItemMaterialManager)
         {
            §?!2§(param2,param3);
         }
      }
      
      public static function §?!2§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:LevelItemMaterial = null;
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
                  _loc4_ = §#!8§(_loc3_.@id);
                  if(!(_loc8_ && _loc3_))
                  {
                     if(!_loc4_)
                     {
                        §§push(Log);
                        §§push("WARNING! Damage material multiplier with unknown material!!");
                        if(!_loc8_)
                        {
                           §§push(§§pop() + _loc3_.@id);
                        }
                        §§pop().log(§§pop());
                        continue;
                     }
                     if(!(_loc7_ || _loc3_))
                     {
                        continue;
                     }
                  }
                  _loc4_.§9a§(_loc3_);
                  if(_loc8_)
                  {
                  }
                  continue;
               }
               if(_loc7_)
               {
                  if(_loc7_)
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
                           addr170:
                           addr169:
                           addr167:
                        }
                        §§goto(addr170);
                     }
                     return;
                  }
                  §§goto(addr170);
               }
               §§goto(addr169);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               _loc4_ = §#!8§(_loc3_.@id);
               if(_loc7_ || LevelItemMaterialManager)
               {
                  if(!_loc4_)
                  {
                     §§push(Log);
                     §§push("WARNING! Velocity material multiplier with unknown material!!");
                     if(_loc7_)
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                     continue;
                  }
                  if(_loc7_ || _loc3_)
                  {
                     _loc4_.§2C§(_loc3_);
                     if(_loc8_)
                     {
                        continue;
                     }
                  }
               }
               continue;
            }
            §§goto(addr170);
         }
      }
      
      public static function §#!?§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_)
         {
            §1!3§[§1!3§.length] = new LevelItemMaterial(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §#!8§(param1:String) : LevelItemMaterial
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  if(§§pop() >= §1!3§.length)
                  {
                     if(_loc4_ || LevelItemMaterialManager)
                     {
                        if(_loc3_ && _loc3_)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           §§push(Log);
                           §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                           if(!(_loc3_ && LevelItemMaterialManager))
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().log(§§pop());
                           break;
                        }
                        addr79:
                        §§push(_loc2_);
                        if(!(_loc3_ && _loc3_))
                        {
                           addr90:
                           _loc2_ = int(§§pop() + 1);
                           continue;
                        }
                        §§goto(addr90);
                        addr130:
                     }
                     break;
                  }
                  if((§1!3§[_loc2_] as LevelItemMaterial).mName.toLowerCase() == param1.toLowerCase())
                  {
                     if(_loc4_ || param1)
                     {
                        return LevelItemMaterial(§1!3§[_loc2_]);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr90);
         }
         return null;
      }
   }
}
