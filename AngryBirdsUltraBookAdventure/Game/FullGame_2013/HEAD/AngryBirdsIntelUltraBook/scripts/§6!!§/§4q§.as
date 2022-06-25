package §6!!§
{
   import §#!,§.Sprite;
   import §+!g§.b2Settings;
   import §>!L§.b2World;
   import §@!-§.§ !_§;
   import §@!-§.LevelParticleManager;
   import §]!@§.§ ?§;
   import §]!@§.LevelMain;
   
   public class §4q§ extends §;!4§
   {
       
      
      private var §4S§:Boolean = false;
      
      private var §=!;§:Number = 0;
      
      public function §4q§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
         do
         {
            §@J§ = param11;
         }
         while(!(_loc13_ || this));
         
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§4S§)
            {
               addr22:
               §§push(§ !_§.§59§);
               if(_loc4_ || this)
               {
                  §§push(§§pop());
                  if(_loc4_ || _loc3_)
                  {
                     addr49:
                     §§push(§§pop());
                  }
               }
            }
            else
            {
               §§push(§ !_§.§9y§);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§goto(addr49);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               if(§@J§ != "")
               {
                  param1.§2!9§(§@J§,_loc2_,LevelParticleManager.§9!H§,§ !_§.§=_§,§@!'§().GetPosition().x,§@!'§().GetPosition().y - 1,2000,"",§ !_§.§<!W§,0,0,0,0,1,20,true);
                  if(_loc4_)
                  {
                     if(_loc3_)
                     {
                        addr124:
                        param1.§?`§(_loc2_,LevelParticleManager.§9!H§,§ !_§.§=_§,§@!'§().GetPosition().x,§@!'§().GetPosition().y - 1,2000,"",§ !_§.§<!W§);
                        addr149:
                     }
                     return;
                  }
                  §§goto(addr149);
               }
            }
            §§goto(addr124);
         }
         §§goto(addr22);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!_loc8_)
         {
            §§push(_loc7_);
            loop0:
            while(true)
            {
               §§push(§§pop() <= 0);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc8_ && param2))
                  {
                     §§push(§§pop());
                     if(!(_loc8_ && param1))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§pop();
                              addr139:
                              loop9:
                              while(true)
                              {
                                 §§push(param3);
                                 if(!_loc8_)
                                 {
                                    if(!(_loc9_ || param3))
                                    {
                                       continue loop1;
                                    }
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc8_ && param2))
                                          {
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      §§push(param4);
                                                      if(_loc9_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(!_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      addr55:
                                                      if(!_loc8_)
                                                      {
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            this.§4S§ = true;
                                                            addr30:
                                                            §§push(_loc7_);
                                                            if(!_loc8_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            continue loop0;
                                                            addr77:
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                   continue;
                                                }
                                                continue loop8;
                                             }
                                             addr113:
                                          }
                                          while(§§pop())
                                          {
                                             if(_loc9_ || param2)
                                             {
                                                §§goto(addr55);
                                             }
                                             §§goto(addr77);
                                          }
                                          §§goto(addr30);
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr113);
                              }
                           }
                           addr138:
                        }
                        §§goto(addr90);
                     }
                  }
                  §§goto(addr138);
               }
            }
         }
         §§goto(addr139);
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(0.3);
         if(_loc3_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(Math.abs(§@!'§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr178:
                              while(true)
                              {
                                 §§push(Math.abs(§@!'§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                                 do
                                 {
                                    if(!(_loc3_ || this))
                                    {
                                       continue loop4;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 while(_loc2_ && _loc3_);
                                 
                                 if(_loc3_)
                                 {
                                    §§goto(addr55);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc3_ || _loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              continue loop2;
                           }
                           if(§§pop())
                           {
                              continue loop0;
                           }
                           loop11:
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(false);
                                       break;
                                    }
                                    if(_loc3_)
                                    {
                                       while(true)
                                       {
                                          addr35:
                                          while(true)
                                          {
                                             §§push(true);
                                             if(!_loc3_)
                                             {
                                                break loop9;
                                             }
                                             continue loop9;
                                          }
                                       }
                                       addr94:
                                    }
                                    else
                                    {
                                       while(_loc3_ || _loc1_)
                                       {
                                          §§push(Math.abs(§@!'§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                          if(!_loc3_)
                                          {
                                             addr73:
                                             break loop9;
                                          }
                                          if(_loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             continue loop11;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr178);
                                       addr152:
                                    }
                                    addr55:
                                    return §§pop();
                                 }
                                 §§goto(addr35);
                              }
                              return §§pop();
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§=!;§ > 0)
            {
               do
               {
                  §§push(this);
                  §§push(this.§=!;§);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§=!;§ = §§pop();
                  §`!P§.mTryToScream = LevelObjectRenderer.§9I§;
               }
               while(_loc2_);
               
               return true;
            }
            else
            {
               addr25:
               §§push(super.updateScreamingFrameAnimations(param1));
               if(_loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr25);
      }
      
      public function §>!6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§=!;§ = § ?§.§7r§;
            while(true)
            {
               §`!P§.mTryToScream = LevelObjectRenderer.§9I§;
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(true)
                  {
                     playScreamingSoundEffect();
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
   }
}
