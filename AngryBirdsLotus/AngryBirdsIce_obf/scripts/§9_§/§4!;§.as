package §9_§
{
   import §!Y§.§[o§;
   import §#J§.§'b§;
   import §#J§.§>=§;
   import §4N§.§7E§;
   import §[x§.§2^§;
   import §[x§.§9"§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §4!;§ extends §<F§
   {
      
      protected static const §0h§:Boolean = false;
      
      protected static const §5Z§:Number = 2000;
      
      protected static const §+c§:Number = 0.2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §0h§ = false;
            while(true)
            {
               §5Z§ = 2000;
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            §+c§ = 0.2;
            if(_loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §?T§:Number;
      
      private var §"p§:Boolean = false;
      
      protected var §9l§:int = 0;
      
      public function §4!;§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         }
         while(param10)
         {
            if(_loc12_ || param1)
            {
               §<p§.mTryToScream = §`-§.§`w§ + 1;
            }
            if(!(_loc13_ && param3))
            {
               break;
            }
         }
      }
      
      public function get §;$§() : Boolean
      {
         return this.§"p§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(!_loc5_)
         {
            _loc3_.bullet = true;
            do
            {
               _loc3_.angularDamping = 2;
            }
            while(_loc5_);
            
         }
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§8!'§ < §[!3§);
         if(!(_loc3_ && _loc2_))
         {
            if(!§§pop())
            {
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§?T§);
                        if(_loc2_ || _loc3_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§?T§ = §§pop();
                        if(this.§?T§ >= §5Z§)
                        {
                           if(_loc2_)
                           {
                              §§push(true);
                              break;
                           }
                           continue;
                        }
                     }
                     addr49:
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     addr102:
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
                  else
                  {
                     this.§?T§ = 0;
                  }
                  §§push(false);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
                  §§goto(addr49);
               }
               return §§pop();
            }
         }
         §§goto(addr102);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:* = false;
         if(_loc4_ || param1)
         {
            §§push(this.§"p§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(§57§.toUpperCase() == "BIRD_WHITE")
                  {
                     _loc3_ = true;
                     while(true)
                     {
                        loop15:
                        while(true)
                        {
                           §§push(_loc3_);
                           loop12:
                           while(true)
                           {
                              if(!(_loc5_ && this))
                              {
                                 if(!§§pop())
                                 {
                                    if(§<p§.mTryToSpecial)
                                    {
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §<p§.mTryToSpecial = false;
                                       }
                                       loop13:
                                       for(; §<p§.mIsSpecial; while(true)
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             if(_loc4_ || this)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr134);
                                             }
                                             break;
                                          }
                                          continue loop13;
                                          addr44:
                                          _loc2_ = §§pop();
                                          if(!(_loc5_ && this))
                                          {
                                             break loop13;
                                          }
                                       },§§goto(addr134))
                                       {
                                          if(!_loc5_)
                                          {
                                             §<p§.mIsSpecial = false;
                                             continue;
                                          }
                                          addr197:
                                          while(true)
                                          {
                                             §§push(§57§.toUpperCase() == "BIRD_RED");
                                             addr160:
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc4_)
                                                {
                                                   addr164:
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         addr153:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue;
                                                               }
                                                               addr207:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  §§push(§57§.toUpperCase() == "BIRD_GREEN");
                                                                  addr193:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               break loop8;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            §§goto(addr154);
                                                            continue loop12;
                                                         }
                                                         addr153:
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         continue loop15;
                                                      }
                                                      if(!§<p§.mTryToFly)
                                                      {
                                                         continue loop15;
                                                      }
                                                      §§goto(addr153);
                                                      §§push(true);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§goto(addr207);
                                                         }
                                                         §§goto(addr164);
                                                      }
                                                      addr206:
                                                   }
                                                   §§goto(addr193);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   break loop12;
                                                }
                                                §§goto(addr160);
                                             }
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    if(!§<p§.mTryToSpecial)
                                    {
                                       addr134:
                                       §<p§.mTryToSpecial = true;
                                       §§push(true);
                                       if(_loc5_ && param1)
                                       {
                                          break;
                                       }
                                       _loc2_ = §§pop();
                                       if(_loc5_)
                                       {
                                          addr154:
                                          while(true)
                                          {
                                             continue loop15;
                                          }
                                          addr154:
                                       }
                                       addr137:
                                    }
                                    continue;
                                 }
                                 §§goto(addr137);
                                 §§goto(addr154);
                              }
                              §§goto(addr153);
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr197);
                           }
                        }
                     }
                     addr218:
                  }
                  else
                  {
                     §§push(§57§.toUpperCase() == "BIRD_YELLOW");
                     §§push(§57§.toUpperCase() == "BIRD_YELLOW");
                  }
                  §§goto(addr206);
               }
               §§goto(addr28);
               §§push(true);
               if(!_loc4_)
               {
                  continue;
               }
               §§goto(addr44);
            }
         }
         §§goto(addr218);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         §§push(Boolean(§>b§().IsAwake()));
         §§push(Boolean(§>b§().IsAwake()));
         loop0:
         while(true)
         {
            if(§§pop())
            {
               §§pop();
               §§push(§8!'§ == §[!3§);
            }
            loop1:
            while(true)
            {
               if(§§pop())
               {
                  if(!§<p§.mTryToFly)
                  {
                     while(true)
                     {
                        §<p§.mTryToFly = true;
                        _loc2_ = true;
                        addr240:
                        while(true)
                        {
                        }
                        addr141:
                        addr146:
                        §§push(§57§.toUpperCase() == "BIRD_WHITE");
                        while(_loc4_)
                        {
                           §§push(§§pop());
                           continue loop0;
                           §§goto(addr141);
                        }
                        continue loop1;
                     }
                     addr250:
                  }
                  while(true)
                  {
                     if(§57§.toUpperCase() == "BIRD_GREEN")
                     {
                        while(true)
                        {
                           §§push(param1);
                           if(!(_loc5_ && _loc2_))
                           {
                              if(this.§"p§)
                              {
                                 if(!_loc5_)
                                 {
                                    addr187:
                                    §§push(2);
                                    if(_loc4_ || this)
                                    {
                                       addr201:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc5_)
                                       {
                                          §§push(360);
                                          if(!_loc5_)
                                          {
                                             addr207:
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                addr216:
                                                §§push(§§pop() / 1000);
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             _loc3_ = §§pop();
                                             §9F§(§^k§() - _loc3_);
                                             while(true)
                                             {
                                                addr67:
                                                while(true)
                                                {
                                                   §§goto(addr21);
                                                }
                                             }
                                          }
                                          §§goto(addr216);
                                       }
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr216);
                              }
                              else
                              {
                                 §§push(1);
                                 if(_loc4_)
                                 {
                                    §§goto(addr201);
                                    §§push(§§pop());
                                 }
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr187);
                        }
                        addr174:
                     }
                     else
                     {
                        §§goto(addr141);
                     }
                     §§goto(addr146);
                  }
               }
               else if(§<p§.mTryToFly)
               {
                  §<p§.mTryToFly = false;
                  if(§<p§.mIsFlying)
                  {
                     if(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           §<p§.mIsFlying = false;
                           §§goto(addr57);
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(!§8i§());
                              if(!_loc4_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       continue loop0;
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                    }
                                    §§goto(addr146);
                                    addr91:
                                 }
                                 continue;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §9F§(0);
                                 }
                                 §§goto(addr67);
                              }
                           }
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr57);
                  }
               }
               addr21:
               loop16:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && _loc3_))
                  {
                     break;
                  }
                  addr57:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     if(!(_loc4_ || _loc3_))
                     {
                        break;
                     }
                     if(!_loc5_)
                     {
                        continue loop16;
                     }
                     continue loop10;
                  }
                  while(true)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc4_)
                        {
                           §§push(true);
                           continue;
                        }
                        §§goto(addr250);
                     }
                     else
                     {
                        while(true)
                        {
                           continue loop4;
                        }
                        addr138:
                     }
                  }
                  addr35:
               }
               return §§pop();
            }
         }
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:§2^§ = §[o§.§='§;
         if(_loc7_ || _loc3_)
         {
            §§push(§8!'§ < §[!3§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr88:
                     do
                     {
                        §§push(§>b§() == null);
                        if(_loc8_)
                        {
                           continue loop1;
                        }
                     }
                     while(_loc7_);
                     
                     continue loop0;
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(!(_loc8_ && _loc3_))
                     {
                        if(!(_loc8_ && _loc1_))
                        {
                           _loc1_.§%!-§(this);
                           break;
                        }
                        §§goto(addr88);
                     }
                     break;
                  }
                  §§push(x * §2^§.§,]§);
                  if(_loc7_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(y * §2^§.§,]§);
                  if(!(_loc8_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  addr508:
                  if(_loc1_.§^t§)
                  {
                     addr523:
                     _loc1_.particles.§-X§(§'b§.§]V§,§>=§.§8'§,§'b§.§6D§,_loc2_,_loc3_,-1,"",§'b§.§9X§);
                     _loc1_.§^t§ = false;
                     this.§9l§ = 0;
                     addr517:
                     addr509:
                     addr521:
                     addr520:
                     addr519:
                     addr518:
                     addr515:
                     addr513:
                     addr511:
                     addr524:
                     addr505:
                     §§push(§8!E§() > §9"§.§?,§);
                     if(_loc7_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           addr281:
                           if(_loc7_ || this)
                           {
                              §§pop();
                              addr289:
                              §§push(Math.random() < §+c§);
                              if(!_loc8_)
                              {
                                 §§goto(addr244);
                              }
                              §§goto(addr281);
                           }
                           §§goto(addr508);
                        }
                        addr244:
                        if(§§pop())
                        {
                           addr256:
                           addr264:
                           §§push(-Math.PI);
                           if(!_loc8_)
                           {
                              addr263:
                              §§push(Number(§§pop() / 2));
                           }
                           _loc5_ = §§pop();
                           §§push(Number(Math.random()));
                           if(_loc7_)
                           {
                              if(_loc7_ || _loc2_)
                              {
                                 _loc6_ = §§pop();
                                 if(_loc7_)
                                 {
                                    if(!(_loc8_ && this))
                                    {
                                       if(_loc7_)
                                       {
                                          addr293:
                                          §§push(_loc1_.particles);
                                          if(!_loc8_)
                                          {
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                if(!_loc8_)
                                                {
                                                   addr294:
                                                   §§push(§'b§.§"x§);
                                                   if(!_loc8_)
                                                   {
                                                      if(!(_loc8_ && _loc2_))
                                                      {
                                                         if(_loc7_ || _loc2_)
                                                         {
                                                            addr296:
                                                            §§push(§>=§.§>!5§);
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               §§push(§'b§.§=<§);
                                                               if(!(_loc8_ && _loc2_))
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§pop().§-X§(§§pop(),§§pop(),§§pop(),§>b§().GetPosition().x,§>b§().GetPosition().y,1250,"",§'b§.§@#§(§57§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
                                                                     if(_loc8_)
                                                                     {
                                                                        §§goto(addr256);
                                                                     }
                                                                     §§goto(addr116);
                                                                  }
                                                                  §§goto(addr517);
                                                               }
                                                               addr307:
                                                               if(_loc7_ || _loc1_)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(-1);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push("");
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              §§push(§'b§.§9X§);
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§pop().§-X§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                 if(_loc7_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr517);
                                                                                 }
                                                                                 §§goto(addr509);
                                                                              }
                                                                              addr482:
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§pop().§-X§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                 §§goto(addr517);
                                                                              }
                                                                              §§goto(addr523);
                                                                           }
                                                                           addr473:
                                                                           if(_loc7_ || _loc1_)
                                                                           {
                                                                              §§goto(addr482);
                                                                              §§push(§'b§.§9X§);
                                                                           }
                                                                           §§goto(addr521);
                                                                        }
                                                                        addr465:
                                                                        if(_loc7_ || _loc2_)
                                                                        {
                                                                           §§goto(addr473);
                                                                           §§push("");
                                                                        }
                                                                        §§goto(addr520);
                                                                     }
                                                                     addr462:
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§goto(addr465);
                                                                        §§push(-1);
                                                                     }
                                                                     §§goto(addr519);
                                                                  }
                                                                  addr454:
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     §§goto(addr462);
                                                                     §§push(_loc3_);
                                                                  }
                                                                  §§goto(addr518);
                                                               }
                                                               §§goto(addr454);
                                                               §§push(_loc2_);
                                                            }
                                                            if(!(_loc8_ && _loc1_))
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§goto(addr307);
                                                                  §§push(§'b§.§6D§);
                                                               }
                                                               §§goto(addr515);
                                                            }
                                                            addr451:
                                                            §§goto(addr307);
                                                            §§push(§'b§.§6D§);
                                                         }
                                                         §§goto(addr513);
                                                      }
                                                      addr449:
                                                      §§goto(addr451);
                                                      §§push(§>=§.§8'§);
                                                   }
                                                   §§goto(addr296);
                                                   §§push(§>=§.§8'§);
                                                }
                                                §§goto(addr511);
                                             }
                                             addr447:
                                             §§goto(addr449);
                                             §§push(§'b§.§<b§);
                                          }
                                          §§goto(addr294);
                                          §§push(_loc4_);
                                       }
                                       §§goto(addr524);
                                    }
                                    §§goto(addr505);
                                 }
                                 §§goto(addr289);
                              }
                              §§goto(addr263);
                           }
                           §§goto(addr264);
                        }
                        addr116:
                        return;
                     }
                     §§goto(addr281);
                  }
                  addr436:
                  if(§"G§ > 1)
                  {
                     §§goto(addr447);
                     §§push(_loc1_.particles);
                  }
                  _loc4_ = §'b§.PARTICLE_NAME_BIRD_TRAIL1;
                  if(this.§9l§ == 1)
                  {
                     if(!_loc8_)
                     {
                        addr414:
                        §§push(§'b§.PARTICLE_NAME_BIRD_TRAIL2);
                        if(!(_loc8_ && _loc2_))
                        {
                           if(!(_loc8_ && _loc2_))
                           {
                              addr429:
                              _loc4_ = §§pop();
                              addr344:
                              §§push(this);
                              §§push(this.§9l§ + 1);
                              if(!(_loc8_ && _loc2_))
                              {
                                 §§push(§§pop() % 3);
                              }
                              §§pop().§9l§ = §§pop();
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§goto(addr293);
                                 §§push(_loc1_.particles);
                              }
                              §§goto(addr344);
                              addr430:
                           }
                        }
                        §§goto(addr436);
                     }
                     §§goto(addr430);
                  }
                  §§push(this.§9l§);
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(2);
                     if(_loc7_)
                     {
                        if(§§pop() == §§pop())
                        {
                           §§push(§'b§.PARTICLE_NAME_BIRD_TRAIL3);
                           if(_loc7_)
                           {
                              §§push(§§pop());
                           }
                           if(!(_loc8_ && _loc1_))
                           {
                              if(_loc7_ || _loc1_)
                              {
                                 _loc4_ = §§pop();
                                 §§goto(addr344);
                              }
                              §§goto(addr414);
                           }
                        }
                        §§goto(addr429);
                     }
                  }
                  §§goto(addr436);
               }
            }
         }
         do
         {
            _loc1_.§^t§ = false;
         }
         while(!_loc7_);
         
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(!§<p§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(!(_loc2_ && _loc2_))
               {
                  if(_loc2_)
                  {
                     addr56:
                     §;v§(§7E§.§!u§);
                     addr60:
                  }
                  return;
               }
               §§goto(addr60);
            }
         }
         §§goto(addr56);
      }
      
      override public function activateSpecialPower(param1:§?!!§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§"p§);
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §;v§(§7E§.§6M§);
                  while(_loc2_)
                  {
                     this.§"p§ = true;
                     if(!_loc3_)
                     {
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                        §§push(true);
                        if(!(_loc2_ || _loc3_))
                        {
                           return §§pop();
                        }
                        addr74:
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        continue loop0;
                     }
                  }
                  addr75:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr74);
            §§push(false);
         }
         §§goto(addr75);
      }
      
      private function § !,§(param1:int) : int
      {
         return Math.min(§[o§.§='§.damageParticleLimit,param1);
      }
      
      override public function addDestructionParticles(param1:§>=§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§8@§(false) + 1);
         var _loc4_:Number = 90;
         if(!(_loc9_ && _loc3_))
         {
            §§push(this.§ !,§(_loc3_));
            if(!_loc9_)
            {
               §§push(int(§§pop()));
               if(_loc10_ || _loc3_)
               {
                  _loc3_ = §§pop();
                  addr57:
                  §§push(0);
               }
            }
            var _loc5_:* = §§pop();
            while(true)
            {
               if(_loc5_ >= _loc3_)
               {
                  if(_loc10_ || _loc3_)
                  {
                     if(!_loc9_)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc5_++;
                        addr214:
                        param1.§-X§(§'b§.§"x§,§>=§.§>!5§,§'b§.§=<§,§>b§().GetPosition().x + _loc7_,§>b§().GetPosition().y + _loc8_,1500,"",§'b§.§@#§(§57§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                     }
                  }
                  while(!(_loc10_ || _loc2_))
                  {
                     loop3:
                     while(true)
                     {
                        if(_loc10_)
                        {
                           if(_loc10_ || param1)
                           {
                              break;
                           }
                           loop4:
                           while(true)
                           {
                              §§push(-§<p§.mW);
                              if(!(_loc9_ && this))
                              {
                                 §§push(§2^§.§,]§);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc10_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop6:
                                       while(!(_loc9_ && _loc3_))
                                       {
                                          _loc7_ = §§pop();
                                          §§push(Math.random() * -_loc7_);
                                          while(true)
                                          {
                                             §§push(2);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                loop9:
                                                while(true)
                                                {
                                                   if(_loc10_ || this)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop10:
                                                      while(!(_loc9_ && this))
                                                      {
                                                         _loc7_ = Number(§§pop());
                                                         while(true)
                                                         {
                                                            §§push(-§<p§.mH);
                                                            if(_loc9_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(§2^§.§,]§);
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               §§push(Number(§§pop() * §§pop()));
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§push(§§pop());
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(_loc9_ && _loc2_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     _loc8_ = §§pop();
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr198:
                                                                     §§push(Number(§§pop() + §§pop()));
                                                                  }
                                                               }
                                                               if(_loc10_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  break loop9;
                                                               }
                                                               continue loop5;
                                                            }
                                                            §§goto(addr198);
                                                         }
                                                         continue loop3;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(180 / Math.PI);
                                                         break loop6;
                                                      }
                                                      addr291:
                                                      addr258:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         break loop9;
                                                      }
                                                      addr287:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr291);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() / §§pop());
                                          continue loop4;
                                       }
                                    }
                                 }
                                 §§goto(addr248);
                              }
                              §§goto(addr258);
                           }
                        }
                        §§goto(addr277);
                     }
                     §§goto(addr214);
                  }
                  continue;
               }
               §§push(_loc4_);
               §§push(Math.random() * (720 / _loc3_));
               §§goto(addr287);
            }
            return;
         }
         §§goto(addr57);
      }
      
      override public function addDamageParticles(param1:§>=§, param2:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         if(_loc9_ || _loc3_)
         {
            if(§8i§())
            {
               if(!_loc10_)
               {
                  return;
               }
            }
            else if(param2 < 6)
            {
               if(!_loc10_)
               {
                  §§goto(addr42);
               }
            }
            §§push(§8!E§() / 10);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(!_loc10_)
            {
               §§push(_loc3_);
               if(_loc9_ || this)
               {
                  §§push(§§pop() * §8@§(false));
                  if(!(_loc10_ && param2))
                  {
                     §§push(§§pop() * 0.12);
                  }
               }
               §§push(int(§§pop() + §§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(90);
            if(_loc9_)
            {
               §§push(param2);
               §§push(scale * scale);
               loop0:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  addr390:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr391:
                     while(true)
                     {
                        param2 = §§pop();
                        addr392:
                        while(true)
                        {
                           §§push(_loc4_);
                           continue loop0;
                        }
                     }
                  }
               }
            }
            loop8:
            while(true)
            {
               §§push(_loc6_);
               loop9:
               while(true)
               {
                  §§push(_loc4_);
                  loop10:
                  while(true)
                  {
                     if(§§pop() >= §§pop() / 3)
                     {
                        while(true)
                        {
                           §§push(0);
                           loop12:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc6_);
                                 if(_loc10_ && param2)
                                 {
                                    continue loop12;
                                 }
                                 if(!(_loc9_ || param1))
                                 {
                                    break;
                                 }
                                 §§push(_loc4_);
                                 if(!_loc9_)
                                 {
                                    continue loop10;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       return;
                                    }
                                    continue;
                                 }
                                 §§push(_loc5_);
                                 if(_loc9_)
                                 {
                                    §§push(Math.random() * (720 / _loc4_));
                                    loop14:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop15:
                                       while(_loc9_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc9_)
                                          {
                                             §§push((_loc5_ = §§pop()) / (180 / Math.PI));
                                             loop16:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr252:
                                                addr308:
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                   §§push(0.5);
                                                   if(_loc10_)
                                                   {
                                                      §§push(Math.random() * (720 / _loc4_));
                                                   }
                                                   else
                                                   {
                                                      addr302:
                                                   }
                                                   §§push(_loc3_);
                                                   if(!(_loc9_ || param2))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc10_)
                                                      {
                                                         continue loop16;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr213:
                                                   }
                                                   continue loop14;
                                                }
                                                break loop15;
                                             }
                                          }
                                          §§goto(addr252);
                                       }
                                       addr310:
                                       _loc5_ = Number(§§pop());
                                       continue loop8;
                                    }
                                 }
                                 §§goto(addr252);
                              }
                              continue loop9;
                           }
                        }
                     }
                     else
                     {
                        §§push(_loc5_);
                     }
                     §§goto(addr302);
                  }
               }
            }
         }
         addr42:
      }
   }
}
