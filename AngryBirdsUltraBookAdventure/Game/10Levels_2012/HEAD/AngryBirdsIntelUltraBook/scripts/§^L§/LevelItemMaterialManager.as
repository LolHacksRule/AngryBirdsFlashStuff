package §^L§
{
   import §'N§.Log;
   
   public class LevelItemMaterialManager
   {
      
      public static var §<m§:Array;
       
      
      public function LevelItemMaterialManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §>P§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(!_loc8_)
         {
            §<m§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(!_loc8_)
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
                     addr285:
                     addr236:
                     while(true)
                     {
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc8_ && param3)
                        {
                           continue loop1;
                        }
                        §§push(Log);
                        §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                        if(!(_loc8_ && param3))
                        {
                           §§push(§§pop() + _loc4_.@id);
                        }
                        §§pop().log(§§pop());
                        loop4:
                        while(true)
                        {
                           addr197:
                           while(true)
                           {
                              if(_loc4_.attribute("friction").length() > 0)
                              {
                                 while(true)
                                 {
                                    if(_loc4_.attribute("restitution").length() <= 0)
                                    {
                                       while(true)
                                       {
                                          §§push(Log);
                                          §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() + _loc4_.@id);
                                          }
                                          §§pop().log(§§pop());
                                          addr194:
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push(Log);
                                                      §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§push(§§pop() + _loc4_.@id);
                                                      }
                                                      §§pop().log(§§pop());
                                                      continue loop4;
                                                   }
                                                   continue loop3;
                                                }
                                                addr204:
                                             }
                                          }
                                       }
                                       addr184:
                                    }
                                    while(true)
                                    {
                                       if(_loc4_.attribute("strength").length() <= 0)
                                       {
                                          while(true)
                                          {
                                             §§push(Log);
                                             §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                                             if(!(_loc8_ && LevelItemMaterialManager))
                                             {
                                                §§push(§§pop() + _loc4_.@id);
                                             }
                                             §§pop().log(§§pop());
                                             addr174:
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr184);
                                                }
                                             }
                                             §§goto(addr194);
                                             addr70:
                                             if(_loc7_ || param1)
                                             {
                                                addr77:
                                                if(false)
                                                {
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(_loc4_.attribute("colors").length() <= 0)
                                                      {
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(Log);
                                                            §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                                                            if(_loc7_)
                                                            {
                                                               §§push(§§pop() + _loc4_.@id);
                                                            }
                                                            §§pop().log(§§pop());
                                                         }
                                                         loop18:
                                                         while(!(_loc8_ && param1))
                                                         {
                                                            if(!(_loc7_ || LevelItemMaterialManager))
                                                            {
                                                               break loop3;
                                                            }
                                                            while(true)
                                                            {
                                                               §<!1§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                               if(!(_loc7_ || LevelItemMaterialManager))
                                                               {
                                                                  continue loop18;
                                                               }
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr70);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Log);
                                                                     §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(§§pop() + _loc4_.@id);
                                                                     }
                                                                     §§pop().log(§§pop());
                                                                     break loop18;
                                                                  }
                                                                  addr127:
                                                               }
                                                            }
                                                         }
                                                         while(_loc7_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               continue loop17;
                                                            }
                                                            §§goto(addr194);
                                                            §§goto(addr105);
                                                         }
                                                         addr105:
                                                         §§goto(addr174);
                                                      }
                                                      §§goto(addr41);
                                                   }
                                                   addr79:
                                                }
                                                continue loop0;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc4_.attribute("defence").length() <= 0)
                                          {
                                             §§goto(addr127);
                                          }
                                          §§goto(addr79);
                                       }
                                    }
                                 }
                                 addr177:
                              }
                              §§goto(addr204);
                           }
                        }
                     }
                     §§goto(addr285);
                  }
               }
               while(true)
               {
                  if(_loc4_.attribute("density").length() <= 0)
                  {
                     §§goto(addr236);
                  }
                  §§goto(addr197);
                  §§goto(addr285);
               }
            }
            §§goto(addr285);
         }
         if(!(_loc8_ && param3))
         {
            §>!8§(param2,param3);
         }
      }
      
      public static function §>!8§(param1:XMLList, param2:XMLList) : void
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
            if(_loc8_ || LevelItemMaterialManager)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  _loc4_ = §&y§(_loc3_.@id);
                  if(_loc8_)
                  {
                     if(!_loc4_)
                     {
                        §§push(Log);
                        §§push("WARNING! Damage material multiplier with unknown material!!");
                        if(!(_loc7_ && LevelItemMaterialManager))
                        {
                           §§push(§§pop() + _loc3_.@id);
                        }
                        §§pop().log(§§pop());
                        continue;
                     }
                     if(_loc7_)
                     {
                        continue;
                     }
                  }
                  _loc4_.§4v§(_loc3_);
                  if(!_loc8_)
                  {
                  }
                  continue;
               }
               if(!_loc7_)
               {
                  if(!(_loc7_ && param1))
                  {
                     if(!_loc7_)
                     {
                        _loc5_ = 0;
                        if(_loc8_)
                        {
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr171:
                           addr170:
                           addr168:
                        }
                        §§goto(addr171);
                     }
                     return;
                  }
                  §§goto(addr171);
               }
               §§goto(addr170);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               _loc4_ = §&y§(_loc3_.@id);
               if(!_loc7_)
               {
                  if(_loc4_)
                  {
                     if(!(_loc7_ && LevelItemMaterialManager))
                     {
                        _loc4_.§=R§(_loc3_);
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     §§push(Log);
                     §§push("WARNING! Velocity material multiplier with unknown material!!");
                     if(_loc8_ || param1)
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
               }
               continue;
            }
            §§goto(addr171);
         }
      }
      
      public static function §<!1§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!(_loc10_ && param3))
         {
            §<m§[§<m§.length] = new LevelItemMaterial(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §&y§(param1:String) : LevelItemMaterial
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         do
         {
            §§push(_loc2_);
            if(!(_loc3_ && LevelItemMaterialManager))
            {
               if(_loc4_ || _loc2_)
               {
                  if(!_loc3_)
                  {
                     if(§§pop() >= §<m§.length)
                     {
                        if(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(_loc3_ && LevelItemMaterialManager)
                           {
                              addr100:
                              _loc2_++;
                              addr96:
                              continue;
                           }
                           §§push(Log);
                           §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().log(§§pop());
                        }
                        return null;
                     }
                     if((§<m§[_loc2_] as LevelItemMaterial).mName.toLowerCase() == param1.toLowerCase())
                     {
                        break;
                     }
                  }
               }
               §§goto(addr96);
            }
            §§goto(addr100);
         }
         while(!_loc3_);
         
         return LevelItemMaterial(§<m§[_loc2_]);
      }
   }
}
