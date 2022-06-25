package §=b§
{
   import §"!,§.§9!B§;
   import §"!,§.§^z§;
   import §#V§.b2BodyDef;
   import §#V§.b2World;
   import §-d§.§-C§;
   import §2_§.§'u§;
   import §2_§.§8![§;
   import §7!B§.Sprite;
   import §>! §.§^!c§;
   
   public class §0d§ extends §72§
   {
      
      protected static const § !Q§:Boolean = false;
      
      protected static const §;&§:Number = 2000;
      
      protected static const §!k§:Number = 0.2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § !Q§ = false;
            do
            {
               §;&§ = 2000;
               do
               {
                  §!k§ = 0.2;
               }
               while(_loc1_ && _loc1_);
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private var §+S§:Number;
      
      private var §+!u§:Boolean = false;
      
      protected var §?!=§:int = 0;
      
      public function §0d§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            while(param10)
            {
               if(_loc13_)
               {
                  break;
               }
               addr61:
               if(_loc13_ && param2)
               {
                  continue;
               }
               §7![§.mTryToScream = § 6§.§8!3§ + 1;
               §§goto(addr61);
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function get §9!J§() : Boolean
      {
         return this.§+!u§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(_loc5_)
         {
            _loc3_.§6!b§ = true;
         }
         do
         {
            _loc3_.§&!G§ = 2;
         }
         while(!(_loc5_ || param2));
         
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(§&!>§ < §]l§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop4:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§+S§ = 0;
                        if(!(_loc2_ && this))
                        {
                           if(!_loc2_)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 while(true)
                                 {
                                 }
                                 addr68:
                              }
                              else
                              {
                                 addr117:
                                 if(this.§+S§ >= §;&§)
                                 {
                                    addr74:
                                    if(!_loc2_)
                                    {
                                       §§push(true);
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    addr36:
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!_loc3_)
                                       {
                                          break loop4;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       if(!_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       addr123:
                                       while(true)
                                       {
                                          §§pop();
                                       }
                                    }
                                    addr25:
                                 }
                                 while(true)
                                 {
                                    §§push(Boolean(§^!R§()));
                                    continue loop0;
                                 }
                                 addr117:
                              }
                              §§goto(addr25);
                           }
                           §§goto(addr74);
                        }
                        else
                        {
                           if(!(_loc3_ || _loc2_))
                           {
                              addr109:
                              §§push(this);
                              §§push(this.§+S§);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§+S§ = §§pop();
                              §§goto(addr117);
                           }
                           §§goto(addr36);
                        }
                     }
                     §§goto(addr109);
                  }
                  return §§pop();
                  addr107:
               }
               §§goto(addr123);
            }
         }
         §§goto(addr68);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = false;
         if(!_loc4_)
         {
            §§push(this.§+!u§);
            if(_loc5_ || _loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     if(§^r§.toUpperCase() != "BIRD_WHITE")
                     {
                        §§push(§^r§.toUpperCase() == "BIRD_YELLOW");
                        loop1:
                        while(true)
                        {
                           if(_loc5_ || param1)
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
                                       addr255:
                                       while(true)
                                       {
                                          §§push(§^r§.toUpperCase() == "BIRD_GREEN");
                                       }
                                    }
                                    addr254:
                                 }
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop7:
                                       while(!_loc4_)
                                       {
                                          if(!§§pop())
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§pop();
                                                loop9:
                                                while(_loc5_ || _loc2_)
                                                {
                                                   §§push(§^r§.toUpperCase() == "BIRD_RED");
                                                   while(true)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     if(§7![§.mTryToFly)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(true);
                                                                           addr186:
                                                                           while(_loc5_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        addr185:
                                                                     }
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(§7![§.mTryToSpecial)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §7![§.mTryToSpecial = false;
                                                                                       addr130:
                                                                                       loop27:
                                                                                       while(_loc5_ || _loc3_)
                                                                                       {
                                                                                          if(§7![§.mIsSpecial)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §7![§.mIsSpecial = false;
                                                                                                      addr88:
                                                                                                      loop28:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            addr270:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               addr271:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  addr272:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  if(!§7![§.mTryToSpecial)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §7![§.mTryToSpecial = true;
                                                                                                                        loop23:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(true);
                                                                                                                           addr140:
                                                                                                                           loop24:
                                                                                                                           while(!(_loc4_ && _loc2_))
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              loop29:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc5_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            continue loop21;
                                                                                                                                                         }
                                                                                                                                                         continue loop29;
                                                                                                                                                      }
                                                                                                                                                      addr49:
                                                                                                                                                      return §§pop();
                                                                                                                                                      addr24:
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop23;
                                                                                                                                             }
                                                                                                                                             continue loop27;
                                                                                                                                          }
                                                                                                                                          continue loop28;
                                                                                                                                       }
                                                                                                                                       continue loop8;
                                                                                                                                    }
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 §§goto(addr186);
                                                                                                                              }
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr157:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr24);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr185);
                                                                                                               }
                                                                                                               §§goto(addr186);
                                                                                                            }
                                                                                                            addr152:
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr85:
                                                                                                }
                                                                                                §§goto(addr148);
                                                                                             }
                                                                                             §§goto(addr88);
                                                                                          }
                                                                                          §§goto(addr24);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          §§goto(addr272);
                                                                                          §§goto(addr130);
                                                                                       }
                                                                                       addr130:
                                                                                    }
                                                                                    §§goto(addr157);
                                                                                 }
                                                                                 §§goto(addr130);
                                                                              }
                                                                              §§goto(addr24);
                                                                           }
                                                                           §§goto(addr152);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§^r§.toUpperCase() == "BIRD_RED_BIG");
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                     addr149:
                                                                  }
                                                                  §§goto(addr189);
                                                               }
                                                               §§goto(addr149);
                                                            }
                                                            addr173:
                                                         }
                                                         §§goto(addr207);
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                                §§goto(addr255);
                                             }
                                          }
                                          §§goto(addr202);
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           §§goto(addr271);
                        }
                     }
                     §§goto(addr270);
                  }
               }
               §§goto(addr49);
            }
            §§goto(addr271);
         }
         §§goto(addr85);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         if(_loc4_)
         {
            §§push(Boolean(§3J§().IsAwake()));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr366:
                        while(true)
                        {
                           §§push(§&!>§ == §]l§);
                        }
                     }
                     addr365:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§7![§.mTryToFly)
                           {
                              loop6:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    §7![§.mTryToFly = false;
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(!§7![§.mIsFlying)
                                             {
                                                loop35:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc2_ = §§pop();
                                                                     if(_loc5_ && _loc2_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     if(_loc5_ && this)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop35;
                                                                        }
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §8Z§(0);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr213:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr213:
                                                                                    }
                                                                                 }
                                                                                 addr164:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr251:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop35;
                                                                              }
                                                                              addr126:
                                                                           }
                                                                           else
                                                                           {
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§+!u§);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          addr212:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§goto(addr213);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr215:
                                                                                                §§push(§ !Q§);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      §§push(!§?!%§());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_ && this)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         §§push(§§pop());
                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr201);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            addr241:
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                      addr183:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §<n§();
                                                                                                      addr218:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_ && param1)
                                                                                                         {
                                                                                                            break loop14;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr215:
                                                                                             }
                                                                                             §§goto(addr126);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr365);
                                                                                          }
                                                                                       }
                                                                                       addr233:
                                                                                    }
                                                                                    §§goto(addr241);
                                                                                 }
                                                                                 §§goto(addr215);
                                                                              }
                                                                              §§goto(addr366);
                                                                           }
                                                                           §§goto(addr213);
                                                                        }
                                                                     }
                                                                     §§goto(addr164);
                                                                  }
                                                                  else
                                                                  {
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        addr345:
                                                                        while(true)
                                                                        {
                                                                           loop31:
                                                                           while(true)
                                                                           {
                                                                              if(§^r§.toUpperCase() != "BIRD_GREEN")
                                                                              {
                                                                                 §§push(§^r§.toUpperCase() == "BIRD_WHITE");
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(this.§+!u§)
                                                                                       {
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             addr277:
                                                                                             §§push(2);
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                addr296:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                {
                                                                                                   §§push(360);
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      addr340:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(1000);
                                                                                                      }
                                                                                                      _loc3_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §8Z§(§8c§() - _loc3_);
                                                                                                         §§goto(addr251);
                                                                                                      }
                                                                                                      addr341:
                                                                                                   }
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr340);
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr340);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(1);
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             §§goto(addr296);
                                                                                             §§push(§§pop());
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                    §§goto(addr277);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§7![§.mTryToFly)
                                                                                       {
                                                                                          continue loop31;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §7![§.mTryToFly = true;
                                                                                          continue loop11;
                                                                                       }
                                                                                    }
                                                                                    addr352:
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr233);
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                      }
                                                      continue loop0;
                                                      addr34:
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr202:
                                                      while(true)
                                                      {
                                                         §§push(!§=!5§());
                                                      }
                                                   }
                                                   addr201:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                      §§goto(addr215);
                                                   }
                                                   continue loop5;
                                                }
                                                return §§pop();
                                             }
                                             addr23:
                                             continue;
                                          }
                                          §§goto(addr355);
                                       }
                                       §§goto(addr257);
                                    }
                                 }
                                 §§goto(addr218);
                              }
                           }
                           §§goto(addr23);
                        }
                        §§goto(addr352);
                     }
                  }
               }
            }
         }
         §§goto(addr340);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:§'u§ = §^!c§.§5!Y§;
         if(_loc7_ || this)
         {
            §§push(§&!>§ < §]l§);
            if(_loc7_ || _loc3_)
            {
               if(!§§pop())
               {
                  do
                  {
                     §§pop();
                     §§push(§3J§() == null);
                  }
                  while(!(_loc7_ || _loc2_));
                  
                  addr92:
               }
               if(§§pop())
               {
                  do
                  {
                     _loc1_.§+N§(this);
                     _loc1_.§6u§ = false;
                  }
                  while(!(_loc7_ || _loc1_));
                  
                  return;
                  addr61:
               }
               else
               {
                  §§push(x * §'u§.§18§);
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(y * §'u§.§18§);
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  if(_loc7_ || _loc3_)
                  {
                     §§push(_loc1_.§6u§);
                     loop0:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§9!&§ <= 1)
                           {
                              §§push(§9!B§.PARTICLE_NAME_BIRD_TRAIL1);
                              loop1:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop2:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    loop3:
                                    while(true)
                                    {
                                       §§push(this.§?!=§);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(1);
                                          addr426:
                                          while(§§pop() != §§pop())
                                          {
                                             continue loop4;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                §§push(§9!B§.PARTICLE_NAME_BIRD_TRAIL2);
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop8:
                                                   while(!_loc8_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§?!=§ + 1);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§§pop() % 3);
                                                               }
                                                               §§pop().§?!=§ = §§pop();
                                                               while(!_loc8_)
                                                               {
                                                                  §§push(_loc1_.particles);
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     addr320:
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           §§push(§^z§.§#1§);
                                                                           while(true)
                                                                           {
                                                                              §§push(§9!B§.§4!o§);
                                                                              addr331:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_ || _loc1_)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc7_ || _loc2_)
                                                                                          {
                                                                                             §§push(-1);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§push("");
                                                                                                if(_loc7_ || this)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push(§9!B§.§!L§);
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§pop().§#Z§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                         loop16:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            loop17:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§!u§() > §8![§.BIRD_LAUNCH_FORCE_GREEN);
                                                                                                               addr287:
                                                                                                               while(_loc7_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     while(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              if(_loc7_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr274:
                                                                                                                                 §§push(-Math.PI / 2);
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(Math.random()));
                                                                                                                                    if(!(_loc7_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(_loc7_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                       while(!_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop3;
                                                                                                                                       }
                                                                                                                                       continue loop12;
                                                                                                                                       addr229:
                                                                                                                                    }
                                                                                                                                    §§goto(addr274);
                                                                                                                                 }
                                                                                                                                 addr280:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(_loc1_.particles);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§9!B§.§ 9§);
                                                                                                                                          addr463:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§^z§.§#1§);
                                                                                                                                             addr465:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§push(§9!B§.§4!o§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                      addr470:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                         addr471:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc8_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               §§push(-1);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push("");
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§9!B§.§!L§);
                                                                                                                                                                        addr484:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().§#Z§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop17;
                                                                                                                                                                              }
                                                                                                                                                                              addr497:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr482:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push("");
                                                                                                                                                                        addr523:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§9!B§.§!L§);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr522:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§#Z§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                                     addr526:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc1_.§6u§ = false;
                                                                                                                                                                        addr507:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           this.§?!=§ = 0;
                                                                                                                                                                           addr502:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop17;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr479:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               addr521:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr522);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr469:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§9!B§.§4!o§);
                                                                                                                                                      addr519:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                         addr520:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr517:
                                                                                                                                                }
                                                                                                                                                §§goto(addr521);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr461:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc1_.particles);
                                                                                                                                          addr513:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§9!B§.§%-§);
                                                                                                                                             addr515:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr511:
                                                                                                                                    }
                                                                                                                                    §§goto(addr517);
                                                                                                                                 }
                                                                                                                                 addr452:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    continue loop10;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr419:
                                                                                                                           }
                                                                                                                           §§goto(addr507);
                                                                                                                        }
                                                                                                                        §§goto(addr280);
                                                                                                                     }
                                                                                                                     addr123:
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr484);
                                                                                                   }
                                                                                                   §§goto(addr523);
                                                                                                }
                                                                                                §§goto(addr482);
                                                                                             }
                                                                                             §§goto(addr479);
                                                                                          }
                                                                                          §§goto(addr471);
                                                                                       }
                                                                                       §§goto(addr520);
                                                                                    }
                                                                                    §§goto(addr470);
                                                                                 }
                                                                                 §§goto(addr519);
                                                                              }
                                                                           }
                                                                           addr329:
                                                                        }
                                                                        §§goto(addr515);
                                                                     }
                                                                  }
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        §§push(Math.random() < §!k§);
                                                                        if(_loc7_ || _loc2_)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§goto(addr246);
                                                                           }
                                                                           §§goto(addr287);
                                                                        }
                                                                        §§goto(addr291);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(§9!B§.PARTICLE_NAME_BIRD_TRAIL3);
                                                                           if(!(_loc8_ && _loc1_))
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              if(!_loc7_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              if(_loc8_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop());
                                                                           }
                                                                           _loc4_ = §§pop();
                                                                           §§goto(addr419);
                                                                        }
                                                                        §§goto(addr497);
                                                                     }
                                                                     continue loop1;
                                                                     addr400:
                                                                  }
                                                               }
                                                               continue loop9;
                                                            }
                                                            addr370:
                                                         }
                                                         §§goto(addr502);
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             §§goto(addr526);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr452);
                        }
                        §§goto(addr511);
                     }
                  }
                  §§goto(addr231);
               }
            }
            §§goto(addr92);
         }
         §§goto(addr61);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!§7![§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(_loc1_)
               {
                  if(!(_loc1_ || this))
                  {
                     addr51:
                     §+!G§(§-C§.§6[§);
                     addr55:
                  }
                  return;
               }
               §§goto(addr55);
            }
         }
         §§goto(addr51);
      }
      
      override public function activateSpecialPower(param1:§>!e§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§+!u§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr89:
                     §§push(false);
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     addr78:
                     while(true)
                     {
                        §+!G§(§-C§.§[g§);
                        do
                        {
                           this.§+!u§ = true;
                        }
                        while(_loc2_ && _loc3_);
                        
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     §§push(true);
                     if(!(_loc3_ || this))
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr78);
            }
            return §§pop();
         }
         §§goto(addr89);
      }
      
      private function §6!<§(param1:int) : int
      {
         return Math.min(§^!c§.§5!Y§.§>F§,param1);
      }
      
      override public function addDestructionParticles(param1:§^z§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§;a§(false) + 1);
         var _loc4_:* = Number(90);
         if(!(_loc10_ && _loc3_))
         {
            §§push(this.§6!<§(_loc3_));
            if(_loc9_ || _loc3_)
            {
               §§push(int(§§pop()));
               if(_loc9_)
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
                  if(!_loc10_)
                  {
                     if(_loc9_)
                     {
                        if(_loc9_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(-§7![§.mH);
                           if(!(_loc10_ && _loc2_))
                           {
                              §§push(§'u§.§18§);
                              if(_loc9_)
                              {
                                 if(_loc9_ || _loc2_)
                                 {
                                    if(_loc9_)
                                    {
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc9_ || this)
                                          {
                                             if(_loc9_ || _loc2_)
                                             {
                                                if(_loc9_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc9_)
                                                      {
                                                         _loc8_ = §§pop();
                                                         if(!(_loc10_ && _loc2_))
                                                         {
                                                            addr198:
                                                            if(_loc9_)
                                                            {
                                                               §§push(Math.random() * -_loc8_);
                                                               if(!_loc10_)
                                                               {
                                                                  addr207:
                                                                  §§push(2);
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     addr216:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr231:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc10_ && _loc2_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc9_ || _loc3_)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       loop10:
                                                                                       while(true)
                                                                                       {
                                                                                          param1.§#Z§(§9!B§.§8v§,§^z§.§!!B§,§9!B§.§5!G§,§3J§().GetPosition().x + _loc7_,§3J§().GetPosition().y + _loc8_,1500,"",§9!B§.§'!4§(§^r§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                                                          addr123:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_ || _loc2_)
                                                                                             {
                                                                                                _loc5_++;
                                                                                                continue loop10;
                                                                                             }
                                                                                             loop18:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(-§7![§.mW);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§push(§'u§.§18§);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               addr269:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  addr270:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Math.random() * -_loc7_);
                                                                                                                     addr275:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(2);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr284:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 addr285:
                                                                                                                                 while(_loc10_ && param1)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Math.random() * (720 / _loc3_));
                                                                                                                                       addr314:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                addr319:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                   if(!(_loc10_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(180 / Math.PI);
                                                                                                                                                   }
                                                                                                                                                   addr332:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr333:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc6_ = §§pop();
                                                                                                                                                         continue loop18;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr318:
                                                                                                                                          }
                                                                                                                                          §§goto(addr333);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr283:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr332);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr268:
                                                                                                         }
                                                                                                         §§goto(addr318);
                                                                                                      }
                                                                                                      addr260:
                                                                                                   }
                                                                                                   §§goto(addr275);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr270);
                                                                                 }
                                                                                 §§goto(addr285);
                                                                              }
                                                                              §§goto(addr333);
                                                                           }
                                                                           §§goto(addr231);
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§goto(addr283);
                                                               }
                                                               §§goto(addr216);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   §§goto(addr198);
                                                }
                                                §§goto(addr332);
                                             }
                                             §§goto(addr260);
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr314);
                                    }
                                    §§goto(addr275);
                                 }
                                 §§goto(addr284);
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr198);
                        }
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr74);
               }
               else
               {
                  §§push(_loc4_);
               }
               §§goto(addr308);
            }
            return;
         }
         §§goto(addr56);
      }
      
      override public function addDamageParticles(param1:§^z§, param2:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         if(!_loc10_)
         {
            if(§=!5§())
            {
               if(_loc9_ || _loc3_)
               {
                  return;
               }
            }
            else
            {
               if(param2 < 6)
               {
                  if(!_loc9_)
                  {
                     addr48:
                     §§push(§!u§() / 10);
                     if(_loc9_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     §§push(1);
                     if(_loc9_)
                     {
                        §§push(_loc3_);
                        if(!(_loc10_ && this))
                        {
                           addr82:
                           §§push(§§pop() * §;a§(false));
                           if(_loc9_)
                           {
                              addr78:
                              §§push(§§pop() * 0.12);
                           }
                           var _loc4_:* = int(§§pop() + §§pop());
                           var _loc5_:* = Number(90);
                           if(_loc9_)
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
                                       loop3:
                                       while(true)
                                       {
                                          param2 = §§pop();
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(_loc9_ || param1)
                                             {
                                                §§push(3 + param2 / 20);
                                                if(!(_loc9_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(_loc10_ && param1)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(int(§§pop()));
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(this.§6!<§(_loc4_));
                                                   if(_loc9_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr419:
                                                   while(true)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         if(_loc10_ && param2)
                                                         {
                                                            break;
                                                         }
                                                         _loc4_ = §§pop();
                                                         continue;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                           loop9:
                           while(true)
                           {
                              §§push(_loc6_);
                              loop10:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 loop11:
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop() / 3)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop13:
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                             loop14:
                                             while(true)
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc10_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(!(_loc9_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc4_);
                                                   if(_loc10_ && param1)
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         if(_loc9_ || param1)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               loop16:
                                                               while(!(_loc10_ && _loc3_))
                                                               {
                                                                  if(_loc9_ || _loc3_)
                                                                  {
                                                                     param1.§#Z§(§9!B§.§8v§,§^z§.§!!B§,§9!B§.§5!G§,§3J§().GetPosition().x,§3J§().GetPosition().y,1250,"",§9!B§.§'!4§(§^r§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc10_ && param2))
                                                                        {
                                                                           _loc6_++;
                                                                           addr127:
                                                                           if(_loc10_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           if(_loc10_ && param2)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           §§push(0.5);
                                                                           if(_loc9_ || _loc3_)
                                                                           {
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc10_ && _loc3_))
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr221:
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr238:
                                                                                                   §§push(§§pop() * (Math.random() * 0.5));
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         addr248:
                                                                                                         if(!(_loc10_ && param1))
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               addr384:
                                                                                                               §§push(Number(§§pop() + Math.random() * (720 / _loc4_)));
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Math.random() * (720 / _loc4_));
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc9_ || param2)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!(_loc10_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc5_ = §§pop();
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr318:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              continue loop18;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr310:
                                                                                                                     }
                                                                                                                     §§goto(addr318);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(180 / Math.PI);
                                                                                                                     addr317:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr318);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr317);
                                                                                                            }
                                                                                                            addr285:
                                                                                                         }
                                                                                                      }
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         _loc8_ = §§pop();
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr310);
                                                                                                }
                                                                                                §§goto(addr317);
                                                                                             }
                                                                                             §§goto(addr238);
                                                                                          }
                                                                                          §§goto(addr248);
                                                                                       }
                                                                                       §§goto(addr384);
                                                                                    }
                                                                                    §§goto(addr221);
                                                                                 }
                                                                                 §§goto(addr384);
                                                                              }
                                                                              §§goto(addr318);
                                                                           }
                                                                           §§goto(addr248);
                                                                        }
                                                                        _loc5_ = §§pop();
                                                                     }
                                                                     _loc6_++;
                                                                     addr373:
                                                                     addr174:
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               continue loop12;
                                                            }
                                                            if(_loc9_)
                                                            {
                                                               return;
                                                            }
                                                            param1.§#Z§(§9!B§.§?P§,§^z§.§!!B§,§9!B§.§5!G§,§3J§().GetPosition().x,§3J§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
                                                            §§goto(addr373);
                                                         }
                                                         §§goto(addr174);
                                                      }
                                                      §§goto(addr127);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc5_);
                                                   }
                                                   §§goto(addr285);
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                    }
                                    §§goto(addr384);
                                 }
                              }
                           }
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr82);
                  }
               }
               §§goto(addr48);
            }
            return;
         }
         §§goto(addr48);
      }
   }
}
