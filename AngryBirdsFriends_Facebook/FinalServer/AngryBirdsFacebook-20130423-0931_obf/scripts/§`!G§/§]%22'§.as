package §`!G§
{
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §'"-§.b2Distance;
   import §'"-§.b2DistanceInput;
   import §'"-§.b2DistanceOutput;
   import §'"-§.b2DistanceProxy;
   import §'"-§.b2RayCastInput;
   import §'"-§.b2RayCastOutput;
   import §'"-§.b2SimplexCache;
   import §,l§.§+I§;
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2Fixture;
   import §8m§.§@"M§;
   import §9!n§.§0"T§;
   import §9!n§.LevelManager;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import flash.geom.Point;
   
   public class §]"'§ extends §8"=§
   {
      
      private static const §;!u§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §;!u§ = 3;
         }
      }
      
      public var §!!Z§:Sprite;
      
      private var §6+§:int = 0;
      
      private var §4Q§:Vector.<Object>;
      
      private var §="T§:Number = 0;
      
      private var §+"J§:Number = 2000;
      
      private var §6!u§:Boolean = false;
      
      public function §]"'§(param1:§'!S§, param2:§0"T§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            this.§!!Z§ = new Sprite();
            while(true)
            {
               this.§!!Z§.§^]§ = false;
               loop1:
               while(!_loc5_)
               {
                  while(true)
                  {
                     super(param1,param2,param3);
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr54);
      }
      
      override protected function removeChildFromMainSprite(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§!!Z§);
            if(_loc2_ || param1)
            {
               if(!§§pop().contains(param1))
               {
                  while(true)
                  {
                     super.removeChildFromMainSprite(param1);
                     if(!(_loc3_ && param1))
                     {
                        return;
                     }
                     if(_loc2_ || param1)
                     {
                        if(_loc3_)
                        {
                           this.§!!Z§.removeChild(param1);
                        }
                        else
                        {
                           addr79:
                        }
                        continue;
                        break;
                     }
                     break;
                  }
                  return;
               }
            }
            §§goto(addr79);
         }
         §§goto(addr66);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §[!8§
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc11_:Array = null;
         var _loc12_:* = null;
         var _loc13_:String = null;
         var _loc14_:* = null;
         if(!_loc16_)
         {
            §§push(param1);
            if(_loc15_)
            {
               §§push("MISC_EASTER_EGG_");
               if(_loc15_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!_loc16_)
                     {
                        §§push(param1);
                        if(!(_loc16_ && param1))
                        {
                           §§push("_");
                           if(_loc15_)
                           {
                              addr52:
                              _loc11_ = §§pop().split(§§pop());
                              §§push(_loc11_[_loc11_.length - 1]);
                              if(!(_loc16_ && param3))
                              {
                                 _loc12_ = §§pop();
                                 if(!(_loc16_ && this))
                                 {
                                    addr97:
                                    §§push("1000-");
                                    if(_loc15_ || param2)
                                    {
                                       §§push(§§pop() + _loc12_);
                                    }
                                    _loc13_ = §§pop();
                                    if(!_loc15_)
                                    {
                                    }
                                    §§goto(addr111);
                                 }
                                 if((AngryBirdsFP11.sUserProgress as §#!$§).§,"F§(_loc13_))
                                 {
                                    if(_loc15_)
                                    {
                                       return null;
                                    }
                                    §§goto(addr111);
                                 }
                                 addr111:
                                 if(true)
                                 {
                                    if(!_loc16_)
                                    {
                                       §§push(param1);
                                       if(_loc15_)
                                       {
                                          addr119:
                                          if(§§pop().indexOf("MISC_EASTER_PLACEHOLDER") == 0)
                                          {
                                             if(_loc15_)
                                             {
                                                addr124:
                                                §§push(this.§?p§());
                                                if(!_loc16_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc16_ && param3))
                                                   {
                                                      addr136:
                                                      §§push(_loc14_ = §§pop());
                                                      if(_loc15_)
                                                      {
                                                         §§goto(addr140);
                                                      }
                                                   }
                                                   addr140:
                                                   if(§§pop() == null)
                                                   {
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         return null;
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   else
                                                   {
                                                      addr168:
                                                      §§push(_loc14_);
                                                      if(_loc16_ && this)
                                                      {
                                                      }
                                                      addr177:
                                                      param1 = §§pop();
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr178);
                                                }
                                                §§goto(addr177);
                                                §§push(§§pop());
                                             }
                                             §§goto(addr168);
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr97);
               }
               §§goto(addr52);
            }
            §§goto(addr140);
         }
         addr178:
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      private function §?p§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§9"%§);
            while(true)
            {
               §§push(§§pop().§7"T§);
               loop1:
               while(§§pop() != null)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§9"%§);
                     if(!_loc5_)
                     {
                        §§push(§§pop().§7"T§);
                        while(true)
                        {
                           §§push(§§pop().§+!!§());
                           loop4:
                           while(true)
                           {
                              §§push(!§§pop());
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.§9"%§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop().§7"T§);
                                                   if(_loc4_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().§+4§());
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr128:
                                                         loop12:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc5_ && _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc4_ || _loc2_))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§pop();
                                                                  }
                                                                  continue loop8;
                                                                  addr138:
                                                               }
                                                               addr70:
                                                               while(§§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  addr92:
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(_loc4_ || _loc1_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  addr148:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§9"%§);
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     addr171:
                                                                     addr172:
                                                                     addr172:
                                                                     addr171:
                                                                     §§push(§§pop().§7"T§.§&!§(LevelManager.§ T§));
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc1_:* = §§pop();
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(_loc1_ > 0.5);
                                                                        if(_loc4_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr190:
                                                                                 §§pop();
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr197:
                                                                                    if(this.§6+§ < §;!u§)
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          §§goto(addr205);
                                                                                       }
                                                                                       §§goto(addr242);
                                                                                    }
                                                                                    §§goto(addr246);
                                                                                 }
                                                                                 §§goto(addr242);
                                                                              }
                                                                           }
                                                                           §§goto(addr197);
                                                                        }
                                                                        §§goto(addr190);
                                                                     }
                                                                     addr205:
                                                                     var _loc2_:*;
                                                                     §§push((_loc2_ = this).§6+§);
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     var _loc3_:* = §§pop();
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        _loc2_.§6+§ = _loc3_;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr242:
                                                                        §§push("MISC_COLLECTIBLE_EGG_");
                                                                        if(_loc4_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr246:
                                                                        §§push("");
                                                                     }
                                                                     return §§pop();
                                                                     §§goto(addr92);
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr171);
                                                               §§push(this.§9"%§);
                                                               addr63:
                                                               §§goto(addr148);
                                                               if(_loc5_ && _loc1_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr70);
                                                            }
                                                            continue loop6;
                                                         }
                                                         if(!(_loc5_ && _loc1_))
                                                         {
                                                            §§push("");
                                                            if(_loc4_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            addr167:
                                                            return §§pop();
                                                         }
                                                         break loop1;
                                                         addr53:
                                                         if(_loc5_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§goto(addr63);
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                   §§goto(addr172);
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr128);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr171);
                  }
               }
            }
         }
         §§goto(addr167);
         §§push("");
      }
      
      override public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§!!Z§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr92:
               while(true)
               {
                  §§push(-§§pop());
                  addr93:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr91:
         }
         while(true)
         {
            §§push(this.§!!Z§);
            if(!(_loc3_ && param1))
            {
               §§push(param2);
               if(!(_loc3_ && param2))
               {
                  if(_loc4_)
                  {
                     addr85:
                     §§push(-§§pop());
                     if(_loc4_)
                     {
                        §§pop().y = §§pop();
                        do
                        {
                           super.updateScrollAndScale(param1,param2);
                        }
                        while(!_loc4_);
                        
                        if(_loc4_ || param2)
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr92);
                  }
                  §§goto(addr93);
               }
               §§goto(addr85);
            }
            else
            {
               §§goto(addr91);
            }
         }
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[!8§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push("MISC_EASTER_EGG_");
               loop1:
               while(§§pop().indexOf(§§pop()) != 0)
               {
                  loop2:
                  while(true)
                  {
                     §§push(param2);
                     loop3:
                     while(true)
                     {
                        §§push("MISC_COLLECTIBLE_EGG_");
                        loop4:
                        while(true)
                        {
                           if(§§pop().indexOf(§§pop()) == 0)
                           {
                              return new §8!4§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param9);
                              addr366:
                           }
                           else
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(param2);
                                 loop6:
                                 while(true)
                                 {
                                    §§push("MISC_FB_HEARTCANNON_SHOT");
                                    loop7:
                                    while(§§pop().indexOf(§§pop()) != 0)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(param2);
                                          loop9:
                                          while(true)
                                          {
                                             §§push("MISC_FB_CANNON");
                                             loop10:
                                             while(§§pop().indexOf(§§pop()) != 0)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   loop12:
                                                   while(!(_loc11_ && param2))
                                                   {
                                                      §§push("POWERUP_BOMB");
                                                      loop13:
                                                      for(; !_loc11_; while(true)
                                                      {
                                                         if(!(_loc11_ && this))
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc11_ && param2))
                                                            {
                                                               if(§§pop().indexOf(§§pop()) == 0)
                                                               {
                                                                  §§goto(addr78);
                                                               }
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  addr168:
                                                                  addr264:
                                                                  while(true)
                                                                  {
                                                                     §§push("BIRD_WINGMAN");
                                                                     addr169:
                                                                     while(_loc10_)
                                                                     {
                                                                        if(§§pop().indexOf(§§pop()) == 0)
                                                                        {
                                                                           §§goto(addr174);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(param2);
                                                                           addr119:
                                                                           while(_loc10_ || param2)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           continue loop6;
                                                                           addr216:
                                                                        }
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  addr264:
                                                                  while(true)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                               }
                                                               if(_loc10_ || param3)
                                                               {
                                                                  return new §1!E§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param9);
                                                               }
                                                               if(!(_loc10_ || param1))
                                                               {
                                                                  break loop7;
                                                               }
                                                               continue loop11;
                                                               addr241:
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop13;
                                                         addr134:
                                                         loop22:
                                                         while(_loc10_ || this)
                                                         {
                                                            if(§§pop().indexOf(§§pop()) != 0)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     if(!(_loc11_ && this))
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           §§push("MISC_FAIRY_BLOCK_4X4");
                                                                           if(_loc11_)
                                                                           {
                                                                              continue loop22;
                                                                           }
                                                                           if(_loc10_)
                                                                           {
                                                                              if(§§pop().indexOf(§§pop()) == 0)
                                                                              {
                                                                                 if(!(_loc11_ && this))
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(_loc11_ && param2)
                                                                                       {
                                                                                          if(_loc11_ && this)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§goto(addr264);
                                                                                       }
                                                                                       addr78:
                                                                                       return new §?m§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param8,param9);
                                                                                    }
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       if(_loc10_ || param2)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          §§goto(addr216);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr301);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr241);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(_loc10_ || param2)
                                                                                       {
                                                                                          if(!(_loc11_ && param3))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          break loop1;
                                                                                       }
                                                                                       §§goto(addr144);
                                                                                    }
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr366);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr280);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr174:
                                                                                 return new §-!3§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param8,param9);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr169);
                                                                        }
                                                                        §§goto(addr219);
                                                                     }
                                                                     §§goto(addr168);
                                                                  }
                                                                  §§goto(addr119);
                                                               }
                                                               return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                                                            }
                                                            addr144:
                                                            return new §<E§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param9);
                                                         }
                                                      },continue loop7)
                                                      {
                                                         if(§§pop().indexOf(§§pop()) == 0)
                                                         {
                                                            addr280:
                                                            if(_loc10_ || param2)
                                                            {
                                                               return new §=!D§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param3,param4,param5,param9);
                                                            }
                                                            break loop10;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param2);
                                                            addr219:
                                                            while(_loc10_)
                                                            {
                                                               §§push("BIRD_CHRISTMAS");
                                                               continue loop13;
                                                            }
                                                            continue loop12;
                                                            addr301:
                                                         }
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             if(_loc10_ || param3)
                                             {
                                                return new §8R§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param9);
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                    return new §2"V§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param9);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               return new §<V§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param9);
               if(!(_loc10_ || this))
               {
                  continue;
               }
               §§goto(addr134);
               §§push("MISC_FB_EASTER_MUSHROOM");
            }
         }
         §§goto(addr264);
      }
      
      public function §[[§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §=!D§
      {
         var _loc5_:Sprite = new Sprite();
         return this.addObject("POWERUP_BOMB",param1,param2,param3,false,false,false,param4) as §=!D§;
      }
      
      override protected function applyExplosionDamage(param1:§[!8§, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc4_)
         {
            param1.applyDamage(param2,true,false,false,true);
         }
      }
      
      override public function objectCollision(param1:§[!8§, param2:§[!8§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1 is §=!D§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               addr181:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr183:
                        while(true)
                        {
                           §§push(param2 is §=!D§);
                        }
                     }
                     addr182:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§push((param1 as §=!D§).§'"9§);
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(!§§pop());
                              if(!(_loc4_ && param2))
                              {
                                 continue loop0;
                              }
                              addr175:
                              loop7:
                              while(true)
                              {
                                 §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push((param2 as §=!D§).§'"9§);
                                    loop9:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(!§§pop());
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§push(false);
                                                         break loop9;
                                                      }
                                                      continue loop8;
                                                   }
                                                   addr128:
                                                   loop17:
                                                   while(true)
                                                   {
                                                      addr75:
                                                      while(true)
                                                      {
                                                         §§push(param1 is §-!3§);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(param2 is §-!3§);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc3_ || param2)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 (param2 as §-!3§).§!w§(param1);
                                                                                 addr19:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(super.objectCollision(param1,param2));
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 addr19:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    (param1 as §-!3§).§!w§(param2);
                                                                                 }
                                                                                 addr90:
                                                                              }
                                                                              §§goto(addr19);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              if(!(_loc3_ || _loc3_))
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              §§goto(addr19);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr19);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr182);
                                                                  }
                                                               }
                                                               §§goto(addr183);
                                                            }
                                                            §§goto(addr90);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr75);
                                             }
                                             addr120:
                                          }
                                          break;
                                       }
                                       continue loop7;
                                       if(_loc3_ || this)
                                       {
                                          if(!_loc4_)
                                          {
                                             return §§pop();
                                          }
                                          continue loop5;
                                       }
                                    }
                                    return §§pop();
                                 }
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr75);
                     }
                  }
               }
            }
         }
         §§goto(addr128);
      }
      
      override protected function addDestructionParticles(param1:§[!8§, param2:§6!O§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§[!8§> = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            §,"D§.push(§-"[§.createExplosion(param1,param2,param3,param4));
            loop0:
            while(true)
            {
               §§push(param1);
               addr104:
               loop1:
               while(true)
               {
                  §§push(§6!M§.§var§);
                  addr106:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     addr107:
                     while(true)
                     {
                        §§push(!§§pop());
                        if(!_loc6_)
                        {
                           if(!§§pop())
                           {
                              while(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §@"M§.§3"C§("TntExplosions","ChannelExplosions");
                                 }
                                 if(!(_loc6_ && this))
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              addr24:
                              return;
                              addr69:
                           }
                        }
                        addr112:
                        while(true)
                        {
                           §§pop();
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(param1);
            if(_loc5_ || param2)
            {
               §§push(§-"[§.§]""§);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_)
                  {
                     if(_loc5_ || this)
                     {
                        addr67:
                        §§push(!§§pop());
                        if(!_loc5_)
                        {
                           continue;
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr67);
               }
               §§goto(addr106);
            }
            §§goto(addr104);
         }
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || _loc2_)
         {
            var _loc2_:* = §§pop();
            if(_loc4_)
            {
               §§push(§-"[§.§]""§);
               if(_loc4_ || param1)
               {
                  if(§§pop() === _loc2_)
                  {
                     addr72:
                     §§push(0);
                     if(_loc4_)
                     {
                        addr75:
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  addr81:
                  switch(§§pop())
                  {
                     case 0:
                        return "";
                     default:
                        return super.getMainExplosionCoreName(param1);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr72);
         }
         §§goto(addr81);
      }
      
      public function §+!T§(param1:uint) : Vector.<§[!8§>
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc7_:§[!8§ = null;
         var _loc8_:uint = 0;
         var _loc9_:Vector.<§[!8§> = null;
         if(!(_loc10_ && param1))
         {
            if(!isPigsAlive())
            {
               if(!_loc10_)
               {
                  return null;
               }
            }
         }
         var _loc2_:int = §@!Z§.length;
         var _loc3_:int = §5"V§();
         if(!(_loc10_ && _loc2_))
         {
            if(_loc3_ == 0)
            {
               if(_loc11_ || param1)
               {
                  return null;
               }
            }
         }
         var _loc4_:Vector.<§[!8§> = new Vector.<§[!8§>();
         var _loc5_:* = int(§@!Z§.length - 1);
         loop0:
         while(_loc5_ >= 0)
         {
            §§push(Boolean(_loc7_ = §@!Z§[_loc5_] as §[!8§));
            if(_loc11_ || _loc3_)
            {
               §§push(§§pop());
               if(!_loc10_)
               {
                  if(§§pop())
                  {
                     if(!_loc10_)
                     {
                        §§pop();
                        if(!_loc10_)
                        {
                           §§push(_loc7_.§&!y§());
                           loop1:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr169:
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr170:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§pop();
                                          addr172:
                                          while(true)
                                          {
                                             addr132:
                                             while(true)
                                             {
                                                §§push(_loc7_.§ d§ > 0);
                                                if(_loc11_ || this)
                                                {
                                                   if(!(_loc10_ && _loc2_))
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop11;
                                             }
                                          }
                                       }
                                       addr171:
                                    }
                                    while(true)
                                    {
                                       addr154:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc11_)
                                             {
                                                while(true)
                                                {
                                                   _loc4_[_loc4_.length] = _loc7_;
                                                }
                                                addr157:
                                             }
                                             loop3:
                                             while(true)
                                             {
                                                if(_loc11_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!(_loc10_ && _loc2_))
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      _loc5_ = §§pop();
                                                      if(_loc10_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr132);
                                                   }
                                                   continue loop0;
                                                   addr107:
                                                }
                                                §§goto(addr172);
                                             }
                                          }
                                          §§goto(addr107);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr169);
               }
               §§goto(addr170);
            }
            §§goto(addr171);
         }
         var _loc6_:Vector.<§[!8§> = new Vector.<§[!8§>();
         if(_loc11_ || _loc2_)
         {
            loop12:
            while(_loc6_.length < param1)
            {
               if(_loc4_.length == 0)
               {
                  if(!(_loc10_ && this))
                  {
                     _loc6_[_loc6_.length] = null;
                     if(_loc11_ || _loc2_)
                     {
                        while(true)
                        {
                           continue loop12;
                        }
                        addr214:
                     }
                  }
               }
               else
               {
                  _loc8_ = _loc4_.length * Math.random();
                  if(_loc10_)
                  {
                     break;
                  }
               }
               _loc9_ = _loc4_.splice(_loc8_,1);
               if(_loc11_ || param1)
               {
                  _loc6_[_loc6_.length] = _loc9_[0];
               }
            }
            return _loc6_;
         }
         §§goto(addr214);
      }
      
      public function §%u§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Object = null;
         var _loc7_:§[!8§ = null;
         var _loc8_:* = 0;
         var _loc2_:Vector.<§[!8§> = new Vector.<§[!8§>();
         var _loc3_:* = Number(0);
         while(_loc3_ < §?l§.§'h§.§?x§.§57§())
         {
            if((_loc7_ = §?l§.§'h§.§?x§.§,!§(_loc3_)).§&!y§())
            {
               if(!(_loc9_ && _loc1_))
               {
                  _loc2_.push(_loc7_);
                  if(!(_loc10_ || this))
                  {
                     continue;
                  }
               }
            }
            §§push(_loc3_);
            if(!(_loc9_ && _loc2_))
            {
               §§push(§§pop() + 1);
               if(!(_loc9_ && _loc3_))
               {
                  addr79:
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr79);
         }
         if(_loc10_)
         {
            if(_loc2_.length == 0)
            {
               if(!_loc9_)
               {
                  §§goto(addr95);
               }
            }
            var _loc4_:Array = new Array();
            if(!(_loc9_ && _loc2_))
            {
               if(_loc2_.length > 4)
               {
                  addr112:
                  §§push(4);
                  if(_loc10_)
                  {
                     addr126:
                     §§push(int(§§pop()));
                  }
               }
               else
               {
                  §§push(int(_loc2_.length));
                  if(!(_loc9_ && this))
                  {
                     §§goto(addr126);
                  }
               }
               var _loc5_:* = §§pop();
               var _loc6_:int = 0;
               if(_loc10_)
               {
                  loop1:
                  while(true)
                  {
                     §§push(_loc6_);
                     while(§§pop() < _loc5_)
                     {
                        if(_loc2_.length <= 1)
                        {
                           §§push(0);
                           if(!_loc10_)
                           {
                              continue;
                           }
                           _loc8_ = §§pop();
                           if(_loc9_ && _loc3_)
                           {
                              break;
                           }
                           if(_loc10_)
                           {
                              if(!(_loc9_ && _loc1_))
                              {
                                 if(_loc10_ || _loc3_)
                                 {
                                    if(!_loc9_)
                                    {
                                       if(false)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             if(_loc4_.indexOf(_loc8_) == -1)
                                             {
                                                while(true)
                                                {
                                                   _loc4_.push(_loc8_);
                                                   addr186:
                                                   while(!(_loc10_ || _loc1_))
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                                addr183:
                                             }
                                             else
                                             {
                                                §§push(this.§!"X§(_loc2_.length));
                                                if(!_loc9_)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc9_ && _loc1_)
                                                      {
                                                         break;
                                                      }
                                                      addr213:
                                                      if(_loc10_)
                                                      {
                                                         _loc8_ = §§pop();
                                                         while(true)
                                                         {
                                                            continue loop3;
                                                         }
                                                         addr216:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         addr227:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                      §§goto(addr229);
                                                   }
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr229);
                                          }
                                          continue;
                                       }
                                       _loc1_ = this.§<>§(_loc2_[_loc8_].getBody());
                                       if(_loc10_)
                                       {
                                          if(_loc1_)
                                          {
                                             addr322:
                                             if(_loc6_ == 0)
                                             {
                                                addr325:
                                                _loc1_.scaleModifier = 1;
                                                addr268:
                                                this.§?!E§(_loc1_);
                                                addr328:
                                                if(_loc10_)
                                                {
                                                   addr241:
                                                   _loc6_++;
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      if(!(_loc9_ && _loc1_))
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               addr266:
                                                               if(true)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr268);
                                                            }
                                                            §§goto(addr325);
                                                         }
                                                         addr317:
                                                         if(!_loc9_)
                                                         {
                                                            §§goto(addr325);
                                                         }
                                                         §§goto(addr328);
                                                      }
                                                      addr281:
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                   §§goto(addr325);
                                                }
                                                addr314:
                                                _loc1_.scaleModifier = 0.7;
                                                §§goto(addr317);
                                             }
                                             §§push(_loc6_);
                                             if(!_loc9_)
                                             {
                                                §§push(1);
                                                if(!(_loc9_ && this))
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      §§goto(addr314);
                                                   }
                                                   _loc1_.scaleModifier = 0.25;
                                                   §§goto(addr281);
                                                }
                                             }
                                             §§goto(addr322);
                                          }
                                          §§goto(addr241);
                                       }
                                       §§goto(addr266);
                                    }
                                    else
                                    {
                                       addr223:
                                       §§push(this.§!"X§(_loc2_.length));
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr223);
                     }
                     return;
                  }
               }
               §§goto(addr229);
            }
            §§goto(addr112);
         }
         addr95:
      }
      
      private function §[s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§="T§ > this.§+"J§);
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              this.§6!u§ = true;
                              addr90:
                              loop6:
                              while(true)
                              {
                                 §@"M§.§3"C§("Mushroom_Grow_1","ChannelMisc",0,1);
                                 while(true)
                                 {
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop6;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        return;
                     }
                  }
                  addr85:
               }
               §§goto(addr98);
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr85);
               §§push(!§§pop());
            }
         }
         §§goto(addr90);
      }
      
      private function §]&§() : Object
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§[!8§ = null;
         var _loc4_:* = 0;
         var _loc1_:Vector.<§[!8§> = new Vector.<§[!8§>();
         var _loc2_:Number = 0;
         while(_loc2_ < §?l§.§'h§.§?x§.§57§())
         {
            _loc3_ = §?l§.§'h§.§?x§.§,!§(_loc2_);
            if(!_loc5_)
            {
               §§push(_loc3_.§]H§());
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr143:
                              while(true)
                              {
                                 §§push(_loc3_.§&!y§());
                                 addr120:
                                 while(!(_loc5_ && this))
                                 {
                                    §§push(!§§pop());
                                 }
                                 continue loop2;
                              }
                           }
                           addr142:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_ || _loc2_)
                                       {
                                          if(!_loc5_)
                                          {
                                             _loc1_.push(_loc3_);
                                             while(true)
                                             {
                                                if(!(_loc5_ && _loc1_))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr143);
                                             }
                                             addr109:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr66);
                                          }
                                       }
                                       §§goto(addr109);
                                    }
                                    §§goto(addr43);
                                 }
                                 addr95:
                              }
                              §§goto(addr133);
                              if(!(_loc6_ || _loc3_))
                              {
                                 continue;
                              }
                              §§goto(addr95);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            §§goto(addr64);
         }
         if(!_loc5_)
         {
            if(_loc1_.length > 0)
            {
               if(_loc6_ || _loc1_)
               {
                  §§push(this.§!"X§(_loc1_.length));
                  if(_loc6_ || this)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc4_ = §§pop();
                  if(_loc6_)
                  {
                     §§goto(addr188);
                  }
               }
            }
            return null;
         }
         addr188:
         return this.§<>§(_loc1_[_loc4_].getBody());
      }
      
      private function §!"X§(param1:int) : int
      {
         return Math.floor(Math.random() * param1) as int;
      }
      
      private function §=e§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      private function §<>§(param1:b2Body) : Object
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc4_:b2Vec2 = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc19_:§[!8§ = null;
         var _loc20_:b2Fixture = null;
         var _loc21_:b2DistanceOutput = null;
         var _loc22_:b2SimplexCache = null;
         §§push(§§findproperty(b2Vec2));
         §§push(0);
         §§push(§?l§.§5&§());
         if(_loc24_ || param1)
         {
            §§push(§§pop() * §'!S§.§1"4§);
         }
         var _loc2_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
         var _loc3_:* = Number(1);
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§3!3§ = param1.§!"0§();
         if(!(_loc23_ && _loc2_))
         {
            _loc5_.§@!a§ = new b2DistanceProxy();
         }
         while(true)
         {
            while(true)
            {
               _loc5_.§@!a§.Set(param1.GetFixtureList().GetShape());
               do
               {
                  _loc5_.§0y§ = true;
               }
               while(_loc23_);
               
               if(!(_loc24_ || _loc3_))
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push(§'!S§.§&H§);
               if(!(_loc23_ && param1))
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               var _loc10_:* = Number(0);
               loop3:
               while(_loc10_ < §?l§.§'h§.§?x§.§57§())
               {
                  §§push((_loc19_ = §?l§.§'h§.§?x§.§,!§(_loc10_)).getBody());
                  if(_loc24_)
                  {
                     §§push(§§pop().GetMass());
                     if(!(_loc23_ && _loc3_))
                     {
                        §§push(§§pop() == 0);
                        if(_loc24_)
                        {
                           §§push(§§pop());
                           if(_loc24_ || this)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc23_ && this))
                                 {
                                    §§pop();
                                    if(_loc24_ || _loc2_)
                                    {
                                       §§push(param1.GetPosition().y);
                                       if(!(_loc23_ && _loc2_))
                                       {
                                          §§push(§§pop() < _loc19_.getBody().GetPosition().y);
                                          loop13:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop12:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      if(_loc24_)
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(_loc19_.isTexture());
                                                            addr219:
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!_loc23_)
                                                               {
                                                                  §§push(§§pop());
                                                                  while(true)
                                                                  {
                                                                     if(_loc24_ || this)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc24_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc23_ && param1))
                                                                              {
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             §§push(_loc19_.§@x§.indexOf("INVISIBLE") == -1);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc19_.isGround());
                                                                                                if(!(_loc24_ || this))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(_loc23_ && _loc3_)
                                                                                                {
                                                                                                   while(_loc23_)
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   §§pop();
                                                                                                   continue;
                                                                                                   addr231:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      if(_loc24_ || _loc3_)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                             }
                                                                                             addr234:
                                                                                          }
                                                                                       }
                                                                                       break loop6;
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc23_)
                                                                              {
                                                                                 break loop6;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           addr435:
                                                                           §§push(_loc10_);
                                                                           if(!(_loc23_ && this))
                                                                           {
                                                                              addr443:
                                                                              §§push(§§pop() + 1);
                                                                              if(_loc24_ || this)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           _loc10_ = §§pop();
                                                                           continue loop3;
                                                                        }
                                                                        addr199:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr223);
                                                                     }
                                                                  }
                                                                  addr223:
                                                                  addr195:
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   addr267:
                                                   _loc20_ = _loc19_.getBody().GetFixtureList();
                                                   if(!(_loc23_ && _loc3_))
                                                   {
                                                      _loc5_.§-H§ = _loc19_.getBody().§!"0§();
                                                   }
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc5_.§>!j§ = new b2DistanceProxy();
                                                         do
                                                         {
                                                            _loc5_.§>!j§.Set(_loc19_.getBody().GetFixtureList().GetShape());
                                                         }
                                                         while(!_loc24_);
                                                         
                                                         if(!_loc24_)
                                                         {
                                                            break;
                                                         }
                                                         if(false)
                                                         {
                                                            continue;
                                                         }
                                                         _loc21_ = new b2DistanceOutput();
                                                         (_loc22_ = new b2SimplexCache()).count = 0;
                                                         if(_loc24_ || _loc2_)
                                                         {
                                                            b2Distance.§4"H§(_loc21_,_loc22_,_loc5_);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc21_.§<"1§);
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() > §§pop());
                                                                        if(!(_loc23_ && param1))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    §§push(param1.GetPosition().y);
                                                                                    if(!(_loc23_ && this))
                                                                                    {
                                                                                       §§push(_loc19_.getBody().GetPosition().y);
                                                                                       if(!(_loc24_ || this))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr345:
                                                                                       §§push(§§pop() < §§pop());
                                                                                       if(_loc23_ && _loc3_)
                                                                                       {
                                                                                          continue loop25;
                                                                                       }
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                if(_loc23_ && param1)
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc21_.§<"1§);
                                                                                                   if(_loc24_ || param1)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      addr383:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   _loc7_ = _loc19_.getBody().GetFixtureList();
                                                                                                   _loc8_ = _loc21_.§%" §;
                                                                                                }
                                                                                                continue loop20;
                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                {
                                                                                                   §§push(_loc21_.§<"1§);
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   _loc9_ = §§pop();
                                                                                                   break loop23;
                                                                                                }
                                                                                                break loop23;
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                          §§goto(addr345);
                                                                                       }
                                                                                       §§goto(addr435);
                                                                                    }
                                                                                    §§goto(addr383);
                                                                                 }
                                                                                 continue loop22;
                                                                              }
                                                                              addr403:
                                                                           }
                                                                           §§goto(addr363);
                                                                        }
                                                                        §§goto(addr403);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr374);
                                                      }
                                                   }
                                                }
                                                §§goto(addr195);
                                             }
                                          }
                                          addr250:
                                       }
                                       §§goto(addr443);
                                    }
                                    §§goto(addr234);
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr250);
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr219);
                     }
                     §§goto(addr443);
                  }
                  §§goto(addr267);
               }
               var _loc11_:b2Vec2 = param1.GetPosition();
               if(_loc24_)
               {
                  §§push(_loc9_);
                  if(_loc24_ || _loc2_)
                  {
                     if(§§pop() == 0)
                     {
                        if(!(_loc23_ && _loc3_))
                        {
                           addr482:
                           §§push(Number(1));
                           if(_loc24_ || this)
                           {
                              _loc9_ = §§pop();
                              addr492:
                              §§push(_loc11_.x);
                              if(!(_loc23_ && this))
                              {
                                 §§push(_loc8_.x);
                                 if(_loc24_ || this)
                                 {
                                    addr528:
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc23_ && _loc2_))
                                    {
                                       §§push(_loc9_);
                                    }
                                    var _loc12_:* = §§pop();
                                    §§push(_loc11_.y);
                                    if(!(_loc23_ && this))
                                    {
                                       §§push(_loc8_.y);
                                       if(!_loc23_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc23_ && this))
                                          {
                                             addr551:
                                             §§push(§§pop() / _loc9_);
                                             if(_loc23_)
                                             {
                                             }
                                             §§goto(addr555);
                                          }
                                          addr555:
                                          var _loc13_:* = §§pop();
                                          §§push(§§findproperty(b2Vec2));
                                          §§push(_loc11_.x);
                                          if(_loc24_)
                                          {
                                             §§push(_loc12_);
                                             if(!(_loc23_ && _loc3_))
                                             {
                                                §§push(§'!S§.§&H§);
                                                if(_loc24_ || this)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc24_ || _loc3_)
                                                   {
                                                      §§goto(addr586);
                                                   }
                                                   §§goto(addr596);
                                                }
                                                §§goto(addr604);
                                             }
                                             §§goto(addr586);
                                          }
                                          addr586:
                                          §§push(§§pop() - §§pop());
                                          §§push(_loc11_.y);
                                          if(_loc24_ || _loc2_)
                                          {
                                             addr596:
                                             §§push(_loc13_);
                                             if(!(_loc23_ && _loc3_))
                                             {
                                                addr604:
                                                §§push(§§pop() * §'!S§.§&H§);
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          var _loc14_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                          var _loc15_:b2RayCastInput = new b2RayCastInput(_loc11_,_loc14_);
                                          var _loc16_:b2RayCastOutput = new b2RayCastOutput();
                                          if(_loc24_)
                                          {
                                             if(!_loc7_.RayCast(_loc16_,_loc15_))
                                             {
                                                if(!(_loc23_ && _loc3_))
                                                {
                                                   §§goto(addr635);
                                                }
                                             }
                                             §§push(_loc16_.fraction);
                                             if(!(_loc23_ && _loc2_))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             _loc3_ = §§pop();
                                             _loc4_ = _loc16_.normal;
                                             §§push(_loc11_.x);
                                             if(_loc24_)
                                             {
                                                §§push(_loc3_);
                                                if(!_loc23_)
                                                {
                                                   §§push(_loc14_.x);
                                                   if(_loc24_)
                                                   {
                                                      §§push(§§pop() - _loc11_.x);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc24_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc17_:* = §§pop();
                                             §§push(_loc11_.y);
                                             if(_loc24_)
                                             {
                                                §§push(_loc3_);
                                                if(!_loc23_)
                                                {
                                                   §§push(_loc14_.y);
                                                   if(_loc24_)
                                                   {
                                                      §§push(§§pop() - _loc11_.y);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc24_)
                                                {
                                                   addr702:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc18_:* = §§pop();
                                                return {
                                                   "point":new Point(_loc17_,_loc18_),
                                                   "normal":new Point(_loc4_.x,_loc4_.y)
                                                };
                                             }
                                             §§goto(addr702);
                                          }
                                          addr635:
                                          return null;
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr551);
                                 }
                                 §§push(§§pop() / §§pop());
                                 if(_loc23_ && this)
                                 {
                                 }
                              }
                           }
                           §§goto(addr528);
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr492);
                  }
                  §§goto(addr528);
               }
               §§goto(addr482);
            }
         }
      }
      
      public function §?!E§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(!this.§4Q§)
            {
               if(_loc3_)
               {
                  this.§4Q§ = new Vector.<Object>();
               }
               while(true)
               {
               }
               addr58:
            }
            while(true)
            {
               this.§4Q§.push(param1);
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr58);
            }
         }
      }
      
      override public function updateLevelObjectsGoingOn(param1:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:Object = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:§<E§ = null;
         if(!_loc9_)
         {
            if(this.§4Q§ != null)
            {
               if(_loc8_)
               {
                  §§push(this);
                  §§push(this.§="T§);
                  if(!(_loc9_ && this))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§="T§ = §§pop();
                  if(_loc9_ && this)
                  {
                  }
                  §§goto(addr66);
               }
               _loc2_ = int(this.§4Q§.length - 1);
               §§goto(addr66);
            }
            §§goto(addr235);
         }
         addr66:
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§4Q§[_loc2_];
            _loc4_ = _loc3_.point;
            _loc5_ = _loc3_.normal;
            if(!_loc9_)
            {
               §§push(!isNaN(_loc4_.x));
               if(!(_loc9_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        addr100:
                        §§pop();
                        if(_loc8_)
                        {
                           addr118:
                           if(!isNaN(_loc4_.y))
                           {
                              if(!(_loc9_ && _loc3_))
                              {
                                 _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                                 if(_loc9_)
                                 {
                                 }
                                 addr216:
                                 §§push(_loc2_);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc2_ = §§pop();
                                 continue;
                              }
                              (_loc7_ = this.addObject("MISC_FB_EASTER_MUSHROOM",_loc4_.x + _loc5_.x,_loc4_.y + _loc5_.y,0,false,false,false,1,false) as §<E§).scaleModifier = _loc3_.scaleModifier;
                              if(!(_loc9_ && _loc3_))
                              {
                                 _loc7_.§]"J§(_loc4_,_loc5_);
                              }
                              loop1:
                              while(true)
                              {
                                 while(true)
                                 {
                                    _loc7_.§ d§ *= _loc7_.scaleModifier;
                                    do
                                    {
                                       _loc7_.§4&§();
                                    }
                                    while(_loc9_);
                                    
                                    if(_loc8_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 addr194:
                                 this.§4Q§.splice(_loc2_,1);
                                 if(_loc9_ && param1)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr216);
                              }
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr216);
                     }
                  }
                  §§goto(addr118);
               }
               §§goto(addr100);
            }
            §§goto(addr118);
         }
         if(_loc8_ || this)
         {
            this.§[s§();
            if(_loc8_)
            {
               addr235:
               super.updateLevelObjectsGoingOn(param1);
            }
         }
      }
      
      public function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
   }
}
