package §3p§
{
   import § D§.§]!B§;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §2!H§.LevelMain;
   import §2!H§.LevelSlingshot;
   import §6!7§.Sprite;
   import §;T§.LevelItemSoundResource;
   import §]=§.b2BodyDef;
   import §]=§.b2World;
   
   public class §4!G§ extends §"!§
   {
      
      protected static const §for §:Boolean = false;
      
      protected static const §5F§:Number = 2000;
      
      protected static const §9!H§:Number = 0.2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §4!G§))
         {
            §for § = false;
            while(true)
            {
               §5F§ = 2000;
               while(!(_loc1_ && _loc1_))
               {
                  §9!H§ = 0.2;
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      private var §3;§:Number;
      
      private var §&!7§:Boolean = false;
      
      protected var §,b§:int = 0;
      
      public function §4!G§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            while(param10)
            {
               if(!(_loc13_ || param2))
               {
                  break;
               }
               addr69:
               if(!(_loc13_ || param1))
               {
                  continue;
               }
               §7!O§.mTryToScream = LevelObjectRenderer.§9!g§ + 1;
               §§goto(addr69);
            }
            return;
         }
         §§goto(addr69);
      }
      
      public function get §2s§() : Boolean
      {
         return this.§&!7§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(!(_loc4_ && _loc3_))
         {
            _loc3_.§3^§ = true;
         }
         do
         {
            _loc3_.§=!8§ = 2;
         }
         while(_loc4_);
         
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(§0o§ < §]!3§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr143:
                        while(true)
                        {
                           §§push(Boolean(§&E§()));
                           addr116:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                           }
                        }
                        addr36:
                        if(_loc3_ || this)
                        {
                           if(_loc3_)
                           {
                              return §§pop();
                           }
                           continue loop0;
                        }
                     }
                  }
                  loop3:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop4:
                        while(!_loc2_)
                        {
                           §§push(this);
                           §§push(this.§3;§);
                           if(!_loc2_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§3;§ = §§pop();
                           while(this.§3;§ >= §5F§)
                           {
                              if(_loc2_ && param1)
                              {
                                 break;
                              }
                              addr101:
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(true);
                                    break loop3;
                                 }
                                 continue loop4;
                              }
                           }
                           §§push(false);
                           if(_loc2_)
                           {
                              break loop3;
                           }
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr36);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr143);
                     }
                     else
                     {
                        this.§3;§ = 0;
                        if(!(_loc3_ || _loc3_))
                        {
                           §§goto(addr101);
                        }
                        §§goto(addr25);
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr143);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(false);
         if(_loc5_ || this)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(false);
         if(!_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.§&!7§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(§#>§.toUpperCase() != "BIRD_WHITE")
                     {
                        §§push(§#>§.toUpperCase() == "BIRD_YELLOW");
                        loop2:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc5_ || this)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              loop4:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr384:
                                       while(true)
                                       {
                                          §§push(§#>§.toUpperCase() == "BIRD_GREEN");
                                          addr317:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    addr383:
                                 }
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_ || param1)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       loop10:
                                       while(!_loc4_)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      §§pop();
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(§#>§.toUpperCase() == "BIRD_RED");
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               addr287:
                                                               while(true)
                                                               {
                                                                  loop32:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        loop33:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              break loop12;
                                                                           }
                                                                           §§pop();
                                                                           loop34:
                                                                           while(_loc5_ || _loc3_)
                                                                           {
                                                                              §§push(§#>§.toUpperCase() == "BIRD_RED_BIG");
                                                                              loop35:
                                                                              while(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    loop36:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§7!O§.mTryToFly)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      addr277:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         addr278:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc3_ = §§pop();
                                                                                                            addr279:
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr276:
                                                                                                }
                                                                                             }
                                                                                             addr272:
                                                                                          }
                                                                                          loop17:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop36;
                                                                                                }
                                                                                                if(!(_loc5_ || _loc2_))
                                                                                                {
                                                                                                   continue loop35;
                                                                                                }
                                                                                                if(_loc4_ && param1)
                                                                                                {
                                                                                                   continue loop33;
                                                                                                }
                                                                                                if(!(_loc5_ || param1))
                                                                                                {
                                                                                                   continue loop32;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(§7!O§.mTryToSpecial)
                                                                                                   {
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_ || param1)
                                                                                                         {
                                                                                                            if(!(_loc4_ && param1))
                                                                                                            {
                                                                                                               §7!O§.mTryToSpecial = false;
                                                                                                               loop20:
                                                                                                               for(; !(_loc4_ && this); while(_loc5_ || this)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  if(_loc4_ && _loc2_)
                                                                                                                  {
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr62);
                                                                                                                  }
                                                                                                                  §§goto(addr81);
                                                                                                               })
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     if(_loc5_ || param1)
                                                                                                                     {
                                                                                                                        if(§7!O§.mIsSpecial)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ && this))
                                                                                                                              {
                                                                                                                                 §7!O§.mIsSpecial = false;
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              addr246:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(true);
                                                                                                                                 while(!_loc4_)
                                                                                                                                 {
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                       addr177:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr35);
                                                                                                                                                }
                                                                                                                                                addr125:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop17;
                                                                                                                                                }
                                                                                                                                                addr396:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ || _loc2_))
                                                                                                                                                {
                                                                                                                                                   continue loop34;
                                                                                                                                                }
                                                                                                                                                §§push(!§7!O§.mTryToSpecial);
                                                                                                                                             }
                                                                                                                                             addr223:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop12;
                                                                                                                                             }
                                                                                                                                             §§goto(addr125);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop34;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr278);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr35);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        loop43:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(true);
                                                                                                                           addr394:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              addr395:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                              }
                                                                                                                              continue loop43;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr393:
                                                                                                                     }
                                                                                                                     §§goto(addr396);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr272);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr279);
                                                                                                            }
                                                                                                            §§goto(addr276);
                                                                                                         }
                                                                                                         §§goto(addr177);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr35);
                                                                                                }
                                                                                                §§goto(addr223);
                                                                                             }
                                                                                             continue loop36;
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr395);
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                     §§goto(addr270);
                                                                  }
                                                                  continue loop10;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr384);
                                                         }
                                                      }
                                                      §§goto(addr317);
                                                   }
                                                   §§goto(addr394);
                                                }
                                                else
                                                {
                                                   §§goto(addr383);
                                                }
                                             }
                                          }
                                          §§goto(addr287);
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr393);
                  }
               }
               addr35:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        if(!_loc5_)
                        {
                           continue loop27;
                        }
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop11;
                        }
                        §§goto(addr277);
                     }
                     else
                     {
                        while(true)
                        {
                           if(!(_loc5_ || param1))
                           {
                              continue loop18;
                           }
                           §§push(Boolean(§§pop()));
                        }
                        addr62:
                     }
                  }
                  while(true)
                  {
                     if(_loc4_)
                     {
                        continue loop25;
                     }
                     if(!(_loc4_ && this))
                     {
                        if(_loc5_)
                        {
                           addr81:
                           _loc2_ = §§pop();
                           if(_loc5_ || param1)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop21;
                           }
                           continue loop20;
                        }
                        continue loop9;
                     }
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr124);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         §§push(false);
         if(!(_loc5_ && param1))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(Boolean(§9f§().IsAwake()));
            if(!_loc5_)
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  §§push(Boolean(§§pop()));
               }
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop18:
                        while(true)
                        {
                           §§push(§0o§ == §]!3§);
                           loop19:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(§7!O§.mTryToFly)
                                       {
                                          while(true)
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                if(_loc4_)
                                                {
                                                   §7!O§.mTryToFly = false;
                                                   loop3:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(§7!O§.mIsFlying)
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §7!O§.mIsFlying = false;
                                                                  continue loop3;
                                                               }
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr31);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr31);
                                                      }
                                                      §§goto(addr257);
                                                   }
                                                }
                                                §§goto(addr374);
                                             }
                                             §§goto(addr168);
                                          }
                                       }
                                       addr31:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   addr400:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §7!O§.mTryToFly = true;
                                                            addr405:
                                                            while(true)
                                                            {
                                                               §§push(true);
                                                               addr372:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  addr373:
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     addr374:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr401:
                                                      }
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(§#>§.toUpperCase() == "BIRD_GREEN")
                                                         {
                                                            loop43:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  if(this.§&!7§)
                                                                  {
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        §§push(2);
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           addr344:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              §§push(360);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr355:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr359:
                                                                                    addr358:
                                                                                    §§push(§§pop() / 1000);
                                                                                    if(_loc4_ || param1)
                                                                                    {
                                                                                    }
                                                                                    addr368:
                                                                                    _loc3_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §;V§(§=Y§() - _loc3_);
                                                                                       addr298:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          continue loop43;
                                                                                       }
                                                                                       §§goto(addr368);
                                                                                    }
                                                                                    addr369:
                                                                                 }
                                                                                 §§goto(addr368);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr359);
                                                                           }
                                                                        }
                                                                        §§goto(addr355);
                                                                     }
                                                                     §§goto(addr358);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§goto(addr344);
                                                                        §§push(§§pop());
                                                                     }
                                                                  }
                                                                  §§goto(addr355);
                                                               }
                                                               §§goto(addr359);
                                                            }
                                                            addr312:
                                                         }
                                                         else
                                                         {
                                                            §§push(§#>§.toUpperCase() == "BIRD_WHITE");
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               addr267:
                                                               while(true)
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     break loop14;
                                                                  }
                                                                  §§goto(addr373);
                                                               }
                                                            }
                                                            addr266:
                                                         }
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop19;
                                                   }
                                                   §§push(§§pop());
                                                   if(_loc4_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop25:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr282:
                                                            while(true)
                                                            {
                                                               if(_loc4_ || this)
                                                               {
                                                                  §§push(this.§&!7§);
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr232:
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 addr396:
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr400);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr257:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 addr257:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§for §);
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§push(!§?O§());
                                                                                    continue;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ && param1)
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    §,!'§();
                                                                                    §§goto(addr257);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr266);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr401);
                                                               continue loop25;
                                                            }
                                                         }
                                                         addr281:
                                                      }
                                                      §§goto(addr232);
                                                   }
                                                   addr400:
                                                }
                                                §§goto(addr181);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     §§goto(addr372);
                                                                  }
                                                                  continue loop2;
                                                                  addr67:
                                                               }
                                                               §§goto(addr281);
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                }
                                                addr46:
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr67);
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr396);
                                 }
                                 addr394:
                              }
                              §§goto(addr400);
                           }
                        }
                     }
                     addr417:
                  }
                  §§goto(addr394);
                  if(_loc5_ && _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr219);
                  §§push(Boolean(§§pop()));
               }
            }
            §§goto(addr417);
         }
         §§goto(addr312);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:LevelMain = §]!B§.§>F§;
         if(!_loc7_)
         {
            §§push(§0o§ < §]!3§);
            if(_loc8_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            while(true)
            {
               §§push(§§pop());
               if(_loc8_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(§9f§() == null);
                        if(_loc8_)
                        {
                           continue loop1;
                        }
                        addr77:
                        while(true)
                        {
                           if(§§pop())
                           {
                              _loc1_.§[]§(this);
                              _loc1_.§>!=§ = false;
                              if(!_loc7_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                           §§push(x * LevelMain.§8N§);
                           if(_loc8_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           §§push(y * LevelMain.§8N§);
                           if(!_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           if(!(_loc7_ && _loc1_))
                           {
                              addr648:
                              if(_loc1_.§>!=§)
                              {
                                 addr668:
                                 _loc1_.particles.§@4§(§0'§.§6!L§,LevelParticleManager.§^![§,§0'§.§ 6§,_loc2_,_loc3_,-1,"",§0'§.§&"§);
                                 _loc1_.§>!=§ = false;
                                 this.§,b§ = 0;
                                 addr667:
                                 addr664:
                                 addr661:
                                 addr645:
                                 addr663:
                                 addr662:
                                 addr657:
                                 addr654:
                                 addr651:
                                 addr669:
                                 addr660:
                                 if(_loc8_ || _loc1_)
                                 {
                                    addr339:
                                    §§push(Boolean(§5!c§() > LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN));
                                    §§push(Boolean(§5!c§() > LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN));
                                    if(!(_loc7_ && _loc1_))
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       addr357:
                                       if(_loc8_ || _loc2_)
                                       {
                                          §§pop();
                                          addr365:
                                          §§push(Math.random() < §9!H§);
                                          if(_loc8_ || this)
                                          {
                                             if(_loc8_)
                                             {
                                                if(_loc8_ || _loc3_)
                                                {
                                                   addr307:
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr309);
                                                   }
                                                }
                                                §§goto(addr339);
                                             }
                                             §§goto(addr357);
                                          }
                                          §§goto(addr307);
                                       }
                                       §§goto(addr648);
                                    }
                                    addr309:
                                    if(§§pop())
                                    {
                                       addr311:
                                       if(_loc8_ || _loc3_)
                                       {
                                          addr337:
                                          §§push(-Math.PI);
                                          if(!_loc7_)
                                          {
                                             addr336:
                                             §§push(Number(§§pop() / 2));
                                          }
                                          _loc5_ = §§pop();
                                          addr338:
                                          §§push(Number(Math.random()));
                                          if(_loc8_)
                                          {
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                _loc6_ = §§pop();
                                                addr266:
                                                if(!_loc7_)
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         §§push(_loc1_.particles);
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            §§push(§0'§.§@R§);
                                                            if(_loc8_)
                                                            {
                                                               §§push(LevelParticleManager.§[K§);
                                                               if(_loc8_ || this)
                                                               {
                                                                  §§push(§0'§.§&A§);
                                                                  if(!(_loc7_ && _loc2_))
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(§§pop().§@4§(§§pop(),§§pop(),§§pop(),§9f§().GetPosition().x,§9f§().GetPosition().y,1250,"",§0'§.§%!`§(§#>§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale)));
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc8_ || _loc2_)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc8_ || _loc2_)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(_loc8_ || _loc2_)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr589:
                                                                                                   §§push(_loc1_.particles);
                                                                                                   §§push(§0'§.§8d§);
                                                                                                   §§push(LevelParticleManager.§^![§);
                                                                                                   §§push(§0'§.§ 6§);
                                                                                                   §§push(_loc2_);
                                                                                                   if(_loc8_ || _loc2_)
                                                                                                   {
                                                                                                      addr599:
                                                                                                      §§push(_loc3_);
                                                                                                      §§push(-1);
                                                                                                      §§push("");
                                                                                                      if(_loc8_ || _loc2_)
                                                                                                      {
                                                                                                         addr609:
                                                                                                         §§push(§0'§.§&"§);
                                                                                                         if(!(_loc7_ && _loc1_))
                                                                                                         {
                                                                                                            addr617:
                                                                                                            §§pop().§@4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                            §§goto(addr339);
                                                                                                            addr618:
                                                                                                         }
                                                                                                         §§goto(addr667);
                                                                                                      }
                                                                                                      §§goto(addr664);
                                                                                                   }
                                                                                                   §§goto(addr661);
                                                                                                }
                                                                                                §§goto(addr131);
                                                                                             }
                                                                                             §§goto(addr618);
                                                                                          }
                                                                                          addr466:
                                                                                          §§push(this);
                                                                                          §§push(this.§,b§ + 1);
                                                                                          if(_loc8_ || _loc1_)
                                                                                          {
                                                                                             §§push(§§pop() % 3);
                                                                                          }
                                                                                          §§pop().§,b§ = §§pop();
                                                                                          addr533:
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             if(_loc8_ || _loc3_)
                                                                                             {
                                                                                                if(!(_loc7_ && _loc2_))
                                                                                                {
                                                                                                   addr369:
                                                                                                   §§push(_loc1_.particles);
                                                                                                   if(_loc8_ || this)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         addr379:
                                                                                                         §§push(_loc4_);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            if(!(_loc7_ && _loc3_))
                                                                                                            {
                                                                                                               addr391:
                                                                                                               §§push(LevelParticleManager.§^![§);
                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     addr403:
                                                                                                                     §§push(§0'§.§ 6§);
                                                                                                                     if(!(_loc7_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(_loc8_ || this)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(!(_loc7_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 §§push(-1);
                                                                                                                                 if(!(_loc7_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc8_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push("");
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          §§push(§0'§.§&"§);
                                                                                                                                          if(_loc8_ || this)
                                                                                                                                          {
                                                                                                                                             addr457:
                                                                                                                                             §§pop().§@4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                             addr458:
                                                                                                                                             if(_loc8_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr339);
                                                                                                                                             }
                                                                                                                                             addr569:
                                                                                                                                             if(this.§,b§ == 1)
                                                                                                                                             {
                                                                                                                                                addr539:
                                                                                                                                                if(!(_loc7_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   addr549:
                                                                                                                                                   addr550:
                                                                                                                                                   §§push(§0'§.PARTICLE_NAME_BIRD_TRAIL2);
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                      addr553:
                                                                                                                                                      if(_loc8_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr466);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr667);
                                                                                                                                                   }
                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                   §§goto(addr569);
                                                                                                                                                }
                                                                                                                                                §§goto(addr645);
                                                                                                                                             }
                                                                                                                                             §§push(this.§,b§);
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                §§push(2);
                                                                                                                                                if(_loc8_ || this)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                   {
                                                                                                                                                      addr515:
                                                                                                                                                      §§push(§0'§.PARTICLE_NAME_BIRD_TRAIL3);
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc7_)
                                                                                                                                                            {
                                                                                                                                                               addr525:
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  _loc4_ = §§pop();
                                                                                                                                                                  §§goto(addr533);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr549);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr550);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr525);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr466);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr569);
                                                                                                                                          }
                                                                                                                                          §§goto(addr609);
                                                                                                                                       }
                                                                                                                                       §§goto(addr599);
                                                                                                                                    }
                                                                                                                                    §§goto(addr663);
                                                                                                                                 }
                                                                                                                                 §§goto(addr599);
                                                                                                                              }
                                                                                                                              §§goto(addr662);
                                                                                                                           }
                                                                                                                           §§goto(addr599);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr589);
                                                                                                                  }
                                                                                                                  §§goto(addr657);
                                                                                                               }
                                                                                                               §§goto(addr589);
                                                                                                            }
                                                                                                            §§goto(addr654);
                                                                                                         }
                                                                                                         §§goto(addr589);
                                                                                                      }
                                                                                                      §§goto(addr651);
                                                                                                   }
                                                                                                   §§goto(addr589);
                                                                                                }
                                                                                                §§goto(addr669);
                                                                                             }
                                                                                             §§goto(addr539);
                                                                                          }
                                                                                          §§goto(addr553);
                                                                                       }
                                                                                       §§goto(addr311);
                                                                                    }
                                                                                    §§goto(addr338);
                                                                                 }
                                                                                 §§goto(addr266);
                                                                              }
                                                                              §§goto(addr668);
                                                                           }
                                                                           §§goto(addr617);
                                                                        }
                                                                        §§goto(addr457);
                                                                     }
                                                                     §§goto(addr660);
                                                                  }
                                                                  §§goto(addr403);
                                                               }
                                                               §§goto(addr391);
                                                            }
                                                            §§goto(addr379);
                                                         }
                                                         §§goto(addr369);
                                                      }
                                                      §§goto(addr515);
                                                   }
                                                   §§goto(addr466);
                                                }
                                                §§goto(addr365);
                                             }
                                             §§goto(addr336);
                                          }
                                          §§goto(addr337);
                                       }
                                       §§goto(addr458);
                                    }
                                    addr131:
                                    return;
                                 }
                                 addr649:
                                 §§goto(addr649);
                              }
                              if(§[t§ > 1)
                              {
                                 §§goto(addr589);
                              }
                              §§goto(addr549);
                              §§push(§0'§.PARTICLE_NAME_BIRD_TRAIL1);
                           }
                           §§goto(addr337);
                        }
                     }
                     §§goto(addr58);
                  }
               }
               while(true)
               {
                  §§goto(addr77);
               }
            }
         }
         addr58:
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§7!O§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(!_loc2_)
               {
                  addr55:
               }
               return;
            }
            if(!_loc1_)
            {
               §@r§(LevelItemSoundResource.§+m§);
            }
         }
         §§goto(addr55);
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§&!7§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr76);
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        addr67:
                        while(true)
                        {
                           this.§&!7§ = true;
                           if(!_loc3_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                        }
                        §§push(true);
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        §§goto(addr76);
                     }
                     addr77:
                  }
                  §§goto(addr76);
               }
               while(true)
               {
                  §@r§(LevelItemSoundResource.§-q§);
                  §§goto(addr67);
                  §§goto(addr77);
               }
            }
            addr76:
            return false;
         }
         §§goto(addr67);
      }
      
      private function §#!H§(param1:int) : int
      {
         return Math.min(§]!B§.§>F§.§`A§,param1);
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§%W§(false) + 1);
         var _loc4_:* = Number(90);
         if(!_loc9_)
         {
            §§push(this.§#!H§(_loc3_));
            if(_loc10_)
            {
               §§push(int(§§pop()));
               if(!(_loc9_ && param1))
               {
                  _loc3_ = §§pop();
                  addr52:
                  §§push(0);
                  if(_loc10_ || _loc3_)
                  {
                     addr60:
                     §§push(int(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               while(true)
               {
                  §§push(_loc5_);
                  if(!_loc9_)
                  {
                     if(!_loc9_)
                     {
                        if(§§pop() >= _loc3_)
                        {
                           if(_loc10_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(!_loc9_)
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    if(_loc10_ || _loc2_)
                                    {
                                       if(!(_loc9_ && param1))
                                       {
                                          break;
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          if(_loc10_ || this)
                                          {
                                             §§push(-§7!O§.mH);
                                             if(_loc10_ || _loc3_)
                                             {
                                                if(_loc10_)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      §§push(LevelMain.§8N§);
                                                      loop3:
                                                      while(true)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop4:
                                                            for(; _loc10_; if(!(_loc10_ || _loc3_))
                                                            {
                                                               continue;
                                                            },if(_loc10_)
                                                            {
                                                               §§push(Math.random() * -_loc8_);
                                                               if(_loc9_ && param1)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(2);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        continue loop3;
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr372:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr373);
                                                                        }
                                                                     }
                                                                     addr371:
                                                                  }
                                                               }
                                                               §§goto(addr327);
                                                            },§§goto(addr328))
                                                            {
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop12:
                                                                  while(!(_loc9_ && param1))
                                                                  {
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                                 addr227:
                                                                                 addr307:
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(180 / Math.PI);
                                                                                       addr357:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          addr358:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr359:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc6_ = §§pop();
                                                                                                addr360:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(-§7!O§.mW);
                                                                                                   addr324:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(LevelMain.§8N§);
                                                                                                      addr327:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr328:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            break loop4;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr352:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr308:
                                                                                    while(!_loc10_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          addr374:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr352);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                              }
                                                                              addr347:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    break loop12;
                                                                                 }
                                                                                 §§goto(addr374);
                                                                              }
                                                                           }
                                                                           addr237:
                                                                           _loc8_ = Number(§§pop());
                                                                           param1.§@4§(§0'§.§@R§,LevelParticleManager.§[K§,§0'§.§&A§,§9f§().GetPosition().x + _loc7_,§9f§().GetPosition().y + _loc8_,1500,"",§0'§.§%!`§(§#>§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                                           §§push(_loc5_);
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr81:
                                                                              §§push(§§pop() + 1);
                                                                              while(true)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 continue loop1;
                                                                              }
                                                                              addr81:
                                                                           }
                                                                           §§goto(addr81);
                                                                           addr293:
                                                                           addr238:
                                                                           addr156:
                                                                        }
                                                                        §§goto(addr358);
                                                                     }
                                                                     §§goto(addr359);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Math.random() * -_loc7_);
                                                                     addr304:
                                                                     while(true)
                                                                     {
                                                                        §§push(2);
                                                                        addr305:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           break loop3;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr271:
                                                               }
                                                               §§goto(addr324);
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  §§goto(addr347);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr372);
                                                               }
                                                               §§goto(addr328);
                                                            }
                                                         }
                                                         break;
                                                         if(_loc9_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  §§goto(addr227);
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr357);
                                                         }
                                                         §§goto(addr304);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr307);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                      }
                                                      addr364:
                                                   }
                                                   §§goto(addr371);
                                                }
                                                §§goto(addr308);
                                             }
                                             §§goto(addr271);
                                          }
                                          §§goto(addr360);
                                       }
                                    }
                                    §§goto(addr293);
                                 }
                                 §§goto(addr238);
                              }
                              §§goto(addr156);
                           }
                           continue;
                        }
                        §§push(_loc4_);
                        §§goto(addr364);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr82);
               }
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr52);
      }
      
      override public function addDamageParticles(param1:LevelParticleManager, param2:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(_loc10_ || this)
         {
            if(§3g§())
            {
               if(!_loc9_)
               {
                  return;
               }
            }
            else
            {
               if(param2 < 6)
               {
                  if(!(_loc10_ || _loc3_))
                  {
                     addr49:
                     §§push(§5!c§() / 10);
                     if(_loc10_ || param1)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     §§push(1);
                     if(_loc10_ || _loc3_)
                     {
                        §§push(_loc3_);
                        if(!(_loc9_ && _loc3_))
                        {
                           addr93:
                           §§push(§§pop() * §%W§(false));
                           if(!(_loc9_ && _loc3_))
                           {
                              addr89:
                              §§push(§§pop() * 0.12);
                           }
                           var _loc4_:* = int(§§pop() + §§pop());
                           var _loc5_:* = Number(90);
                           if(_loc10_)
                           {
                              §§push(param2);
                              if(_loc10_)
                              {
                                 §§push(scale * scale);
                                 while(true)
                                 {
                                    §§push(§§pop() / §§pop());
                                    addr555:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                 }
                                 addr554:
                              }
                              loop2:
                              while(true)
                              {
                                 param2 = §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(3 + param2 / 20);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc10_ || this))
                                          {
                                             break;
                                          }
                                          §§push(int(§§pop()));
                                          loop5:
                                          while(!(_loc9_ && param1))
                                          {
                                             _loc4_ = §§pop();
                                             loop6:
                                             while(true)
                                             {
                                                §§push(this.§#!H§(_loc4_));
                                                while(_loc10_)
                                                {
                                                   §§push(int(§§pop()));
                                                   loop8:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         if(_loc10_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         addr490:
                                                         if(_loc9_)
                                                         {
                                                            break;
                                                         }
                                                         _loc6_ = §§pop();
                                                         if(_loc9_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc10_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(!_loc10_)
                                                         {
                                                            continue loop3;
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   if(!(_loc10_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr490);
                                                   §§push(int(§§pop()));
                                                }
                                                continue loop5;
                                             }
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr554);
                                    }
                                    §§goto(addr555);
                                 }
                              }
                           }
                           loop10:
                           while(true)
                           {
                              §§push(_loc6_);
                              if(_loc10_ || param2)
                              {
                                 §§push(_loc4_);
                                 loop11:
                                 while(true)
                                 {
                                    if(§§pop() < §§pop() / 3)
                                    {
                                       §§push(_loc5_);
                                       break;
                                    }
                                    loop12:
                                    while(!(_loc9_ && _loc3_))
                                    {
                                       §§push(0);
                                       loop13:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          loop14:
                                          while(!(_loc9_ && this))
                                          {
                                             _loc6_ = §§pop();
                                             loop15:
                                             while(!_loc9_)
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         addr150:
                                                         while(_loc10_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         continue loop13;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         if(!(_loc9_ && this))
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               addr414:
                                                               §§push(§§pop() + 1);
                                                               break;
                                                            }
                                                            _loc6_ = §§pop();
                                                            while(true)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  if(_loc10_ || param1)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  if(!(_loc10_ || this))
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  §§push(0.5);
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 addr285:
                                                                                 §§push(_loc3_);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr279:
                                                                                    §§push(§§pop() * (Math.random() * 0.5));
                                                                                 }
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc9_ && this))
                                                                                    {
                                                                                       addr300:
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             addr310:
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   if(_loc10_ || this)
                                                                                                   {
                                                                                                      _loc8_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.§@4§(§0'§.§@R§,LevelParticleManager.§[K§,§0'§.§&A§,§9f§().GetPosition().x,§9f§().GetPosition().y,1250,"",§0'§.§%!`§(§#>§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale)));
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            break;
                                                                                                            addr234:
                                                                                                         }
                                                                                                         §§pop();
                                                                                                         while(_loc10_ || this)
                                                                                                         {
                                                                                                            §§goto(addr150);
                                                                                                            §§push(_loc6_);
                                                                                                         }
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      addr454:
                                                                                                      §§pop();
                                                                                                      break loop15;
                                                                                                      addr327:
                                                                                                   }
                                                                                                   break loop11;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                continue loop21;
                                                                                             }
                                                                                             addr348:
                                                                                          }
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             addr378:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(180 / Math.PI);
                                                                                                   while(_loc10_ || param2)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         addr469:
                                                                                                         _loc5_ = Number(§§pop() + §§pop());
                                                                                                         break loop12;
                                                                                                      }
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      §§goto(addr285);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      break loop21;
                                                                                                   }
                                                                                                   addr337:
                                                                                                   addr375:
                                                                                                }
                                                                                                continue loop28;
                                                                                             }
                                                                                          }
                                                                                          addr377:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr348);
                                                                                          §§goto(addr300);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr310);
                                                                                 }
                                                                                 §§goto(addr337);
                                                                              }
                                                                              §§goto(addr310);
                                                                           }
                                                                           §§goto(addr279);
                                                                        }
                                                                        §§goto(addr469);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc9_ && param2))
                                                                           {
                                                                              §§goto(addr375);
                                                                              §§push(Math.random() * (720 / _loc4_));
                                                                           }
                                                                        }
                                                                        addr361:
                                                                     }
                                                                     §§goto(addr469);
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr377);
                                                               }
                                                               continue loop15;
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      continue loop14;
                                                   }
                                                   break loop14;
                                                }
                                                return;
                                             }
                                             §§goto(addr414);
                                             §§push(_loc6_);
                                          }
                                          _loc6_ = §§pop();
                                          continue loop10;
                                       }
                                    }
                                    §§goto(addr454);
                                    §§push(param1.§@4§(§0'§.§#!V§,LevelParticleManager.§[K§,§0'§.§&A§,§9f§().GetPosition().x,§9f§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1));
                                 }
                                 §§goto(addr469);
                                 §§push(Math.random() * (720 / _loc4_));
                              }
                              §§goto(addr400);
                           }
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr93);
                  }
               }
               §§goto(addr49);
            }
            return;
         }
         §§goto(addr49);
      }
   }
}
