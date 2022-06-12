package §9"%§
{
   import §%Q§.§;!y§;
   import §1!$§.Sprite;
   import §48§.b2BodyDef;
   import §48§.b2World;
   import §9"!§.§2a§;
   import §9"!§.§9"3§;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import §]!A§.;
   
   public class § H§ extends §#+§
   {
      
      protected static const §-!6§:Boolean = false;
      
      protected static const §,!Q§:Number = 2000;
      
      protected static const §']§:Number = 0.2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-!6§ = false;
         }
         while(true)
         {
            §,!Q§ = 2000;
            while(_loc2_)
            {
               §']§ = 0.2;
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private var §5!q§:Number;
      
      protected var §%!q§:Boolean = false;
      
      protected var §,"#§:int = 0;
      
      public function § H§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            loop0:
            for(; param10; while(true)
            {
               if(_loc12_ || param3)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!_loc12_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            §"!&§.mTryToScream = §#!D§.§%"$§ + 1;
            §§goto(addr59);
         }
      }
      
      public static function §6-§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         §§push(param3);
         if(!_loc12_)
         {
            §§push(int(§§pop() + Math.random() * param4));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Number = 1;
         var _loc8_:int = 0;
         loop0:
         while(true)
         {
            if(_loc8_ >= _loc6_)
            {
               if(!_loc12_)
               {
                  if(!_loc12_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     §§push(0.5);
                     if(_loc11_)
                     {
                        if(_loc12_)
                        {
                           continue;
                        }
                        §§push(param5);
                        if(_loc11_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc11_ || param1)
                           {
                              addr168:
                              §§push(§§pop() + param5 * (Math.random() * 0.5));
                              if(!_loc12_)
                              {
                                 addr186:
                                 §§push(Number(§§pop()));
                              }
                              if(_loc11_ || param2)
                              {
                                 break;
                              }
                              addr205:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 continue loop1;
                              }
                           }
                           §§goto(addr186);
                        }
                     }
                     §§goto(addr168);
                  }
                  _loc10_ = §§pop();
                  while(true)
                  {
                     §§push(§#6§.§6!z§.particles);
                     §§push("STAR_PARTICLE");
                     §§push(§'G§.§"!z§);
                     §§push(§^!f§.§>"F§);
                     §§push(§'G§.§+";§);
                     §§push(param1);
                     §§push(param2);
                     §§push(750);
                     §§push("");
                     §§push(§'G§.§,">§("BIRD_RED"));
                     §§push(_loc10_);
                     if(!_loc12_)
                     {
                        §§push(§§pop() * Math.cos(_loc9_));
                        if(_loc11_ || param2)
                        {
                           addr84:
                           §§push(_loc7_);
                           if(_loc11_)
                           {
                              addr88:
                              §§push(§§pop() * §§pop());
                              §§push(_loc10_);
                              if(_loc11_ || param3)
                              {
                                 §§push(-§§pop());
                                 if(!(_loc12_ && § H§))
                                 {
                                    §§push(§§pop() * Math.sin(_loc9_));
                                    if(_loc11_ || param2)
                                    {
                                       addr125:
                                       §§push(§§pop() * _loc7_);
                                    }
                                    §§push(5);
                                    §§push(_loc10_);
                                    if(!(_loc12_ && param3))
                                    {
                                       §§push(§§pop() * 20);
                                    }
                                    §§pop().§4!P§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.sqrt(_loc7_));
                                    loop3:
                                    while(!_loc12_)
                                    {
                                       _loc8_++;
                                       while(_loc12_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                    continue;
                                 }
                              }
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr84);
                  }
               }
               §§goto(addr49);
            }
            else
            {
               §§push(Math.random() * (Math.PI * 2));
            }
            §§goto(addr205);
         }
      }
      
      public function get §-!a§() : Boolean
      {
         return this.§%!q§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(_loc5_)
         {
            _loc3_.§=-§ = true;
         }
         do
         {
            _loc3_.§'!k§ = 2;
         }
         while(_loc4_);
         
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§[" § < §@!h§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr128:
                     while(true)
                     {
                        §§push(Boolean(§>"?§()));
                        addr85:
                        while(_loc2_)
                        {
                        }
                        continue loop0;
                     }
                  }
                  addr127:
               }
               loop4:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§push(this);
                        §§push(this.§5!q§);
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§5!q§ = §§pop();
                     }
                     loop6:
                     while(true)
                     {
                        if(!(_loc3_ && this))
                        {
                           addr121:
                           if(this.§5!q§ >= §,!Q§)
                           {
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    §§push(true);
                                    break;
                                 }
                                 continue loop6;
                                 §§goto(addr121);
                              }
                              addr76:
                           }
                           else
                           {
                              while(true)
                              {
                                 addr19:
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             break loop4;
                                          }
                                          §§goto(addr127);
                                       }
                                       §§goto(addr85);
                                    }
                                 }
                              }
                              addr40:
                           }
                           return §§pop();
                        }
                        §§goto(addr128);
                     }
                  }
                  else
                  {
                     this.§5!q§ = 0;
                     if(_loc2_ || _loc3_)
                     {
                        if(_loc2_ || this)
                        {
                           §§goto(addr19);
                        }
                        else
                        {
                           §§goto(addr76);
                        }
                     }
                     else
                     {
                        while(true)
                        {
                        }
                        addr80:
                     }
                  }
                  §§goto(addr40);
               }
               return §§pop();
            }
         }
         §§goto(addr80);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = false;
         if(_loc5_ || param1)
         {
            §§push(this.§%!q§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     if(§2!>§.toUpperCase() != "BIRD_WHITE")
                     {
                        §§push(§2!>§.toUpperCase() == "BIRD_YELLOW");
                        while(true)
                        {
                           §§push(§§pop());
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr308:
                                    while(true)
                                    {
                                       §§push(§2!>§.toUpperCase() == "BIRD_GREEN");
                                    }
                                 }
                                 addr307:
                              }
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§pop();
                                             loop9:
                                             while(!_loc4_)
                                             {
                                                §§push(§2!>§.toUpperCase() == "BIRD_RED");
                                                loop10:
                                                for(; _loc5_; while(_loc5_ || _loc3_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr236);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr307);
                                                   }
                                                })
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      for(; !(_loc4_ && this); while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc5_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            §§goto(addr246);
                                                         }
                                                         §§goto(addr205);
                                                      })
                                                      {
                                                         if(_loc4_ && _loc2_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr273:
                                                            while(!_loc4_)
                                                            {
                                                               §§push(§2!>§.toUpperCase() == "BIRD_RED_BIG");
                                                               continue loop10;
                                                            }
                                                            addr198:
                                                            continue loop9;
                                                            if(!(_loc5_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     if(§"!&§.mTryToFly)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              §§push(true);
                                                                              while(true)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    addr134:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ && param1)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          if(!(_loc5_ || param1))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                if(_loc4_ && this)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                if(§"!&§.mTryToSpecial)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr29);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr178);
                                                                                          }
                                                                                          else if(§"!&§.mTryToSpecial)
                                                                                          {
                                                                                             §§goto(addr103);
                                                                                          }
                                                                                          §§goto(addr29);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(true);
                                                                              }
                                                                              addr318:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              §§goto(addr320);
                                                                              §§goto(addr143);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr134);
                                                            }
                                                         }
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr308);
                                          }
                                       }
                                       §§goto(addr255);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr318);
               }
               addr29:
               loop38:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc2_))
                  {
                     break;
                  }
                  loop34:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        continue loop21;
                     }
                     if(!_loc5_)
                     {
                        break;
                     }
                     if(_loc5_)
                     {
                        addr49:
                        _loc2_ = §§pop();
                        if(_loc5_ || _loc3_)
                        {
                           addr247:
                           if(!_loc4_)
                           {
                              if(_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop38;
                                 }
                                 addr103:
                                 while(true)
                                 {
                                    if(_loc4_ && this)
                                    {
                                       continue loop20;
                                    }
                                    §"!&§.mTryToSpecial = false;
                                 }
                              }
                              while(true)
                              {
                                 if(!§"!&§.mIsSpecial)
                                 {
                                    continue loop38;
                                 }
                              }
                           }
                           loop29:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    §"!&§.mIsSpecial = false;
                                    while(true)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          addr87:
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             §§push(true);
                                             continue loop34;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             continue loop35;
                                          }
                                          addr133:
                                       }
                                       §§goto(addr49);
                                    }
                                    while(true)
                                    {
                                       continue loop25;
                                    }
                                    addr80:
                                    addr320:
                                 }
                                 else
                                 {
                                    §§goto(addr273);
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(!(_loc5_ || param1))
                                    {
                                       break loop29;
                                    }
                                    §"!&§.mTryToSpecial = true;
                                 }
                                 addr178:
                              }
                              while(_loc5_)
                              {
                                 §§push(true);
                                 continue loop21;
                                 §§goto(addr87);
                              }
                              continue loop22;
                           }
                           while(true)
                           {
                              §§push(§2!>§.toUpperCase() == "BIRD_ORANGE");
                              addr196:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop18;
                                 }
                                 continue loop10;
                              }
                           }
                           addr247:
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr196);
                  }
                  continue loop26;
               }
               return §§pop();
            }
         }
         §§goto(addr247);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         if(!(_loc4_ && param1))
         {
            §§push(Boolean(§=!y§().IsAwake()));
            loop0:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr367:
                        while(true)
                        {
                           §§push(§[" § == §@!h§);
                        }
                     }
                     addr366:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§"!&§.mTryToFly)
                           {
                              loop6:
                              while(true)
                              {
                                 §"!&§.mTryToFly = false;
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                if(§"!&§.mIsFlying)
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §"!&§.mIsFlying = false;
                                                               loop9:
                                                               while(_loc5_ || param1)
                                                               {
                                                                  §§push(true);
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              _loc2_ = §§pop();
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §3!a§(0);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ || param1))
                                                                                             {
                                                                                                addr273:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(this.§%!q§)
                                                                                                      {
                                                                                                         if(!(_loc4_ && this))
                                                                                                         {
                                                                                                            §§push(2);
                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                            {
                                                                                                               addr300:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§push(360);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     addr324:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc5_ || param1)
                                                                                                                     {
                                                                                                                        addr314:
                                                                                                                        §§push(1000);
                                                                                                                     }
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §3!a§(§,!G§() - _loc3_);
                                                                                                                        addr267:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr115:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr325:
                                                                                                                  }
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(_loc4_ && this)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  §§goto(addr324);
                                                                                                               }
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr324);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§goto(addr300);
                                                                                                            §§push(§§pop());
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr324);
                                                                                                   }
                                                                                                   §§goto(addr314);
                                                                                                }
                                                                                                addr273:
                                                                                             }
                                                                                          }
                                                                                          addr218:
                                                                                       }
                                                                                       §§goto(addr115);
                                                                                    }
                                                                                    addr164:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          loop13:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§2!>§.toUpperCase() != "BIRD_GREEN")
                                                                                             {
                                                                                                §§push(§2!>§.toUpperCase() == "BIRD_WHITE");
                                                                                                while(!_loc4_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop15:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr257:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§%!q§);
                                                                                                                     addr215:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        addr216:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr217:
                                                                                                                           loop18:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §§push(§-!6§);
                                                                                                                                 while(_loc5_ || param1)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       §§push(!§9"7§());
                                                                                                                                       while(!_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop15;
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                       addr183:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §0m§();
                                                                                                                                       addr237:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr115);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§"!&§.mTryToFly)
                                                                                                                                                {
                                                                                                                                                   continue loop13;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §"!&§.mTryToFly = true;
                                                                                                                                                   addr359:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(true);
                                                                                                                                                      break loop18;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr353:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 addr227:
                                                                                                                              }
                                                                                                                              §§goto(addr218);
                                                                                                                              §§goto(addr115);
                                                                                                                           }
                                                                                                                           addr338:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              continue loop12;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr259:
                                                                                                               }
                                                                                                               §§goto(addr359);
                                                                                                            }
                                                                                                         }
                                                                                                         addr256:
                                                                                                      }
                                                                                                      §§goto(addr216);
                                                                                                   }
                                                                                                }
                                                                                                continue loop5;
                                                                                                addr252:
                                                                                             }
                                                                                             §§goto(addr273);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr356);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr273);
                                                                              }
                                                                           }
                                                                           §§goto(addr227);
                                                                        }
                                                                        §§goto(addr183);
                                                                     }
                                                                     §§goto(addr201);
                                                                  }
                                                                  §§goto(addr366);
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                }
                                                §§goto(addr29);
                                             }
                                             break;
                                          }
                                          §§goto(addr325);
                                       }
                                       §§goto(addr267);
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr367);
                              }
                           }
                           §§goto(addr29);
                        }
                        §§goto(addr353);
                     }
                  }
               }
            }
         }
         §§goto(addr259);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:§9"3§ = §#6§.§6!z§;
         if(_loc7_ || _loc3_)
         {
            §§push(§[" § < §@!h§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr88:
                     while(true)
                     {
                        §§push(§=!y§() == null);
                        if(!_loc7_)
                        {
                           continue;
                        }
                        if(_loc8_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  _loc1_.§7">§(this);
                  do
                  {
                     _loc1_.§!!B§ = false;
                  }
                  while(_loc8_ && this);
                  
                  if(_loc7_)
                  {
                     return;
                  }
               }
               §§push(x * §9"3§.§'"F§);
               if(!(_loc8_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(y * §9"3§.§'"F§);
               if(_loc7_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(_loc7_)
               {
                  addr594:
                  if(_loc1_.§!!B§)
                  {
                     addr609:
                     _loc1_.particles.§;!u§(§'G§.§5!&§,§^!f§.§?i§,§'G§.§9"4§,_loc2_,_loc3_,-1,"",§'G§.§9!q§);
                     _loc1_.§!!B§ = false;
                     this.§,"#§ = 0;
                     addr603:
                     addr604:
                     addr586:
                     addr601:
                     addr595:
                     addr591:
                     addr607:
                     addr606:
                     addr605:
                     addr599:
                     addr597:
                     addr610:
                     if(_loc1_.slingshot.§]#§())
                     {
                        addr354:
                        if(!(_loc8_ && _loc2_))
                        {
                           if(!(_loc8_ && _loc2_))
                           {
                              §6-§(_loc2_,_loc3_,0,3,10);
                              addr375:
                              if(!(_loc8_ && _loc3_))
                              {
                                 addr318:
                                 §§push(§#%§() > §2a§.BIRD_LAUNCH_FORCE_GREEN);
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    if(!(_loc8_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          addr340:
                                          §§pop();
                                          addr341:
                                          if(_loc7_ || _loc1_)
                                          {
                                             §§push(Math.random() < §']§);
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   §§goto(addr266);
                                                }
                                                §§goto(addr609);
                                             }
                                             §§goto(addr340);
                                          }
                                          §§goto(addr505);
                                       }
                                       addr266:
                                       if(§§pop())
                                       {
                                          if(_loc7_ || _loc3_)
                                          {
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                if(_loc7_ || this)
                                                {
                                                   §§push(-Math.PI);
                                                   if(_loc7_)
                                                   {
                                                      addr314:
                                                      §§push(§§pop() / 2);
                                                      if(!(_loc8_ && this))
                                                      {
                                                         addr313:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc5_ = §§pop();
                                                      addr315:
                                                      if(!_loc8_)
                                                      {
                                                         §§push(Number(Math.random()));
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr232:
                                                            if(!(_loc8_ && this))
                                                            {
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  §§push(_loc1_.particles);
                                                                  if(_loc7_)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(§'G§.§`!O§);
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           if(!(_loc8_ && _loc1_))
                                                                           {
                                                                              §§push(§^!f§.§>"F§);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(!(_loc8_ && this))
                                                                                 {
                                                                                    §§push(§'G§.§+";§);
                                                                                    if(!(_loc8_ && this))
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§pop().§;!u§(§§pop(),§§pop(),§§pop(),§=!y§().GetPosition().x,§=!y§().GetPosition().y,1250,"",§'G§.§,">§(§2!>§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
                                                                                             if(_loc7_ || _loc2_)
                                                                                             {
                                                                                                if(!(_loc7_ || this))
                                                                                                {
                                                                                                   §§goto(addr375);
                                                                                                }
                                                                                                §§goto(addr118);
                                                                                             }
                                                                                             §§goto(addr232);
                                                                                          }
                                                                                          §§goto(addr603);
                                                                                       }
                                                                                       addr557:
                                                                                       §§push(_loc2_);
                                                                                       if(!(_loc8_ && _loc2_))
                                                                                       {
                                                                                          addr580:
                                                                                          §§pop().§;!u§(§§pop(),§§pop(),§§pop(),§§pop(),_loc3_,-1,"",§'G§.§9!q§);
                                                                                          §§goto(addr603);
                                                                                          addr568:
                                                                                          addr567:
                                                                                          addr566:
                                                                                          addr581:
                                                                                       }
                                                                                       §§goto(addr604);
                                                                                    }
                                                                                    addr397:
                                                                                    §§push(_loc2_);
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(-1);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(_loc7_ || this)
                                                                                                {
                                                                                                   §§push("");
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         §§push(§'G§.§9!q§);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(_loc7_ || _loc1_)
                                                                                                            {
                                                                                                               §§pop().§;!u§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                               addr437:
                                                                                                               if(!(_loc8_ && this))
                                                                                                               {
                                                                                                                  if(_loc7_ || this)
                                                                                                                  {
                                                                                                                     §§goto(addr603);
                                                                                                                  }
                                                                                                                  addr547:
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     addr553:
                                                                                                                     §§goto(addr557);
                                                                                                                     §§push(_loc1_.particles);
                                                                                                                     §§push(§'G§.§'!>§);
                                                                                                                     §§push(§^!f§.§?i§);
                                                                                                                     §§push(§'G§.§9"4§);
                                                                                                                  }
                                                                                                                  §§goto(addr586);
                                                                                                               }
                                                                                                               addr480:
                                                                                                               if(!(_loc8_ && this))
                                                                                                               {
                                                                                                                  addr487:
                                                                                                                  §§push(§'G§.PARTICLE_NAME_BIRD_TRAIL3);
                                                                                                                  if(_loc7_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!(_loc8_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr504:
                                                                                                                        _loc4_ = §§pop();
                                                                                                                        addr452:
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§,"#§ + 1);
                                                                                                                        if(!(_loc8_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() % 3);
                                                                                                                        }
                                                                                                                        §§pop().§,"#§ = §§pop();
                                                                                                                        §§push(_loc1_.particles);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           addr389:
                                                                                                                           §§push(_loc4_);
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              addr393:
                                                                                                                              §§push(§^!f§.§?i§);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§goto(addr397);
                                                                                                                                 §§push(§'G§.§9"4§);
                                                                                                                              }
                                                                                                                              §§goto(addr601);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr553);
                                                                                                                        addr468:
                                                                                                                        addr505:
                                                                                                                     }
                                                                                                                     addr529:
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     §§goto(addr452);
                                                                                                                     addr530:
                                                                                                                  }
                                                                                                                  §§goto(addr504);
                                                                                                               }
                                                                                                               addr540:
                                                                                                               if(this.§,"#§ == 1)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           §§push(§'G§.PARTICLE_NAME_BIRD_TRAIL2);
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              addr539:
                                                                                                                              if(_loc7_ || this)
                                                                                                                              {
                                                                                                                                 §§goto(addr529);
                                                                                                                                 §§push(§§pop());
                                                                                                                              }
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              §§goto(addr540);
                                                                                                                           }
                                                                                                                           §§goto(addr529);
                                                                                                                        }
                                                                                                                        §§goto(addr595);
                                                                                                                     }
                                                                                                                     §§goto(addr591);
                                                                                                                  }
                                                                                                                  §§goto(addr530);
                                                                                                               }
                                                                                                               §§push(this.§,"#§);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(2);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     if(§§pop() == §§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr480);
                                                                                                                     }
                                                                                                                     §§goto(addr504);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr540);
                                                                                                            }
                                                                                                            §§goto(addr609);
                                                                                                         }
                                                                                                         §§goto(addr580);
                                                                                                      }
                                                                                                      §§goto(addr607);
                                                                                                   }
                                                                                                   §§goto(addr568);
                                                                                                }
                                                                                                §§goto(addr606);
                                                                                             }
                                                                                             §§goto(addr567);
                                                                                          }
                                                                                          §§goto(addr605);
                                                                                       }
                                                                                       §§goto(addr566);
                                                                                    }
                                                                                    §§goto(addr557);
                                                                                 }
                                                                                 §§goto(addr553);
                                                                              }
                                                                              §§goto(addr393);
                                                                           }
                                                                           §§goto(addr599);
                                                                        }
                                                                        §§goto(addr389);
                                                                     }
                                                                     §§goto(addr597);
                                                                  }
                                                                  §§goto(addr504);
                                                               }
                                                               §§goto(addr468);
                                                            }
                                                            §§goto(addr315);
                                                         }
                                                         §§goto(addr314);
                                                      }
                                                      §§goto(addr341);
                                                   }
                                                   §§goto(addr313);
                                                }
                                                §§goto(addr529);
                                             }
                                             §§goto(addr354);
                                          }
                                          §§goto(addr314);
                                       }
                                       addr118:
                                       return;
                                    }
                                    §§goto(addr594);
                                 }
                                 §§goto(addr340);
                              }
                              §§goto(addr581);
                           }
                           §§goto(addr610);
                        }
                        §§goto(addr437);
                     }
                     §§goto(addr318);
                  }
                  if(§'2§ > 1)
                  {
                     §§goto(addr547);
                  }
                  §§push(§'G§.PARTICLE_NAME_BIRD_TRAIL1);
                  if(_loc7_)
                  {
                     §§push(§§pop());
                  }
                  §§goto(addr539);
               }
               §§goto(addr487);
            }
         }
         §§goto(addr88);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§"!&§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(_loc1_ || _loc1_)
               {
                  addr45:
               }
               else
               {
                  addr55:
               }
               return;
            }
            if(_loc1_)
            {
               §&x§(§;!y§.§@!H§);
            }
            §§goto(addr55);
         }
         §§goto(addr45);
      }
      
      override public function activateSpecialPower(param1:§]a§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§%!q§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     §§push(false);
                     break;
                  }
                  while(true)
                  {
                  }
                  addr86:
               }
               while(true)
               {
                  §&x§(§;!y§.§ y§);
                  loop3:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.§%!q§ = true;
                        if(_loc3_)
                        {
                           §§push(true);
                           if(_loc2_)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        continue loop3;
                     }
                     return §§pop();
                  }
                  §§goto(addr86);
               }
            }
            return §§pop();
         }
         §§goto(addr73);
      }
      
      private function §>d§(param1:int) : int
      {
         return Math.min(§#6§.§6!z§.§0"E§,param1);
      }
      
      override public function addDestructionParticles(param1:§^!f§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§;!"§(false) + 1);
         var _loc4_:* = Number(90);
         if(_loc9_ || _loc3_)
         {
            §§push(this.§>d§(_loc3_));
            if(_loc9_)
            {
               §§push(int(§§pop()));
               if(_loc9_ || _loc3_)
               {
                  _loc3_ = §§pop();
                  addr56:
                  §§push(0);
               }
            }
            var _loc5_:* = §§pop();
            while(true)
            {
               if(_loc5_ >= _loc3_)
               {
                  if(_loc9_)
                  {
                     if(_loc9_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(_loc10_ && _loc2_)
                        {
                           continue;
                        }
                        _loc5_++;
                     }
                  }
                  while(!(_loc9_ || _loc3_))
                  {
                     loop5:
                     while(true)
                     {
                        if(!(_loc10_ && _loc2_))
                        {
                           §§push(-§"!&§.mH);
                           if(_loc9_ || _loc3_)
                           {
                              if(_loc9_ || _loc2_)
                              {
                                 if(_loc9_ || param1)
                                 {
                                    §§push(§9"3§.§'"F§);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc10_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc9_ || _loc2_)
                                          {
                                             addr179:
                                             if(_loc9_ || _loc3_)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            _loc8_ = §§pop();
                                                            if(_loc9_ || _loc2_)
                                                            {
                                                               addr218:
                                                               if(_loc9_ || _loc2_)
                                                               {
                                                                  §§push(Math.random() * -_loc8_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr232:
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(2);
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           addr243:
                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 addr254:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 §§push(180 / Math.PI);
                                                                                 addr356:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop11:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          addr359:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(-§"!&§.mW);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                §§push(§9"3§.§'"F§);
                                                                                                if(!(_loc10_ && this))
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      addr282:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               addr287:
                                                                                                               addr312:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  if(!(_loc10_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     §§push(Math.random() * -_loc7_);
                                                                                                                     if(!(_loc10_ && this))
                                                                                                                     {
                                                                                                                        addr311:
                                                                                                                        §§push(§§pop() + §§pop() * 2);
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr311);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr312:
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            addr286:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr350:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                            addr350:
                                                                                                         }
                                                                                                         §§goto(addr282);
                                                                                                      }
                                                                                                      addr283:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr311);
                                                                                             }
                                                                                             §§goto(addr312);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr254);
                                                                        }
                                                                        §§goto(addr311);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr349:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr350);
                                                                           }
                                                                        }
                                                                        addr348:
                                                                     }
                                                                     §§goto(addr350);
                                                                  }
                                                                  §§goto(addr243);
                                                               }
                                                               §§goto(addr283);
                                                            }
                                                            §§goto(addr254);
                                                         }
                                                         §§goto(addr356);
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                   §§goto(addr311);
                                                }
                                                §§goto(addr232);
                                             }
                                             §§goto(addr349);
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr243);
                                 }
                                 §§goto(addr286);
                              }
                              §§goto(addr312);
                           }
                           §§goto(addr254);
                        }
                        §§goto(addr359);
                     }
                     _loc8_ = §§pop();
                     §§goto(addr262);
                  }
                  continue;
               }
               §§push(_loc4_);
               if(!(_loc10_ && _loc3_))
               {
                  §§goto(addr348);
                  §§push(Math.random() * (720 / _loc3_));
               }
               §§goto(addr350);
            }
            return;
         }
         §§goto(addr56);
      }
      
      override public function addDamageParticles(param1:§^!f§, param2:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(!(_loc10_ && this))
         {
            if(§[`§())
            {
               if(!_loc10_)
               {
                  return;
               }
            }
            else
            {
               addr42:
               if(param2 < 6)
               {
                  if(!(_loc10_ && _loc3_))
                  {
                     §§goto(addr52);
                  }
               }
               §§push(§#%§() / 10);
               if(!_loc10_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(1);
               if(!(_loc10_ && param1))
               {
                  §§push(_loc3_);
                  if(_loc9_)
                  {
                     §§push(§§pop() * §;!"§(false));
                     if(!_loc10_)
                     {
                        §§push(§§pop() * 0.12);
                     }
                  }
                  §§push(int(§§pop() + §§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:* = Number(90);
               if(_loc9_ || param1)
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
                           while(true)
                           {
                              param2 = §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 while(true)
                                 {
                                    §§push(3 + param2 / 20);
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc9_ || this))
                                    {
                                       continue loop2;
                                    }
                                    §§push(int(§§pop()));
                                    loop6:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       addr459:
                                       while(!_loc10_)
                                       {
                                          §§push(this.§>d§(_loc4_));
                                          continue loop6;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(0);
                  if(_loc9_)
                  {
                     if(_loc9_)
                     {
                        _loc6_ = §§pop();
                        if(_loc9_)
                        {
                           break;
                        }
                        §§goto(addr422);
                     }
                     §§goto(addr402);
                  }
                  §§goto(addr410);
               }
               loop12:
               while(true)
               {
                  §§push(_loc6_);
                  if(!(_loc10_ && _loc3_))
                  {
                     §§push(_loc4_);
                     loop13:
                     while(true)
                     {
                        if(§§pop() < §§pop() / 3)
                        {
                           §§push(_loc5_);
                           break;
                        }
                        loop14:
                        while(!_loc10_)
                        {
                           §§push(0);
                           loop15:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              loop16:
                              while(true)
                              {
                                 loop17:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(!_loc9_)
                                    {
                                       continue loop15;
                                    }
                                    §§push(_loc4_);
                                    if(_loc10_)
                                    {
                                       continue loop13;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          if(!(_loc10_ && this))
                                          {
                                             if(_loc9_ || param1)
                                             {
                                                if(!_loc9_)
                                                {
                                                   break;
                                                }
                                                if(!(_loc10_ && this))
                                                {
                                                   return;
                                                }
                                                addr373:
                                                _loc6_++;
                                                continue loop12;
                                             }
                                             continue loop16;
                                          }
                                          while(true)
                                          {
                                             if(_loc9_ || this)
                                             {
                                                if(_loc10_)
                                                {
                                                   break;
                                                }
                                                _loc6_++;
                                                continue loop17;
                                             }
                                             while(!_loc9_)
                                             {
                                                loop24:
                                                while(true)
                                                {
                                                   §§push(0.5);
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        addr231:
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr233:
                                                                           if(_loc9_ || param2)
                                                                           {
                                                                              addr245:
                                                                              §§push(§§pop() + §§pop() * (Math.random() * 0.5));
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr248:
                                                                                 if(_loc10_ && param1)
                                                                                 {
                                                                                    break loop13;
                                                                                 }
                                                                                 addr256:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr319:
                                                                                 addr319:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    continue loop24;
                                                                                 }
                                                                                 addr319:
                                                                              }
                                                                              §§goto(addr256);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(180 / Math.PI);
                                                                                 }
                                                                                 addr318:
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr319);
                                                                                 }
                                                                                 §§goto(addr233);
                                                                              }
                                                                              addr310:
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr318);
                                                                        }
                                                                        addr317:
                                                                     }
                                                                     §§goto(addr245);
                                                                  }
                                                                  §§goto(addr248);
                                                               }
                                                               addr386:
                                                               _loc5_ = Number(§§pop() + §§pop());
                                                               addr385:
                                                               break loop14;
                                                            }
                                                            §§goto(addr231);
                                                         }
                                                         else
                                                         {
                                                            while(_loc9_ || param2)
                                                            {
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  §§goto(addr310);
                                                                  §§push(§§pop());
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr385);
                                                               }
                                                            }
                                                            addr295:
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      §§goto(addr318);
                                                   }
                                                   §§goto(addr256);
                                                }
                                                _loc8_ = §§pop();
                                             }
                                             param1.§;!u§(§'G§.§`!O§,§^!f§.§>"F§,§'G§.§+";§,§=!y§().GetPosition().x,§=!y§().GetPosition().y,1250,"",§'G§.§,">§(§2!>§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
                                          }
                                          continue loop12;
                                       }
                                       continue;
                                    }
                                    §§push(_loc5_);
                                    if(_loc9_ || this)
                                    {
                                       §§push(Math.random() * (720 / _loc4_));
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc10_ && param1))
                                          {
                                             §§goto(addr295);
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr318);
                                       }
                                       §§goto(addr317);
                                    }
                                    §§goto(addr319);
                                 }
                                 continue loop14;
                              }
                           }
                        }
                        param1.§;!u§(§'G§.§0!;§,§^!f§.§>"F§,§'G§.§+";§,§=!y§().GetPosition().x,§=!y§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
                        §§goto(addr373);
                     }
                     §§goto(addr386);
                     §§push(Math.random() * (720 / _loc4_));
                  }
                  §§goto(addr337);
               }
            }
            addr52:
            return;
         }
         §§goto(addr42);
      }
   }
}
