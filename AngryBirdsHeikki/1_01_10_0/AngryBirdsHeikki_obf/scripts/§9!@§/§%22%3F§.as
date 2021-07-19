package §9!@§
{
   import §5!1§.§"!X§;
   import §9b§.§"!S§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"?§ extends Sprite
   {
      
      public static const §0#§:int = 0;
      
      public static const §9j§:int = 1;
      
      public static const §&n§:int = 2;
      
      public static const §@!J§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0#§ = 0;
            loop0:
            while(true)
            {
               §9j§ = 1;
               while(true)
               {
                  §&n§ = 2;
                  addr44:
                  while(_loc1_)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §@!J§ = 3;
            if(_loc1_)
            {
               break;
            }
            §§goto(addr44);
         }
      }
      
      private const §[!5§:uint = 40;
      
      private const §#7§:Number = 0.3;
      
      private const §^!!§:Number = 25;
      
      private const §#t§:Number = 10;
      
      private const §<!S§:Number = 9;
      
      private var §`B§:int;
      
      private var §,!T§:int;
      
      private var §6n§:Array;
      
      private var §]@§:Array;
      
      private var §%!a§:Point;
      
      private var §[Y§:int;
      
      private var §]A§:Number;
      
      public function §"?§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc8_:§,@§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         if(!(_loc13_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.scrollRect = new Rectangle(0,0,param1,param2);
               while(true)
               {
                  this.§`B§ = param1 * §"!S§.§<!4§;
                  continue loop0;
                  addr49:
                  if(_loc12_ || param2)
                  {
                     if(false)
                     {
                        loop6:
                        while(true)
                        {
                           this.§6n§ = [];
                           loop7:
                           while(true)
                           {
                              if(_loc12_ || param3)
                              {
                                 if(_loc12_)
                                 {
                                    this.§]@§ = [];
                                    if(_loc13_ && param3)
                                    {
                                       continue;
                                    }
                                    addr42:
                                    if(_loc13_ && this)
                                    {
                                       while(true)
                                       {
                                          if(!_loc13_)
                                          {
                                             this.§[Y§ = param5;
                                             break loop7;
                                          }
                                          break;
                                          §§goto(addr42);
                                       }
                                       continue loop0;
                                       addr92:
                                    }
                                    §§goto(addr49);
                                 }
                                 break;
                              }
                              addr79:
                              while(true)
                              {
                                 continue loop6;
                              }
                           }
                           while(true)
                           {
                              this.§%!a§ = new Point(param3,param4);
                              §§goto(addr79);
                           }
                        }
                     }
                     var _loc11_:int = 0;
                     while(_loc11_ < param6)
                     {
                        §§push(§§findproperty(§,@§));
                        §§push(Math.random() * 40);
                        if(_loc12_ || param3)
                        {
                           §§push(§§pop() + 10);
                        }
                        (_loc8_ = new §§pop().§,@§(§§pop())).x = -2000;
                        if(_loc12_)
                        {
                           _loc8_.y = -2000;
                           loop9:
                           while(true)
                           {
                              this.addChild(_loc8_);
                              while(true)
                              {
                                 addr168:
                                 loop11:
                                 while(true)
                                 {
                                    this.§6n§[_loc11_] = _loc8_;
                                    while(_loc12_)
                                    {
                                       _loc11_++;
                                       if(!_loc12_)
                                       {
                                          continue;
                                       }
                                       if(_loc13_)
                                       {
                                          break loop11;
                                       }
                                    }
                                    continue loop9;
                                 }
                              }
                           }
                        }
                        while(false)
                        {
                           §§goto(addr168);
                        }
                     }
                     if(!(_loc13_ && param1))
                     {
                        this.§]A§ = param7;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§,@§ = null;
         loop0:
         while(true)
         {
            §§push(this.§6n§);
            if(!(_loc2_ || _loc2_))
            {
               break;
            }
            if(§§pop().length <= 0)
            {
               if(!(_loc3_ && _loc2_))
               {
                  while(true)
                  {
                     §§push(this.§]@§);
                     break loop0;
                  }
                  addr79:
               }
               §§goto(addr106);
            }
            §§push(this.§6n§);
            if(!_loc2_)
            {
               break;
            }
            _loc1_ = §§pop().shift();
            if(!_loc3_)
            {
               _loc1_.clean();
            }
         }
         while(§§pop().length > 0)
         {
            §§push(this.§]@§);
            if(_loc3_)
            {
               continue;
            }
            _loc1_ = §§pop().shift();
            if(_loc2_ || _loc3_)
            {
               _loc1_.clean();
            }
            §§goto(addr79);
         }
         if(_loc2_ || _loc2_)
         {
            this.§6n§ = [];
            if(_loc2_)
            {
               §§goto(addr106);
            }
         }
         addr106:
         this.§]@§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:* = false;
         var _loc5_:§,@§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(!(_loc16_ && _loc3_))
         {
            §§push(this);
            §§push(this.§]A§);
            if(_loc15_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§]A§ = §§pop();
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§]A§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     loop3:
                     while(§§pop() <= §§pop())
                     {
                        do
                        {
                           §§push(param1);
                           if(!(_loc16_ && param1))
                           {
                              if(_loc16_ && _loc3_)
                              {
                                 continue loop2;
                              }
                              §§push(20);
                              if(!(_loc15_ || _loc3_))
                              {
                                 continue loop3;
                              }
                              §§push(§§pop() / §§pop());
                              if(!(_loc16_ && param1))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           param1 = §§pop();
                        }
                        while(!_loc15_);
                        
                        if(!_loc15_)
                        {
                           break;
                        }
                        if(true)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               addr774:
               §§push(this.§6n§);
               if(!(_loc16_ && param1))
               {
                  if(§§pop().length > 0)
                  {
                     §§push(this.§6n§);
                     if(_loc15_)
                     {
                        _loc5_ = §§pop().shift();
                        if(_loc15_)
                        {
                           addr772:
                           _loc6_ = Number(Math.random() * (this.§^!!§ - this.§#t§) + this.§#t§);
                           addr773:
                           addr771:
                           addr770:
                           addr768:
                           if(this.§[Y§ == §0#§)
                           {
                              addr758:
                              _loc7_ = Number(-(Math.PI / 2) * Math.random());
                              addr749:
                              addr757:
                              addr754:
                              addr753:
                              addr759:
                              §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                              if(!(_loc16_ && param1))
                              {
                                 _loc8_ = §§pop();
                                 addr723:
                                 _loc9_ = Number(Math.cos(_loc7_ - Math.PI / 2));
                                 addr351:
                                 §§push(_loc5_);
                                 §§push(_loc8_);
                                 if(!(_loc16_ && _loc2_))
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§pop().§&!2§ = §§pop();
                                 addr724:
                                 if(!_loc16_)
                                 {
                                    §§push(_loc5_);
                                    §§push(_loc9_);
                                    if(!(_loc16_ && this))
                                    {
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§pop().§]?§ = §§pop();
                                    _loc5_.x = this.§%!a§.x;
                                    addr350:
                                    if(_loc15_ || _loc3_)
                                    {
                                       if(!_loc16_)
                                       {
                                          _loc5_.y = this.§%!a§.y;
                                          addr313:
                                          if(!(_loc16_ && this))
                                          {
                                             this.§]@§.push(_loc5_);
                                             addr290:
                                             if(_loc15_ || _loc2_)
                                             {
                                                if(!_loc16_)
                                                {
                                                   if(!(_loc16_ && this))
                                                   {
                                                      §§push(0.5);
                                                      if(_loc15_)
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               if(!(_loc16_ && param1))
                                                               {
                                                                  §§push(Math.random() * 1.5);
                                                                  if(_loc15_)
                                                                  {
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        if(_loc15_ || _loc2_)
                                                                        {
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr262:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc16_)
                                                                              {
                                                                                 if(_loc15_ || param1)
                                                                                 {
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       addr274:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc16_ && this))
                                                                                       {
                                                                                          _loc10_ = §§pop();
                                                                                          addr282:
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             §§push(0.2);
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                if(_loc15_ || param1)
                                                                                                {
                                                                                                   if(!(_loc16_ && _loc3_))
                                                                                                   {
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         if(!(_loc16_ && _loc3_))
                                                                                                         {
                                                                                                            addr201:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!(_loc16_ && param1))
                                                                                                            {
                                                                                                               _loc11_ = §§pop();
                                                                                                               addr209:
                                                                                                               if(_loc15_ || param1)
                                                                                                               {
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     addr154:
                                                                                                                     _loc5_.§-T§ = §"!X§.§ s§.§%!;§(_loc5_,{
                                                                                                                        "scaleX":_loc11_,
                                                                                                                        "scaleY":_loc11_
                                                                                                                     },{
                                                                                                                        "scaleX":_loc10_,
                                                                                                                        "scaleY":_loc10_
                                                                                                                     },5);
                                                                                                                     _loc5_.§-T§.play();
                                                                                                                     if(!(_loc16_ && param1))
                                                                                                                     {
                                                                                                                        if(!(_loc16_ && this))
                                                                                                                        {
                                                                                                                           if(_loc15_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    addr152:
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr154);
                                                                                                                                    }
                                                                                                                                    §§goto(addr774);
                                                                                                                                 }
                                                                                                                                 §§goto(addr313);
                                                                                                                              }
                                                                                                                              §§goto(addr290);
                                                                                                                           }
                                                                                                                           §§goto(addr282);
                                                                                                                        }
                                                                                                                        §§goto(addr209);
                                                                                                                     }
                                                                                                                     addr172:
                                                                                                                     §§goto(addr172);
                                                                                                                  }
                                                                                                                  addr586:
                                                                                                                  §§push(Number(Math.cos(_loc7_ + Math.PI / 2)));
                                                                                                                  if(_loc15_ || _loc3_)
                                                                                                                  {
                                                                                                                     _loc9_ = §§pop();
                                                                                                                     addr594:
                                                                                                                     if(_loc15_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc16_)
                                                                                                                        {
                                                                                                                           §§goto(addr351);
                                                                                                                        }
                                                                                                                        addr705:
                                                                                                                        if(!(_loc16_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr667:
                                                                                                                           _loc8_ = Number(Math.sin(_loc7_ + Math.PI));
                                                                                                                           addr668:
                                                                                                                           if(!(_loc16_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr648:
                                                                                                                              §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                              if(_loc15_ || param1)
                                                                                                                              {
                                                                                                                                 _loc9_ = §§pop();
                                                                                                                                 addr656:
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr351);
                                                                                                                                 }
                                                                                                                                 §§goto(addr749);
                                                                                                                              }
                                                                                                                              §§goto(addr757);
                                                                                                                           }
                                                                                                                           §§push(Math.PI * (Math.random() - 0.5) * 0.5);
                                                                                                                           if(_loc15_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr704:
                                                                                                                              _loc7_ = Number(§§pop());
                                                                                                                              §§goto(addr705);
                                                                                                                           }
                                                                                                                           §§goto(addr754);
                                                                                                                        }
                                                                                                                        §§goto(addr773);
                                                                                                                     }
                                                                                                                     §§goto(addr656);
                                                                                                                  }
                                                                                                                  §§goto(addr753);
                                                                                                                  addr615:
                                                                                                               }
                                                                                                               addr573:
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  addr510:
                                                                                                                  §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     if(!(_loc16_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc15_ || param1)
                                                                                                                        {
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           addr527:
                                                                                                                           §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                           if(_loc15_ || _loc3_)
                                                                                                                           {
                                                                                                                              _loc9_ = §§pop();
                                                                                                                              addr492:
                                                                                                                              if(!(_loc16_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    addr453:
                                                                                                                                    §§push(this.§#t§ / 2);
                                                                                                                                    if(_loc15_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                       addr466:
                                                                                                                                       if(_loc15_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§^!!§);
                                                                                                                                             if(!(_loc16_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(_loc15_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc15_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(2);
                                                                                                                                                      if(!(_loc16_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr432:
                                                                                                                                                         addr638:
                                                                                                                                                         addr431:
                                                                                                                                                         §§push(Number(§§pop() / §§pop()));
                                                                                                                                                         if(_loc15_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               _loc13_ = §§pop();
                                                                                                                                                               addr442:
                                                                                                                                                               if(!(_loc16_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc16_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr387:
                                                                                                                                                                           §§push(§§pop() + _loc12_);
                                                                                                                                                                           if(_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              addr390:
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              if(!_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                                                                    addr395:
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr351);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr466);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr771);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr667);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr510);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr648);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr453);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr387);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr492);
                                                                                                                                                            }
                                                                                                                                                            addr634:
                                                                                                                                                            §§push(§§pop() * Math.random());
                                                                                                                                                         }
                                                                                                                                                         _loc7_ = Number(§§pop());
                                                                                                                                                         addr614:
                                                                                                                                                         _loc8_ = Number(Math.sin(_loc7_ + Math.PI / 2));
                                                                                                                                                         §§goto(addr615);
                                                                                                                                                         addr639:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr453);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr614);
                                                                                                                                                }
                                                                                                                                                §§goto(addr453);
                                                                                                                                             }
                                                                                                                                             §§goto(addr432);
                                                                                                                                          }
                                                                                                                                          §§goto(addr724);
                                                                                                                                       }
                                                                                                                                       addr630:
                                                                                                                                       §§goto(addr634);
                                                                                                                                       §§push(Math.PI / 2);
                                                                                                                                    }
                                                                                                                                    §§goto(addr586);
                                                                                                                                 }
                                                                                                                                 §§goto(addr594);
                                                                                                                              }
                                                                                                                              §§goto(addr527);
                                                                                                                           }
                                                                                                                           §§goto(addr758);
                                                                                                                        }
                                                                                                                        §§goto(addr772);
                                                                                                                     }
                                                                                                                     §§goto(addr638);
                                                                                                                  }
                                                                                                                  addr567:
                                                                                                                  §§push(Number(§§pop() * 0.5));
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        §§goto(addr573);
                                                                                                                     }
                                                                                                                     §§goto(addr723);
                                                                                                                  }
                                                                                                                  §§goto(addr667);
                                                                                                               }
                                                                                                               §§goto(addr639);
                                                                                                            }
                                                                                                            §§goto(addr274);
                                                                                                         }
                                                                                                         §§goto(addr567);
                                                                                                      }
                                                                                                      §§goto(addr431);
                                                                                                   }
                                                                                                   §§goto(addr387);
                                                                                                }
                                                                                                §§goto(addr262);
                                                                                             }
                                                                                             §§goto(addr201);
                                                                                          }
                                                                                          §§goto(addr395);
                                                                                       }
                                                                                       §§goto(addr432);
                                                                                    }
                                                                                    §§goto(addr704);
                                                                                 }
                                                                                 §§goto(addr527);
                                                                              }
                                                                              §§goto(addr390);
                                                                           }
                                                                           §§goto(addr770);
                                                                        }
                                                                        §§goto(addr667);
                                                                     }
                                                                     §§goto(addr567);
                                                                  }
                                                                  §§goto(addr387);
                                                               }
                                                               §§goto(addr758);
                                                            }
                                                            §§goto(addr667);
                                                         }
                                                         §§goto(addr567);
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   §§goto(addr759);
                                                }
                                                §§goto(addr442);
                                             }
                                          }
                                          §§goto(addr350);
                                       }
                                       §§goto(addr668);
                                    }
                                    §§goto(addr723);
                                 }
                                 addr743:
                                 §§goto(addr743);
                              }
                              §§goto(addr768);
                           }
                           addr681:
                           §§push(this.§[Y§);
                           if(_loc15_)
                           {
                              addr684:
                              §§push(§9j§);
                              if(_loc15_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr667);
                                 }
                                 addr622:
                                 §§push(this.§[Y§);
                                 §§push(§&n§);
                                 if(!(_loc16_ && _loc2_))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       §§goto(addr630);
                                    }
                                    §§push(this.§[Y§);
                                    if(!_loc16_)
                                    {
                                       if(!_loc16_)
                                       {
                                          §§push(§@!J§);
                                          if(!(_loc16_ && _loc3_))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc15_)
                                                {
                                                   §§goto(addr567);
                                                   §§push(Math.PI * (Math.random() - 0.5));
                                                }
                                                §§goto(addr573);
                                             }
                                             §§goto(addr723);
                                          }
                                          §§goto(addr622);
                                       }
                                       §§goto(addr681);
                                    }
                                    §§goto(addr622);
                                 }
                                 §§goto(addr684);
                              }
                           }
                           §§goto(addr772);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr788);
                  }
                  §§push(this.§]@§);
               }
               addr788:
               var _loc2_:int = §§pop().length;
               §§push(_loc2_);
               if(_loc15_)
               {
                  §§push(int(§§pop() - 1));
               }
               var _loc4_:* = §§pop();
               if(_loc15_ || param1)
               {
                  addr1077:
                  if(_loc4_ >= 0)
                  {
                     _loc3_ = false;
                     if(_loc15_)
                     {
                        _loc5_ = this.§]@§[_loc4_];
                        §§push(_loc5_);
                        §§push(_loc5_.§]?§);
                        if(_loc15_)
                        {
                           §§push(this.§#7§);
                           if(_loc15_ || param1)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().§]?§ = §§pop();
                        if(_loc15_)
                        {
                           if(_loc5_.§]?§ > this.§<!S§)
                           {
                              addr1010:
                              _loc5_.§]?§ = this.§<!S§;
                           }
                           _loc5_.x += _loc5_.§&!2§ * param1;
                           _loc5_.y += _loc5_.§]?§ * param1;
                           addr1004:
                           if(!_loc16_)
                           {
                              _loc5_.rotation += 5 * param1;
                              addr980:
                              if(_loc5_.x < -_loc5_.width / 2)
                              {
                                 if(_loc15_)
                                 {
                                    if(!(_loc16_ && _loc3_))
                                    {
                                       addr967:
                                       _loc3_ = true;
                                       if(_loc15_)
                                       {
                                          addr837:
                                          §§push(this.§]@§);
                                          if(_loc15_ || _loc3_)
                                          {
                                             §§push(§§pop().length > 0);
                                             if(_loc15_ || param1)
                                             {
                                                if(_loc15_ || _loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc16_ && _loc3_))
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            §§pop();
                                                            if(!_loc16_)
                                                            {
                                                               if(false)
                                                               {
                                                                  addr880:
                                                                  §§goto(addr837);
                                                               }
                                                               §§push(_loc3_);
                                                               if(!(_loc16_ && this))
                                                               {
                                                                  addr1024:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                        addr1027:
                                                                        if((_loc14_ = this.§]@§.splice(_loc4_,1)) is §,@§)
                                                                        {
                                                                           if(!(_loc16_ && _loc2_))
                                                                           {
                                                                              _loc14_.clean();
                                                                              if(!_loc16_)
                                                                              {
                                                                                 addr1049:
                                                                                 _loc5_.x = -2000;
                                                                                 if(_loc15_ || _loc2_)
                                                                                 {
                                                                                 }
                                                                                 addr1072:
                                                                                 §§push(_loc4_);
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 §§goto(addr1077);
                                                                              }
                                                                              _loc5_.y = -2000;
                                                                              §§goto(addr1072);
                                                                           }
                                                                        }
                                                                        §§goto(addr1049);
                                                                     }
                                                                     §§goto(addr1077);
                                                                  }
                                                                  §§goto(addr1049);
                                                               }
                                                               §§goto(addr1024);
                                                            }
                                                            §§goto(addr1077);
                                                         }
                                                         addr903:
                                                         if(_loc15_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               addr913:
                                                               §§goto(addr837);
                                                            }
                                                            §§goto(addr1027);
                                                         }
                                                         §§goto(addr967);
                                                      }
                                                   }
                                                   §§goto(addr1024);
                                                }
                                                addr935:
                                                _loc3_ = §§pop();
                                                if(!(_loc16_ && _loc2_))
                                                {
                                                   if(_loc15_)
                                                   {
                                                      if(!_loc16_)
                                                      {
                                                         §§goto(addr880);
                                                      }
                                                      §§goto(addr1010);
                                                   }
                                                   §§goto(addr980);
                                                }
                                                §§goto(addr1027);
                                             }
                                             §§goto(addr1024);
                                          }
                                          §§goto(addr1027);
                                       }
                                       §§goto(addr1004);
                                    }
                                    §§goto(addr1010);
                                 }
                                 §§goto(addr1077);
                              }
                              if(_loc5_.x > this.§`B§ + _loc5_.width / 2)
                              {
                                 if(!(_loc16_ && param1))
                                 {
                                    §§goto(addr935);
                                    §§push(true);
                                 }
                                 §§goto(addr1027);
                              }
                              if(_loc5_.y > this.§,!T§ + _loc5_.height / 2)
                              {
                                 if(!(_loc16_ && _loc2_))
                                 {
                                    if(_loc15_)
                                    {
                                       §§goto(addr903);
                                       §§push(true);
                                    }
                                    §§goto(addr967);
                                 }
                                 §§goto(addr1027);
                              }
                              §§goto(addr837);
                           }
                           §§goto(addr1027);
                        }
                        §§goto(addr913);
                     }
                  }
               }
               return;
            }
         }
         while(true)
         {
            §§goto(addr48);
         }
      }
   }
}
