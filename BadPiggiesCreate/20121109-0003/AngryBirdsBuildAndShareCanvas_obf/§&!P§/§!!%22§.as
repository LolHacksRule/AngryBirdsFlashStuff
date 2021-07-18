package §&!P§
{
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §+!-§.Sprite;
   import §,P§.§'_§;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   
   public class §!!"§ extends §``§
   {
      
      public static const §'!t§:int = 1750;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §!!"§))
         {
            §'!t§ = 1750;
         }
      }
      
      private var §`U§:int = 0;
      
      public function §!!"§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!_loc14_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
         do
         {
            §,H§ = param12;
            do
            {
               §'"$§ = param13;
            }
            while(!(_loc15_ || this));
            
         }
         while(_loc14_ && param2);
         
      }
      
      override public function addDestructionParticles(param1:§6!Q§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§9!3§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc11_ || _loc2_)
            {
               if(!(_loc10_ && _loc3_))
               {
                  if(§§pop() >= _loc3_)
                  {
                     if(_loc11_)
                     {
                        if(_loc11_)
                        {
                           if(!_loc10_)
                           {
                              break;
                           }
                           loop7:
                           while(true)
                           {
                              §§push(-§8C§.mW);
                              loop8:
                              while(true)
                              {
                                 §§push(§,4§.§,^§);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       if(!(_loc10_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                          loop10:
                                          while(true)
                                          {
                                             if(!(_loc10_ && this))
                                             {
                                                §§push(§§pop());
                                                loop11:
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(!_loc10_)
                                                   {
                                                      §§push(Math.random() * -_loc7_);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(2);
                                                         addr385:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop14:
                                                            while(!_loc10_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr390:
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(-§8C§.mH);
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(§,4§.§,^§);
                                                                              if(!(_loc11_ || param1))
                                                                              {
                                                                                 addr308:
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    addr263:
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    if(_loc10_ && this)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    §§push(§§pop());
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr333:
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc10_ && _loc3_))
                                                                                       {
                                                                                          addr343:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    _loc8_ = §§pop();
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§,H§ != "")
                                                                                       {
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             §§push(1);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(int(§§pop() + Math.floor(Math.random() * §'"$§)));
                                                                                                addr233:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc9_ = §§pop();
                                                                                                }
                                                                                             }
                                                                                             addr225:
                                                                                          }
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             §§push(§,H§ + "_");
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(§§pop() + _loc9_);
                                                                                             }
                                                                                             §§pop().§-"<§(§§pop(),§`!E§.§<"9§,§6!Q§.§+f§,§`!E§.§]W§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§'!t§ + Math.random() * 500,"",§]!I§(§+!A§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                                                             addr202:
                                                                                             while(true)
                                                                                             {
                                                                                                addr74:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_++;
                                                                                                   addr76:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr234:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          param1.§'p§(§`!E§.§<"9§,§6!Q§.§+f§,§`!E§.§]W§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§'!t§ + Math.random() * 500,"",§]!I§(§+!A§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          §§goto(addr234);
                                                                                       }
                                                                                       continue loop17;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr343);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    addr431:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(180 / Math.PI);
                                                                                       break loop14;
                                                                                    }
                                                                                 }
                                                                                 addr430:
                                                                              }
                                                                           }
                                                                           §§goto(addr263);
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     addr418:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        break loop10;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr435:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               addr436:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  continue loop7;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr390);
                                                }
                                             }
                                             break;
                                             if(!(_loc11_ || param1))
                                             {
                                                continue;
                                             }
                                             if(!_loc11_)
                                             {
                                                continue loop8;
                                             }
                                             if(!(_loc10_ && param1))
                                             {
                                                §§push(Math.random() * -_loc8_);
                                                if(_loc11_)
                                                {
                                                   §§goto(addr308);
                                                }
                                                §§goto(addr333);
                                             }
                                             §§goto(addr431);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr430);
                                          }
                                          addr368:
                                       }
                                       §§goto(addr436);
                                    }
                                    §§goto(addr368);
                                 }
                              }
                           }
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr76);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(!(_loc10_ && param1))
                     {
                        §§push(Math.random() * (720 / _loc3_));
                        if(_loc11_ || _loc2_)
                        {
                           §§goto(addr418);
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr435);
                     }
                  }
                  §§goto(addr437);
               }
               §§goto(addr225);
            }
            §§goto(addr233);
         }
      }
      
      override public function addDamageParticles(param1:§6!Q§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§,4§ = §'_§.§=M§;
         if(_loc6_ || this)
         {
            §§push(§8W§ < §%5§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr87:
                     while(true)
                     {
                        §§push(getBody() == null);
                        if(!(_loc6_ || this))
                        {
                           break;
                        }
                        if(!_loc6_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  loop4:
                  while(_loc6_)
                  {
                     _loc1_.§32§(this);
                     while(true)
                     {
                        _loc1_.§1!;§ = false;
                        if(!(_loc5_ && _loc1_))
                        {
                           if(_loc6_ || _loc1_)
                           {
                              break;
                           }
                           continue loop4;
                        }
                     }
                     return;
                  }
                  §§goto(addr87);
               }
               §§push(x * §,4§.§,^§);
               if(_loc6_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(y * §,4§.§,^§);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(§`!E§.PARTICLE_NAME_BIRD_TRAIL1);
               if(_loc6_)
               {
                  §§push(§§pop());
               }
               var _loc4_:* = §§pop();
               if(_loc6_)
               {
                  addr225:
                  if(this.§`U§ != 1)
                  {
                     §§push(this.§`U§);
                     if(_loc6_)
                     {
                        §§push(2);
                        if(_loc5_ && _loc1_)
                        {
                           §§goto(addr225);
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc5_ && this))
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(§`!E§.PARTICLE_NAME_BIRD_TRAIL3);
                                 if(_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       addr206:
                                       §§push(§§pop());
                                       if(_loc6_)
                                       {
                                          _loc4_ = §§pop();
                                          addr209:
                                          if(!_loc5_)
                                          {
                                             addr157:
                                             §§push(this);
                                             §§push(this.§`U§ + 1);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() % 3);
                                             }
                                             §§pop().§`U§ = §§pop();
                                             _loc1_.particles.§'p§(_loc4_,§6!Q§.§;"#§,§`!E§.§+"=§,_loc2_,_loc3_,-1,"",§`!E§.§6!O§);
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr209);
                                                }
                                                return;
                                             }
                                             addr168:
                                             §§goto(addr168);
                                          }
                                          addr230:
                                          §§goto(addr157);
                                          addr230:
                                       }
                                       §§goto(addr230);
                                    }
                                    else
                                    {
                                       addr228:
                                       §§push(§§pop());
                                    }
                                    _loc4_ = §§pop();
                                    §§goto(addr230);
                                 }
                                 §§goto(addr206);
                              }
                              else
                              {
                                 addr226:
                                 §§push(§`!E§.PARTICLE_NAME_BIRD_TRAIL2);
                              }
                              §§goto(addr228);
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr226);
               }
               §§goto(addr230);
            }
         }
         §§goto(addr80);
      }
   }
}
