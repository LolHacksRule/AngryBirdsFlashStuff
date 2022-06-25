package §4p§
{
   import §!!9§.Texture;
   import §!!X§.§&!E§;
   import §'!`§.ParticleDesignerPS;
   import §+!r§.§'!S§;
   import §+&§.§"F§;
   import §+&§.§-!7§;
   import §,6§.§!o§;
   import §,6§.§4d§;
   import §,6§.§5z§;
   import §9E§.§;!U§;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   import §<$§.ParticleManager;
   import §@4§.§,!]§;
   import starling.events.Event;
   
   public class §<>§
   {
       
      
      private var §9!m§:int;
      
      private var §'r§:int;
      
      private var §%!G§:Number;
      
      private var §!Z§:Boolean;
      
      private var §8!9§:Sprite;
      
      private var § !N§:Array;
      
      private var §5C§:Boolean = true;
      
      private var §3!L§:§!o§;
      
      private var §?!§:Sprite;
      
      private var §`3§:Sprite;
      
      public function §<>§(param1:§'!S§, param2:Sprite, param3:§!o§, param4:Number)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc6_:Texture = null;
         var _loc13_:§5z§ = null;
         if(_loc15_)
         {
            this.§ !N§ = [];
            while(true)
            {
               super();
               loop1:
               for(; !_loc14_; if(_loc14_ && param3)
               {
                  continue;
               },this.§!Z§ = param1.§]K§,if(_loc15_)
               {
                  while(false)
                  {
                     §§goto(addr35);
                  }
                  var _loc5_:* = Number(1);
                  if(_loc15_ || param3)
                  {
                     §§push(param1.§!+§);
                     if(_loc15_)
                     {
                        if(§§pop() != 0)
                        {
                           if(!(_loc14_ && param1))
                           {
                              §§push(param1.§!+§);
                              if(_loc15_ || this)
                              {
                                 addr104:
                                 §§push(Number(§§pop()));
                                 if(_loc15_ || this)
                                 {
                                    addr112:
                                    _loc5_ = §§pop();
                                    §§push(Number(0));
                                 }
                                 var _loc7_:* = §§pop();
                                 var _loc8_:* = Number(0);
                                 var _loc9_:* = Number(1);
                                 var _loc10_:DisplayObject;
                                 if(!(_loc10_ = §4d§.§,b§(param1.mName,this.§3!L§,param1.§"2§)))
                                 {
                                    if(!_loc14_)
                                    {
                                       §§push((_loc13_ = param3.§`F§(param1.mName)).pivotY);
                                       if(_loc15_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc15_ || param3)
                                          {
                                             _loc7_ = §§pop();
                                             if(_loc15_)
                                             {
                                                if(!this.§!Z§)
                                                {
                                                   if(_loc15_ || param3)
                                                   {
                                                      addr170:
                                                      _loc8_ = Number(_loc13_.pivotX);
                                                      addr167:
                                                   }
                                                }
                                                _loc6_ = _loc13_.texture;
                                                if(!_loc14_)
                                                {
                                                   §§push(this);
                                                   §§push(_loc13_.width);
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      §§push(§§pop() * _loc5_);
                                                      if(_loc15_)
                                                      {
                                                         addr191:
                                                         §§push(§§pop() - 2);
                                                      }
                                                      §§pop().§9!m§ = §§pop();
                                                      if(!_loc14_)
                                                      {
                                                         §§push(_loc13_.scale);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc9_ = §§pop();
                                                         if(_loc15_)
                                                         {
                                                            addr256:
                                                            if(this.§9!m§ <= 0)
                                                            {
                                                               if(!_loc14_)
                                                               {
                                                                  throw new Error("Invalid texture for background layer: " + param1.mName);
                                                               }
                                                               do
                                                               {
                                                                  while(!param1.§5!=§)
                                                                  {
                                                                     this.§'r§ = 1;
                                                                     if(!(_loc14_ && param2))
                                                                     {
                                                                        if(!_loc15_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr339:
                                                                     }
                                                                     var _loc11_:Sprite = new Sprite();
                                                                     var _loc12_:int = 0;
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        if(_loc12_ >= this.§'r§)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              _loc11_.flatten();
                                                                              if(!_loc14_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§`3§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr532:
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§8!9§);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   §§pop().addEventListener(Event.ADDED_TO_STAGE,this.§-8§);
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      break loop16;
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().addChild(this.§?!§);
                                                                                                   continue loop26;
                                                                                                }
                                                                                                addr674:
                                                                                             }
                                                                                             addr604:
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc15_ || param2)
                                                                                                {
                                                                                                   addr611:
                                                                                                   §§pop().addChildAt(this.§`3§,0);
                                                                                                   loop18:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         addr617:
                                                                                                         if(_loc15_ || param3)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            addr624:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop12:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§?!§);
                                                                                                               loop22:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop().numChildren <= 0)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  while(!(_loc14_ && param2))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        break loop18;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§?!§);
                                                                                                                     if(_loc15_ || this)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr660:
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      §§goto(addr611);
                                                                                                   }
                                                                                                   §§goto(addr674);
                                                                                                   addr615:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr680:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().addChild(_loc11_);
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   addr680:
                                                                                                }
                                                                                                §§goto(addr682);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§`3§);
                                                                                          while(§§pop().numChildren <= 0)
                                                                                          {
                                                                                             §§push(this.§`3§);
                                                                                             if(!(_loc14_ && param2))
                                                                                             {
                                                                                                if(!(_loc15_ || param1))
                                                                                                {
                                                                                                   break loop15;
                                                                                                }
                                                                                                §§pop().dispose();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc15_ || this)
                                                                                                   {
                                                                                                      if(!(_loc15_ || this))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                      if(!(_loc14_ && param3))
                                                                                                      {
                                                                                                         addr592:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr532);
                                                                                                         }
                                                                                                         addr592:
                                                                                                      }
                                                                                                      §§goto(addr665);
                                                                                                   }
                                                                                                   §§goto(addr615);
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr604);
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                       return;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr677:
                                                                           }
                                                                           §§goto(addr624);
                                                                        }
                                                                        else
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       _loc10_ = §4d§.§,b§(param1.mName,this.§3!L§,param1.§"2§);
                                                                                       addr387:
                                                                                       §§push(_loc10_);
                                                                                       §§push(_loc12_ - 1);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(§§pop() * this.§9!m§);
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(_loc15_ || param2)
                                                                                                {
                                                                                                   addr408:
                                                                                                   §§push(_loc5_);
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      addr417:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§push(param1.§+5§);
                                                                                                      }
                                                                                                      §§pop().x = §§pop() + §§pop();
                                                                                                      if(!(_loc14_ && this))
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         §§push(_loc7_);
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               addr493:
                                                                                                               §§push(_loc5_);
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc15_ || param3)
                                                                                                                  {
                                                                                                                     addr506:
                                                                                                                     §§push(§§pop() + param1.§5!B§);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     §§push(_loc10_);
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(_loc15_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc9_);
                                                                                                                     }
                                                                                                                     §§pop().scaleX = §§pop();
                                                                                                                     if(!(_loc14_ && param1))
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc9_);
                                                                                                                        }
                                                                                                                        §§pop().scaleY = §§pop();
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           loop8:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this);
                                                                                                                              §§push(param1);
                                                                                                                              §§push(_loc12_ - 1);
                                                                                                                              if(_loc15_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * this.§9!m§);
                                                                                                                              }
                                                                                                                              §§pop().§ set§(§§pop(),§§pop());
                                                                                                                              if(!(_loc14_ && param2))
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc11_.addChild(_loc10_);
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       break loop7;
                                                                                                                                    }
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       continue loop8;
                                                                                                                                    }
                                                                                                                                    _loc10_ = null;
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       _loc12_++;
                                                                                                                                    }
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 §§goto(addr680);
                                                                                                                                 addr458:
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr592);
                                                                                                                        }
                                                                                                                        §§goto(addr682);
                                                                                                                        addr485:
                                                                                                                     }
                                                                                                                     §§goto(addr672);
                                                                                                                  }
                                                                                                                  §§goto(addr677);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr506);
                                                                                                         }
                                                                                                         §§goto(addr493);
                                                                                                      }
                                                                                                      §§goto(addr458);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§goto(addr417);
                                                                                             }
                                                                                             §§goto(addr408);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr417);
                                                                                    }
                                                                                    §§goto(addr485);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc10_ = new §;!U§(_loc6_,false,param1.§"2§);
                                                                                    §§goto(addr387);
                                                                                 }
                                                                              }
                                                                              §§goto(addr660);
                                                                           }
                                                                           §§goto(addr387);
                                                                        }
                                                                     }
                                                                     §§goto(addr680);
                                                                     §§push(this.§8!9§);
                                                                  }
                                                               }
                                                               while(!(_loc15_ || param2));
                                                               
                                                               addr346:
                                                               §§push(this);
                                                               §§push(2);
                                                               §§push(§-!7§.§!l§);
                                                               if(_loc15_)
                                                               {
                                                                  §§push(1.5);
                                                                  if(!_loc14_)
                                                                  {
                                                                     addr337:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc15_ || param3)
                                                                     {
                                                                        §§push(this.§9!m§ * param4);
                                                                     }
                                                                     §§pop().§'r§ = §§pop() + §§pop();
                                                                     §§goto(addr339);
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                               §§goto(addr337);
                                                               addr346:
                                                            }
                                                            else
                                                            {
                                                               this.§9!m§ = Math.round(this.§9!m§);
                                                               §§goto(addr346);
                                                            }
                                                            §§goto(addr346);
                                                            addr204:
                                                         }
                                                         §§goto(addr339);
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                   §§goto(addr191);
                                                }
                                                §§goto(addr346);
                                             }
                                             §§goto(addr167);
                                          }
                                       }
                                       §§goto(addr170);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this);
                                    §§push(_loc10_.width);
                                    if(_loc15_ || param1)
                                    {
                                       §§push(§§pop() * _loc5_);
                                       if(!(_loc14_ && param3))
                                       {
                                          §§push(§§pop() - 2);
                                       }
                                    }
                                    §§pop().§9!m§ = §§pop();
                                    if(!_loc14_)
                                    {
                                       §§push(Number(_loc10_.§,l§.bottom));
                                       if(!(_loc14_ && param2))
                                       {
                                          _loc7_ = §§pop();
                                          if(_loc15_)
                                          {
                                             addr243:
                                             §§push((_loc10_.§,l§.left + _loc10_.§,l§.right) / 2);
                                             if(_loc15_)
                                             {
                                                addr254:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc8_ = §§pop();
                                          }
                                          §§goto(addr256);
                                       }
                                       §§goto(addr254);
                                    }
                                    §§goto(addr243);
                                 }
                                 §§goto(addr256);
                              }
                           }
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr112);
                  addr33:
               },§§goto(addr40))
               {
                  this.§3!L§ = param3;
                  while(true)
                  {
                     this.§8!9§ = param2;
                     loop3:
                     while(_loc15_)
                     {
                        while(true)
                        {
                           this.§%!G§ = param1.§9j§;
                           addr40:
                           while(true)
                           {
                              if(!_loc14_)
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr33);
      }
      
      public function get §@!B§() : Boolean
      {
         return this.§!Z§;
      }
      
      private function § set§(param1:§'!S§, param2:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§"F§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§ !N§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§"m§(_loc3_.id,this.§3!L§)));
            if(_loc9_ || param2)
            {
               if(§§pop())
               {
                  if(!_loc10_)
                  {
                     addr58:
                     §§pop();
                     if(!(_loc10_ && _loc3_))
                     {
                        addr70:
                        if(_loc4_.§&J§ > 0)
                        {
                           if(!_loc10_)
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§+5§;
                              if(_loc9_)
                              {
                                 _loc4_.y = _loc3_.y;
                                 if(!(_loc10_ && param1))
                                 {
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(!_loc10_)
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       loop20:
                                       while(true)
                                       {
                                          _loc4_.alpha = _loc3_.alpha;
                                          loop13:
                                          while(true)
                                          {
                                             _loc4_.start();
                                             addr294:
                                             while(true)
                                             {
                                                if(_loc9_ || this)
                                                {
                                                   break loop13;
                                                }
                                                continue loop13;
                                             }
                                          }
                                          addr301:
                                          addr288:
                                          §,!]§.§+!Z§.add(_loc4_);
                                          addr290:
                                          addr272:
                                          while(!_loc9_)
                                          {
                                             continue loop20;
                                             §§goto(addr301);
                                          }
                                          loop10:
                                          for(; !_loc3_.isBehindGraphic; §§goto(addr290))
                                          {
                                             §§push(this.§?!§);
                                             loop11:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   continue;
                                                }
                                                loop19:
                                                while(true)
                                                {
                                                   this.§?!§ = new Sprite();
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(_loc9_ || param2)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop11;
                                                            }
                                                            addr241:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         loop5:
                                                         while(true)
                                                         {
                                                            addr242:
                                                            addr261:
                                                            while(true)
                                                            {
                                                               §§push(this.§`3§);
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  §§pop().addChild(_loc4_);
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(_loc10_ && _loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                                                    {
                                                                                       addr120:
                                                                                       if(!(_loc10_ && _loc3_))
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr132:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   break loop10;
                                                                                                   addr155:
                                                                                                }
                                                                                                _loc4_.dispose();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      if(_loc10_ && param2)
                                                                                                      {
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      if(true)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                      }
                                                                                                      addr198:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_++;
                                                                                                   }
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             addr219:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                                §§goto(addr294);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc10_ && param2)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             addr262:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§`3§ = new Sprite();
                                                                                                continue loop5;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr120);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc4_.§7Y§(1 / 20);
                                                                                    }
                                                                                    §§goto(addr198);
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  addr254:
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr242);
                                                               }
                                                               §§goto(addr262);
                                                            }
                                                         }
                                                         addr266:
                                                      }
                                                      §§goto(addr288);
                                                   }
                                                }
                                             }
                                             §§pop().addChild(_loc4_);
                                             §§goto(addr219);
                                          }
                                          addr259:
                                          this.§ !N§.push(_loc4_);
                                          while(true)
                                          {
                                             §§goto(addr261);
                                             §§goto(addr272);
                                          }
                                       }
                                    }
                                    §§goto(addr241);
                                 }
                                 §§goto(addr266);
                              }
                              §§goto(addr228);
                           }
                           §§goto(addr254);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(_loc9_)
                           {
                              §§goto(addr132);
                           }
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr259);
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr58);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(!(_loc4_ && _loc1_))
         {
            §§push(this.§8!9§);
            if(_loc5_ || this)
            {
               §§pop().§[!G§(0,-1,true);
               §§goto(addr64);
            }
            §§pop().removeEventListener(Event.ADDED_TO_STAGE,this.§-8§);
         }
         addr64:
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§8!9§);
         }
         for each(_loc1_ in this.§ !N§)
         {
            if(!(_loc4_ && _loc1_))
            {
               §,!]§.§+!Z§.§ !L§(_loc1_);
               if(!_loc4_)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(!_loc4_)
         {
            this.§ !N§ = [];
            while(true)
            {
               this.§`3§ = null;
               §§goto(addr126);
            }
         }
         addr126:
         while(true)
         {
            this.§?!§ = null;
            if(!_loc4_)
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop1;
            }
         }
      }
      
      private function §-8§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<!§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§%!G§);
         if(_loc4_ || param1)
         {
            §§push(§§pop() * param1);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || param1)
         {
            §§push(this.§8!9§);
            loop0:
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc5_ && this))
               {
                  §§push(-§§pop());
               }
               while(true)
               {
                  §§pop().x = §§pop();
                  §§push(param2);
                  addr84:
                  continue loop0;
                  if(_loc4_)
                  {
                     §§push(-§§pop());
                  }
                  if(!_loc5_)
                  {
                     §§pop().y = §§pop();
                     do
                     {
                        if(_loc4_)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                     while(this.§7M§(), !(_loc4_ || param2));
                     
                     return;
                     addr63:
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      private function §<!§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(!_loc4_)
         {
            §§push(this.§5C§);
            if(_loc5_ || this)
            {
               §§push(!§§pop());
               if(!(_loc4_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr53:
                        §§pop();
                        §§goto(addr69);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     return;
                  }
                  §§goto(addr69);
               }
               addr69:
               if(_loc5_ || this)
               {
                  §§push(!this.§8!9§.stage);
               }
               var _loc3_:* = this.§ !N§;
               for each(_loc1_ in _loc3_)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §,!]§.§+!Z§.add(_loc1_);
                     if(_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc1_.visible = true;
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      private function §;_§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§ !N§)
         {
            if(!_loc4_)
            {
               §,!]§.§+!Z§.§ !L§(_loc1_);
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
            }
            _loc1_.visible = false;
         }
      }
      
      public function §0g§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == this.§5C§)
               {
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr78:
                     if(!(_loc3_ && _loc3_))
                     {
                        addr24:
                        return;
                        addr85:
                     }
                  }
               }
               addr86:
               while(true)
               {
                  this.§5C§ = param1;
                  continue loop0;
               }
            }
            return;
            addr92:
         }
         while(true)
         {
            §§push(this.§5C§);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  addr74:
                  this.§<!§();
               }
               else
               {
                  this.§;_§();
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && param1))
                     {
                        §§goto(addr24);
                     }
                     else
                     {
                        §§goto(addr74);
                     }
                  }
               }
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr78);
            }
            else
            {
               §§goto(addr92);
            }
         }
         §§goto(addr85);
      }
      
      private function §7M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§'r§ == 1);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(§§pop())
                  {
                     if(!_loc1_)
                     {
                        return;
                     }
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     addr138:
                     loop3:
                     while(true)
                     {
                        §§push(this.§ !N§.length > 0);
                        if(!(_loc1_ && this))
                        {
                           continue loop0;
                        }
                        addr137:
                        while(true)
                        {
                           §§pop();
                           continue loop3;
                        }
                     }
                  }
                  addr24:
                  §§push(§&!E§.§1!t§);
                  if(_loc2_ || this)
                  {
                     §§push(this.§8!9§.x - this.§9!m§);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(§§pop() * §&!E§.§+!a§);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  if(§§pop() <= 0)
                  {
                     if(!(_loc1_ && this))
                     {
                        this.§5!G§();
                     }
                     if(!_loc2_)
                     {
                        addr87:
                        §§goto(addr24);
                     }
                     return;
                  }
                  this.§8!9§.x -= this.§9!m§;
                  §§goto(addr87);
                  addr118:
               }
               §§goto(addr137);
            }
         }
         §§goto(addr138);
      }
      
      private function §5!G§() : void
      {
      }
   }
}
