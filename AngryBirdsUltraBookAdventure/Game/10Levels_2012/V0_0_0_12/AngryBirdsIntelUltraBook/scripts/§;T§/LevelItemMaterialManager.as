package §;T§
{
   import §6b§.Log;
   
   public class LevelItemMaterialManager
   {
      
      public static var §2Q§:Array;
       
      
      public function LevelItemMaterialManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §class§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(_loc7_)
         {
            §2Q§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(!(_loc8_ && LevelItemMaterialManager))
            {
               if(_loc4_.attribute("bodyType").length() <= 0)
               {
                  while(true)
                  {
                     §§push(Log);
                     §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
                     if(!(_loc8_ && param3))
                     {
                        §§push(§§pop() + _loc4_.@id);
                     }
                     §§pop().log(§§pop());
                     addr280:
                     while(true)
                     {
                     }
                  }
                  addr255:
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
                        if(!_loc8_)
                        {
                           §§push(§§pop() + _loc4_.@id);
                        }
                        §§pop().log(§§pop());
                        addr248:
                        while(true)
                        {
                        }
                     }
                     addr238:
                  }
                  loop6:
                  while(true)
                  {
                     if(_loc4_.attribute("friction").length() <= 0)
                     {
                        loop7:
                        while(true)
                        {
                           §§push(Log);
                           §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                           if(!(_loc8_ && LevelItemMaterialManager))
                           {
                              §§push(§§pop() + _loc4_.@id);
                           }
                           §§pop().log(§§pop());
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 §§goto(addr255);
                              }
                              loop11:
                              for(; !(_loc8_ && param1); while(!(_loc8_ && param2))
                              {
                                 if(_loc7_)
                                 {
                                    §§push(Log);
                                    §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() + _loc4_.@id);
                                    }
                                    §§pop().log(§§pop());
                                    continue loop7;
                                 }
                                 continue loop6;
                              })
                              {
                                 while(true)
                                 {
                                    if(_loc4_.attribute("strength").length() <= 0)
                                    {
                                       continue loop11;
                                    }
                                    addr106:
                                    while(true)
                                    {
                                       if(_loc4_.attribute("defence").length() <= 0)
                                       {
                                          while(_loc7_)
                                          {
                                             §§push(Log);
                                             §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                             if(!(_loc8_ && param1))
                                             {
                                                §§push(§§pop() + _loc4_.@id);
                                             }
                                             §§pop().log(§§pop());
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   continue loop11;
                                                }
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          continue loop7;
                                          addr113:
                                       }
                                       loop18:
                                       do
                                       {
                                          if(_loc4_.attribute("colors").length() <= 0)
                                          {
                                             if(!(_loc8_ && LevelItemMaterialManager))
                                             {
                                                if(!_loc8_)
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
                                                   while(true)
                                                   {
                                                      §§push(Log);
                                                      §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() + _loc4_.@id);
                                                      }
                                                      §§pop().log(§§pop());
                                                      continue loop11;
                                                   }
                                                   addr188:
                                                }
                                             }
                                             loop19:
                                             while(!_loc8_)
                                             {
                                                if(_loc7_)
                                                {
                                                   while(true)
                                                   {
                                                      §-5§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop19;
                                                   }
                                                   continue loop18;
                                                   addr46:
                                                }
                                                §§goto(addr113);
                                             }
                                             §§goto(addr130);
                                          }
                                          §§goto(addr46);
                                       }
                                       while(false);
                                       
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("restitution").length() <= 0)
                        {
                           §§goto(addr188);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr248);
                  }
               }
            }
            §§goto(addr132);
         }
         if(_loc7_ || param2)
         {
            §"j§(param2,param3);
         }
      }
      
      public static function §"j§(param1:XMLList, param2:XMLList) : void
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
            if(_loc7_ || LevelItemMaterialManager)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  _loc4_ = §@!4§(_loc3_.@id);
                  if(!_loc8_)
                  {
                     if(!_loc4_)
                     {
                        §§push(Log);
                        §§push("WARNING! Damage material multiplier with unknown material!!");
                        if(_loc7_ || LevelItemMaterialManager)
                        {
                           §§push(§§pop() + _loc3_.@id);
                        }
                        §§pop().log(§§pop());
                        continue;
                     }
                     if(_loc7_)
                     {
                        _loc4_.§ !X§(_loc3_);
                        if(_loc8_)
                        {
                           continue;
                        }
                     }
                  }
                  continue;
               }
               if(_loc7_)
               {
                  if(!_loc8_)
                  {
                     if(_loc7_)
                     {
                        _loc5_ = 0;
                        if(!(_loc8_ && param2))
                        {
                           addr106:
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr172:
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
            if(!§§pop())
            {
               §§goto(addr106);
            }
            else
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               _loc4_ = §@!4§(_loc3_.@id);
               if(!_loc8_)
               {
                  if(_loc4_)
                  {
                     if(!(_loc8_ && param1))
                     {
                        _loc4_.§`p§(_loc3_);
                        addr135:
                        if(_loc8_ && param1)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     §§push(Log);
                     §§push("WARNING! Velocity material multiplier with unknown material!!");
                     if(!(_loc8_ && param1))
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  continue;
               }
               §§goto(addr135);
            }
         }
      }
      
      public static function §-5§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || param3)
         {
            §2Q§[§2Q§.length] = new LevelItemMaterial(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §@!4§(param1:String) : LevelItemMaterial
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(!(_loc4_ && LevelItemMaterialManager))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         do
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() >= §2Q§.length)
               {
                  if(_loc3_)
                  {
                     §§push(Log);
                     §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                     if(!_loc4_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().log(§§pop());
                  }
                  if(!_loc4_)
                  {
                     return null;
                  }
                  loop1:
                  while(!(_loc3_ || param1))
                  {
                     while(true)
                     {
                        _loc2_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               if((§2Q§[_loc2_] as LevelItemMaterial).mName.toLowerCase() == param1.toLowerCase())
               {
                  break;
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_)
                     {
                     }
                     §§goto(addr77);
                  }
               }
            }
            §§goto(addr77);
         }
         while(!_loc4_);
         
         return LevelItemMaterial(§2Q§[_loc2_]);
      }
   }
}
