package §`6§
{
   import §-Z§.§?h§;
   import §0!-§.ParticleDesignerPS;
   import §1n§.§"#§;
   import §1n§.§1D§;
   import §1n§.§5#§;
   import §;!E§.§'`§;
   import §<<§.ParticleManager;
   import §[K§.§2!1§;
   import §[P§.Texture;
   import §[x§.§,S§;
   import §[x§.§2^§;
   import §^V§.§1!,§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   import starling.events.Event;
   
   public class §+w§
   {
       
      
      private var §"$§:int;
      
      private var §=H§:int;
      
      private var § true§:Number;
      
      private var §,!-§:Boolean;
      
      private var §1-§:Sprite;
      
      private var §;'§:Array;
      
      private var §1=§:Boolean = true;
      
      private var §1y§:§5#§;
      
      private var §1A§:Sprite;
      
      private var §9!7§:Sprite;
      
      public function §+w§(param1:§'`§, param2:Sprite, param3:§5#§, param4:Number)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc6_:Texture = null;
         var _loc13_:§1D§ = null;
         if(!(_loc14_ && param3))
         {
            this.§;'§ = [];
            do
            {
               super();
            }
            while(_loc14_ && param3);
            
            this.§1y§ = param3;
            this.§1-§ = param2;
         }
         while(true)
         {
            while(true)
            {
               this.§ true§ = param1.§?!A§;
               if(!(_loc15_ || param3))
               {
                  break;
               }
               this.§,!-§ = param1.§8!$§;
               if(false)
               {
                  continue;
               }
               var _loc5_:* = Number(1);
               if(_loc15_)
               {
                  §§push(param1.§,&§);
                  if(!(_loc14_ && param2))
                  {
                     if(§§pop() != 0)
                     {
                        if(!(_loc14_ && this))
                        {
                           §§push(param1.§,&§);
                           if(_loc15_ || param2)
                           {
                              §§push(Number(§§pop()));
                              if(_loc15_ || param1)
                              {
                                 addr116:
                                 _loc5_ = §§pop();
                                 addr117:
                                 §§push(Number(0));
                              }
                           }
                           var _loc7_:* = §§pop();
                           var _loc8_:* = Number(0);
                           var _loc9_:* = Number(1);
                           var _loc10_:DisplayObject;
                           if(!(_loc10_ = §"#§.§-"§(param1.mName,this.§1y§,param1.§'!E§)))
                           {
                              if(!(_loc14_ && param3))
                              {
                                 §§push((_loc13_ = param3.§,Y§(param1.mName)).pivotY);
                                 if(_loc15_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc14_ && this))
                                    {
                                       _loc7_ = §§pop();
                                       if(_loc15_ || param3)
                                       {
                                          if(!this.§,!-§)
                                          {
                                             if(!_loc14_)
                                             {
                                                addr179:
                                                _loc8_ = Number(_loc13_.pivotX);
                                             }
                                          }
                                       }
                                       _loc6_ = _loc13_.texture;
                                       if(_loc15_)
                                       {
                                          §§push(this);
                                          §§push(_loc13_.width);
                                          if(!_loc14_)
                                          {
                                             §§push(§§pop() * _loc5_);
                                             if(_loc15_ || this)
                                             {
                                                §§push(§§pop() - 2);
                                             }
                                          }
                                          §§pop().§"$§ = §§pop();
                                          §§push(_loc13_.scale);
                                          if(_loc15_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc9_ = §§pop();
                                          if(_loc15_)
                                          {
                                             addr253:
                                             if(this.§"$§ <= 0)
                                             {
                                                if(!(_loc14_ && this))
                                                {
                                                   throw new Error("Invalid texture for background layer: " + param1.mName);
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(2);
                                                   §§push(§2^§.§!s§);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(1.5);
                                                      if(!_loc14_)
                                                      {
                                                         addr316:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc15_ || param2)
                                                         {
                                                            §§push(this.§"$§ * param4);
                                                         }
                                                         §§pop().§=H§ = §§pop() + §§pop();
                                                         if(_loc15_)
                                                         {
                                                            break;
                                                         }
                                                         addr327:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               if(param1.§4!&§)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               this.§=H§ = 1;
                                                               if(true)
                                                               {
                                                                  break loop3;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§push(§§pop() / §§pop());
                                                   }
                                                   §§goto(addr316);
                                                }
                                                var _loc11_:Sprite = new Sprite();
                                                var _loc12_:int = 0;
                                                loop4:
                                                while(true)
                                                {
                                                   if(_loc12_ >= this.§=H§)
                                                   {
                                                      _loc11_.flatten();
                                                      if(_loc15_ || param1)
                                                      {
                                                         §§push(this.§1-§);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§pop().addChild(_loc11_);
                                                            §§push(this.§1A§);
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§1A§);
                                                                     while(§§pop().numChildren <= 0)
                                                                     {
                                                                        §§push(this.§1A§);
                                                                        if(!(_loc14_ && this))
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§pop().dispose();
                                                                              break loop4;
                                                                           }
                                                                           break loop8;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§1-§);
                                                                        addr615:
                                                                        addr559:
                                                                        while(true)
                                                                        {
                                                                           §§pop().addChild(this.§1A§);
                                                                           addr618:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        if(!(_loc15_ || param2))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(this.§9!7§);
                                                                        loop15:
                                                                        while(§§pop().numChildren <= 0)
                                                                        {
                                                                           §§push(this.§9!7§);
                                                                           if(!_loc15_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§pop().dispose();
                                                                              addr545:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc14_ && param2)
                                                                                 {
                                                                                    break loop15;
                                                                                 }
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    addr554:
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§1-§);
                                                                                       if(_loc15_ || param3)
                                                                                       {
                                                                                          if(_loc14_ && this)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       addr573:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().addChildAt(this.§9!7§,0);
                                                                                          addr577:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr615);
                                                                                    addr494:
                                                                                 }
                                                                                 §§goto(addr618);
                                                                              }
                                                                              addr545:
                                                                           }
                                                                           while(§§pop())
                                                                           {
                                                                              §§goto(addr559);
                                                                           }
                                                                           §§goto(addr494);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr573);
                                                                           §§goto(addr545);
                                                                        }
                                                                     }
                                                                  }
                                                                  continue;
                                                                  addr608:
                                                               }
                                                               addr555:
                                                               while(true)
                                                               {
                                                                  §§goto(addr558);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   if(!_loc10_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(!(_loc14_ && this))
                                                         {
                                                            _loc10_ = §"#§.§-"§(param1.mName,this.§1y§,param1.§'!E§);
                                                            addr366:
                                                            §§push(_loc10_);
                                                            §§push(_loc12_ - 1);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(§§pop() * this.§"$§);
                                                               if(_loc15_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(_loc15_ || param3)
                                                                  {
                                                                     §§push(-§§pop());
                                                                     if(!_loc14_)
                                                                     {
                                                                        addr387:
                                                                        §§push(_loc5_);
                                                                        if(_loc15_)
                                                                        {
                                                                           addr401:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc15_ || param1)
                                                                           {
                                                                              §§push(param1.§8%§);
                                                                           }
                                                                           §§pop().x = §§pop() + §§pop();
                                                                           if(_loc14_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc10_);
                                                                           §§push(_loc7_);
                                                                           if(_loc15_)
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    addr468:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc15_ || param1)
                                                                                    {
                                                                                       addr465:
                                                                                       §§push(param1.§%!E§);
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    §§push(_loc10_);
                                                                                    §§push(_loc5_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(§§pop() * _loc9_);
                                                                                    }
                                                                                    §§pop().scaleX = §§pop();
                                                                                    §§push(_loc10_);
                                                                                    §§push(_loc5_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(§§pop() * _loc9_);
                                                                                    }
                                                                                    §§pop().scaleY = §§pop();
                                                                                    do
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(param1);
                                                                                       §§push(_loc12_ - 1);
                                                                                       if(_loc15_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() * this.§"$§);
                                                                                       }
                                                                                       §§pop().§+U§(§§pop(),§§pop());
                                                                                       _loc11_.addChild(_loc10_);
                                                                                    }
                                                                                    while(false);
                                                                                    
                                                                                    _loc10_ = null;
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       _loc12_++;
                                                                                    }
                                                                                    continue;
                                                                                    addr446:
                                                                                 }
                                                                                 §§goto(addr468);
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§goto(addr465);
                                                                           }
                                                                           §§goto(addr468);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§goto(addr401);
                                                                  }
                                                                  §§goto(addr387);
                                                               }
                                                            }
                                                            §§goto(addr401);
                                                         }
                                                         §§goto(addr446);
                                                      }
                                                      else
                                                      {
                                                         _loc10_ = new §1!,§(_loc6_,false,param1.§'!E§);
                                                      }
                                                   }
                                                   §§goto(addr366);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr555);
                                                }
                                                addr284:
                                             }
                                             else
                                             {
                                                this.§"$§ = Math.round(this.§"$§);
                                             }
                                             §§goto(addr327);
                                             addr211:
                                          }
                                          §§goto(addr284);
                                       }
                                       §§goto(addr211);
                                    }
                                 }
                                 §§goto(addr179);
                              }
                              else
                              {
                                 addr226:
                                 §§push(Number(_loc10_.§;A§.bottom));
                                 if(_loc15_ || param1)
                                 {
                                    _loc7_ = §§pop();
                                    if(_loc15_)
                                    {
                                       addr240:
                                       §§push((_loc10_.§;A§.left + _loc10_.§;A§.right) / 2);
                                       if(_loc15_)
                                       {
                                          addr251:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc8_ = §§pop();
                                    }
                                    §§goto(addr253);
                                 }
                                 §§goto(addr251);
                              }
                           }
                           else
                           {
                              §§push(this);
                              §§push(_loc10_.width);
                              if(_loc15_)
                              {
                                 §§push(§§pop() * _loc5_);
                                 if(!_loc14_)
                                 {
                                    addr221:
                                    §§push(§§pop() - 2);
                                 }
                                 §§pop().§"$§ = §§pop();
                                 if(_loc15_)
                                 {
                                    §§goto(addr226);
                                 }
                                 §§goto(addr240);
                              }
                              §§goto(addr221);
                           }
                           §§goto(addr240);
                        }
                     }
                     §§goto(addr117);
                  }
               }
               §§goto(addr116);
            }
         }
      }
      
      public function get §>I§() : Boolean
      {
         return this.§,!-§;
      }
      
      private function §+U§(param1:§'`§, param2:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§,S§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§;'§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§<!6§(_loc3_.id,this.§1y§)));
            if(_loc9_ || param2)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && this))
                  {
                     addr63:
                     §§pop();
                     if(!(_loc10_ && param2))
                     {
                        addr75:
                        if(_loc4_.§3D§ > 0)
                        {
                           if(_loc9_)
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§8%§;
                              if(!_loc10_)
                              {
                                 _loc4_.y = _loc3_.y;
                                 if(!(_loc10_ && this))
                                 {
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    _loc4_.rotation = _loc3_.rotation;
                                    loop1:
                                    while(true)
                                    {
                                       _loc4_.alpha = _loc3_.alpha;
                                       _loc4_.start();
                                       loop2:
                                       while(true)
                                       {
                                          §?h§.§;B§.add(_loc4_);
                                          loop3:
                                          while(true)
                                          {
                                             this.§;'§.push(_loc4_);
                                             if(_loc3_.isBehindGraphic)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§9!7§);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§9!7§);
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop14;
                                                         }
                                                         §§pop().addChild(_loc4_);
                                                         loop19:
                                                         while(true)
                                                         {
                                                            addr189:
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  if(!_loc9_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc10_ && param2)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                                     {
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              break loop7;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        addr159:
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_ || _loc3_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc5_++;
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              addr243:
                                                                              addr243:
                                                                              while(true)
                                                                              {
                                                                                 this.§9!7§ = new Sprite();
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     addr188:
                                                                     _loc4_.§[t§(1 / 20);
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     §§goto(addr168);
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr223:
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                }
                                                addr240:
                                             }
                                             else
                                             {
                                                §§push(this.§1A§);
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      this.§1A§ = new Sprite();
                                                      while(_loc9_)
                                                      {
                                                         while(true)
                                                         {
                                                         }
                                                         §§pop().addChild(_loc4_);
                                                         if(!(_loc9_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr189);
                                                      }
                                                      continue loop2;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§1A§);
                                                      if(!_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                }
                                             }
                                             §§goto(addr189);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr240);
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr188);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(!(_loc10_ && param2))
                           {
                              _loc4_.dispose();
                           }
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr264);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr63);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc5_)
         {
            §§push(this.§1-§);
            if(!(_loc4_ && this))
            {
               §§pop().§"4§(0,-1,true);
               if(_loc5_ || this)
               {
                  addr44:
                  this.§1-§.removeEventListener(Event.ADDED_TO_STAGE,this.§1!G§);
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§;'§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc5_ || _loc2_)
                  {
                     §?h§.§;B§.§60§(_loc1_);
                     if(!_loc4_)
                     {
                        _loc1_.dispose();
                     }
                  }
               }
               if(!(_loc4_ && _loc2_))
               {
                  this.§;'§ = [];
                  while(true)
                  {
                     this.§9!7§ = null;
                     loop2:
                     while(!_loc4_)
                     {
                        while(true)
                        {
                           this.§1A§ = null;
                           if(!(_loc4_ && _loc3_))
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                     }
                  }
               }
               §§goto(addr131);
            }
         }
         §§goto(addr44);
      }
      
      private function §1!G§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§@J§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§ true§);
         if(!(_loc5_ && param2))
         {
            §§push(§§pop() * param1);
            if(_loc4_ || this)
            {
               addr34:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               §§push(this.§1-§);
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     §§push(-§§pop());
                  }
                  addr100:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function §@J§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc4_)
         {
            §§push(this.§1=§);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     if(_loc4_)
                     {
                        addr32:
                        §§pop();
                        if(!(_loc5_ && _loc1_))
                        {
                           §§goto(addr54);
                        }
                        §§goto(addr62);
                     }
                  }
               }
               addr54:
               §§goto(addr50);
            }
            §§goto(addr32);
         }
         addr50:
         if(!this.§1-§.stage)
         {
            if(!(_loc5_ && _loc2_))
            {
               addr62:
               return;
            }
         }
         for each(_loc1_ in this.§;'§)
         {
            if(_loc4_)
            {
               §?h§.§;B§.add(_loc1_);
               if(_loc5_)
               {
                  continue;
               }
            }
            _loc1_.visible = true;
         }
      }
      
      private function § !§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§;'§)
         {
            if(!(_loc5_ && this))
            {
               §?h§.§;B§.§60§(_loc1_);
               if(!_loc4_)
               {
                  continue;
               }
            }
            _loc1_.visible = false;
         }
      }
      
      public function §#i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         loop0:
         while(§§pop() != this.§1=§)
         {
            this.§1=§ = param1;
            do
            {
               §§push(this.§1=§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     this.§@J§();
                     if(_loc2_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  continue;
               }
               continue loop0;
            }
            while(this.§ !§(), _loc3_ && param1);
            
            return;
         }
      }
      
      private function §6!F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§=H§ == 1);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr133:
                     loop3:
                     while(true)
                     {
                        §§push(this.§;'§.length > 0);
                        if(_loc2_)
                        {
                           while(§§pop())
                           {
                              if(_loc2_)
                              {
                                 return;
                              }
                              if(_loc2_ || _loc2_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           while(true)
                           {
                              §§push(§2!1§.§ !B§);
                              if(!(_loc1_ && this))
                              {
                                 §§push(this.§1-§.x - this.§"$§);
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§push(§§pop() * §2!1§.§;l§);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              if(§§pop() <= 0)
                              {
                                 if(_loc1_ && _loc2_)
                                 {
                                    break;
                                 }
                                 if(!_loc1_)
                                 {
                                    this.§,!,§();
                                    break;
                                 }
                              }
                              else
                              {
                                 this.§1-§.x -= this.§"$§;
                              }
                           }
                           return;
                           addr111:
                        }
                     }
                  }
                  addr132:
               }
               §§goto(addr111);
            }
            §§goto(addr132);
         }
         §§goto(addr133);
      }
      
      private function §,!,§() : void
      {
      }
   }
}
