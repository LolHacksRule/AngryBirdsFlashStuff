package §6!!§
{
   import §#!,§.Sprite;
   import §>!L§.b2World;
   import §?!Y§.§`S§;
   import §@!-§.§ !_§;
   import §@!-§.LevelParticleManager;
   import §]!@§.LevelMain;
   
   public class §,!E§ extends LevelObject
   {
       
      
      private var §5!X§:int = 0;
      
      public function §,!E§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            do
            {
               §@J§ = param12;
               do
               {
                  §#c§ = param13;
               }
               while(!_loc14_);
               
            }
            while(!_loc14_);
            
         }
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:int = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§0!"§(false))) + 1;
         var _loc4_:* = Number(90);
         §§push(0);
         if(_loc11_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc11_)
            {
               if(_loc11_)
               {
                  if(_loc11_ || _loc2_)
                  {
                     if(_loc11_)
                     {
                        if(§§pop() >= _loc3_)
                        {
                           if(_loc10_)
                           {
                              continue;
                           }
                           if(!_loc10_)
                           {
                              if(_loc11_ || _loc3_)
                              {
                                 if(!_loc10_)
                                 {
                                    break;
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    §§push(-§`!P§.mW);
                                    loop2:
                                    while(true)
                                    {
                                       §§push(LevelMain.§@!d§);
                                       loop3:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          loop4:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop5:
                                             while(!(_loc10_ && param1))
                                             {
                                                _loc7_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(Math.random() * -_loc7_);
                                                      if(_loc11_ || this)
                                                      {
                                                         if(!(_loc11_ || this))
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc10_ && _loc2_))
                                                         {
                                                            §§push(2);
                                                            loop8:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr420:
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              addr427:
                                                                              while(true)
                                                                              {
                                                                                 §§push(-§`!P§.mH);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(LevelMain.§@!d§);
                                                                                    while(_loc11_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(!(_loc11_ || _loc2_))
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       if(!(_loc11_ || param1))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc11_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc11_ || param1))
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             continue loop11;
                                                                                          }
                                                                                          addr477:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Math.random() * (720 / _loc3_));
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr485:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             break loop10;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 addr385:
                                                                                 while(!_loc10_)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!(_loc11_ || this))
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(Math.random() * -_loc8_);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       §§goto(addr319);
                                                                                       addr229:
                                                                                       if(_loc10_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          addr90:
                                                                                          §§push(_loc5_);
                                                                                          if(_loc11_ || this)
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                          }
                                                                                          _loc5_ = int(§§pop());
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr487:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             break loop5;
                                                                                          }
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(180 / Math.PI);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   break loop5;
                                                                                                }
                                                                                                break loop5;
                                                                                             }
                                                                                             addr468:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr485);
                                                                                          }
                                                                                          break loop10;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     §§goto(addr487);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr468);
                                                      }
                                                      §§goto(addr420);
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr159);
                        }
                        else
                        {
                           §§push(_loc4_);
                        }
                        §§goto(addr477);
                     }
                     §§goto(addr276);
                  }
                  §§goto(addr287);
               }
            }
            §§goto(addr90);
         }
      }
      
      override public function addDamageParticles(param1:LevelParticleManager, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:LevelMain = §`S§.§[o§;
         if(_loc6_ || this)
         {
            §§push(§3W§ < §>!"§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  §§push(§§pop());
                  if(_loc6_ || this)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  while(true)
                  {
                     §§pop();
                     §§push(§@!'§() == null);
                     if(_loc5_)
                     {
                        break;
                     }
                     if(!_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                        break;
                     }
                  }
                  if(_loc6_)
                  {
                     continue loop0;
                  }
               }
               addr71:
               if(§§pop())
               {
                  while(true)
                  {
                     _loc1_.§6B§(this);
                     §§goto(addr77);
                  }
               }
               else
               {
                  §§push(x * LevelMain.§@!d§);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(y * LevelMain.§@!d§);
                  if(_loc6_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  §§push(§ !_§.PARTICLE_NAME_BIRD_TRAIL1);
                  if(!_loc5_)
                  {
                     §§push(§§pop());
                  }
                  var _loc4_:* = §§pop();
                  if(_loc6_ || _loc1_)
                  {
                     §§push(this.§5!X§);
                     loop3:
                     while(true)
                     {
                        §§push(1);
                        while(§§pop() != §§pop())
                        {
                           §§push(this.§5!X§);
                           if(!_loc6_)
                           {
                              continue loop3;
                           }
                           §§push(2);
                           if(!_loc6_)
                           {
                              continue;
                           }
                           if(§§pop() == §§pop())
                           {
                              if(_loc6_ || this)
                              {
                                 §§push(§ !_§.PARTICLE_NAME_BIRD_TRAIL3);
                                 if(_loc6_ || _loc2_)
                                 {
                                    if(!(_loc5_ && _loc1_))
                                    {
                                       addr249:
                                       §§push(§§pop());
                                       if(!(_loc5_ && this))
                                       {
                                          _loc4_ = §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                addr177:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§5!X§ + 1);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() % 3);
                                                   }
                                                   §§pop().§5!X§ = §§pop();
                                                   continue loop8;
                                                }
                                                addr177:
                                             }
                                             else
                                             {
                                                addr269:
                                                while(true)
                                                {
                                                   §§goto(addr177);
                                                }
                                                addr269:
                                             }
                                             §§goto(addr177);
                                          }
                                          addr257:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                       }
                                       addr267:
                                    }
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       §§goto(addr269);
                                    }
                                 }
                                 §§goto(addr249);
                              }
                              §§goto(addr257);
                           }
                           §§goto(addr177);
                        }
                        while(true)
                        {
                           §§goto(addr267);
                           §§goto(addr195);
                        }
                     }
                  }
                  §§goto(addr269);
               }
            }
         }
         addr77:
         while(true)
         {
            _loc1_.static = false;
            if(!_loc5_)
            {
               break;
            }
            continue loop12;
         }
      }
   }
}
