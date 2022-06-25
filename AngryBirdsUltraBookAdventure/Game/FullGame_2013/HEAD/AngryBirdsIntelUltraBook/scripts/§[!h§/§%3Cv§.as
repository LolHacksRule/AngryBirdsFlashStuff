package §[!h§
{
   import §#!,§.§0!b§;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §6!!§.LevelObject;
   import §6!!§.LevelObjectManager;
   import §>!8§.b2Vec2;
   import §>!L§.b2World;
   import §?!Y§.§`S§;
   import §]!@§.§ ?§;
   import §]!@§.LevelMain;
   import flash.geom.Point;
   
   public class §<v§ extends LevelObject
   {
       
      
      public var §7R§:Boolean = false;
      
      public var §finally§:Boolean = false;
      
      private var §8!$§:§0!b§;
      
      private var §3O§:Point;
      
      private var §1W§:Number = 0;
      
      public function §<v§(aLevelObjects:LevelObjectManager, aSprite:Sprite, aWorld:b2World, aMain:LevelMain, aId:int, aX:Number, aY:Number, aRotation:Number, scale:Number)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc10_ && aSprite)
         {
         }
         if(!_loc10_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              loop6:
                              for(; _loc11_; if(!(_loc10_ && aLevelObjects))
                              {
                                 return;
                              })
                              {
                                 loop7:
                                 while(true)
                                 {
                                    while(_loc11_)
                                    {
                                       continue loop1;
                                       addr58:
                                       if(!(_loc10_ && aLevelObjects))
                                       {
                                          if(!(_loc10_ && aLevelObjects))
                                          {
                                             if(_loc11_)
                                             {
                                                continue loop6;
                                             }
                                             addr68:
                                             while(true)
                                             {
                                                this.§`!<§();
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc10_)
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr125:
                                                   while(true)
                                                   {
                                                      super(aLevelObjects,aSprite,aWorld,aMain,aId,"POWERUP_BOMB",aX,aY,aRotation,scale);
                                                      continue loop10;
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             §§goto(addr58);
                                             §§goto(addr65);
                                          }
                                          addr65:
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                              continue loop2;
                              if(_loc11_ || aSprite)
                              {
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc11_ || aWorld))
               {
                  continue;
               }
               §§goto(addr68);
            }
         }
         §§goto(addr125);
      }
      
      private function §`!<§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            if(!(_loc2_ && _loc3_))
            {
               addr36:
            }
            var parachutePivotTexture:§ H§ = §`S§.§[o§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
            if(!_loc2_)
            {
               while(true)
               {
                  this.§8!$§ = new §0!b§(parachutePivotTexture.texture,true);
                  addr128:
                  if(_loc3_ || _loc2_)
                  {
                     this.§3O§ = new Point(parachutePivotTexture.pivotX,parachutePivotTexture.pivotY);
                     do
                     {
                        loop4:
                        while(true)
                        {
                           §`S§.§[o§.objects.§>a§.addChild(this.§8!$§);
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 addr88:
                                 if(_loc2_ && this)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop4;
                           }
                           addr121:
                           addr144:
                           while(!(_loc2_ && parachutePivotTexture))
                           {
                              §§goto(addr128);
                              §§goto(addr88);
                           }
                           while(true)
                           {
                              §§goto(addr121);
                           }
                        }
                     }
                     while(_loc2_);
                     
                     return;
                  }
               }
            }
            §§goto(addr144);
         }
         §§goto(addr36);
      }
      
      public function §-#§(deltaTime:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc6_)
         {
         }
         var reversedPivot:Point = null;
         var fallingVelocity:Number = NaN;
         if(_loc6_ || windRadians)
         {
            while(true)
            {
               loop1:
               while(!_loc7_)
               {
                  while(true)
                  {
                     loop3:
                     for(; !(_loc7_ && windRadians); while(_loc6_ || windDirection)
                     {
                        continue loop1;
                     })
                     {
                        while(true)
                        {
                           super.update(deltaTime);
                           continue loop3;
                        }
                     }
                  }
                  if(_loc7_ && deltaTime)
                  {
                     continue;
                  }
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr39);
                     }
                     §§goto(addr44);
                  }
                  §§push(this.§1W§);
                  if(_loc6_)
                  {
                     §§push(§§pop() / 1000);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * Math.PI);
                        if(!_loc7_)
                        {
                           addr93:
                           §§push(§§pop() * § ?§.§@!M§);
                           if(_loc6_ || windDirection)
                           {
                           }
                           addr105:
                           var windRadians:* = §§pop();
                           if(!_loc6_)
                           {
                           }
                           var windDirection:Number = Math.sin(windRadians);
                           if(!(_loc7_ && this))
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(this.§8!$§);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop9:
                                    while(§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§push(this.§finally§);
                                             if(_loc6_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc6_)
                                                {
                                                   addr370:
                                                   §§push(§§pop());
                                                   if(_loc6_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr376:
                                                         do
                                                         {
                                                            §§push(!§@!'§());
                                                            if(!(_loc7_ && deltaTime))
                                                            {
                                                               continue loop12;
                                                            }
                                                            addr349:
                                                         }
                                                         while(!(_loc7_ && deltaTime));
                                                         
                                                         continue loop9;
                                                      }
                                                      addr375:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§push(this.§8!$§);
                                                         if(_loc6_)
                                                         {
                                                            if(_loc6_ || windDirection)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(Math.cos(windRadians) * § ?§.§ h§);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§pop().rotation = §§pop();
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_ || windRadians)
                                                                           {
                                                                              if(_loc6_ || windRadians)
                                                                              {
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    if(!(_loc7_ && this))
                                                                                    {
                                                                                       if(!(_loc7_ && windRadians))
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          if(true)
                                                                                          {
                                                                                             reversedPivot = new Point(-this.§3O§.x,-this.§3O§.y);
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                this.§8!$§.x = x + reversedPivot.x * Math.cos(this.§8!$§.rotation) - reversedPivot.y * Math.sin(this.§8!$§.rotation);
                                                                                                addr601:
                                                                                             }
                                                                                             addr599:
                                                                                             addr562:
                                                                                             §§push(this.§8!$§);
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                §§pop().y = y + reversedPivot.x * Math.sin(this.§8!$§.rotation) + reversedPivot.y * Math.cos(this.§8!$§.rotation);
                                                                                                addr521:
                                                                                                fallingVelocity = §@!'§().GetLinearVelocity().y;
                                                                                                addr559:
                                                                                                addr522:
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   addr481:
                                                                                                   §§push(fallingVelocity);
                                                                                                   if(!(_loc7_ && windRadians))
                                                                                                   {
                                                                                                      if(§§pop() > § ?§.§4,§)
                                                                                                      {
                                                                                                         addr492:
                                                                                                         if(!(_loc7_ && deltaTime))
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr502:
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(§ ?§.§4,§);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc6_ || this)
                                                                                                                     {
                                                                                                                        addr477:
                                                                                                                        fallingVelocity = §§pop();
                                                                                                                        addr478:
                                                                                                                        if(_loc6_ || windRadians)
                                                                                                                        {
                                                                                                                           addr416:
                                                                                                                           §@!'§().SetLinearVelocity(new b2Vec2(windDirection * § ?§.§+>§,fallingVelocity));
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              if(_loc6_ || windRadians)
                                                                                                                              {
                                                                                                                                 if(!(_loc7_ && deltaTime))
                                                                                                                                 {
                                                                                                                                    if(!(_loc7_ && deltaTime))
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr416);
                                                                                                                                                }
                                                                                                                                                break loop9;
                                                                                                                                             }
                                                                                                                                             §§goto(addr559);
                                                                                                                                          }
                                                                                                                                          §§goto(addr492);
                                                                                                                                       }
                                                                                                                                       §§goto(addr416);
                                                                                                                                    }
                                                                                                                                    §§goto(addr559);
                                                                                                                                 }
                                                                                                                                 §§goto(addr502);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr478);
                                                                                                                        }
                                                                                                                        §§goto(addr522);
                                                                                                                     }
                                                                                                                     §§goto(addr481);
                                                                                                                  }
                                                                                                                  §§goto(addr477);
                                                                                                               }
                                                                                                               §§goto(addr601);
                                                                                                            }
                                                                                                            §§goto(addr599);
                                                                                                         }
                                                                                                         §§goto(addr562);
                                                                                                      }
                                                                                                      §§goto(addr416);
                                                                                                   }
                                                                                                   §§goto(addr521);
                                                                                                }
                                                                                                addr525:
                                                                                                §§goto(addr525);
                                                                                             }
                                                                                             §§goto(addr601);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                loop15:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§8!$§);
                                                                                                   addr247:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§push(this.§8!$§);
                                                                                                         if(_loc7_ && windDirection)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§pop().rotation = §§pop().rotation + 0.01;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(_loc6_ || windDirection)
                                                                                                                  {
                                                                                                                     if(!(_loc7_ && this))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§8!$§);
                                                                                                                        addr312:
                                                                                                                        while(!_loc7_)
                                                                                                                        {
                                                                                                                           §§push(this.§8!$§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().alpha - 0.025);
                                                                                                                              addr319:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().alpha = §§pop();
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     addr361:
                                                                                                                  }
                                                                                                                  while(!(_loc7_ && this))
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§8!$§);
                                                                                                                        addr287:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§8!$§);
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop11;
                                                                                                                  addr320:
                                                                                                               }
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            addr264:
                                                                                                            if(!(_loc7_ && this))
                                                                                                            {
                                                                                                               loop28:
                                                                                                               for(§§push(this.§8!$§); §§pop().alpha <= 0; )
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc6_ || deltaTime)
                                                                                                                     {
                                                                                                                        §§push(this.§8!$§);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().dispose();
                                                                                                                           loop30:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr212:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§8!$§ = null;
                                                                                                                                 addr203:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       continue loop30;
                                                                                                                                    }
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          break loop28;
                                                                                                                                       }
                                                                                                                                       addr358:
                                                                                                                                       while(!_loc7_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr361);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr376);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr264);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop30;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr216:
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr150:
                                                                                                               break loop9;
                                                                                                               addr222:
                                                                                                            }
                                                                                                            addr618:
                                                                                                            return;
                                                                                                            addr617:
                                                                                                         }
                                                                                                         §§goto(addr316);
                                                                                                      }
                                                                                                      §§goto(addr287);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr308);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr150);
                                                                                    }
                                                                                    §§goto(addr225);
                                                                                 }
                                                                                 §§goto(addr618);
                                                                              }
                                                                              §§goto(addr212);
                                                                           }
                                                                           §§goto(addr203);
                                                                        }
                                                                        §§goto(addr618);
                                                                     }
                                                                     §§goto(addr319);
                                                                  }
                                                                  §§goto(addr312);
                                                               }
                                                               §§goto(addr247);
                                                            }
                                                            §§goto(addr222);
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                      §§goto(addr358);
                                                   }
                                                }
                                                §§goto(addr375);
                                             }
                                             §§goto(addr370);
                                          }
                                       }
                                    }
                                    §§push(this);
                                    §§push(this.§1W§);
                                    if(!(_loc7_ && deltaTime))
                                    {
                                       §§push(§§pop() + deltaTime);
                                    }
                                    §§pop().§1W§ = §§pop();
                                    if(_loc6_)
                                    {
                                       §§goto(addr617);
                                    }
                                    §§goto(addr618);
                                 }
                              }
                           }
                           §§goto(addr360);
                        }
                        §§goto(addr105);
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr93);
               }
            }
         }
         §§goto(addr58);
      }
      
      public function get §%!e§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         loop0:
         while(true)
         {
            §§push(!§@!'§());
            loop1:
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  §§push(§§pop());
                  if(!(_loc2_ && this))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  while(true)
                  {
                     §§pop();
                     if(_loc1_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               addr77:
               return §§pop();
            }
         }
      }
   }
}
