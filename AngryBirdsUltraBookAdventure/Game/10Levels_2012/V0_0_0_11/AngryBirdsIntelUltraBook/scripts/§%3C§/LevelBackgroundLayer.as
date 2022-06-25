package §<§
{
   import §,!_§.§;K§;
   import §,!_§.CompositeSpriteParser;
   import §,!_§.TextureManager;
   import §0P§.Starling;
   import §1i§.ParticleManager;
   import §2!H§.§5"§;
   import §2!H§.LevelMain;
   import §4!<§.ParticleDesignerPS;
   import §6!7§.§-m§;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   import §7i§.Texture;
   import §<!j§.§%!-§;
   import §[m§.§#c§;
   import starling.events.Event;
   
   public class LevelBackgroundLayer
   {
       
      
      private var §13§:int;
      
      private var §#t§:int;
      
      private var §^!<§:Number;
      
      private var §6;§:Boolean;
      
      private var §'6§:Sprite;
      
      private var §2!U§:Array;
      
      private var §9B§:Boolean = true;
      
      private var §6! §:TextureManager;
      
      private var §4!,§:Sprite;
      
      private var §%c§:Sprite;
      
      public function LevelBackgroundLayer(param1:§#c§, param2:Sprite, param3:TextureManager, param4:Number)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc6_:Texture = null;
         var _loc13_:§;K§ = null;
         if(!(_loc15_ && param3))
         {
            this.§2!U§ = [];
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§6! § = param3;
                  while(true)
                  {
                     this.§'6§ = param2;
                     addr65:
                     while(!_loc15_)
                     {
                     }
                     continue loop1;
                     addr44:
                     if(!(_loc14_ || param3))
                     {
                        continue;
                     }
                     addr51:
                     if(false)
                     {
                        while(true)
                        {
                           this.§^!<§ = param1.§8%§;
                           while(true)
                           {
                              if(_loc15_)
                              {
                                 continue loop0;
                              }
                              this.§6;§ = param1.§,!h§;
                              if(_loc15_ && param3)
                              {
                                 continue;
                              }
                              if(_loc14_)
                              {
                                 §§goto(addr44);
                              }
                              else
                              {
                                 §§goto(addr65);
                              }
                           }
                           §§goto(addr51);
                        }
                        addr53:
                     }
                     var _loc5_:* = Number(1);
                     if(!_loc15_)
                     {
                        §§push(param1.§7!H§);
                        if(!_loc15_)
                        {
                           if(§§pop() != 0)
                           {
                              if(_loc14_ || this)
                              {
                                 §§push(param1.§7!H§);
                                 if(_loc14_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc15_ && param3))
                                    {
                                       addr111:
                                       _loc5_ = §§pop();
                                       addr112:
                                       §§push(Number(0));
                                    }
                                 }
                                 var _loc7_:* = §§pop();
                                 var _loc8_:* = Number(0);
                                 var _loc9_:* = Number(1);
                                 var _loc10_:DisplayObject = CompositeSpriteParser.§-!$§(param1.mName,this.§6! §,param1.§`>§);
                                 if(!_loc15_)
                                 {
                                    if(!_loc10_)
                                    {
                                       if(!_loc15_)
                                       {
                                          _loc13_ = param3.§]&§(param1.mName);
                                          if(_loc14_ || param1)
                                          {
                                             §§push(_loc13_.pivotY);
                                             if(!(_loc15_ && param2))
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc15_)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(!(_loc15_ && param2))
                                                   {
                                                      §§push(this.§6;§);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                      if(§§pop())
                                                      {
                                                         addr189:
                                                         if(_loc14_ || param1)
                                                         {
                                                            addr187:
                                                            §§push(Number(_loc13_.pivotX));
                                                         }
                                                         _loc6_ = _loc13_.texture;
                                                         if(!_loc15_)
                                                         {
                                                            §§push(this);
                                                            §§push(_loc13_.width);
                                                            if(_loc14_)
                                                            {
                                                               §§push(§§pop() * _loc5_);
                                                               if(!_loc15_)
                                                               {
                                                                  addr204:
                                                                  §§push(§§pop() - 2);
                                                               }
                                                               §§pop().§13§ = §§pop();
                                                               if(!_loc15_)
                                                               {
                                                                  addr209:
                                                                  §§push(_loc13_.scale);
                                                                  if(_loc14_ || param2)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc9_ = §§pop();
                                                                  if(_loc14_)
                                                                  {
                                                                     addr264:
                                                                     if(this.§13§ <= 0)
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           throw new Error("Invalid texture for background layer: " + param1.mName);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr344:
                                                                        this.§13§ = Math.round(this.§13§);
                                                                        addr351:
                                                                        if(param1.§continue§)
                                                                        {
                                                                           if(_loc14_ || param3)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(2);
                                                                              §§push(LevelMain.§6v§);
                                                                              if(!(_loc15_ && param2))
                                                                              {
                                                                                 §§push(1.5);
                                                                                 if(!(_loc15_ && this))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc14_ || param2)
                                                                                    {
                                                                                       addr338:
                                                                                       §§push(§§pop() / (this.§13§ * param4));
                                                                                    }
                                                                                    §§pop().§#t§ = §§pop() + §§pop();
                                                                                    addr341:
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §§goto(addr351);
                                                                                    }
                                                                                    addr352:
                                                                                    var _loc11_:Sprite = new Sprite();
                                                                                    §§push(0);
                                                                                    if(_loc14_ || this)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    addr598:
                                                                                    if(_loc12_ < this.§#t§)
                                                                                    {
                                                                                       §§push(!_loc10_);
                                                                                       if(_loc14_ || param3)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                §§push(!_loc6_);
                                                                                                if(!(_loc15_ && param3))
                                                                                                {
                                                                                                   addr399:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         _loc10_ = CompositeSpriteParser.§-!$§(param1.mName,this.§6! §,param1.§`>§);
                                                                                                         addr422:
                                                                                                         §§push(_loc10_);
                                                                                                         §§push(_loc12_ - 1);
                                                                                                         if(_loc14_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop() * this.§13§);
                                                                                                            if(_loc14_ || this)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(!(_loc15_ && param2))
                                                                                                               {
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(_loc14_ || param2)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        addr473:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!(_loc15_ && this))
                                                                                                                        {
                                                                                                                           §§push(param1.§@!?§);
                                                                                                                        }
                                                                                                                        §§pop().x = §§pop() + §§pop();
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           §§push(_loc10_);
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(_loc14_ || param2)
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                              if(!(_loc15_ && this))
                                                                                                                              {
                                                                                                                                 addr547:
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(_loc14_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc14_ || param2)
                                                                                                                                    {
                                                                                                                                       addr565:
                                                                                                                                       §§push(§§pop() + param1.§=#§);
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    if(!(_loc15_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(_loc10_);
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * _loc9_);
                                                                                                                                       }
                                                                                                                                       §§pop().scaleX = §§pop();
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc10_);
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * _loc9_);
                                                                                                                                          }
                                                                                                                                          §§pop().scaleY = §§pop();
                                                                                                                                          addr492:
                                                                                                                                          §§push(this);
                                                                                                                                          §§push(param1);
                                                                                                                                          §§push(_loc12_ - 1);
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * this.§13§);
                                                                                                                                          }
                                                                                                                                          §§pop().§-N§(§§pop(),§§pop());
                                                                                                                                          addr518:
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                _loc11_.addChild(_loc10_);
                                                                                                                                                if(!(_loc15_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr492);
                                                                                                                                                   }
                                                                                                                                                   _loc10_ = null;
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                      if(_loc14_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + 1);
                                                                                                                                                         if(!(_loc15_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr596:
                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         _loc12_ = §§pop();
                                                                                                                                                         §§goto(addr598);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr596);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr598);
                                                                                                                                                }
                                                                                                                                                addr609:
                                                                                                                                                _loc11_.flatten();
                                                                                                                                                if(!(_loc15_ && param3))
                                                                                                                                                {
                                                                                                                                                   addr772:
                                                                                                                                                   this.§'6§.addChild(_loc11_);
                                                                                                                                                   addr775:
                                                                                                                                                   §§push(this.§4!,§);
                                                                                                                                                   if(_loc14_)
                                                                                                                                                   {
                                                                                                                                                      addr757:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr758:
                                                                                                                                                         if(this.§4!,§.numChildren > 0)
                                                                                                                                                         {
                                                                                                                                                            addr765:
                                                                                                                                                            this.§'6§.addChild(this.§4!,§);
                                                                                                                                                            addr769:
                                                                                                                                                            addr763:
                                                                                                                                                            §§push(this.§%c§);
                                                                                                                                                            if(_loc14_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               if(!(_loc15_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr687:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc14_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc15_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr704:
                                                                                                                                                                           if(this.§%c§.numChildren > 0)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr711:
                                                                                                                                                                                 this.§'6§.addChildAt(this.§%c§,0);
                                                                                                                                                                                 addr716:
                                                                                                                                                                                 if(!(_loc15_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr624:
                                                                                                                                                                                    §§push(this.§'6§);
                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc15_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().addEventListener(Event.ADDED_TO_STAGE,this.§?!0§);
                                                                                                                                                                                             if(_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr657:
                                                                                                                                                                                                if(!(_loc15_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc15_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr624);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr775);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr769);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr716);
                                                                                                                                                                                             }
                                                                                                                                                                                             return;
                                                                                                                                                                                             addr647:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr772);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr765);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr711);
                                                                                                                                                                                    addr723:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr758);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr711);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(this.§%c§);
                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().dispose();
                                                                                                                                                                              §§goto(addr657);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr704);
                                                                                                                                                                        }
                                                                                                                                                                        addr748:
                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           addr750:
                                                                                                                                                                           §§goto(addr765);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr763);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr711);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr624);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr757);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr704);
                                                                                                                                                         }
                                                                                                                                                         §§push(this.§4!,§);
                                                                                                                                                         if(!(_loc15_ && param3))
                                                                                                                                                         {
                                                                                                                                                            §§pop().dispose();
                                                                                                                                                            §§goto(addr748);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr758);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr765);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr758);
                                                                                                                                                }
                                                                                                                                                §§goto(addr647);
                                                                                                                                             }
                                                                                                                                             §§goto(addr518);
                                                                                                                                          }
                                                                                                                                          §§goto(addr723);
                                                                                                                                          addr529:
                                                                                                                                       }
                                                                                                                                       §§goto(addr750);
                                                                                                                                    }
                                                                                                                                    §§goto(addr758);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr565);
                                                                                                                           }
                                                                                                                           §§goto(addr547);
                                                                                                                        }
                                                                                                                        §§goto(addr765);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr473);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr473);
                                                                                                      }
                                                                                                      §§goto(addr529);
                                                                                                   }
                                                                                                   _loc10_ = new §-m§(_loc6_,false,param1.§`>§);
                                                                                                   §§goto(addr422);
                                                                                                }
                                                                                                §§goto(addr687);
                                                                                             }
                                                                                             §§goto(addr647);
                                                                                          }
                                                                                          §§goto(addr422);
                                                                                       }
                                                                                       §§goto(addr399);
                                                                                    }
                                                                                    if(!(_loc15_ && param1))
                                                                                    {
                                                                                       §§goto(addr609);
                                                                                    }
                                                                                    §§goto(addr765);
                                                                                    addr343:
                                                                                 }
                                                                              }
                                                                              §§goto(addr338);
                                                                           }
                                                                           §§goto(addr341);
                                                                        }
                                                                        this.§#t§ = 1;
                                                                        if(!_loc15_)
                                                                        {
                                                                           addr293:
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr351);
                                                                           }
                                                                           §§goto(addr352);
                                                                        }
                                                                        §§goto(addr341);
                                                                     }
                                                                     §§goto(addr343);
                                                                  }
                                                                  §§goto(addr293);
                                                               }
                                                               §§goto(addr344);
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                   }
                                                   §§goto(addr189);
                                                }
                                                _loc8_ = §§pop();
                                                §§goto(addr189);
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr189);
                                       }
                                       else
                                       {
                                          addr242:
                                          §§push(Number(_loc10_.bounds.bottom));
                                          if(!_loc15_)
                                          {
                                             _loc7_ = §§pop();
                                             if(_loc14_)
                                             {
                                                §§push((_loc10_.bounds.left + _loc10_.bounds.right) / 2);
                                                if(_loc14_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§goto(addr264);
                                          }
                                          _loc8_ = §§pop();
                                       }
                                    }
                                    else
                                    {
                                       §§push(this);
                                       §§push(_loc10_.width);
                                       if(!_loc15_)
                                       {
                                          §§push(§§pop() * _loc5_);
                                          if(_loc14_ || param2)
                                          {
                                             §§push(§§pop() - 2);
                                          }
                                       }
                                       §§pop().§13§ = §§pop();
                                       if(_loc14_)
                                       {
                                          §§goto(addr242);
                                       }
                                    }
                                    §§goto(addr264);
                                 }
                                 §§goto(addr242);
                              }
                           }
                           §§goto(addr112);
                        }
                     }
                     §§goto(addr111);
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr53);
         }
      }
      
      public function get §%H§() : Boolean
      {
         return this.§6;§;
      }
      
      private function §-N§(param1:§#c§, param2:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:§5"§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§2!U§)
         {
            _loc4_ = ParticleManager.§3!k§(_loc3_.id,this.§6! §);
            if(_loc10_)
            {
               §§push(Boolean(_loc4_));
               if(!_loc9_)
               {
                  §§push(§§pop());
                  if(_loc10_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop29:
                     while(true)
                     {
                        §§pop();
                        if(_loc10_)
                        {
                           addr119:
                           loop2:
                           while(true)
                           {
                              §§push(_loc4_.§1p§ > 0);
                              if(!(_loc9_ && param1))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc9_)
                                 {
                                    addr74:
                                    if(!(_loc10_ || param2))
                                    {
                                       continue loop29;
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(Boolean(_loc4_));
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             if(_loc10_ || param2)
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(_loc10_ || this)
                                                   {
                                                      §§goto(addr207);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§goto(addr289);
                                                      §§push(this.§4!,§);
                                                   }
                                                }
                                                addr316:
                                             }
                                             break loop2;
                                          }
                                          break;
                                       }
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          _loc4_.x = param2 + _loc3_.x + param1.§@!?§;
                                          if(!(_loc9_ && param1))
                                          {
                                             _loc4_.y = _loc3_.y;
                                             if(!_loc9_)
                                             {
                                                if(false)
                                                {
                                                   continue loop2;
                                                }
                                                _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                                if(!(_loc9_ && param2))
                                                {
                                                   _loc4_.rotation = _loc3_.rotation;
                                                   loop3:
                                                   while(true)
                                                   {
                                                      _loc4_.alpha = _loc3_.alpha;
                                                      addr377:
                                                      while(true)
                                                      {
                                                         _loc4_.start();
                                                         loop5:
                                                         while(true)
                                                         {
                                                            Starling.§1!e§.add(_loc4_);
                                                            addr366:
                                                            while(true)
                                                            {
                                                               this.§2!U§.push(_loc4_);
                                                               continue loop5;
                                                            }
                                                         }
                                                         loop14:
                                                         while(!(_loc9_ && param1))
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc10_)
                                                               {
                                                                  if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                                  {
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           if(_loc9_ && param1)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr366);
                                                                           }
                                                                           §§goto(addr327);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr249:
                                                                           if(_loc10_)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                addr238:
                                                                                                §§push(int(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   continue loop15;
                                                                                                }
                                                                                                addr238:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr256);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr238);
                                                                                       }
                                                                                       break loop15;
                                                                                    }
                                                                                    §§goto(addr238);
                                                                                 }
                                                                                 addr216:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr302:
                                                                                 loop31:
                                                                                 while(true)
                                                                                 {
                                                                                    addr268:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§4!,§);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§pop().addChild(_loc4_);
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc10_ || _loc3_))
                                                                                          {
                                                                                             §§goto(addr311);
                                                                                          }
                                                                                          §§goto(addr254);
                                                                                       }
                                                                                       continue loop31;
                                                                                    }
                                                                                    addr289:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       break loop1;
                                                                                    }
                                                                                 }
                                                                                 addr302:
                                                                              }
                                                                              §§goto(addr256);
                                                                           }
                                                                           §§goto(addr276);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           if(_loc10_)
                                                                           {
                                                                              _loc4_.dispose();
                                                                              addr214:
                                                                              while(true)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§goto(addr216);
                                                                              }
                                                                              addr214:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr317:
                                                                           }
                                                                        }
                                                                        addr207:
                                                                     }
                                                                     §§goto(addr319);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc4_.§^!e§(1 / 20);
                                                                  }
                                                                  §§goto(addr249);
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr377);
                                             }
                                             §§goto(addr214);
                                          }
                                          §§goto(addr302);
                                       }
                                       §§goto(addr377);
                                       §§goto(addr317);
                                       §§goto(addr74);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc10_ || this)
                                       {
                                          this.§4!,§ = new Sprite();
                                       }
                                       §§goto(addr302);
                                    }
                                    §§goto(addr268);
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    this.§%c§ = new Sprite();
                                 }
                                 §§goto(addr327);
                              }
                              §§goto(addr303);
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr316);
                     }
                     addr116:
                  }
                  §§goto(addr81);
               }
               §§goto(addr116);
            }
            §§goto(addr302);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§'6§);
            if(_loc4_)
            {
               §§pop().§'!C§(0,-1,true);
               §§goto(addr46);
            }
            §§pop().removeEventListener(Event.ADDED_TO_STAGE,this.§?!0§);
         }
         addr46:
         if(_loc4_)
         {
            §§push(this.§'6§);
         }
         var _loc3_:* = this.§2!U§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               Starling.§1!e§.§+K§(_loc1_);
               if(_loc4_)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(_loc4_ || _loc1_)
         {
            this.§2!U§ = [];
            while(true)
            {
               this.§%c§ = null;
               §§goto(addr136);
            }
         }
         addr136:
         while(true)
         {
            this.§4!,§ = null;
            if(_loc4_ || _loc3_)
            {
               if(_loc4_ || _loc1_)
               {
                  break;
               }
               continue loop1;
            }
         }
      }
      
      private function §?!0§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§ !J§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§^!<§);
         if(_loc4_ || param1)
         {
            §§push(§§pop() * param1);
            if(!(_loc5_ && param1))
            {
               addr34:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               §§push(this.§'6§);
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  addr105:
                  while(true)
                  {
                     §§push(-§§pop());
                     addr106:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr101);
         }
         §§goto(addr34);
      }
      
      private function § !J§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§9B§);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(!_loc5_)
               {
                  addr33:
                  §§push(Boolean(§§pop()));
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     if(!(_loc5_ && _loc1_))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           §§goto(addr63);
                        }
                     }
                     §§goto(addr78);
                  }
               }
               addr63:
               §§pop();
               if(!_loc5_)
               {
                  addr66:
                  §§push(!this.§'6§.stage);
                  if(_loc4_ || _loc1_)
                  {
                     addr78:
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           return;
                        }
                     }
                  }
                  §§goto(addr78);
               }
               var _loc3_:* = this.§2!U§;
               for each(_loc1_ in _loc3_)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     Starling.§1!e§.add(_loc1_);
                     if(_loc4_ || _loc3_)
                     {
                        _loc1_.visible = true;
                     }
                  }
               }
               return;
            }
            §§goto(addr33);
         }
         §§goto(addr66);
      }
      
      private function §;!3§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§2!U§)
         {
            if(_loc5_ || _loc2_)
            {
               Starling.§1!e§.§+K§(_loc1_);
               if(_loc4_)
               {
                  continue;
               }
            }
            _loc1_.visible = false;
         }
      }
      
      public function §^!Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != this.§9B§)
               {
                  do
                  {
                     this.§9B§ = param1;
                     while(true)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           continue loop0;
                        }
                     }
                  }
                  while(_loc3_);
                  
                  addr19:
                  return;
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      private function §`!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§#t§ == 1);
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              return;
                           }
                           if(!(_loc1_ || this))
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(this.§2!U§.length > 0);
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    break;
                                 }
                                 if(!_loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    break;
                                 }
                                 addr148:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop2;
                                 }
                              }
                              continue;
                           }
                           addr135:
                        }
                        while(true)
                        {
                           §§push(§%!-§.§^6§);
                           if(_loc1_)
                           {
                              §§push(this.§'6§.x - this.§13§);
                              if(_loc1_ || _loc1_)
                              {
                                 §§push(§§pop() * §%!-§.§?!I§);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           if(§§pop() <= 0)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 this.§>!_§();
                              }
                              if(_loc1_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              this.§'6§.x -= this.§13§;
                           }
                        }
                        return;
                     }
                     continue;
                     addr108:
                  }
               }
               §§goto(addr148);
            }
         }
         §§goto(addr135);
      }
      
      private function §>!_§() : void
      {
      }
   }
}
