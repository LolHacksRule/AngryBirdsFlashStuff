package §-!&§
{
   import § N§.Sprite;
   import §-!<§.§5!5§;
   import §-!<§.§8R§;
   import §2G§.§0Z§;
   import §8!B§.§#! §;
   import §9T§.§1r§;
   import §9T§.§97§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §1!"§ extends §=!A§
   {
      
      protected static const §4"§:Boolean = false;
      
      protected static const §?!B§:Number = 2000;
      
      protected static const §;!<§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §4"§ = false;
            do
            {
               §?!B§ = 2000;
               do
               {
                  §;!<§ = 0.2;
               }
               while(!(_loc1_ || _loc1_));
               
            }
            while(_loc2_);
            
         }
      }
      
      private var §]N§:Number;
      
      private var §]!8§:Boolean = false;
      
      protected var §>!-§:int = 0;
      
      public function §1!"§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         }
         while(param10)
         {
            if(_loc12_ || param2)
            {
               §3! §.mTryToScream = §?k§.§1J§ + 1;
            }
            if(!_loc13_)
            {
               break;
            }
         }
      }
      
      public function get § I§() : Boolean
      {
         return this.§]!8§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(_loc4_ || _loc3_)
         {
            _loc3_.bullet = true;
            do
            {
               _loc3_.angularDamping = 2;
            }
            while(_loc5_ && param1);
            
         }
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§8!2§ < §53§);
         loop0:
         while(true)
         {
            if(!§§pop())
            {
               while(true)
               {
                  if(§§pop())
                  {
                     §§push(this);
                     §§push(this.§]N§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§]N§ = §§pop();
                  }
                  else
                  {
                     this.§]N§ = 0;
                     if(_loc3_)
                     {
                        if(this.§]N§ >= §?!B§)
                        {
                           §§push(true);
                        }
                        else
                        {
                           addr17:
                           §§push(false);
                           if(!(_loc3_ && _loc2_))
                           {
                              break;
                           }
                        }
                        addr54:
                        if(!(_loc3_ && param1))
                        {
                           return §§pop();
                        }
                        loop2:
                        while(true)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              continue loop0;
                           }
                           addr114:
                           while(true)
                           {
                              §§pop();
                              continue loop2;
                           }
                        }
                        continue loop0;
                        addr108:
                     }
                     §§goto(addr17);
                  }
                  §§goto(addr108);
               }
               return §§pop();
               addr98:
            }
            §§goto(addr114);
         }
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Boolean = false;
         var _loc3_:* = false;
         if(this.§]!8§)
         {
            if(§4V§.toUpperCase() != "BIRD_WHITE")
            {
               §§push(§4V§.toUpperCase() == "BIRD_YELLOW");
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        §§push(§4V§.toUpperCase() == "BIRD_GREEN");
                     }
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 §§push(§4V§.toUpperCase() == "BIRD_RED");
                              }
                              addr167:
                           }
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    continue loop1;
                                 }
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       §§push(§4V§.toUpperCase() == "BIRD_RED_BIG");
                                       loop10:
                                       while(!(_loc4_ && this))
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             _loc3_ = §§pop();
                                             loop11:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                loop12:
                                                for(; _loc5_; while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   continue loop12;
                                                },return §§pop())
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!§3! §.mTryToSpecial)
                                                      {
                                                         continue loop2;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      if(!§3! §.mTryToSpecial)
                                                      {
                                                         continue;
                                                      }
                                                      §3! §.mTryToSpecial = false;
                                                      if(!§3! §.mIsSpecial)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §3! §.mIsSpecial = false;
                                                            continue loop6;
                                                         }
                                                         addr111:
                                                         while(true)
                                                         {
                                                            if(!§3! §.mTryToFly)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               §§push(true);
                                                               break loop12;
                                                            }
                                                            addr187:
                                                            while(true)
                                                            {
                                                               _loc3_ = true;
                                                               continue loop11;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr91:
                                                      }
                                                   }
                                                }
                                                continue loop10;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr167);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr111);
                                    }
                                    §§goto(addr92);
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr187);
         }
         §§goto(addr22);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         §§push(Boolean(§`%§().IsAwake()));
         §§push(Boolean(§`%§().IsAwake()));
         loop0:
         while(true)
         {
            if(§§pop())
            {
               while(true)
               {
                  §§pop();
                  addr247:
                  while(true)
                  {
                     §§push(§8!2§ == §53§);
                  }
               }
               addr246:
            }
            while(true)
            {
               loop4:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!§3! §.mTryToFly)
                     {
                        §3! §.mTryToFly = true;
                        while(true)
                        {
                           §§push(true);
                           addr225:
                           addr68:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr226:
                              while(true)
                              {
                              }
                           }
                           if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           }
                           §<H§(0);
                           while(true)
                           {
                              §§goto(addr22);
                           }
                           addr50:
                        }
                     }
                     loop9:
                     while(true)
                     {
                        if(§4V§.toUpperCase() == "BIRD_GREEN")
                        {
                           while(true)
                           {
                              §§push(param1);
                              if(_loc5_)
                              {
                                 if(this.§]!8§)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(2 * (!_loc4_ ? §§pop() : §§pop()));
                                       if(_loc5_)
                                       {
                                          addr188:
                                          §§push(360);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                addr200:
                                                addr199:
                                                §§push(§§pop() / 1000);
                                                if(!_loc5_)
                                                {
                                                }
                                                _loc3_ = §§pop();
                                                if(_loc4_ && this)
                                                {
                                                   continue loop9;
                                                }
                                                §<H§(§'!I§() - _loc3_);
                                                §§goto(addr50);
                                             }
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr200);
                                    }
                                    §§goto(addr188);
                                 }
                                 else
                                 {
                                    §§push(1);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§goto(addr184);
                                    }
                                 }
                                 §§goto(addr200);
                              }
                              §§goto(addr199);
                           }
                           addr163:
                        }
                        else
                        {
                           §§push(§4V§.toUpperCase() == "BIRD_WHITE");
                        }
                        §§goto(addr142);
                     }
                  }
                  else if(§3! §.mTryToFly)
                  {
                     §3! §.mTryToFly = false;
                     if(§3! §.mIsFlying)
                     {
                        §3! §.mIsFlying = false;
                        do
                        {
                           _loc2_ = true;
                        }
                        while(!_loc5_);
                        
                     }
                  }
                  addr22:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc4_ && this))
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr225);
                     }
                     loop17:
                     while(true)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(!§§pop())
                           {
                              §§push(!§&0§());
                              if(_loc5_)
                              {
                                 §§push(§§pop());
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 addr145:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§pop();
                                             §§push(Boolean(this.§]!8§));
                                             break loop17;
                                          }
                                          §§goto(addr246);
                                       }
                                       §§goto(addr247);
                                       addr146:
                                    }
                                    addr106:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(§4"§);
                                          continue loop17;
                                       }
                                       if(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop15;
                                          }
                                          §§goto(addr247);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §4j§();
                                             continue loop15;
                                          }
                                          addr132:
                                       }
                                    }
                                 }
                              }
                              break;
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr146);
                     }
                     while(!_loc4_)
                     {
                        §§goto(addr106);
                     }
                     addr142:
                     while(_loc5_)
                     {
                        §§goto(addr145);
                        §§push(§§pop());
                     }
                     continue loop4;
                  }
                  return §§pop();
               }
            }
         }
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:§1r§ = §#! §.§`'§;
         if(!(_loc7_ && _loc3_))
         {
            §§push(§8!2§ < §53§);
            while(!§§pop())
            {
               do
               {
                  §§pop();
                  §§push(§`%§() == null);
               }
               while(_loc7_);
               
               if(_loc8_ || _loc1_)
               {
                  break;
               }
            }
            if(§§pop())
            {
               do
               {
                  _loc1_.§3f§(this);
                  _loc1_.§5!Q§ = false;
               }
               while(_loc7_ && _loc2_);
               
            }
            else
            {
               §§push(x * §1r§.§[M§);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(y * §1r§.§[M§);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc1_.§5!Q§);
               loop2:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(§&!N§ > 1)
                     {
                        while(true)
                        {
                           §§push(_loc1_.particles);
                        }
                        addr481:
                     }
                     else
                     {
                        §§push(§8R§.PARTICLE_NAME_BIRD_TRAIL1);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§>!-§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr443:
                                    addr385:
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          continue loop6;
                                       }
                                       §§push(§8R§.PARTICLE_NAME_BIRD_TRAIL2);
                                       if(!_loc7_)
                                       {
                                          continue loop3;
                                       }
                                       addr456:
                                       addr456:
                                       if(_loc7_)
                                       {
                                          break loop5;
                                       }
                                       _loc4_ = §§pop();
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          break;
                                       }
                                       addr529:
                                       while(true)
                                       {
                                          §§push(_loc1_.particles);
                                          addr531:
                                          while(true)
                                          {
                                             §§push(§8R§.§[!$§);
                                             addr533:
                                             while(true)
                                             {
                                                §§push(§5!5§.§&!J§);
                                                addr535:
                                                while(true)
                                                {
                                                   §§push(§8R§.§!J§);
                                                   addr537:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      addr538:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         addr539:
                                                         while(true)
                                                         {
                                                            §§push(-1);
                                                            addr540:
                                                            while(true)
                                                            {
                                                               §§push("");
                                                               addr541:
                                                               while(true)
                                                               {
                                                                  §§push(§8R§.§0k§);
                                                                  addr543:
                                                                  while(true)
                                                                  {
                                                                     §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                     _loc1_.§5!Q§ = false;
                                                                     this.§>!-§ = 0;
                                                                     addr520:
                                                                     while(true)
                                                                     {
                                                                        addr307:
                                                                        while(true)
                                                                        {
                                                                           §§push(§?D§() > §97§.§]c§);
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§>!-§ + 1);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() % 3);
                                       }
                                       §§pop().§>!-§ = §§pop();
                                       loop9:
                                       for(; _loc8_ || _loc3_; if(_loc7_ && _loc1_)
                                       {
                                          continue;
                                       },if(_loc8_ || _loc2_)
                                       {
                                          §§push(Number(Math.random()));
                                          if(!_loc7_)
                                          {
                                             if(_loc8_ || this)
                                             {
                                                §§goto(addr227);
                                             }
                                             §§goto(addr283);
                                          }
                                          §§goto(addr284);
                                       },§§goto(addr481))
                                       {
                                          §§push(_loc1_.particles);
                                          loop10:
                                          while(true)
                                          {
                                             if(!(_loc7_ && _loc1_))
                                             {
                                                §§push(_loc4_);
                                                while(true)
                                                {
                                                   §§push(§5!5§.§&!J§);
                                                   addr337:
                                                   addr123:
                                                   while(true)
                                                   {
                                                      §§push(§8R§.§!J§);
                                                      addr339:
                                                      while(true)
                                                      {
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        §§push(-1);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push("");
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(§8R§.§0k§);
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       addr284:
                                                                                       addr485:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          if(_loc8_ || _loc3_)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§5!5§.§&!J§);
                                                                                          addr487:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§8R§.§!J§);
                                                                                             addr489:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                addr490:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   addr491:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(-1);
                                                                                                      addr492:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc8_ || this)
                                                                                                         {
                                                                                                            §§push("");
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§push(§8R§.§0k§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                  }
                                                                                                                  addr514:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr541);
                                                                                                               }
                                                                                                               §§goto(addr307);
                                                                                                            }
                                                                                                            addr500:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr540);
                                                                                                         }
                                                                                                         §§goto(addr541);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr543);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr514);
                                                                              }
                                                                              §§goto(addr307);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr500);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr492);
                                                                        }
                                                                        §§goto(addr541);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr539);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr491);
                                                                  }
                                                                  §§goto(addr492);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr538);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr490);
                                                            }
                                                            §§goto(addr491);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr537);
                                                         }
                                                      }
                                                   }
                                                   §§push(§8R§.§#'§);
                                                   if(_loc7_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc8_ || _loc1_)
                                                      {
                                                         §§push(§5!5§.§-U§);
                                                         if(_loc8_ || _loc1_)
                                                         {
                                                            if(_loc8_ || this)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§8R§.§`R§);
                                                                  if(_loc8_)
                                                                  {
                                                                     if(!(_loc7_ && _loc1_))
                                                                     {
                                                                        §§pop().addParticle(§§pop(),§§pop(),§§pop(),§`%§().GetPosition().x,§`%§().GetPosition().y,1250,"",§8R§.§[q§(§4V§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
                                                                        if(!(_loc8_ || _loc1_))
                                                                        {
                                                                           addr235:
                                                                           if(!(_loc8_ || this))
                                                                           {
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Math.random() < §;!<§);
                                                                                 if(_loc8_ || _loc1_)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       while(§§pop())
                                                                                       {
                                                                                          §§push(-Math.PI);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() / 2);
                                                                                             addr283:
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr284);
                                                                                             }
                                                                                             addr227:
                                                                                             if(_loc7_ && _loc2_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             _loc6_ = §§pop();
                                                                                             §§goto(addr235);
                                                                                          }
                                                                                       }
                                                                                       addr107:
                                                                                       return;
                                                                                       addr276:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr322:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop18;
                                                                                 }
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           if(_loc7_ && _loc3_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           §§goto(addr520);
                                                                           §§goto(addr307);
                                                                        }
                                                                        §§goto(addr107);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr489);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr339);
                                                                  }
                                                                  §§goto(addr540);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr535);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr487);
                                                            }
                                                            §§goto(addr489);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr337);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr533);
                                                      }
                                                      §§goto(addr535);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr485);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr485);
                                                }
                                                addr483:
                                             }
                                             §§goto(addr490);
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr483);
                  }
                  §§goto(addr529);
               }
            }
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§3! §.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(_loc1_ || _loc2_)
               {
                  if(_loc2_ && _loc2_)
                  {
                     addr56:
                     §,A§(§0Z§.§use §);
                     addr60:
                  }
                  return;
               }
               §§goto(addr60);
            }
         }
         §§goto(addr56);
      }
      
      override public function activateSpecialPower(param1:§20§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§]!8§);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §,A§(§0Z§.§^l§);
                     while(true)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           if(_loc2_)
                           {
                              §§push(false);
                           }
                           else
                           {
                              addr84:
                           }
                           this.§]!8§ = true;
                           if(!_loc2_)
                           {
                              §§push(true);
                              if(_loc3_)
                              {
                                 return §§pop();
                              }
                              break;
                           }
                           continue;
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr84);
            }
            return §§pop();
         }
         §§goto(addr84);
      }
      
      private function §#@§(param1:int) : int
      {
         return Math.min(§#! §.§`'§.damageParticleLimit,param1);
      }
      
      override public function addDestructionParticles(param1:§5!5§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§8!D§(false) + 1);
         var _loc4_:Number = 90;
         if(!_loc10_)
         {
            §§push(this.§#@§(_loc3_));
            if(!_loc10_)
            {
               §§push(int(§§pop()));
               if(!_loc10_)
               {
                  addr45:
                  _loc3_ = §§pop();
                  §§push(0);
               }
               var _loc5_:* = §§pop();
               loop0:
               while(true)
               {
                  if(_loc5_ >= _loc3_)
                  {
                     if(!(_loc10_ && _loc2_))
                     {
                        if(_loc9_)
                        {
                           break;
                        }
                        loop3:
                        while(true)
                        {
                           §§push(-§3! §.mH);
                           if(!_loc9_)
                           {
                              continue;
                           }
                           §§push(§1r§.§[M§);
                           if(_loc9_)
                           {
                              if(_loc9_ || _loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc10_ && this))
                                    {
                                       addr157:
                                       if(_loc9_ || param1)
                                       {
                                          §§push(§§pop());
                                          if(_loc9_)
                                          {
                                             _loc8_ = §§pop();
                                             §§push(Math.random() * -_loc8_);
                                          }
                                          §§push(2);
                                          if(_loc9_ || this)
                                          {
                                             addr182:
                                             §§push(§§pop() + §§pop() * §§pop());
                                             if(!_loc10_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             _loc8_ = §§pop();
                                             while(_loc9_ || _loc2_)
                                             {
                                                param1.addParticle(§8R§.§#'§,§5!5§.§-U§,§8R§.§`R§,§`%§().GetPosition().x + _loc7_,§`%§().GetPosition().y + _loc8_,1500,"",§8R§.§[q§(§4V§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                loop9:
                                                while(!_loc10_)
                                                {
                                                   _loc5_++;
                                                   while(!_loc9_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                §§push(-§3! §.mW * §1r§.§[M§);
                                                addr202:
                                                while(true)
                                                {
                                                   §§push(_loc7_ = §§pop());
                                                   §§push(Math.random() * -_loc7_);
                                                   if(!(_loc10_ && _loc2_))
                                                   {
                                                      addr217:
                                                      §§push(2);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         §§goto(addr217);
                                                      }
                                                      addr218:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc10_ && _loc2_))
                                                      {
                                                         break;
                                                      }
                                                      addr263:
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         continue loop10;
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          §§goto(addr218);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(_loc4_ = §§pop());
                                             addr255:
                                             while(true)
                                             {
                                                §§push(180 / Math.PI);
                                                addr259:
                                                while(true)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(!_loc10_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                             }
                                             §§goto(addr157);
                                          }
                                          addr252:
                                       }
                                       §§goto(addr263);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr255);
                              }
                              §§goto(addr259);
                           }
                           §§goto(addr182);
                        }
                     }
                     §§goto(addr67);
                  }
                  else
                  {
                     §§push(_loc4_);
                     §§push(Math.random() * (720 / _loc3_));
                     if(!_loc10_)
                     {
                        §§goto(addr252);
                        §§push(§§pop() + §§pop());
                     }
                  }
                  §§goto(addr259);
               }
               return;
            }
         }
         §§goto(addr45);
      }
      
      override public function addDamageParticles(param1:§5!5§, param2:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!_loc9_)
         {
            if(§for§())
            {
               if(_loc10_ || _loc3_)
               {
                  return;
               }
            }
            if(param2 < 6)
            {
               if(!_loc9_)
               {
                  §§goto(addr43);
               }
            }
            §§push(§?D§() / 10);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(_loc10_)
            {
               §§push(_loc3_);
               if(!_loc9_)
               {
                  addr68:
                  §§push(§§pop() * §8!D§(false));
                  if(_loc10_)
                  {
                     addr64:
                     §§push(§§pop() * 0.12);
                  }
                  var _loc4_:* = int(§§pop() + §§pop());
                  var _loc5_:Number = 90;
                  if(!_loc9_)
                  {
                     §§push(param2);
                     while(true)
                     {
                        §§push(scale * scale);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           loop2:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              addr376:
                              while(true)
                              {
                                 param2 = §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(3 + param2 / 20);
                                       if(!(_loc10_ || param1))
                                       {
                                          break;
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(_loc9_ && _loc3_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(int(§§pop()));
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          addr362:
                                          while(_loc10_ || this)
                                          {
                                          }
                                          addr327:
                                          continue loop4;
                                          while(true)
                                          {
                                             §§push(0);
                                             if(_loc9_ && this)
                                             {
                                                break;
                                             }
                                             if(!_loc9_)
                                             {
                                                continue;
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        addr318:
                        if(!(_loc10_ || param1))
                        {
                           continue;
                        }
                        addr326:
                        _loc4_ = int(§§pop());
                        §§goto(addr327);
                     }
                  }
                  while(true)
                  {
                     §§push(this.§#@§(_loc4_));
                     if(!_loc9_)
                     {
                        if(!_loc9_)
                        {
                           §§goto(addr318);
                        }
                        §§goto(addr376);
                     }
                     §§goto(addr326);
                  }
                  §§goto(addr309);
               }
               §§goto(addr64);
            }
            §§goto(addr68);
         }
         addr43:
      }
   }
}
