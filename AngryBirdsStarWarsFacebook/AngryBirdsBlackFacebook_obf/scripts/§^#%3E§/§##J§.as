package §^#>§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §&v§.Texture;
   import §5"i§.b2Settings;
   import §7P§.§;$§;
   import §[R§.b2Vec2;
   import flash.geom.Point;
   
   public class §##J§
   {
       
      
      private var §-!r§:Texture;
      
      private var §%G§:Sprite;
      
      private var §5#]§:Vector.<§#"t§>;
      
      private var §&A§:Boolean;
      
      private var §#!N§:int = 0;
      
      private var § !i§:Vector.<§#"t§>;
      
      private var §6i§:Number = -1.0;
      
      private var § %§:Number = 0.0;
      
      private var §!"G§:Number = 0.0;
      
      public function §##J§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            this.§ !i§ = new Vector.<§#"t§>();
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§%G§ = param1;
                  addr73:
                  while(true)
                  {
                     this.§-!r§ = param2;
                     addr66:
                     while(_loc6_)
                     {
                     }
                     continue loop1;
                  }
               }
               addr54:
               if(_loc5_ && this)
               {
                  continue;
               }
               this.§ %§ = param4;
               if(_loc6_)
               {
                  if(!_loc6_)
                  {
                     §§goto(addr66);
                  }
                  return;
                  addr37:
               }
               while(_loc6_)
               {
                  §§goto(addr54);
                  §§goto(addr61);
               }
               addr61:
               §§goto(addr73);
               addr52:
            }
         }
         while(true)
         {
            this.§6i§ = param3;
            §§goto(addr52);
         }
         §§goto(addr37);
      }
      
      public function get sprite() : Sprite
      {
         return this.§%G§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#"t§ = null;
         if(_loc4_)
         {
            this.§%G§.dispose();
            if(!(_loc5_ && _loc3_))
            {
               this.§-!r§ = null;
            }
         }
         for each(_loc1_ in this.§5#]§)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_)
         {
            this.§5#]§ = null;
            do
            {
               this.§ !i§ = null;
            }
            while(!_loc4_);
            
         }
      }
      
      public function §>!o§(param1:Texture) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§#"t§ = null;
         var _loc3_:§#"t§ = null;
         if(!_loc6_)
         {
            if(param1 != this.§-!r§)
            {
               if(!(_loc6_ && _loc2_))
               {
                  addr36:
                  this.§-!r§ = param1;
               }
               var _loc4_:int = 0;
               var _loc5_:* = this.§5#]§;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc5_,_loc4_));
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop())
                     {
                        _loc2_ = §§nextvalue(_loc4_,_loc5_);
                        if(_loc7_ || _loc2_)
                        {
                           this.§,"b§(_loc2_);
                        }
                        continue;
                     }
                     if(_loc7_ || _loc2_)
                     {
                        if(!_loc6_)
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              _loc4_ = 0;
                              if(_loc7_)
                              {
                                 _loc5_ = this.§ !i§;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc5_,_loc4_));
                                    break loop0;
                                 }
                                 addr136:
                                 addr134:
                              }
                           }
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr136);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc3_ = §§nextvalue(_loc4_,_loc5_);
                     if(!(_loc6_ && _loc2_))
                     {
                        this.§,"b§(_loc3_);
                     }
                     continue;
                  }
                  §§goto(addr136);
               }
            }
            addr138:
            return;
         }
         §§goto(addr36);
      }
      
      public function §-!V§(param1:Point, param2:Point, param3:Number, param4:§;$§) : void
      {
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         var _loc17_:§#"t§ = null;
         var _loc18_:* = NaN;
         var _loc19_:§#"t§ = null;
         var _loc5_:Point = param2.clone();
         var _loc6_:Number = 9;
         if(!_loc23_)
         {
            _loc5_.normalize(param3 / _loc6_);
         }
         var _loc7_:Point = param1.clone();
         var _loc8_:* = Number(0);
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         §§push(1200);
         if(!_loc23_)
         {
            §§push(int(§§pop() / (20 + param3)));
         }
         var _loc11_:* = §§pop();
         var _loc12_:Boolean = false;
         §§push(§0"x§.§null §);
         if(!_loc23_)
         {
            §§push(§§pop() / _loc6_);
            if(_loc22_)
            {
               addr68:
               §§push(Number(§§pop()));
            }
            var _loc13_:* = §§pop();
            var _loc14_:b2Vec2 = new b2Vec2();
            §§push(b2Settings.b2_maxTranslation);
            if(!_loc23_)
            {
               §§push(§0"x§.§null §);
               if(!_loc23_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc22_)
                  {
                     addr86:
                     §§push(§§pop() / _loc6_);
                     if(_loc23_ && param2)
                     {
                     }
                     addr95:
                     var _loc15_:* = §§pop();
                     §§push(0);
                     if(!(_loc23_ && param3))
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc16_:* = §§pop();
                     loop0:
                     while(true)
                     {
                        §§push(_loc12_);
                        if(_loc22_ || param1)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(!§§pop());
                              if(_loc22_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop15:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc22_ || this)
                                          {
                                             loop16:
                                             while(true)
                                             {
                                                §§pop();
                                                if(!_loc23_)
                                                {
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(_loc9_);
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(§0"x§.§%!y§);
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                            addr586:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(!_loc22_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  §§push(§§pop() % _loc6_);
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc22_)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§!"G§,_loc14_);
                                                                              if(!_loc23_)
                                                                              {
                                                                                 _loc5_.x += _loc14_.x * _loc13_;
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_.y += _loc14_.y * _loc13_;
                                                                                    loop6:
                                                                                    for(; !_loc23_; if(!(_loc22_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    },_loc5_.y *= 1 - §0"x§.§null § * this.§ %§,if(_loc22_ || param1)
                                                                                    {
                                                                                       if(_loc23_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§goto(addr538);
                                                                                    },§§goto(addr587))
                                                                                    {
                                                                                       if(_loc5_.length > _loc15_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_.normalize(_loc15_);
                                                                                             addr276:
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             addr142:
                                                                                             if(_loc23_ && param1)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             _loc7_.y += _loc5_.y * §0"x§.§null §;
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                if(_loc22_ || this)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc7_.x += _loc5_.x * §0"x§.§null §;
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                            §§goto(addr142);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      addr538:
                                                                                                      §§push(_loc16_);
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         addr542:
                                                                                                         §§push(§§pop() + _loc13_);
                                                                                                         if(!(_loc23_ && this))
                                                                                                         {
                                                                                                            addr550:
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      _loc16_ = §§pop();
                                                                                                      if(!(_loc23_ && param1))
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      addr587:
                                                                                                      addr587:
                                                                                                      addr610:
                                                                                                      if(this.§ !i§.length > _loc9_)
                                                                                                      {
                                                                                                         _loc19_ = this.§ !i§.pop();
                                                                                                         if(!(_loc23_ && param2))
                                                                                                         {
                                                                                                            this.§%G§.removeChild(_loc19_);
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               addr607:
                                                                                                               this.§3"u§(_loc19_);
                                                                                                            }
                                                                                                            §§goto(addr610);
                                                                                                         }
                                                                                                         §§goto(addr607);
                                                                                                      }
                                                                                                      if(_loc22_)
                                                                                                      {
                                                                                                         addr617:
                                                                                                         var _loc20_:*;
                                                                                                         §§push((_loc20_ = this).§#!N§);
                                                                                                         if(!(_loc23_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                         }
                                                                                                         var _loc21_:* = §§pop();
                                                                                                         if(!(_loc23_ && param1))
                                                                                                         {
                                                                                                            _loc20_.§#!N§ = _loc21_;
                                                                                                         }
                                                                                                      }
                                                                                                      addr652:
                                                                                                      return;
                                                                                                      addr587:
                                                                                                      addr129:
                                                                                                   }
                                                                                                   §§push(_loc10_);
                                                                                                   if(_loc23_ && this)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   §§push(_loc11_);
                                                                                                   if(!(_loc22_ || param3))
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   §§push(§§pop() % §§pop());
                                                                                                   if(!(_loc23_ && param1))
                                                                                                   {
                                                                                                      addr360:
                                                                                                      §§push(this.§#!N§ % _loc11_);
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               addr367:
                                                                                                               if(this.§ !i§.length > _loc9_)
                                                                                                               {
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  addr374:
                                                                                                                  _loc17_ = this.§ !i§[_loc9_];
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     addr399:
                                                                                                                     _loc9_++;
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        _loc17_.x = _loc7_.x / §#_§.§8]§;
                                                                                                                        _loc17_.y = _loc7_.y / §#_§.§8]§;
                                                                                                                        §§push(1);
                                                                                                                        §§push(_loc9_ / §0"x§.§%!y§);
                                                                                                                        if(!(_loc23_ && param2))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * 0.7);
                                                                                                                        }
                                                                                                                        addr485:
                                                                                                                        addr493:
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!(_loc23_ && param1))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(!(_loc23_ && this))
                                                                                                                           {
                                                                                                                              _loc18_ = §§pop();
                                                                                                                              addr469:
                                                                                                                              if(_loc22_ || param3)
                                                                                                                              {
                                                                                                                                 addr425:
                                                                                                                                 _loc17_.scaleX = _loc18_;
                                                                                                                                 if(_loc22_ || param3)
                                                                                                                                 {
                                                                                                                                    _loc17_.scaleY = _loc18_;
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       if(_loc22_ || param3)
                                                                                                                                       {
                                                                                                                                          if(!(_loc23_ && param1))
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                §§goto(addr425);
                                                                                                                                             }
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(_loc22_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_.length * §0"x§.§null §);
                                                                                                                                                if(_loc22_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc22_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(!(_loc23_ && param3))
                                                                                                                                                      {
                                                                                                                                                         addr520:
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            _loc8_ = §§pop();
                                                                                                                                                            addr524:
                                                                                                                                                            §§push(§0"x§.§#Q§);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr524);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr520);
                                                                                                                                                }
                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                {
                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr587);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr652);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr535:
                                                                                                                                                   _loc10_++;
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      continue loop17;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr538);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr520);
                                                                                                                                          }
                                                                                                                                          §§goto(addr485);
                                                                                                                                       }
                                                                                                                                       §§goto(addr425);
                                                                                                                                    }
                                                                                                                                    §§goto(addr652);
                                                                                                                                    addr436:
                                                                                                                                 }
                                                                                                                                 §§goto(addr469);
                                                                                                                              }
                                                                                                                              §§goto(addr493);
                                                                                                                           }
                                                                                                                           §§goto(addr520);
                                                                                                                        }
                                                                                                                        §§goto(addr524);
                                                                                                                     }
                                                                                                                     §§goto(addr617);
                                                                                                                  }
                                                                                                                  §§goto(addr436);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc17_ = this.§3!X§();
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     this.§%G§.addChild(_loc17_);
                                                                                                                     if(!_loc22_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr399);
                                                                                                                  }
                                                                                                                  this.§ !i§.push(_loc17_);
                                                                                                               }
                                                                                                               §§goto(addr399);
                                                                                                            }
                                                                                                            §§goto(addr652);
                                                                                                         }
                                                                                                         §§goto(addr535);
                                                                                                      }
                                                                                                      §§goto(addr542);
                                                                                                   }
                                                                                                   §§goto(addr550);
                                                                                                }
                                                                                                loop11:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc22_ || param2)
                                                                                                   {
                                                                                                      _loc5_.x *= 1 - §0"x§.§null § * this.§ %§;
                                                                                                      if(!(_loc23_ && this))
                                                                                                      {
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      §§goto(addr367);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            break loop11;
                                                                                                         }
                                                                                                         §§push(_loc16_);
                                                                                                         if(!(_loc23_ && param1))
                                                                                                         {
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            §§push(this.§6i§);
                                                                                                            if(_loc22_)
                                                                                                            {
                                                                                                               addr188:
                                                                                                               §§push(§§pop() > §§pop());
                                                                                                               if(_loc22_ || param1)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     §§goto(addr129);
                                                                                                                     §§goto(addr188);
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                                  addr196:
                                                                                                               }
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            §§goto(addr542);
                                                                                                         }
                                                                                                      }
                                                                                                      addr265:
                                                                                                   }
                                                                                                   §§goto(addr542);
                                                                                                }
                                                                                                §§goto(addr276);
                                                                                             }
                                                                                             §§goto(addr374);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§6i§);
                                                                                          if(_loc22_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc22_ || param3)
                                                                                             {
                                                                                                §§push(§§pop() >= §§pop());
                                                                                                if(!(_loc23_ && param2))
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc23_ && param3)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      addr264:
                                                                                                      §§pop();
                                                                                                      §§goto(addr265);
                                                                                                   }
                                                                                                   §§goto(addr196);
                                                                                                }
                                                                                                §§goto(addr264);
                                                                                             }
                                                                                             §§goto(addr360);
                                                                                          }
                                                                                          break;
                                                                                          §§goto(addr276);
                                                                                       }
                                                                                       §§goto(addr360);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr367);
                                                                           }
                                                                        }
                                                                        §§goto(addr538);
                                                                     }
                                                                     §§goto(addr360);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr587);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr570:
                              }
                              §§goto(addr586);
                           }
                        }
                        §§goto(addr570);
                     }
                  }
                  §§goto(addr95);
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr86);
         }
         §§goto(addr68);
      }
      
      public function get enabled() : Boolean
      {
         return this.§&A§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&A§ = param1;
            do
            {
               this.§%G§.visible = this.§&A§;
            }
            while(_loc2_);
            
         }
      }
      
      private function §3!X§() : §#"t§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(Boolean(this.§5#]§));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr45);
                     }
                     return this.§5#]§.pop();
                  }
               }
            }
            addr45:
            if(this.§5#]§.length > 0)
            {
               if(_loc3_ && _loc3_)
               {
                  var _loc1_:§#"t§ = new §#"t§(this.§-!r§);
                  §§goto(addr57);
               }
            }
            §§goto(addr57);
         }
         addr57:
         if(!_loc3_)
         {
            §§push(_loc1_);
            §§push(this.§-!r§.width);
            if(_loc2_ || _loc1_)
            {
               §§push(-§§pop());
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() / 2);
               }
            }
            §§pop().pivotX = §§pop();
            do
            {
               §§push(_loc1_);
               §§push(this.§-!r§.height);
               if(!(_loc3_ && this))
               {
                  §§push(-§§pop());
                  if(_loc3_)
                  {
                     continue;
                  }
               }
            }
            while(§§pop().pivotY = §§pop(), _loc3_ && _loc2_);
            
         }
         return _loc1_;
      }
      
      private function §3"u§(param1:§#"t§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!this.§5#]§)
            {
               while(true)
               {
                  this.§5#]§ = new Vector.<§#"t§>();
                  addr78:
                  while(true)
                  {
                  }
                  addr51:
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  return;
                  addr58:
               }
            }
            while(true)
            {
               this.§5#]§.push(param1);
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr51);
            }
            §§goto(addr58);
         }
         §§goto(addr78);
      }
      
      public function §"Q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§!"G§ = param1;
         }
      }
      
      private function §,"b§(param1:§#"t§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            param1.texture = this.§-!r§;
         }
         loop0:
         while(true)
         {
            §§push(param1);
            §§push(this.§-!r§.width);
            if(_loc3_ || _loc3_)
            {
               §§push(-§§pop());
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() / 2);
               }
            }
            §§pop().pivotX = §§pop();
            do
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§push(param1);
                  §§push(this.§-!r§.height);
                  if(!_loc2_)
                  {
                     §§push(-§§pop());
                     if(!_loc3_)
                     {
                        continue;
                     }
                  }
                  §§push(§§pop() / 2);
                  continue;
               }
               continue loop0;
            }
            while(§§pop().pivotY = §§pop(), _loc2_ && param1);
            
            return;
         }
      }
   }
}
