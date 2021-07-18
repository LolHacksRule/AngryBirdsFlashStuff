package §&!8§
{
   import § o§.b2BodyDef;
   import § o§.b2World;
   import §!r§.§"B§;
   import §,§.§ p§;
   import §,§.§7!N§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §^a§.Sprite;
   import §`h§.§@!Z§;
   
   public class §]V§ extends §-!K§
   {
      
      protected static const §>!T§:Boolean = false;
      
      protected static const §>!8§:Number = 2000;
      
      protected static const §"#§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §>!T§ = false;
         }
         do
         {
            §>!8§ = 2000;
            do
            {
               §"#§ = 0.2;
            }
            while(!(_loc1_ || _loc2_));
            
         }
         while(_loc2_ && §]V§);
         
      }
      
      private var §%M§:Number;
      
      protected var §8!d§:Boolean = false;
      
      protected var §+§:int = 0;
      
      public function §]V§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         }
         while(param10)
         {
            if(_loc12_)
            {
               break;
            }
            addr57:
            if(!(_loc13_ || this))
            {
               continue;
            }
            §5d§.mTryToScream = §%$§.§&!D§ + 1;
            §§goto(addr57);
         }
      }
      
      public static function § `§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         §§push(param3);
         if(!(_loc12_ && §]V§))
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
               if(_loc11_ || §]V§)
               {
                  if(!(_loc12_ && §]V§))
                  {
                     break;
                  }
                  loop1:
                  for(; _loc12_; _loc10_ = §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(0.5);
                        if(!(_loc12_ && param1))
                        {
                           if(!_loc12_)
                           {
                              §§push(param5);
                              if(!(_loc12_ && param3))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc11_ || param3)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              addr181:
                              §§push(§§pop() + §§pop() * (Math.random() * 0.5));
                              if(!(_loc12_ && param1))
                              {
                                 §§push(Number(§§pop()));
                              }
                              continue loop1;
                           }
                           addr221:
                           while(true)
                           {
                              _loc9_ = §§pop();
                              continue loop2;
                           }
                        }
                        break;
                     }
                     §§goto(addr181);
                     §§push(param5);
                  }
                  §§push(§@!Z§.§;!,§.particles);
                  §§push("STAR_PARTICLE");
                  §§push(§7!?§.§0!;§);
                  §§push(§do§.§+!c§);
                  §§push(§7!?§.§22§);
                  §§push(param1);
                  §§push(param2);
                  §§push(750);
                  §§push("");
                  §§push(§7!?§.§7R§("BIRD_RED"));
                  §§push(_loc10_);
                  if(!(_loc12_ && §]V§))
                  {
                     §§push(§§pop() * Math.cos(_loc9_));
                     if(_loc11_ || §]V§)
                     {
                        addr114:
                        §§push(_loc7_);
                        if(!_loc12_)
                        {
                           addr118:
                           §§push(§§pop() * §§pop());
                           §§push(_loc10_);
                           if(_loc11_ || param2)
                           {
                              §§push(-§§pop());
                              if(!(_loc12_ && param1))
                              {
                                 §§push(§§pop() * Math.sin(_loc9_));
                                 if(_loc11_)
                                 {
                                    addr140:
                                    §§push(§§pop() * _loc7_);
                                 }
                              }
                           }
                           §§push(5);
                           §§push(_loc10_);
                           if(_loc11_)
                           {
                              §§push(§§pop() * 20);
                           }
                           §§pop().§2!L§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.sqrt(_loc7_));
                           loop3:
                           while(true)
                           {
                              _loc8_++;
                              addr64:
                              while(_loc12_)
                              {
                                 continue loop3;
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr114);
               }
               §§goto(addr64);
            }
            else
            {
               §§push(Math.random() * (Math.PI * 2));
               if(_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr221);
         }
      }
      
      public function get §,B§() : Boolean
      {
         return this.§8!d§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(_loc4_ || param2)
         {
            _loc3_.§7N§ = true;
            do
            {
               _loc3_.§60§ = 2;
            }
            while(_loc5_);
            
         }
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§+_§ < § !G§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr124:
                     while(true)
                     {
                        §§push(Boolean(§>!<§()));
                        addr88:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  addr123:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§push(this);
                        §§push(this.§%M§);
                        if(_loc3_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§%M§ = §§pop();
                     }
                  }
                  else
                  {
                     this.§%M§ = 0;
                     if(!(_loc2_ && _loc3_))
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr20:
                           §§push(false);
                           if(_loc3_)
                           {
                              return §§pop();
                           }
                           addr71:
                           if(!(_loc2_ && this))
                           {
                              if(_loc3_)
                              {
                                 return §§pop();
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr124);
                     }
                     else
                     {
                        if(!_loc3_)
                        {
                           if(this.§%M§ >= §>!8§)
                           {
                              addr53:
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(true);
                              }
                              §§goto(addr124);
                           }
                           else
                           {
                              addr27:
                              §§goto(addr20);
                           }
                           addr117:
                        }
                        §§goto(addr27);
                     }
                  }
                  §§goto(addr117);
               }
            }
         }
         §§goto(addr124);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = false;
         if(_loc5_)
         {
            §§push(this.§8!d§);
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(§>p§.toUpperCase() != "BIRD_WHITE")
                     {
                        §§push(§>p§.toUpperCase() == "BIRD_YELLOW");
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
                                    addr280:
                                    while(true)
                                    {
                                       §§push(§>p§.toUpperCase() == "BIRD_GREEN");
                                    }
                                 }
                                 addr279:
                              }
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop8:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr269:
                                             while(true)
                                             {
                                                §§push(§>p§.toUpperCase() == "BIRD_RED");
                                                addr234:
                                                while(true)
                                                {
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      §§goto(addr279);
                                                   }
                                                }
                                                §§goto(addr280);
                                             }
                                          }
                                          addr268:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop13:
                                          while(!(_loc4_ && _loc3_))
                                          {
                                             if(!(_loc5_ || this))
                                             {
                                                continue loop3;
                                             }
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr259:
                                                   while(true)
                                                   {
                                                      §§push(§>p§.toUpperCase() == "BIRD_RED_BIG");
                                                   }
                                                }
                                                addr258:
                                             }
                                             while(true)
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(§5d§.mTryToFly)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        if(!(_loc5_ || param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(true);
                                                                        loop37:
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr203:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 addr210:
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    loop24:
                                                                                    while(!_loc4_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(§5d§.mTryToSpecial)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §5d§.mTryToSpecial = false;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§5d§.mIsSpecial)
                                                                                                         {
                                                                                                            loop40:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(!(_loc4_ && _loc2_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               addr40:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue loop37;
                                                                                                                     }
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        §§goto(addr268);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr258);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        addr123:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr108:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop40;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr122:
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop37;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr24:
                                                                                                         }
                                                                                                         continue;
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr123);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr24);
                                                                                          }
                                                                                          §§goto(addr133);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(_loc5_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§pop();
                                                                                                §§goto(addr226);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   addr300:
                                                                                                   addr298:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   addr298:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                }
                                                                                                addr299:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr234);
                                                                                          addr221:
                                                                                       }
                                                                                       §§goto(addr226);
                                                                                    }
                                                                                    continue loop17;
                                                                                 }
                                                                                 addr124:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr298);
                                                                              }
                                                                              §§goto(addr299);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr300);
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr124);
                                                            }
                                                            §§goto(addr203);
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      addr180:
                                                   }
                                                   §§goto(addr221);
                                                }
                                                continue loop13;
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr298);
                  }
               }
               §§goto(addr24);
               if(_loc4_ && param1)
               {
                  continue;
               }
               §§goto(addr180);
            }
         }
         §§goto(addr123);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         if(!(_loc5_ && _loc2_))
         {
            §§push(Boolean(§`e§().IsAwake()));
            if(!_loc5_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     addr350:
                     while(true)
                     {
                        §§pop();
                        addr351:
                        while(true)
                        {
                           §§push(§+_§ == § !G§);
                        }
                     }
                     addr350:
                  }
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§5d§.mTryToFly)
                           {
                              loop3:
                              while(true)
                              {
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       §5d§.mTryToFly = false;
                                       loop4:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(§5d§.mIsFlying)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §5d§.mIsFlying = false;
                                                   }
                                                   loop5:
                                                   for(; !_loc5_; _loc2_ = §§pop(),if(!(_loc5_ && param1))
                                                   {
                                                      continue loop4;
                                                   })
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§push(true);
                                                            loop6:
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  continue loop5;
                                                               }
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              §6!G§(0);
                                                                              addr123:
                                                                              while(true)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                           addr120:
                                                                        }
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           addr28:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          loop19:
                                                                                          while(_loc4_ || _loc3_)
                                                                                          {
                                                                                             loop28:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§>p§.toUpperCase() == "BIRD_GREEN")
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                      {
                                                                                                         if(this.§8!d§)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(2 * (!_loc5_ ? §§pop() : §§pop()));
                                                                                                               if(!(_loc5_ && param1))
                                                                                                               {
                                                                                                                  §§push(360);
                                                                                                                  if(!(_loc5_ && param1))
                                                                                                                  {
                                                                                                                     addr288:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc4_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr297:
                                                                                                                        §§push(§§pop() / 1000);
                                                                                                                        if(_loc4_ || this)
                                                                                                                        {
                                                                                                                           addr305:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §6!G§(§?%§() - _loc3_);
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                     addr307:
                                                                                                                  }
                                                                                                                  §§goto(addr297);
                                                                                                               }
                                                                                                               §§goto(addr305);
                                                                                                            }
                                                                                                            §§goto(addr297);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            if(!(_loc5_ && _loc3_))
                                                                                                            {
                                                                                                               §§goto(addr271);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr288);
                                                                                                      }
                                                                                                      §§goto(addr297);
                                                                                                   }
                                                                                                   addr245:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(§>p§.toUpperCase() == "BIRD_WHITE");
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr219:
                                                                                                         §§push(§§pop());
                                                                                                         loop14:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop15:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  loop16:
                                                                                                                  while(!_loc5_)
                                                                                                                  {
                                                                                                                     §§push(this.§8!d§);
                                                                                                                     if(_loc4_ || this)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc4_ || this)
                                                                                                                           {
                                                                                                                              if(_loc4_ || param1)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             break loop13;
                                                                                                                                          }
                                                                                                                                          continue loop9;
                                                                                                                                       }
                                                                                                                                       addr193:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(§>!T§);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr191:
                                                                                                                              }
                                                                                                                              continue loop21;
                                                                                                                           }
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        addr177:
                                                                                                                     }
                                                                                                                     while(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                           if(!(_loc5_ && this))
                                                                                                                           {
                                                                                                                              §%K§();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop9;
                                                                                                                              }
                                                                                                                              addr209:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§5d§.mTryToFly)
                                                                                                                                 {
                                                                                                                                    break loop19;
                                                                                                                                 }
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                              addr325:
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(!§4!Y§());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    continue loop13;
                                                                                                                                 }
                                                                                                                                 continue loop11;
                                                                                                                              }
                                                                                                                              continue loop14;
                                                                                                                           }
                                                                                                                           §§goto(addr177);
                                                                                                                        }
                                                                                                                        §§goto(addr197);
                                                                                                                     }
                                                                                                                     addr197:
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  addr331:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(true);
                                                                                                                     addr310:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr191);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr310);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §5d§.mTryToFly = true;
                                                                                             §§goto(addr331);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr148:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr350);
                                                                                 }
                                                                              }
                                                                              §§goto(addr351);
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              break loop2;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr130);
                                                               }
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr28);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr148);
                                       }
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr193);
                              }
                           }
                           §§goto(addr28);
                        }
                        §§goto(addr325);
                     }
                     return §§pop();
                  }
               }
            }
            §§goto(addr350);
         }
         §§goto(addr67);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:§ p§ = §@!Z§.§;!,§;
         if(_loc7_)
         {
            §§push(§+_§ < § !G§);
            if(!_loc8_)
            {
               if(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr78:
                     while(true)
                     {
                        §§push(§`e§() == null);
                        if(_loc7_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr77:
               }
               while(§§pop())
               {
                  if(_loc7_)
                  {
                     _loc1_.§,3§(this);
                     §§goto(addr50);
                  }
                  §§goto(addr78);
               }
               addr79:
               §§push(x * § p§.§]!E§);
               if(_loc7_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(y * § p§.§]!E§);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(_loc7_)
               {
                  §§push(_loc1_.§;$§);
                  loop3:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(§8C§ <= 1)
                        {
                           §§push(§7!?§.PARTICLE_NAME_BIRD_TRAIL1);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§+§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(1);
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(this.§+§);
                                          if(!_loc7_)
                                          {
                                             continue loop7;
                                          }
                                          §§push(2);
                                          if(!_loc7_)
                                          {
                                             continue;
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(§7!?§.PARTICLE_NAME_BIRD_TRAIL3);
                                                if(_loc7_ || this)
                                                {
                                                   if(!(_loc8_ && _loc1_))
                                                   {
                                                      if(_loc7_ || _loc2_)
                                                      {
                                                         addr489:
                                                         _loc4_ = §§pop();
                                                         loop13:
                                                         while(true)
                                                         {
                                                            addr442:
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§+§ + 1);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§§pop() % 3);
                                                               }
                                                               §§pop().§+§ = §§pop();
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_.particles);
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc8_ && _loc3_))
                                                                     {
                                                                        §§push(_loc4_);
                                                                        while(true)
                                                                        {
                                                                           §§push(§do§.§[N§);
                                                                           addr387:
                                                                           addr124:
                                                                           while(true)
                                                                           {
                                                                              §§push(§7!?§.§<!h§);
                                                                              addr389:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_ || _loc3_)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(-1);
                                                                                             if(!(_loc8_ && _loc1_))
                                                                                             {
                                                                                                if(_loc7_ || _loc1_)
                                                                                                {
                                                                                                   §§push("");
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§push(§7!?§.§7^§);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            if(!(_loc8_ && _loc1_))
                                                                                                            {
                                                                                                               §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                               loop20:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop21:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc1_.slingshot.§#'§());
                                                                                                                     loop22:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        addr310:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§&L§() > §7!N§.§"O§);
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 loop26:
                                                                                                                                 for(; §§pop(); §§push(Math.random() < §"#§),if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 })
                                                                                                                                 {
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ || _loc1_))
                                                                                                                                       {
                                                                                                                                          continue loop13;
                                                                                                                                       }
                                                                                                                                       §§push(-Math.PI);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / 2);
                                                                                                                                          addr272:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             addr273:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc5_ = §§pop();
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr233:
                                                                                                                                          if(_loc8_ && _loc1_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                continue loop16;
                                                                                                                                             }
                                                                                                                                             addr562:
                                                                                                                                             addr562:
                                                                                                                                             addr274:
                                                                                                                                             addr171:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc7_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   continue loop20;
                                                                                                                                                }
                                                                                                                                                addr330:
                                                                                                                                                while(!(_loc8_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   continue loop26;
                                                                                                                                                   §§pop();
                                                                                                                                                }
                                                                                                                                                continue loop15;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && this))
                                                                                                                                                {
                                                                                                                                                   continue loop21;
                                                                                                                                                }
                                                                                                                                                loop37:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§+§ = 0;
                                                                                                                                                   addr574:
                                                                                                                                                   addr615:
                                                                                                                                                   while(_loc7_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop21;
                                                                                                                                                   }
                                                                                                                                                   addr615:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc1_.§;$§ = false;
                                                                                                                                                      continue loop37;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§pop().addParticle(§§pop(),§§pop(),§§pop(),§`e§().GetPosition().x,§`e§().GetPosition().y,1250,"",§7!?§.§7R§(§>p§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
                                                                                                                                             if(!(_loc8_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                break loop26;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§do§.§[N§);
                                                                                                                                             addr596:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr607:
                                                                                                                                                §§push(§7!?§.§<!h§);
                                                                                                                                                addr608:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   addr609:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                      addr610:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(-1);
                                                                                                                                                         addr611:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push("");
                                                                                                                                                            addr612:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§7!?§.§7^§);
                                                                                                                                                               addr614:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                                  §§goto(addr615);
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
                                                                                                                                    §§goto(addr274);
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(!_loc8_)
                                                                                                                           {
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr614);
                                                                                                            }
                                                                                                            §§goto(addr615);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                            }
                                                                                                            addr561:
                                                                                                         }
                                                                                                         §§goto(addr562);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr612);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr559:
                                                                                                   }
                                                                                                   §§goto(addr561);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr611);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr558:
                                                                                             }
                                                                                             §§goto(addr559);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§goto(addr558);
                                                                                                   §§push(-1);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr610);
                                                                                                }
                                                                                                §§goto(addr615);
                                                                                             }
                                                                                             addr555:
                                                                                          }
                                                                                          §§goto(addr611);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr609);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr554:
                                                                                    }
                                                                                    §§goto(addr555);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr553:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr553:
                                                                                 }
                                                                                 §§goto(addr554);
                                                                              }
                                                                           }
                                                                           §§push(§7!?§.§=!E§);
                                                                           if(_loc8_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc7_)
                                                                           {
                                                                              if(!(_loc8_ && _loc3_))
                                                                              {
                                                                                 §§push(§do§.§+!c§);
                                                                                 if(_loc7_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc8_ && this))
                                                                                    {
                                                                                       if(!(_loc8_ && _loc2_))
                                                                                       {
                                                                                          §§push(§7!?§.§22§);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§goto(addr171);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr608);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr389);
                                                                                          }
                                                                                          §§goto(addr610);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr596);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr551:
                                                                                    }
                                                                                    §§goto(addr553);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr387);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr594);
                                                                              }
                                                                              §§goto(addr596);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr549:
                                                                           }
                                                                           §§goto(addr551);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr549);
                                                                        }
                                                                        addr547:
                                                                     }
                                                                     §§goto(addr553);
                                                                  }
                                                               }
                                                               continue loop13;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         addr498:
                                                      }
                                                      addr500:
                                                   }
                                                   while(!(_loc8_ && this))
                                                   {
                                                      continue loop4;
                                                      §§goto(addr500);
                                                   }
                                                   continue loop5;
                                                }
                                                §§goto(addr489);
                                                if(_loc8_ && this)
                                                {
                                                   continue;
                                                }
                                                if(_loc7_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§push(Number(Math.random()));
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         if(_loc7_ || this)
                                                         {
                                                            §§goto(addr233);
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      §§goto(addr273);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc7_ || _loc2_)
                                                      {
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            §§goto(addr547);
                                                            §§push(_loc1_.particles);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr590:
                                                         }
                                                         §§goto(addr592);
                                                      }
                                                      §§goto(addr574);
                                                   }
                                                   addr531:
                                                }
                                                §§goto(addr562);
                                             }
                                          }
                                          §§goto(addr442);
                                       }
                                       while(!_loc8_)
                                       {
                                          §§goto(addr498);
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr531);
                     }
                     §§goto(addr590);
                  }
               }
               §§goto(addr615);
            }
            §§goto(addr77);
         }
         else if(false)
         {
            addr50:
            _loc1_.§;$§ = false;
            return;
         }
         §§goto(addr79);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!§5d§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(!(_loc2_ || this))
               {
                  addr76:
               }
               return;
            }
            if(!(_loc1_ && _loc2_))
            {
               addr72:
               §0!5§(§"B§.§'!]§);
            }
            §§goto(addr76);
         }
         §§goto(addr72);
      }
      
      override public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§8!d§);
            loop0:
            for(; !§§pop(); if(_loc2_ || this)
            {
               return §§pop();
            })
            {
               while(true)
               {
                  §0!5§(§"B§.§'!V§);
                  while(!_loc3_)
                  {
                     this.§8!d§ = true;
                     if(_loc2_ || this)
                     {
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                        §§push(true);
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                        addr79:
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr79);
         §§push(false);
      }
      
      private function §-!G§(param1:int) : int
      {
         return Math.min(§@!Z§.§;!,§.§2m§,param1);
      }
      
      override public function addDestructionParticles(param1:§do§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§>!+§(false) + 1);
         var _loc4_:* = Number(90);
         if(_loc10_ || _loc3_)
         {
            §§push(this.§-!G§(_loc3_));
            if(!_loc9_)
            {
               §§push(int(§§pop()));
               if(!_loc9_)
               {
                  addr51:
                  _loc3_ = §§pop();
                  §§push(0);
               }
               var _loc5_:* = §§pop();
               while(true)
               {
                  if(_loc5_ >= _loc3_)
                  {
                     if(!(_loc9_ && _loc3_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc10_)
                        {
                           if(_loc10_ || _loc3_)
                           {
                              break;
                           }
                           loop2:
                           while(true)
                           {
                              §§push(-§5d§.mH);
                              if(_loc10_)
                              {
                                 if(!(_loc10_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    §§push(§ p§.§]!E§);
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc10_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc9_ && this))
                                          {
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop());
                                                if(_loc10_)
                                                {
                                                   _loc8_ = §§pop();
                                                   if(_loc10_)
                                                   {
                                                      addr195:
                                                      §§push(Math.random() * -_loc8_);
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  §§push(2);
                                                                  if(_loc10_)
                                                                  {
                                                                     addr227:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc10_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr238:
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       if(_loc10_ || _loc3_)
                                                                                       {
                                                                                          _loc8_ = §§pop();
                                                                                          loop3:
                                                                                          while(true)
                                                                                          {
                                                                                             param1.addParticle(§7!?§.§=!E§,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x + _loc7_,§`e§().GetPosition().y + _loc8_,1500,"",§7!?§.§7R§(§>p§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                                                             addr122:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc10_ || this))
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                loop20:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(-§5d§.mW);
                                                                                                   addr269:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§ p§.§]!E§);
                                                                                                      addr271:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr272:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc10_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop12:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              addr293:
                                                                                                                              §§push(Math.random() * -_loc7_);
                                                                                                                              loop14:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc10_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(2);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr302:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             break loop12;
                                                                                                                                          }
                                                                                                                                          addr342:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                             addr343:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                addr344:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc6_ = §§pop();
                                                                                                                                                   continue loop20;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr301:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       addr323:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc4_ = §§pop();
                                                                                                                                             }
                                                                                                                                             addr337:
                                                                                                                                          }
                                                                                                                                          §§goto(addr343);
                                                                                                                                       }
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    addr322:
                                                                                                                                 }
                                                                                                                                 §§goto(addr343);
                                                                                                                              }
                                                                                                                              addr293:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr342);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr343);
                                                                                                                     }
                                                                                                                     addr284:
                                                                                                                  }
                                                                                                                  §§goto(addr293);
                                                                                                               }
                                                                                                               addr310:
                                                                                                               §§push(Number(§§pop() + §§pop()));
                                                                                                               continue loop2;
                                                                                                               addr280:
                                                                                                            }
                                                                                                            §§goto(addr323);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr316:
                                                                                       }
                                                                                       §§goto(addr322);
                                                                                    }
                                                                                    §§goto(addr344);
                                                                                 }
                                                                                 §§goto(addr269);
                                                                              }
                                                                              §§goto(addr272);
                                                                           }
                                                                           §§goto(addr280);
                                                                        }
                                                                        §§goto(addr238);
                                                                     }
                                                                     §§goto(addr337);
                                                                  }
                                                                  §§goto(addr301);
                                                               }
                                                               §§goto(addr271);
                                                            }
                                                            §§goto(addr293);
                                                         }
                                                         §§goto(addr302);
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   §§goto(addr238);
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr284);
                                          }
                                          §§goto(addr238);
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr310);
                              }
                              §§goto(addr195);
                           }
                        }
                        §§goto(addr122);
                     }
                     continue;
                  }
                  §§push(_loc4_);
                  §§goto(addr316);
               }
               return;
            }
         }
         §§goto(addr51);
      }
      
      override public function addDamageParticles(param1:§do§, param2:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         if(_loc10_ || this)
         {
            if(§9W§())
            {
               if(_loc10_ || param1)
               {
                  return;
               }
            }
            else
            {
               addr48:
               if(param2 < 6)
               {
                  if(!_loc9_)
                  {
                     return;
                  }
               }
            }
            §§push(§&L§() / 10);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(_loc10_ || _loc3_)
            {
               §§push(_loc3_);
               if(_loc10_)
               {
                  §§push(§§pop() * §>!+§(false));
                  if(!(_loc9_ && param2))
                  {
                     §§push(§§pop() * 0.12);
                  }
               }
               §§push(int(§§pop() + §§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(90);
            if(!_loc9_)
            {
               §§push(param2);
               loop0:
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
                           while(true)
                           {
                              §§push(_loc4_);
                              loop5:
                              while(true)
                              {
                                 §§push(3 + param2 / 20);
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc10_ || this)
                                 {
                                    §§push(int(§§pop()));
                                    while(_loc10_)
                                    {
                                       _loc4_ = §§pop();
                                       while(true)
                                       {
                                          §§push(this.§-!G§(_loc4_));
                                          continue loop5;
                                       }
                                    }
                                    continue loop0;
                                    addr444:
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            loop11:
            while(true)
            {
               §§push(_loc6_);
               loop12:
               while(true)
               {
                  §§push(_loc4_);
                  loop13:
                  while(true)
                  {
                     if(§§pop() >= §§pop() / 3)
                     {
                        if(!(_loc9_ && param1))
                        {
                           if(_loc10_)
                           {
                              §§push(0);
                              loop14:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 addr332:
                                 loop15:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       if(!_loc10_)
                                       {
                                          break;
                                       }
                                       if(_loc9_)
                                       {
                                          continue loop12;
                                       }
                                       §§push(_loc4_);
                                       if(_loc9_ && param1)
                                       {
                                          continue loop13;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          if(_loc10_)
                                          {
                                             return;
                                          }
                                          while(_loc9_ && param2)
                                          {
                                             loop23:
                                             for(; _loc9_; param1.addParticle(§7!?§.§=!E§,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x,§`e§().GetPosition().y,1250,"",§7!?§.§7R§(§>p§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale)))
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc10_ || this))
                                                   {
                                                      loop25:
                                                      while(true)
                                                      {
                                                         §§push(0.5);
                                                         if(_loc10_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc10_ || param1)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!(_loc9_ && param2))
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr206:
                                                                           §§push(§§pop() * (Math.random() * 0.5));
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 addr217:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc9_ && param2)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr236:
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr291:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                             }
                                                                                             addr311:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                addr312:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   continue loop25;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr290:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_ && this)
                                                                                       {
                                                                                          addr382:
                                                                                          _loc5_ = §§pop();
                                                                                          param1.addParticle(§7!?§.§=!H§,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x,§`e§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
                                                                                          break;
                                                                                          addr383:
                                                                                       }
                                                                                       §§push(180 / Math.PI);
                                                                                       §§goto(addr236);
                                                                                    }
                                                                                    _loc6_++;
                                                                                    continue loop11;
                                                                                    addr367:
                                                                                 }
                                                                                 §§goto(addr312);
                                                                              }
                                                                              §§goto(addr217);
                                                                           }
                                                                           §§goto(addr311);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§goto(addr290);
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr381:
                                                                                 §§goto(addr382);
                                                                                 §§push(Number(§§pop() + §§pop()));
                                                                              }
                                                                              §§goto(addr382);
                                                                           }
                                                                           addr287:
                                                                        }
                                                                        §§goto(addr382);
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                                  §§goto(addr291);
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      _loc8_ = §§pop();
                                                      continue;
                                                   }
                                                   if(_loc9_ && this)
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      continue loop23;
                                                   }
                                                   §§goto(addr367);
                                                }
                                             }
                                             _loc6_++;
                                          }
                                          if(!_loc9_)
                                          {
                                             continue;
                                          }
                                          continue loop15;
                                       }
                                       §§push(_loc5_);
                                       if(_loc10_)
                                       {
                                          if(_loc10_ || _loc3_)
                                          {
                                             §§goto(addr287);
                                             §§push(Math.random() * (720 / _loc4_));
                                          }
                                          §§goto(addr381);
                                       }
                                       §§goto(addr312);
                                    }
                                    continue loop14;
                                 }
                              }
                           }
                           §§goto(addr383);
                        }
                        §§goto(addr332);
                     }
                     else
                     {
                        §§push(_loc5_);
                        if(!_loc9_)
                        {
                           §§goto(addr381);
                           §§push(Math.random() * (720 / _loc4_));
                        }
                     }
                     §§goto(addr382);
                  }
               }
            }
         }
         §§goto(addr48);
      }
   }
}
