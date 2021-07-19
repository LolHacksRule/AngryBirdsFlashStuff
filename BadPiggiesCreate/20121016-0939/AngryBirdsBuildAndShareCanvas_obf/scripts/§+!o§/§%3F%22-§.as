package §+!o§
{
   import § !V§.b2PrismaticJoint;
   import § !V§.b2WeldJoint;
   import § "?§.§&!>§;
   import § "?§.§-5§;
   import §"v§.§9"§;
   import §&"5§.§6!L§;
   import §,a§.§+!Z§;
   import §,a§.§+"&§;
   import §,a§.§<!m§;
   import §,a§.§]!>§;
   import §,a§.§^7§;
   import §-!n§.§5!U§;
   import §2"=§.b2Vec2;
   import §3"5§.§ !,§;
   import §3"5§.§5!q§;
   import §3"5§.§6O§;
   import §3"5§.§8"9§;
   import §5!V§.§!w§;
   import §5!V§.§8^§;
   import §5!V§.§?!b§;
   import §5!V§.§]"%§;
   import §7R§.Texture;
   import §9=§.§0!5§;
   import §=!M§.§9!P§;
   import §default§.§=!Z§;
   import §default§.Sprite;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?"-§
   {
       
      
      protected var §84§:Vector.<§]"5§>;
      
      protected var §>T§:int;
      
      public var §9q§:§!w§;
      
      public var §53§:Vector.<§]!i§>;
      
      protected var §?T§:Sprite;
      
      protected var §4!I§:Sprite;
      
      private var §>!w§:Sprite;
      
      private var §9!8§:Sprite;
      
      private var §?! §:Sprite;
      
      protected var §<!_§:Vector.<Texture>;
      
      protected var §2"'§:Vector.<§ !,§>;
      
      protected var §`![§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §4""§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §,!§:Boolean = false;
      
      protected var §#!B§:Number;
      
      protected var §5!J§:int;
      
      protected var §6!F§:Vector.<§8"9§>;
      
      protected var §0!6§:int = 0;
      
      private var §&!y§:int = 0;
      
      private var §5p§:int = 0;
      
      private var §7e§:int;
      
      private var §0"6§:Boolean = true;
      
      private var §7"-§:Boolean = true;
      
      public function §?"-§(param1:§!w§, param2:§9"§, param3:Sprite)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§ !,§ = null;
         var _loc6_:§5!q§ = null;
         var _loc7_:§]"5§ = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§]"5§ = null;
         var _loc11_:§]"5§ = null;
         if(!_loc14_)
         {
            this.§84§ = new Vector.<§]"5§>();
            while(true)
            {
               this.§53§ = new Vector.<§]!i§>();
               loop1:
               while(true)
               {
                  this.§<!_§ = new Vector.<Texture>();
                  while(true)
                  {
                     this.§#!B§ = this.§8^§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
                     loop3:
                     while(!(_loc14_ && param3))
                     {
                        this.§6!F§ = new Vector.<§8"9§>();
                        loop4:
                        while(true)
                        {
                           super();
                           loop5:
                           while(true)
                           {
                              this.§9q§ = param1;
                              loop6:
                              while(true)
                              {
                                 this.§>T§ = 0;
                                 loop7:
                                 while(true)
                                 {
                                    this.§4!I§ = param3;
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§4!I§);
                                       while(true)
                                       {
                                          §§pop().§#!1§ = false;
                                          addr291:
                                          addr171:
                                          while(true)
                                          {
                                             this.§7"-§ = true;
                                             addr285:
                                             while(true)
                                             {
                                                this.§0"6§ = true;
                                                while(!_loc14_)
                                                {
                                                   this.§?T§ = new Sprite();
                                                   continue loop7;
                                                   if(_loc15_ || param1)
                                                   {
                                                      continue loop4;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                          }
                                          while(_loc15_ || param3)
                                          {
                                             §§pop().addChild(this.§9!8§);
                                             loop23:
                                             while(_loc15_)
                                             {
                                                §§goto(addr183);
                                                addr47:
                                                if(!(_loc15_ || param3))
                                                {
                                                   continue;
                                                }
                                                addr222:
                                                if(!(_loc14_ && this))
                                                {
                                                   if(false)
                                                   {
                                                      loop25:
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(§0!5§.§;l§(param2.theme).§;F§);
                                                         §§push(this.§9q§.borders.§4"$§);
                                                         if(!(_loc14_ && param3))
                                                         {
                                                            §§push(this.§9q§);
                                                            if(!(_loc14_ && param2))
                                                            {
                                                               §§push(§§pop().borders);
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(§§pop().§>D§);
                                                                  if(_loc15_ || this)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc14_ && this))
                                                                     {
                                                                        addr111:
                                                                        §§push(§§pop() / 2);
                                                                        §§push(this.§9q§.borders.mBorderGround_B2);
                                                                        if(_loc15_ || param2)
                                                                        {
                                                                           addr122:
                                                                           §§push(§§pop() + §?!b§.§1!§);
                                                                        }
                                                                        §§pop().addObject(§§pop(),§§pop(),§§pop());
                                                                        while(true)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              if(!(_loc15_ || param1))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc15_ || param3)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 continue loop25;
                                                                              }
                                                                              addr167:
                                                                           }
                                                                           addr149:
                                                                           this.§7e§ = this.§84§.length;
                                                                           if(_loc14_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr47);
                                                                        }
                                                                        while(!_loc14_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        while(!_loc14_)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              this.§?! § = new Sprite();
                                                                              break loop23;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr285);
                                                                        addr204:
                                                                        addr250:
                                                                     }
                                                                     §§goto(addr111);
                                                                  }
                                                                  §§goto(addr122);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr111);
                                                      }
                                                      continue;
                                                   }
                                                   var _loc4_:* = 0;
                                                   if(!_loc14_)
                                                   {
                                                      _loc4_ = 0;
                                                   }
                                                   addr408:
                                                   §§push(_loc4_);
                                                   if(_loc15_)
                                                   {
                                                      §§push(param2.§'O§);
                                                      if(_loc15_)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            _loc6_ = param2.getObject(_loc4_);
                                                            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
                                                            {
                                                               if(!_loc14_)
                                                               {
                                                                  _loc7_.uniqueID = _loc6_.uniqueID;
                                                                  if(!_loc14_)
                                                                  {
                                                                     addr407:
                                                                     _loc4_++;
                                                                  }
                                                               }
                                                               §§goto(addr408);
                                                            }
                                                            §§goto(addr407);
                                                         }
                                                         if(!(_loc14_ && this))
                                                         {
                                                            this.§!g§();
                                                            if(_loc15_)
                                                            {
                                                               this.§7!X§(true);
                                                               if(_loc15_)
                                                               {
                                                                  this.§2"'§ = new Vector.<§ !,§>();
                                                                  addr485:
                                                                  §§push(0);
                                                                  if(!(_loc14_ && this))
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     if(!(_loc14_ && this))
                                                                     {
                                                                        if(!(_loc15_ || param3))
                                                                        {
                                                                           §§goto(addr485);
                                                                        }
                                                                        addr434:
                                                                        §§push(_loc4_);
                                                                        if(!_loc14_)
                                                                        {
                                                                           addr495:
                                                                           addr497:
                                                                           if(§§pop() < param2.§-H§)
                                                                           {
                                                                              this.§2"'§.push(§ !,§.§8!A§(param2.§8!P§(_loc4_)));
                                                                              if(!(_loc14_ && param2))
                                                                              {
                                                                                 _loc4_++;
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr434);
                                                                                 }
                                                                                 addr506:
                                                                                 var _loc12_:int = 0;
                                                                                 addr505:
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    var _loc13_:* = this.§2"'§;
                                                                                    addr711:
                                                                                    for each(_loc5_ in _loc13_)
                                                                                    {
                                                                                       §§push(int(_loc5_.index1 + this.§7e§));
                                                                                       if(_loc15_ || param3)
                                                                                       {
                                                                                          _loc8_ = §§pop();
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             §§push(int(_loc5_.index2 + this.§7e§));
                                                                                             if(_loc15_ || this)
                                                                                             {
                                                                                                addr549:
                                                                                                _loc9_ = §§pop();
                                                                                                if(_loc15_ || param2)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!(_loc14_ && this))
                                                                                                   {
                                                                                                      addr565:
                                                                                                      §§push(§§pop() < this.§84§.length);
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc14_ && param3))
                                                                                                            {
                                                                                                               addr580:
                                                                                                               §§pop();
                                                                                                               addr589:
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  addr584:
                                                                                                                  §§push(_loc9_ < this.§84§.length);
                                                                                                               }
                                                                                                               _loc10_ = this.§84§[_loc8_];
                                                                                                               _loc11_ = this.§84§[_loc9_];
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  §§push(Boolean(_loc10_));
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr709:
                                                                                                                        §§pop();
                                                                                                                        §§push(Boolean(_loc11_));
                                                                                                                        if(_loc15_ || param2)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        §§goto(addr709);
                                                                                                                        addr710:
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc15_ || this)
                                                                                                                        {
                                                                                                                           if(_loc5_.type != §6O§.§]I§)
                                                                                                                           {
                                                                                                                              if(_loc15_ || param3)
                                                                                                                              {
                                                                                                                                 addr679:
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    _loc5_.§5""§ = this.§9q§.§[g§.§?"$§.§[?§(_loc5_.§3"#§(_loc10_,_loc11_));
                                                                                                                                 }
                                                                                                                                 §§goto(addr710);
                                                                                                                              }
                                                                                                                              addr604:
                                                                                                                              §§goto(addr711);
                                                                                                                              addr692:
                                                                                                                           }
                                                                                                                           this.§6!F§.push(new §8"9§(_loc8_,_loc9_,_loc5_.§1!Q§));
                                                                                                                           if(!(_loc14_ && this))
                                                                                                                           {
                                                                                                                              §§goto(addr604);
                                                                                                                           }
                                                                                                                           §§goto(addr692);
                                                                                                                        }
                                                                                                                        §§goto(addr679);
                                                                                                                     }
                                                                                                                     throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr709);
                                                                                                            }
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§goto(addr589);
                                                                                                         }
                                                                                                         §§goto(addr711);
                                                                                                      }
                                                                                                      §§goto(addr580);
                                                                                                   }
                                                                                                   §§goto(addr584);
                                                                                                }
                                                                                                §§goto(addr580);
                                                                                             }
                                                                                             §§goto(addr565);
                                                                                          }
                                                                                          §§goto(addr584);
                                                                                       }
                                                                                       §§goto(addr549);
                                                                                    }
                                                                                 }
                                                                                 return;
                                                                                 addr452:
                                                                              }
                                                                              §§goto(addr505);
                                                                           }
                                                                           if(!(_loc14_ && param2))
                                                                           {
                                                                              §§goto(addr505);
                                                                           }
                                                                        }
                                                                        §§goto(addr506);
                                                                        addr477:
                                                                     }
                                                                     §§goto(addr506);
                                                                  }
                                                                  §§goto(addr495);
                                                               }
                                                               §§goto(addr506);
                                                            }
                                                            §§goto(addr452);
                                                         }
                                                         §§goto(addr477);
                                                      }
                                                      §§goto(addr497);
                                                   }
                                                   §§goto(addr506);
                                                }
                                                while(_loc15_ || param2)
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(this.§4!I§);
                                                   while(true)
                                                   {
                                                      §§pop().addChild(this.§>!w§);
                                                      §§goto(addr204);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.§9!8§ = new Sprite();
                                                   §§goto(addr250);
                                                   §§goto(addr222);
                                                }
                                                addr222:
                                             }
                                             while(!(_loc14_ && param1))
                                             {
                                                §§push(this.§4!I§);
                                                while(true)
                                                {
                                                   §§pop().addChild(this.§?T§);
                                                   §§goto(addr222);
                                                   addr157:
                                                   if(!(_loc15_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   §§pop().addChild(this.§?! §);
                                                   §§goto(addr167);
                                                }
                                             }
                                             §§push(this.§4!I§);
                                             continue loop7;
                                             if(!_loc15_)
                                             {
                                                continue;
                                             }
                                             if(_loc15_)
                                             {
                                                §§goto(addr157);
                                             }
                                             §§goto(addr201);
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
         §§goto(addr215);
      }
      
      protected function get §8^§() : Class
      {
         return §8^§;
      }
      
      public function get §6!v§() : Sprite
      {
         return this.§?! §;
      }
      
      public function get §9!X§() : Sprite
      {
         return this.§4!I§;
      }
      
      public function get §8!<§() : Sprite
      {
         return this.§9!8§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         loop0:
         while(true)
         {
            if(this.§84§.length > 0)
            {
               this.§5"1§(0);
               continue;
            }
            if(!(_loc2_ && _loc1_))
            {
               this.§84§ = null;
               while(true)
               {
                  this.§6!F§ = null;
                  loop2:
                  while(true)
                  {
                     §§push(this.§4!I§);
                     if(_loc3_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              addr95:
                              this.§4!I§.dispose();
                              loop3:
                              while(true)
                              {
                                 this.§4!I§ = null;
                                 loop4:
                                 while(true)
                                 {
                                    this.§?T§ = null;
                                    loop5:
                                    while(true)
                                    {
                                       this.§?! § = null;
                                       if(!_loc2_)
                                       {
                                          while(true)
                                          {
                                             this.§>!w§ = null;
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   this.§9!8§ = null;
                                                   if(!_loc3_)
                                                   {
                                                      return;
                                                   }
                                                   addr159:
                                                   addr159:
                                                   addr159:
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue;
                                                }
                                                continue loop3;
                                             }
                                             continue loop0;
                                             addr38:
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             if(false)
                                             {
                                                continue;
                                             }
                                             addr125:
                                             addr154:
                                             if(this.§<!_§.length > 0)
                                             {
                                                _loc1_ = this.§<!_§.pop();
                                                if(_loc3_ || _loc3_)
                                                {
                                                   this.§9q§.§7!J§.§^y§(_loc1_);
                                                }
                                                §§goto(addr154);
                                             }
                                             §§goto(addr159);
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr159);
                                    }
                                 }
                              }
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr95);
                  }
               }
            }
            §§goto(addr159);
         }
      }
      
      private function §7!X§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?T§.visible = param1;
         }
      }
      
      private function §!g§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc3_:§]"5§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§=!Z§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§]"5§> = new Vector.<§]"5§>();
         for each(_loc3_ in this.§84§)
         {
            if(_loc17_)
            {
               if(_loc3_.isTexture())
               {
                  if(!_loc16_)
                  {
                     addr74:
                     _loc2_.push(_loc3_);
                  }
                  _loc4_ = _loc3_.sprite.getBounds(this.§4!I§);
                  if(_loc17_)
                  {
                     if(_loc1_ != null)
                     {
                        _loc1_ = _loc1_.union(_loc4_);
                        continue;
                     }
                  }
                  _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               }
               continue;
            }
            §§goto(addr74);
         }
         if(!_loc16_)
         {
            if(_loc1_)
            {
               loop1:
               while(true)
               {
                  §§push(1);
                  loop2:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop3:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        addr317:
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(_loc1_.width > 2048);
                              if(_loc17_ || _loc1_)
                              {
                                 if(!§§pop())
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       §§pop();
                                       addr234:
                                       while(true)
                                       {
                                          if(_loc17_ || this)
                                          {
                                             if(!(_loc16_ && _loc3_))
                                             {
                                                continue loop15;
                                             }
                                             addr301:
                                             addr293:
                                             _loc1_.right /= 2;
                                             _loc1_.bottom /= 2;
                                             continue loop1;
                                          }
                                          addr266:
                                          while(true)
                                          {
                                             if(_loc17_)
                                             {
                                                if(!_loc16_)
                                                {
                                                   continue loop5;
                                                }
                                                continue loop4;
                                             }
                                             §§push(_loc5_);
                                             addr285:
                                             continue loop1;
                                             if(_loc17_ || this)
                                             {
                                                §§push(§§pop() / 2);
                                                if(!_loc16_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             if(!_loc17_)
                                             {
                                                break;
                                             }
                                             _loc5_ = §§pop();
                                          }
                                          continue loop3;
                                       }
                                    }
                                    addr233:
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(int(_loc1_.width));
                                          loop8:
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                if(_loc17_)
                                                {
                                                   §§push(int(_loc1_.height));
                                                   loop10:
                                                   for(; _loc17_; while(true)
                                                   {
                                                      if(_loc16_ && _loc3_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(!_loc17_)
                                                      {
                                                         break;
                                                      }
                                                      _loc8_ = §§pop();
                                                      §§goto(addr149);
                                                   },continue loop2)
                                                   {
                                                      _loc7_ = §§pop();
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(!(_loc17_ || _loc3_))
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(!(_loc17_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         do
                                                         {
                                                            §§push(int(_loc1_.left));
                                                            continue loop10;
                                                         }
                                                         while(false);
                                                         
                                                         _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                                         if(_loc17_)
                                                         {
                                                            this.§^!P§(_loc10_.rect,_loc10_,_loc5_);
                                                         }
                                                         _loc11_ = this.§63§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                                         if(_loc17_)
                                                         {
                                                            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                                         }
                                                         _loc12_ = this.§9q§.§7!J§.§&#§(_loc10_);
                                                         if(!_loc16_)
                                                         {
                                                            this.§<!_§.push(_loc12_);
                                                         }
                                                         (_loc13_ = new §=!Z§(_loc12_)).x = _loc8_ / _loc5_;
                                                         if(_loc17_)
                                                         {
                                                            _loc13_.y = _loc9_ / _loc5_;
                                                            _loc13_.scaleX = 1 / _loc5_;
                                                            _loc13_.scaleY = 1 / _loc5_;
                                                            addr443:
                                                            if(_loc17_ || this)
                                                            {
                                                               addr399:
                                                               this.§?T§.addChild(_loc13_);
                                                               if(_loc17_)
                                                               {
                                                                  _loc11_.dispose();
                                                                  if(!(_loc16_ && _loc1_))
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§goto(addr397);
                                                                     }
                                                                     §§goto(addr443);
                                                                  }
                                                                  §§goto(addr399);
                                                               }
                                                               §§goto(addr443);
                                                            }
                                                            addr437:
                                                            §§goto(addr437);
                                                         }
                                                         addr397:
                                                         if(false)
                                                         {
                                                            §§goto(addr399);
                                                         }
                                                         return;
                                                         addr149:
                                                         while(true)
                                                         {
                                                            if(!(_loc17_ || _loc3_))
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(!(_loc17_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc16_ && _loc1_))
                                                            {
                                                               §§push(int(_loc1_.top));
                                                               if(_loc17_ || this)
                                                               {
                                                                  continue;
                                                               }
                                                               continue loop10;
                                                            }
                                                            addr311:
                                                            _loc1_.top /= 2;
                                                            §§goto(addr301);
                                                         }
                                                         continue loop7;
                                                      }
                                                      §§goto(addr293);
                                                   }
                                                   continue loop8;
                                                }
                                                §§goto(addr234);
                                                §§goto(addr301);
                                             }
                                             §§goto(addr266);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       _loc1_.left /= 2;
                                    }
                                    §§goto(addr311);
                                    §§goto(addr248);
                                 }
                              }
                              §§goto(addr233);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr397);
         }
         §§goto(addr317);
      }
      
      private function §63§(param1:Vector.<§]"5§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:§]"5§ = null;
         var _loc11_:§^7§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§+!y§.shape).§]!&§();
            _loc13_ = new Rectangle(_loc12_[0].x / §!w§.§4!-§ * param6,_loc12_[0].y / §!w§.§4!-§ * param6,(_loc12_[1].x - _loc12_[0].x) / §!w§.§4!-§ * param6,(_loc12_[1].y - _loc12_[0].y) / §!w§.§4!-§ * param6);
            if(!(_loc17_ && param1))
            {
               _loc10_.identity();
               loop1:
               while(true)
               {
                  _loc10_.scale(_loc13_.width,_loc13_.height);
                  while(true)
                  {
                     _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                     while(_loc16_ || this)
                     {
                        _loc10_.rotate((360 - _loc7_.§+!1§()) / 180 * Math.PI);
                        continue loop1;
                        addr165:
                        if(_loc16_ || param2)
                        {
                           _loc8_.draw(_loc9_,_loc10_);
                           if(!_loc17_)
                           {
                              addr144:
                              if(false)
                              {
                                 while(true)
                                 {
                                    _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                                    §§goto(addr144);
                                 }
                                 addr146:
                              }
                              continue loop0;
                           }
                           while(_loc16_)
                           {
                              §§goto(addr165);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr146);
            }
         }
         if(!_loc17_)
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §^!P§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         §§push(this.§9q§.background.§!z§());
         if(!(_loc17_ && param3))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§6!L§;
         if(_loc5_ = this.§9q§.§]@§.§12§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(_loc16_)
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_);
               loop0:
               while(true)
               {
                  §§push(_loc6_.width - 2);
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc6_.height - 2);
                           loop4:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop5:
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param1.top / _loc9_);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       loop8:
                                       while(true)
                                       {
                                          _loc10_ = §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             if(param1.top < 0)
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   addr380:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      addr381:
                                                      while(true)
                                                      {
                                                         _loc10_ = §§pop();
                                                         addr382:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   loop29:
                                                   while(true)
                                                   {
                                                      if(_loc17_ && param2)
                                                      {
                                                         continue loop10;
                                                      }
                                                      §§push(_loc12_);
                                                      if(!_loc17_)
                                                      {
                                                         addr180:
                                                         if(!(_loc17_ && param2))
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               addr190:
                                                               §§push(int(§§pop()));
                                                               if(!_loc17_)
                                                               {
                                                                  addr192:
                                                                  if(_loc16_ || param3)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  loop16:
                                                                  while(_loc16_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     while(true)
                                                                     {
                                                                        _loc11_ = §§pop();
                                                                        if(!(_loc17_ && this))
                                                                        {
                                                                           if(!(_loc16_ || param3))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                        addr372:
                                                                        while(true)
                                                                        {
                                                                           _loc11_ = §§pop();
                                                                           addr373:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.left / _loc8_);
                                                                           }
                                                                           break loop29;
                                                                        }
                                                                        addr249:
                                                                        §§push(§§pop());
                                                                        if(!(_loc17_ && param2))
                                                                        {
                                                                           _loc13_ = §§pop();
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc17_ && param2))
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       _loc13_ = §§pop();
                                                                                       continue loop29;
                                                                                    }
                                                                                    addr337:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc12_ = §§pop();
                                                                                       addr338:
                                                                                       while(!_loc17_)
                                                                                       {
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                addr220:
                                                                                                if(param1.left < 0)
                                                                                                {
                                                                                                   if(_loc16_ || param3)
                                                                                                   {
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§push(_loc12_);
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         addr297:
                                                                                                         §§push(§§pop() - 1);
                                                                                                         while(!(_loc17_ && param1))
                                                                                                         {
                                                                                                            _loc12_ = §§pop();
                                                                                                            break loop27;
                                                                                                         }
                                                                                                         continue loop8;
                                                                                                         addr297:
                                                                                                      }
                                                                                                      §§goto(addr297);
                                                                                                   }
                                                                                                   break loop27;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.right / _loc8_);
                                                                                                   if(!(_loc16_ || this))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                      break loop29;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                while(!(_loc17_ && this))
                                                                                                {
                                                                                                   continue loop7;
                                                                                                   §§goto(addr220);
                                                                                                }
                                                                                                addr220:
                                                                                                while(_loc16_)
                                                                                                {
                                                                                                   §§push(int(§§pop()));
                                                                                                   continue loop16;
                                                                                                   §§goto(addr192);
                                                                                                   §§goto(addr322);
                                                                                                }
                                                                                                addr322:
                                                                                                continue loop4;
                                                                                                addr350:
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       §§goto(addr382);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr381);
                                                                                 addr266:
                                                                              }
                                                                              §§goto(addr297);
                                                                              §§goto(addr180);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    if(!(_loc16_ || param1))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr220);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr373);
                                                                              }
                                                                              §§goto(addr338);
                                                                              addr212:
                                                                              if(_loc17_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr85:
                                                                              §§push(_loc14_);
                                                                              if(!(_loc17_ && param1))
                                                                              {
                                                                                 if(_loc16_ || param1)
                                                                                 {
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                _loc6_.dispose();
                                                                                             }
                                                                                             if(!(_loc17_ && param3))
                                                                                             {
                                                                                                if(!(_loc17_ && param3))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      addr127:
                                                                                                      if(_loc15_ >= _loc11_)
                                                                                                      {
                                                                                                         if(!(_loc17_ && param2))
                                                                                                         {
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               _loc14_++;
                                                                                                               addr141:
                                                                                                               §§goto(addr85);
                                                                                                            }
                                                                                                            addr161:
                                                                                                            if(_loc16_ || param1)
                                                                                                            {
                                                                                                               _loc15_++;
                                                                                                               addr144:
                                                                                                            }
                                                                                                            §§goto(addr127);
                                                                                                            addr175:
                                                                                                         }
                                                                                                         §§goto(addr141);
                                                                                                      }
                                                                                                      param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                                                      §§goto(addr161);
                                                                                                   }
                                                                                                   §§goto(addr423);
                                                                                                }
                                                                                                §§goto(addr144);
                                                                                             }
                                                                                             §§goto(addr141);
                                                                                          }
                                                                                          addr174:
                                                                                          _loc15_ = _loc10_;
                                                                                          addr173:
                                                                                          §§goto(addr175);
                                                                                       }
                                                                                       §§goto(addr127);
                                                                                    }
                                                                                    §§goto(addr173);
                                                                                 }
                                                                                 §§goto(addr174);
                                                                              }
                                                                              §§goto(addr127);
                                                                           }
                                                                           continue loop9;
                                                                           addr258:
                                                                        }
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  §§goto(addr380);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr266);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc17_ && this))
                                                      {
                                                         if(_loc17_ && this)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                      §§goto(addr372);
                                                   }
                                                   §§goto(addr356);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr350);
                                                §§goto(addr382);
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
            §§goto(addr316);
         }
         addr423:
      }
      
      public function §"!f§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §]"5§
      {
         var _loc10_:§]!>§ = §<!m§.§"!F§(param2);
         return new §1!!§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §-!!§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §]"5§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:§]"5§ = null;
         var _loc11_:* = param2;
         if(_loc12_)
         {
            if("BIRD_BLACK" !== _loc11_)
            {
               if("BIRD_BLUE" === _loc11_)
               {
                  if(!(_loc13_ && param2))
                  {
                     §§push(1);
                     if(!(_loc12_ || param2))
                     {
                        addr289:
                     }
                  }
                  else
                  {
                     addr328:
                     §§push(5);
                     if(_loc12_)
                     {
                        addr331:
                     }
                  }
               }
               else if("BIRD_GREEN" === _loc11_)
               {
                  if(_loc12_ || this)
                  {
                     §§push(2);
                     if(!(_loc13_ && param2))
                     {
                        §§goto(addr289);
                     }
                     §§goto(addr367);
                  }
                  else
                  {
                     §§goto(addr314);
                  }
               }
               else if("BIRD_WHITE" === _loc11_)
               {
                  if(!(_loc13_ && this))
                  {
                     §§push(3);
                     if(_loc13_ && param1)
                     {
                        §§goto(addr322);
                     }
                  }
                  else
                  {
                     §§goto(addr328);
                  }
               }
               else if("BIRD_YELLOW" === _loc11_)
               {
                  if(!_loc13_)
                  {
                     addr314:
                     §§push(4);
                     if(_loc13_ && param3)
                     {
                        §§goto(addr331);
                     }
                     §§goto(addr367);
                  }
                  else
                  {
                     addr337:
                     §§push(6);
                     if(_loc12_ || param1)
                     {
                        §§goto(addr345);
                     }
                     else
                     {
                        §§goto(addr362);
                     }
                  }
               }
               else if("BIRD_RED" === _loc11_)
               {
                  if(_loc12_)
                  {
                     §§goto(addr328);
                  }
                  else
                  {
                     §§goto(addr337);
                  }
               }
               else
               {
                  if("BIRD_REDBIG" === _loc11_)
                  {
                     if(_loc12_)
                     {
                        §§goto(addr337);
                     }
                     else
                     {
                        §§goto(addr349);
                     }
                  }
                  else if("BIRD_ORANGE" === _loc11_)
                  {
                     §§goto(addr349);
                  }
                  else
                  {
                     §§push(8);
                  }
                  §§goto(addr349);
               }
               addr367:
               switch(§§pop())
               {
                  case 0:
                     _loc10_ = new §6!>§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
                     break;
                  case 1:
                     _loc10_ = new §3!F§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
                     break;
                  case 2:
                     _loc10_ = new §3U§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
                     break;
                  case 3:
                     _loc10_ = new §6!b§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
                     break;
                  case 4:
                     _loc10_ = new §+!?§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
                     break;
                  case 5:
                     _loc10_ = new §^f§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
                     break;
                  case 6:
                     _loc10_ = new §8!B§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
                     break;
                  case 7:
                     _loc10_ = new §[f§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
                     break;
                  default:
                     _loc10_ = new §>G§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
               }
               return _loc10_;
            }
            if(!(_loc13_ && param2))
            {
               §§push(0);
               if(!(_loc12_ || param3))
               {
                  addr345:
               }
            }
            else
            {
               addr349:
               §§push(7);
               if(!_loc13_)
               {
                  addr362:
               }
            }
            §§goto(addr367);
            §§goto(addr349);
         }
         §§goto(addr337);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§0!6§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §]"5§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(_loc15_ || param3)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§]"5§;
         §§push((_loc11_ = this.§`"+§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture());
         if(_loc15_)
         {
            if(§§pop())
            {
               if(_loc15_ || param3)
               {
                  §§push(_loc10_);
                  §§push(this.§0"6§);
                  if(!(_loc14_ && param1))
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
                  if(!(_loc14_ && param3))
                  {
                     this.§84§[this.§84§.length] = _loc11_;
                     if(!(_loc14_ && param2))
                     {
                        loop0:
                        while(true)
                        {
                           §§push(_loc11_ is §>G§);
                           if(_loc15_)
                           {
                              §§push(§§pop());
                              if(_loc15_)
                              {
                                 if(§§pop())
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       §§pop();
                                       if(!_loc14_)
                                       {
                                          §§push(_loc11_.§<",§());
                                          if(_loc15_)
                                          {
                                             if(_loc14_)
                                             {
                                                continue;
                                             }
                                             §§push(!§§pop());
                                             if(_loc15_ || param2)
                                             {
                                                addr94:
                                                if(§§pop())
                                                {
                                                   if(!(_loc14_ && param3))
                                                   {
                                                      this.§>!w§.addChild(_loc10_);
                                                      if(!_loc14_)
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop0;
                                                         }
                                                         var _loc12_:*;
                                                         §§push((_loc12_ = this).§0!6§);
                                                         if(!(_loc14_ && param3))
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         var _loc13_:* = §§pop();
                                                         if(_loc15_ || param3)
                                                         {
                                                            _loc12_.§0!6§ = _loc13_;
                                                         }
                                                         if(_loc15_)
                                                         {
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(param5);
                                                               loop3:
                                                               while(!(_loc14_ && param1))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc15_ || param2)
                                                                     {
                                                                        addr329:
                                                                        if(_loc15_ || param2)
                                                                        {
                                                                           addr259:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§9q§);
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§;O§(_loc11_);
                                                                                 addr263:
                                                                                 while(true)
                                                                                 {
                                                                                    addr200:
                                                                                    addr271:
                                                                                    loop5:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param6);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       if(!(_loc15_ || param1))
                                                                                       {
                                                                                          while(!_loc14_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                break loop3;
                                                                                             }
                                                                                          }
                                                                                          break loop0;
                                                                                          addr281:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc15_ || this)
                                                                                             {
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   break loop5;
                                                                                                }
                                                                                                §§push(this.§9q§);
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                §§pop().activeObject = _loc11_;
                                                                                             }
                                                                                             if(!(_loc15_ || this))
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             addr234:
                                                                                          }
                                                                                          return _loc11_;
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc14_ && param1))
                                                                                       {
                                                                                          break loop1;
                                                                                       }
                                                                                       addr321:
                                                                                       addr321:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr259:
                                                                        }
                                                                        while(_loc15_ || param3)
                                                                        {
                                                                           this.§?! §.addChild(_loc10_);
                                                                           §§goto(addr321);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr281);
                                                                           §§push(param9);
                                                                           break loop0;
                                                                        }
                                                                        addr300:
                                                                        addr329:
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc15_ || param3)
                                                                  {
                                                                     if(_loc14_ && param3)
                                                                     {
                                                                        addr325:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           addr326:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              addr327:
                                                                              while(§§pop())
                                                                              {
                                                                              }
                                                                              break loop0;
                                                                           }
                                                                        }
                                                                        addr325:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr300);
                                                                        }
                                                                        else
                                                                        {
                                                                           this.§9!8§.addChild(_loc10_);
                                                                           §§goto(addr271);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr326);
                                                                  §§goto(addr283);
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                            addr235:
                                                            addr194:
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                      §§goto(addr329);
                                                   }
                                                   §§goto(addr234);
                                                }
                                                else
                                                {
                                                   §§goto(addr325);
                                                   §§push(_loc11_.front);
                                                }
                                                §§goto(addr325);
                                             }
                                             §§goto(addr211);
                                          }
                                          §§goto(addr325);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr235);
                                    }
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr327);
                           }
                           break;
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr329);
                        }
                        addr111:
                     }
                     §§goto(addr194);
                  }
                  §§goto(addr263);
               }
               §§goto(addr259);
            }
            else
            {
               this.§84§[this.§84§.length] = _loc11_;
               if(_loc15_ || param2)
               {
                  §§goto(addr111);
               }
            }
            §§goto(addr329);
         }
         §§goto(addr283);
      }
      
      public function §8!A§(param1:int, param2:§]"5§, param3:§]"5§) : § !,§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§ !,§ = null;
         var _loc4_:int = this.§84§.indexOf(param2) - this.§7e§;
         var _loc5_:int = this.§84§.indexOf(param3) - this.§7e§;
         if(!(_loc8_ && this))
         {
            §§push(_loc4_);
            if(_loc7_ || param2)
            {
               §§push(0);
               if(_loc7_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc7_)
                  {
                     if(§§pop())
                     {
                        if(_loc7_ || param3)
                        {
                           §§goto(addr77);
                        }
                     }
                     §§goto(addr83);
                  }
                  addr77:
                  §§pop();
                  if(!_loc8_)
                  {
                     addr83:
                     if(_loc5_ >= 0)
                     {
                        §§goto(addr84);
                     }
                     §§goto(addr141);
                  }
                  addr84:
                  (_loc6_ = new § !,§(§6O§.§+k§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§5""§ = this.§9q§.§[g§.§?"$§.§[?§(_loc6_.§3"#§(param2,param3));
                  if(_loc7_ || param2)
                  {
                     this.§2"'§.push(_loc6_);
                     if(_loc8_ && param1)
                     {
                        addr141:
                        return null;
                     }
                  }
                  return _loc6_;
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §%'§(param1:§ !,§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(!(param1.§5""§ is b2WeldJoint))
            {
               if(_loc5_)
               {
                  return;
               }
            }
         }
         var _loc2_:§]"5§ = this.getObject(param1.index1 + this.§7e§);
         var _loc3_:§]"5§ = this.getObject(param1.index2 + this.§7e§);
         if(!(_loc4_ && _loc2_))
         {
            this.§9q§.§[g§.§?"$§.§%!A§(param1.§5""§);
            do
            {
               param1.§5""§ = this.§9q§.§[g§.§?"$§.§[?§(param1.§3"#§(_loc2_,_loc3_));
            }
            while(_loc4_ && param1);
            
         }
      }
      
      public function §]c§(param1:§]"5§) : Vector.<§ !,§>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§ !,§ = null;
         var _loc2_:Vector.<§ !,§> = new Vector.<§ !,§>();
         var _loc3_:int = this.§84§.indexOf(param1) - this.§7e§;
         if(!_loc8_)
         {
            §§push(_loc3_);
            if(_loc7_)
            {
               if(§§pop() >= 0)
               {
                  for each(_loc4_ in this.§2"'§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(!_loc8_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc8_ && _loc3_))
                           {
                              addr79:
                              §§pop();
                              if(!_loc8_)
                              {
                                 addr86:
                                 if(_loc4_.index2 != _loc3_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc7_ || this))
                                 {
                                    continue;
                                 }
                              }
                              _loc2_.push(_loc4_);
                              continue;
                           }
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr79);
                  }
                  addr42:
                  addr41:
               }
               return _loc2_;
            }
            §§goto(addr42);
         }
         §§goto(addr41);
      }
      
      public function getJoints() : Vector.<§ !,§>
      {
         return this.§2"'§;
      }
      
      public function §>O§(param1:§]"5§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§84§.indexOf(param1) - this.§7e§;
         var _loc3_:* = int(this.§2"'§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               if(_loc5_)
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        break;
                     }
                     loop5:
                     while(_loc4_)
                     {
                        while(true)
                        {
                           _loc3_ = §§pop();
                           continue loop5;
                        }
                     }
                     continue;
                  }
                  §§push(this.§2"'§[_loc3_].index1 == _loc2_);
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc5_ || _loc3_)
                           {
                              if(_loc5_)
                              {
                                 this.§2"'§.splice(_loc3_,1);
                                 addr101:
                                 break;
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(this.§2"'§[_loc3_].index2 == _loc2_);
                                 if(!_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 addr123:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop3;
                                 }
                              }
                              continue loop1;
                           }
                           §§goto(addr101);
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           addr63:
                           while(true)
                           {
                              §§goto(addr64);
                           }
                        }
                        addr85:
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr101);
               }
               §§goto(addr63);
            }
            §§goto(addr64);
         }
      }
      
      protected function §3!v§(param1:§]"5§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1.uniqueID);
         if(_loc5_ || this)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§6!F§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() < 0)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     addr107:
                     this.§6!F§.splice(_loc3_,1);
                     while(true)
                     {
                        addr73:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc4_ && _loc2_))
                           {
                              addr83:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc3_ = §§pop();
                              }
                              addr83:
                           }
                           §§goto(addr83);
                        }
                     }
                     addr112:
                  }
                  while(!_loc5_)
                  {
                     §§goto(addr112);
                  }
                  continue;
               }
               if(this.§6!F§[_loc3_].targetId.toString() == _loc2_)
               {
                  §§goto(addr107);
               }
               §§goto(addr73);
            }
            §§goto(addr83);
         }
      }
      
      public function §-!Z§(param1:§]"5§, param2:§]"5§) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = this.§84§.indexOf(param1) - this.§7e§;
         var _loc4_:int = this.§84§.indexOf(param2) - this.§7e§;
         var _loc5_:* = int(this.§2"'§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc7_ || _loc3_)
            {
               if(!(_loc6_ && this))
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc6_)
                     {
                        if(_loc7_)
                        {
                           if(!(_loc6_ && param1))
                           {
                              if(!_loc6_)
                              {
                                 §§push(false);
                                 if(!_loc6_)
                                 {
                                    if(_loc7_ || _loc3_)
                                    {
                                       break;
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          loop2:
                                          while(§§pop())
                                          {
                                             if(_loc7_ || param2)
                                             {
                                                §§push(true);
                                                while(!(_loc7_ || param2))
                                                {
                                                   loop5:
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§pop();
                                                         continue loop1;
                                                      }
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               §§push(this.§2"'§[_loc5_].index1 == _loc4_);
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(_loc7_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     addr199:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr201:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§2"'§[_loc5_].index2 == _loc4_);
                                                                              }
                                                                           }
                                                                           addr200:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           addr168:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        break loop6;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               §§goto(addr168);
                                                            }
                                                            addr178:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr198:
                                                         }
                                                         §§goto(addr199);
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                return §§pop();
                                                addr128:
                                             }
                                             addr136:
                                             break;
                                          }
                                          §§push(_loc5_);
                                          while(true)
                                          {
                                             §§push(§§pop() - 1);
                                             addr89:
                                             loop17:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                addr100:
                                                while(_loc6_ && param2)
                                                {
                                                   §§goto(addr136);
                                                   continue loop17;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          addr88:
                                       }
                                       §§goto(addr200);
                                    }
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr100);
                  }
                  else
                  {
                     §§push(this.§2"'§[_loc5_].index1 == _loc3_);
                  }
                  §§goto(addr198);
               }
               §§goto(addr88);
            }
            §§goto(addr89);
         }
         return §§pop();
      }
      
      protected function §`"+§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §]"5§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:§]"5§ = null;
         var _loc11_:§]!>§ = null;
         if(_loc15_ || param1)
         {
            §§push(param2);
            if(!(_loc14_ && param1))
            {
               if(§§pop().indexOf("BIRD") == 0)
               {
                  if(_loc15_)
                  {
                     addr44:
                     _loc10_ = this.§-!!§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                     if(_loc15_)
                     {
                        var _loc12_:*;
                        §§push((_loc12_ = this).§5p§);
                        if(!_loc14_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc13_:* = §§pop();
                        if(_loc15_)
                        {
                           _loc12_.§5p§ = _loc13_;
                        }
                        if(_loc15_ || param2)
                        {
                           addr272:
                           _loc10_.uniqueID = this.§6!?§();
                           addr81:
                        }
                        return _loc10_;
                     }
                     §§goto(addr81);
                  }
                  else
                  {
                     addr87:
                     _loc10_ = this.§"!f§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                  }
                  §§goto(addr272);
               }
               else
               {
                  addr83:
                  if(param2.indexOf("PIG") == 0)
                  {
                     §§goto(addr87);
                  }
                  else
                  {
                     §§push((_loc11_ = §<!m§.§"!F§(param2)) == null);
                     if(!(_loc14_ && param1))
                     {
                        §§push(§§pop());
                        if(!(_loc14_ && param3))
                        {
                           if(§§pop())
                           {
                              if(_loc15_ || this)
                              {
                                 §§pop();
                                 if(!(_loc14_ && param1))
                                 {
                                    §§push(param2);
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop().indexOf("MISC_") == 0);
                                       if(!_loc14_)
                                       {
                                          addr159:
                                          if(§§pop())
                                          {
                                             if(!_loc14_)
                                             {
                                                addr168:
                                                param2 = "MISC_FOOD_" + param2.substring(5);
                                                if(_loc15_ || param3)
                                                {
                                                   _loc11_ = §<!m§.§"!F§(param2);
                                                   addr181:
                                                   §§push(_loc11_.§,!E§);
                                                   if(!(_loc14_ && param3))
                                                   {
                                                      §§push(§]!>§.§-"?§);
                                                      if(_loc15_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(!_loc14_)
                                                         {
                                                            addr198:
                                                            if(!§§pop())
                                                            {
                                                               if(_loc15_ || param1)
                                                               {
                                                                  addr206:
                                                                  §§pop();
                                                                  addr215:
                                                                  if(_loc15_)
                                                                  {
                                                                     addr211:
                                                                     §§push(_loc11_.§,!E§);
                                                                     §§push(§]!>§.§,"9§);
                                                                  }
                                                                  _loc10_ = new §[[§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                                                                  §§goto(addr272);
                                                               }
                                                               addr214:
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr215);
                                                               }
                                                               else
                                                               {
                                                                  _loc10_ = new §]"5§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param9,_loc11_.front);
                                                                  §§goto(addr272);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr214);
                                                      §§push(§§pop() == §§pop());
                                                   }
                                                   §§goto(addr211);
                                                }
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr206);
                                    }
                                 }
                                 §§goto(addr168);
                              }
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr214);
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr83);
         }
         §§goto(addr44);
      }
      
      protected function §6!?§() : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§]"5§ = null;
         var _loc1_:int = this.§84§.length;
         var _loc2_:* = false;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               while(true)
               {
                  §§push(!§§pop());
               }
               addr111:
            }
            while(§§pop())
            {
               §§push(true);
               if(!(_loc7_ && this))
               {
                  _loc2_ = §§pop();
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§push(0);
                  if(_loc7_)
                  {
                     return §§pop().toString();
                  }
                  addr114:
                  for each(_loc3_ in this.§84§)
                  {
                     if(!(_loc7_ && _loc1_))
                     {
                        if(_loc3_.uniqueID != _loc1_.toString())
                        {
                           continue;
                        }
                        if(_loc6_ || _loc1_)
                        {
                           _loc1_++;
                           if(_loc6_ || this)
                           {
                              addr91:
                              _loc2_ = false;
                           }
                           break;
                        }
                     }
                     §§goto(addr91);
                  }
                  continue loop0;
               }
               §§goto(addr111);
            }
            §§goto(addr114);
         }
      }
      
      public function §5J§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]"5§ = null;
         var _loc2_:* = int(this.§84§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§84§[_loc2_] as §]"5§;
            if(!_loc4_)
            {
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc3_.§@!P§ <= 0)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           this.§5"1§(_loc2_,true,true,true);
                           addr104:
                           loop6:
                           while(true)
                           {
                              addr39:
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc5_)
                                 {
                                    addr47:
                                    if(_loc5_ || param1)
                                    {
                                       continue loop1;
                                    }
                                    addr84:
                                    while(true)
                                    {
                                       addr73:
                                       while(true)
                                       {
                                          _loc3_.§=O§();
                                       }
                                       §§goto(addr47);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop0;
                           }
                           addr104:
                        }
                        §§goto(addr104);
                     }
                     else
                     {
                        _loc3_.§^!6§();
                     }
                     §§goto(addr84);
                  }
               }
               §§goto(addr39);
            }
            §§goto(addr104);
         }
         if(_loc5_ || param1)
         {
            this.§5!=§(param1);
         }
      }
      
      protected function §5!=§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§=!!§(param1);
            do
            {
               this.§ _§();
            }
            while(_loc2_ && param1);
            
         }
      }
      
      private function §=!!§(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§8"9§ = null;
         var _loc5_:* = 0;
         var _loc6_:§]"5§ = null;
         if(!_loc7_)
         {
            if(this.§6!F§.length == 0)
            {
               if(!_loc7_)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:Vector.<§8"9§> = this.§6!F§.concat();
            var _loc3_:* = int(_loc2_.length - 1);
            while(_loc3_ >= 0)
            {
               §§push((_loc4_ = _loc2_[_loc3_]).§]o§);
               if(!_loc7_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc8_ || _loc2_)
                  {
                     addr64:
                     if(§§pop())
                     {
                        if(_loc8_ || this)
                        {
                           addr73:
                           §§pop();
                           if(_loc8_ || _loc2_)
                           {
                              §§push(this.§6!F§.indexOf(_loc4_) == -1);
                              if(!_loc7_)
                              {
                                 addr100:
                                 if(!§§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       addr103:
                                       §§push(_loc4_.update(param1));
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc8_)
                                          {
                                             addr116:
                                             §§push(§§pop());
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                _loc5_ = §§pop();
                                                if(!_loc7_)
                                                {
                                                   addr128:
                                                   if(§§pop() != -1)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      addr131:
                                                      §§push(this);
                                                      §§push("");
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         §§push(§§pop() + _loc5_);
                                                      }
                                                      if(_loc6_ = §§pop().getObjectWithID(§§pop()))
                                                      {
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            this.removeObject(_loc6_,true,true,true);
                                                            addr170:
                                                            §§push(_loc3_);
                                                            if(!_loc8_)
                                                            {
                                                            }
                                                            _loc3_ = §§pop();
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr170);
                                                §§push(§§pop() - 1);
                                             }
                                             §§goto(addr128);
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr116);
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr103);
                        }
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr73);
               }
               §§goto(addr64);
            }
            return;
         }
         addr34:
      }
      
      private function § _§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:§ !,§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         loop0:
         for each(_loc1_ in this.§2"'§)
         {
            if(_loc6_)
            {
               §§push(_loc1_.type == §6O§.§2!+§);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(_loc1_.§1!e§));
                              while(!_loc7_)
                              {
                                 loop16:
                                 for(; _loc6_ || _loc1_; while(_loc6_ || _loc3_)
                                 {
                                    §§goto(addr190);
                                 })
                                 {
                                    if(_loc7_ && _loc1_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(§§pop());
                                    loop17:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop18:
                                          while(true)
                                          {
                                             §§pop();
                                             loop19:
                                             while(true)
                                             {
                                                §§push(Boolean(_loc1_.§1!j§));
                                                while(!_loc7_)
                                                {
                                                   addr62:
                                                   if(_loc7_ && _loc1_)
                                                   {
                                                      continue;
                                                   }
                                                   loop42:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!(_loc7_ && _loc1_))
                                                            {
                                                               §§push(_loc1_.§5""§);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop() as b2PrismaticJoint);
                                                                  §§push(_loc3_);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(-§§pop());
                                                                  }
                                                                  §§pop().§^x§(§§pop());
                                                                  addr93:
                                                                  if(_loc6_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        loop37:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           loop38:
                                                                           while(_loc6_)
                                                                           {
                                                                              addr101:
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() < §§pop());
                                                                                       loop39:
                                                                                       while(_loc6_)
                                                                                       {
                                                                                          addr116:
                                                                                          if(!(_loc7_ && _loc3_))
                                                                                          {
                                                                                             if(_loc6_ || _loc2_)
                                                                                             {
                                                                                                addr130:
                                                                                                §§push(§§pop());
                                                                                                if(_loc6_ || _loc2_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      continue loop42;
                                                                                                   }
                                                                                                   loop40:
                                                                                                   while(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      while(_loc6_)
                                                                                                      {
                                                                                                         if(_loc6_ || _loc1_)
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               if(_loc7_ && _loc1_)
                                                                                                               {
                                                                                                                  continue loop38;
                                                                                                               }
                                                                                                               §§push(§§pop() <= _loc1_.lowerLimit);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  continue loop40;
                                                                                                               }
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  continue loop39;
                                                                                                               }
                                                                                                               addr55:
                                                                                                               if(_loc6_ || _loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr62);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr196:
                                                                                                                     while(!_loc7_)
                                                                                                                     {
                                                                                                                        continue loop37;
                                                                                                                     }
                                                                                                                     continue loop4;
                                                                                                                     §§goto(addr55);
                                                                                                                  }
                                                                                                                  addr195:
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc1_.§5""§);
                                                                                                                  addr298:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push((§§pop() as b2PrismaticJoint).§9[§());
                                                                                                                     addr301:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr302:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc2_ = §§pop();
                                                                                                                           addr303:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc1_.§5""§);
                                                                                                                              break loop42;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr296:
                                                                                                            }
                                                                                                         }
                                                                                                         while(_loc6_ || _loc1_)
                                                                                                         {
                                                                                                            §§push(Boolean(_loc1_.§<"3§));
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         §§goto(addr303);
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   loop23:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr235:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         addr201:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            addr202:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() > §§pop());
                                                                                                               addr203:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  addr204:
                                                                                                                  addr233:
                                                                                                                  while(_loc6_)
                                                                                                                  {
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     continue loop42;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(!_loc7_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         continue loop42;
                                                                                                      }
                                                                                                      §§goto(addr130);
                                                                                                   }
                                                                                                   §§goto(addr204);
                                                                                                   addr192:
                                                                                                }
                                                                                                §§goto(addr195);
                                                                                             }
                                                                                             §§goto(addr203);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr217:
                                                                                                while(!(_loc7_ && this))
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   break loop38;
                                                                                                }
                                                                                                §§goto(addr116);
                                                                                             }
                                                                                             addr216:
                                                                                          }
                                                                                          §§goto(addr235);
                                                                                       }
                                                                                       continue loop16;
                                                                                    }
                                                                                    §§goto(addr202);
                                                                                 }
                                                                                 while(_loc6_ || _loc2_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       §§goto(addr280);
                                                                                       §§goto(addr101);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr302);
                                                                                 addr271:
                                                                              }
                                                                              §§goto(addr279);
                                                                           }
                                                                           while(!_loc7_)
                                                                           {
                                                                              if(_loc6_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() >= _loc1_.upperLimit);
                                                                                 continue loop16;
                                                                              }
                                                                              §§goto(addr301);
                                                                           }
                                                                           §§goto(addr201);
                                                                        }
                                                                     }
                                                                     addr95:
                                                                  }
                                                                  §§goto(addr196);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr147);
                                                      }
                                                      §§goto(addr93);
                                                   }
                                                   while(_loc6_ || _loc2_)
                                                   {
                                                      §§goto(addr271);
                                                      §§push((§§pop() as b2PrismaticJoint).§7U§());
                                                   }
                                                   §§goto(addr298);
                                                }
                                                continue loop18;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr233);
                                       }
                                    }
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue loop0;
                        }
                        §§goto(addr296);
                     }
                  }
               }
            }
            §§goto(addr95);
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§]"5§> = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§53§.push(§]!i§.§@%§(param1,param2,param3,param4));
         }
         do
         {
            §5!U§.playSound("TntExplosions","ChannelExplosions");
         }
         while(_loc6_);
         
      }
      
      public function §%! §(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§]"5§ = null;
         var _loc3_:* = int(this.§84§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_ || _loc3_)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§84§[_loc3_])
               {
                  if(_loc6_)
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           return §§pop();
                        }
                        addr79:
                        §§push(§§pop() - 1);
                     }
                     else
                     {
                        addr71:
                        §§push(_loc3_);
                        if(_loc6_ || _loc3_)
                        {
                           §§goto(addr79);
                        }
                     }
                     _loc3_ = §§pop();
                  }
                  continue;
               }
               §§goto(addr71);
            }
            break;
         }
         return §§pop();
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §]"5§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§]"5§ = null;
         var _loc3_:* = int(this.§84§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§84§[_loc3_])
            {
               if(!(_loc6_ && param2))
               {
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(_loc5_ || param1)
                     {
                        return _loc4_;
                     }
                     continue;
                  }
               }
            }
            §§push(_loc3_);
            if(_loc5_)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return null;
      }
      
      public function getObjectsFromPoint(param1:Number, param2:Number) : Vector.<§]"5§>
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§]"5§ = null;
         var _loc3_:Vector.<§]"5§> = new Vector.<§]"5§>();
         var _loc4_:* = int(this.§84§.length - 1);
         while(_loc4_ >= 0)
         {
            §§push(Boolean(_loc5_ = this.§84§[_loc4_]));
            if(_loc6_ || param1)
            {
               if(§§pop())
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§pop();
                     if(!_loc6_)
                     {
                        continue;
                     }
                     §§push(_loc5_.isInCoordinates(param1,param2));
                     if(_loc6_ || param2)
                     {
                        addr81:
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     _loc3_.push(_loc5_);
                     if(!_loc6_)
                     {
                        continue;
                     }
                  }
               }
               §§push(_loc4_);
               if(!(_loc7_ && param1))
               {
                  §§push(§§pop() - 1);
               }
               _loc4_ = §§pop();
               continue;
            }
            §§goto(addr81);
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §]"5§
      {
         return this.§84§[param1];
      }
      
      public function §?!%§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§]"5§ = null;
         var _loc3_:* = int(this.§84§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§84§[_loc3_] as §]"5§).§?!%§(param2,param1);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(!_loc6_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      private function §,"3§(param1:§]"5§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:§]"5§ = null;
         if(!(_loc9_ && param2))
         {
            §§push(this.mSardineCanAdded);
            if(!(_loc9_ && this))
            {
               if(!§§pop())
               {
                  if(_loc8_ || _loc3_)
                  {
                     §§push(true);
                     if(!_loc9_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr60);
                  }
                  §§goto(addr77);
               }
               addr60:
               §§push(this.mMightyEagleAdded);
               if(_loc8_)
               {
                  addr64:
                  if(§§pop())
                  {
                     if(_loc8_ || param1)
                     {
                        addr72:
                        §§push(false);
                        if(_loc8_)
                        {
                           §§goto(addr75);
                        }
                        else
                        {
                           addr77:
                           var _loc3_:* = §§pop();
                           if(!_loc9_)
                           {
                              §§push(param1.§@!P§);
                              while(true)
                              {
                                 §§push(param1.§'">§);
                                 loop1:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(this.§5!J§);
                                       loop2:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr496:
                                          while(true)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                while(true)
                                                {
                                                   this.§5!J§ = this.§9q§.§," §;
                                                   addr502:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr497:
                                             }
                                             addr480:
                                             loop6:
                                             while(true)
                                             {
                                                §§push(param1.§#";§());
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop());
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop40:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop41:
                                                               while(true)
                                                               {
                                                                  §§push(this.§?"+§(param1));
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     if(!(_loc8_ || param2))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop35:
                                                                                 while(true)
                                                                                 {
                                                                                    loop36:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop37:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.mMightyEagleTimer);
                                                                                             loop38:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() < this.§8^§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                {
                                                                                                   loop39:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         §§push(this.mMightyEagleTimer);
                                                                                                         loop17:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param2);
                                                                                                            loop18:
                                                                                                            while(_loc8_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               loop19:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop20:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     if(_loc8_ || param2)
                                                                                                                     {
                                                                                                                        §§push(this.mMightyEagleTimer);
                                                                                                                        loop21:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() < this.§8^§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              if(!(_loc8_ || param2))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              addr354:
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr363:
                                                                                                                                    loop34:
                                                                                                                                    while(!(_loc9_ && this))
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       loop32:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_);
                                                                                                                                             loop30:
                                                                                                                                             for(; !_loc9_; §§goto(addr373))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() > this.§8^§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                                loop31:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc8_ || param2))
                                                                                                                                                   {
                                                                                                                                                      continue loop34;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc8_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop36;
                                                                                                                                                   }
                                                                                                                                                   addr308:
                                                                                                                                                   if(_loc8_ || this)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc9_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §5!U§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               addr621:
                                                                                                                                                               return _loc3_;
                                                                                                                                                               addr620:
                                                                                                                                                            }
                                                                                                                                                            if(_loc9_ && this)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §5!U§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                                                               addr266:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop32;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc9_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop37;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         loop23:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() >= this.§8^§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     loop27:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop39;
                                                                                                                                                                        }
                                                                                                                                                                        loop28:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param1.getBody());
                                                                                                                                                                           if(_loc8_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().GetPosition());
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    if(_loc8_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc8_ || this))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop38;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§8^§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§8^§.MIGHTY_EAGLE_Y_CHANGE);
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc9_ && param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop18;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() * 1.07);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          if(!(_loc9_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc9_ && param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr194:
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop30;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc8_ || param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop17;
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop27;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§9q§.§," §);
                                                                                                                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() > this.§5!J§ + this.§8^§.SARDINE_CAN_DELAY_AFTER_HIT);
                                                                                                                                                                                                         continue loop35;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop17;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop2;
                                                                                                                                                                                                   addr446:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(this.§?"+§(param1));
                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc9_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc8_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(true);
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr105:
                                                                                                                                                                                                               if(_loc9_ && _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop31;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr120:
                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop41;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(false)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop28;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr557:
                                                                                                                                                                                                                     _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§8^§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                                                                                                                     if(!(_loc9_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.mMightyEagleAdded = true;
                                                                                                                                                                                                                        addr598:
                                                                                                                                                                                                                        this.§5!J§ = 0;
                                                                                                                                                                                                                        addr616:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     _loc7_.§[!g§.setScale(1.82);
                                                                                                                                                                                                                     if(_loc8_ || param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(false)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr598);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr617:
                                                                                                                                                                                                                           this.mMightyEagleTimer = _loc4_;
                                                                                                                                                                                                                           §§goto(addr620);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr616);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr602:
                                                                                                                                                                                                                     §§goto(addr602);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§#!B§);
                                                                                                                                                                                                                        addr533:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop() < this.§8^§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr537);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr510);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr531:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr620);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr621);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr507);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr120);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr557);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr105);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr556);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr194);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr533);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr194);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop23;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop20;
                                                                                                                                                                                    addr231:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           addr230:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop28;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr231);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr513);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop39;
                                                                                                                                                                     addr258:
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc9_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.getBody());
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        loop48:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           this.§5!J§ = 0;
                                                                                                                                                                           addr507:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop6;
                                                                                                                                                                              }
                                                                                                                                                                              addr537:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                 §§push(this.§#!B§);
                                                                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * this.§8^§.SARDINE_CAN_ROTATION_ACCELERATION);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().§#!B§ = §§pop();
                                                                                                                                                                                 addr556:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr510:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param1.getBody());
                                                                                                                                                                                       addr513:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(param2);
                                                                                                                                                                                          if(!(_loc9_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * this.§#!B§);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§`!`§(§§pop());
                                                                                                                                                                                          continue loop48;
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
                                                                                                                                                                     §§goto(addr266);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr230);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr617);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - this.§8^§.MIGHTY_EAGLE_STARTING_DISTANCE_X);
                                                                                                                                                            if(_loc8_ || param2)
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  continue loop21;
                                                                                                                                                               }
                                                                                                                                                               continue loop20;
                                                                                                                                                            }
                                                                                                                                                            continue loop21;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr308);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr502);
                                                                                                                                                      addr315:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         §§goto(addr308);
                                                                                                                                                      }
                                                                                                                                                      addr445:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr446);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr373:
                                                                                                                                             continue loop19;
                                                                                                                                          }
                                                                                                                                          §§goto(addr556);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc8_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          while(!_loc9_)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                continue loop8;
                                                                                                                                             }
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop35;
                                                                                                                                             }
                                                                                                                                             §§goto(addr445);
                                                                                                                                             §§goto(addr354);
                                                                                                                                          }
                                                                                                                                          continue loop10;
                                                                                                                                          addr440:
                                                                                                                                       }
                                                                                                                                       continue loop40;
                                                                                                                                       §§goto(addr363);
                                                                                                                                    }
                                                                                                                                    addr363:
                                                                                                                                    addr432:
                                                                                                                                 }
                                                                                                                                 §§goto(addr315);
                                                                                                                              }
                                                                                                                              §§goto(addr440);
                                                                                                                           }
                                                                                                                           §§goto(addr363);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        addr478:
                                                                                                                     }
                                                                                                                     §§goto(addr621);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr497);
                                                                                                      }
                                                                                                      §§goto(addr502);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr621);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr475:
                                                                     }
                                                                  }
                                                                  §§goto(addr478);
                                                               }
                                                               continue loop7;
                                                            }
                                                            addr488:
                                                         }
                                                         §§goto(addr475);
                                                      }
                                                   }
                                                   §§goto(addr488);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr531);
                                 }
                              }
                           }
                           §§goto(addr337);
                        }
                     }
                  }
                  §§goto(addr77);
                  §§push(false);
               }
               addr75:
               return §§pop();
            }
            §§goto(addr64);
         }
         §§goto(addr72);
      }
      
      private function §0`§(param1:§]"5§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§]"5§ = null;
         if(!_loc9_)
         {
            §§push(Boolean(this.§8^§.MIGHTY_EAGLE_USE_SHADE));
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc9_ && param2)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              addr100:
                              while(true)
                              {
                                 addr32:
                                 addr112:
                                 while(true)
                                 {
                                    §§push(this.mMightyEagleTimer);
                                    if(!(_loc8_ || param1))
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 var _loc3_:* = §§pop();
                                 if(_loc8_ || this)
                                 {
                                    §§push(this);
                                    §§push(this.mMightyEagleTimer);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() + param2);
                                    }
                                    §§pop().mMightyEagleTimer = §§pop();
                                    if(_loc8_ || param2)
                                    {
                                       addr135:
                                       §§push(this.§9q§.particles);
                                       §§push(§&!>§.§]!c§);
                                       §§push(§-5§.§5Q§);
                                       §§push(§&!>§.§&W§);
                                       §§push(param1.getBody().GetPosition().x);
                                       if(_loc8_)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc8_ || param2)
                                             {
                                                addr176:
                                                §§push(Math.random() * (_loc3_ * 2));
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§push(_loc3_);
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc8_)
                                                   {
                                                      addr188:
                                                      §§push(§§pop() + Math.random() * (_loc3_ * 2));
                                                   }
                                                   §§pop().§[b§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§&!>§.§6H§(param1.§!F§),0,0,1,0,4);
                                                   addr201:
                                                   var _loc4_:* = 1;
                                                   if(!_loc9_)
                                                   {
                                                      addr312:
                                                      if(this.mMightyEagleHasTouchedGround)
                                                      {
                                                         addr313:
                                                         param1.§4!1§(this.§8^§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                         addr320:
                                                         §§push(-1);
                                                         if(!(_loc9_ && this))
                                                         {
                                                            _loc4_ = §§pop();
                                                            addr309:
                                                            §§push(this.§4""§);
                                                            if(_loc8_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     this.§4""§ = false;
                                                                     addr285:
                                                                  }
                                                                  this.§9q§.§@";§();
                                                                  addr269:
                                                                  addr298:
                                                                  if(!_loc9_)
                                                                  {
                                                                     param1.§"!a§(§+"&§.§`!!§);
                                                                     addr262:
                                                                     if(!_loc9_)
                                                                     {
                                                                        this.mSardineCanAdded = false;
                                                                        addr249:
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           addr226:
                                                                           param1.§[!g§.§,!R§ = true;
                                                                           addr223:
                                                                           if(!(_loc9_ && this))
                                                                           {
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(param1.§[!g§);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§pop().§>y§();
                                                                                       if(_loc8_ || _loc3_)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr223);
                                                                                             }
                                                                                             addr322:
                                                                                             var _loc6_:int = 0;
                                                                                             var _loc7_:* = this.§84§;
                                                                                             addr393:
                                                                                             §§push(§§hasnext(_loc7_,_loc6_));
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                                   §§push(Boolean(_loc5_));
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc9_ && param1))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               §§push(_loc5_.§]F§());
                                                                                                               if(!(_loc9_ && param2))
                                                                                                               {
                                                                                                                  addr360:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(_loc5_.getBody());
                                                                                                                        if(!(_loc9_ && this))
                                                                                                                        {
                                                                                                                           §§pop().SetAwake(true);
                                                                                                                           if(!(_loc9_ && this))
                                                                                                                           {
                                                                                                                              §§push(_loc5_.getBody());
                                                                                                                           }
                                                                                                                           §§goto(addr393);
                                                                                                                        }
                                                                                                                        §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr360);
                                                                                                            }
                                                                                                            §§goto(addr393);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr360);
                                                                                                }
                                                                                                if(_loc8_ || param2)
                                                                                                {
                                                                                                   if(!(_loc9_ && param1))
                                                                                                   {
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         this.§>"3§();
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            addr424:
                                                                                                            §§push(this.mMightyEagleTimer > 6000);
                                                                                                            if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc8_ || this)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!(_loc9_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr452:
                                                                                                                        §§push(this.isPigsAlive());
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              addr459:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    _loc6_ = 0;
                                                                                                                                    if(_loc8_ || param2)
                                                                                                                                    {
                                                                                                                                       addr471:
                                                                                                                                       _loc7_ = this.§84§;
                                                                                                                                       addr522:
                                                                                                                                       for each(_loc5_ in _loc7_)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(_loc5_));
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr490:
                                                                                                                                                   §§pop();
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_.§]F§());
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         addr498:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               §§push(_loc5_.§'">§);
                                                                                                                                                               if(!(_loc9_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * 2);
                                                                                                                                                               }
                                                                                                                                                               §§pop().applyDamage(§§pop(),true,true,true);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr498);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr522);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr498);
                                                                                                                                          }
                                                                                                                                          §§goto(addr490);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       addr534:
                                                                                                                                       param1.§&!8§(param2,new Point(this.§8^§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§8^§.MIGHTY_EAGLE_Y_CHANGE),this.§8^§.MIGHTY_EAGLE_FLYING_SPEED);
                                                                                                                                       if(!(_loc8_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          addr564:
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             addr566:
                                                                                                                                             §§goto(addr534);
                                                                                                                                          }
                                                                                                                                          this.§4""§ = this.mMightyEagleHasTouchedGround;
                                                                                                                                          §§goto(addr564);
                                                                                                                                          addr586:
                                                                                                                                       }
                                                                                                                                       addr531:
                                                                                                                                       return false;
                                                                                                                                       addr567:
                                                                                                                                    }
                                                                                                                                    §§goto(addr586);
                                                                                                                                 }
                                                                                                                                 §§goto(addr566);
                                                                                                                              }
                                                                                                                              §§goto(addr567);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr531);
                                                                                                                     }
                                                                                                                     §§goto(addr566);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr459);
                                                                                                         }
                                                                                                         §§goto(addr452);
                                                                                                      }
                                                                                                      §§goto(addr424);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr471);
                                                                                             }
                                                                                             §§goto(addr522);
                                                                                          }
                                                                                          §§goto(addr269);
                                                                                       }
                                                                                       §§goto(addr223);
                                                                                    }
                                                                                    §§goto(addr226);
                                                                                 }
                                                                                 §§goto(addr309);
                                                                              }
                                                                              §§goto(addr262);
                                                                           }
                                                                           §§goto(addr249);
                                                                        }
                                                                        §§goto(addr298);
                                                                     }
                                                                     §§goto(addr320);
                                                                  }
                                                                  §§goto(addr313);
                                                               }
                                                               §§goto(addr424);
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                         §§goto(addr322);
                                                      }
                                                      this.mMightyEagleHasTouchedGround = param1.getBody().GetPosition().y >= -5.5;
                                                      §§goto(addr564);
                                                   }
                                                   §§goto(addr285);
                                                }
                                                §§goto(addr188);
                                             }
                                             §§push(param1.getBody().GetPosition().y);
                                             if(_loc8_)
                                             {
                                                §§goto(addr176);
                                             }
                                             §§goto(addr188);
                                          }
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr135);
                              }
                           }
                        }
                        §§goto(addr55);
                     }
                     continue;
                     addr89:
                  }
                  §§goto(addr108);
               }
               while(_loc8_ || param2)
               {
                  §§goto(addr89);
               }
            }
         }
         §§goto(addr100);
      }
      
      private function §9l§() : void
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc1_:§]!i§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:§]"5§ = null;
         var _loc7_:* = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         loop0:
         while(this.§53§.length > 0)
         {
            _loc1_ = this.§53§.shift();
            if(!(_loc20_ && _loc1_))
            {
               §§push(_loc1_.§"!l§);
               if(_loc21_ || this)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc20_ && _loc2_))
                  {
                     addr142:
                     _loc2_ = §§pop();
                     if(!_loc20_)
                     {
                        §§push(_loc1_.x);
                        if(_loc21_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc21_ || _loc2_)
                           {
                              _loc3_ = §§pop();
                              if(_loc20_ && this)
                              {
                                 continue;
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(_loc1_.y);
                                 if(!_loc20_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc21_)
                                    {
                                       _loc4_ = §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc1_.damage);
                                          if(_loc21_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc20_)
                                             {
                                                _loc5_ = §§pop();
                                                if(!(_loc20_ && _loc2_))
                                                {
                                                   continue;
                                                }
                                                loop68:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   if(!_loc20_)
                                                   {
                                                      if(!(_loc20_ && _loc2_))
                                                      {
                                                         §§push(5);
                                                         if(!(_loc20_ && _loc1_))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc20_ && _loc3_))
                                                            {
                                                               if(!_loc20_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(!(_loc20_ && _loc1_))
                                                                     {
                                                                        if(_loc21_)
                                                                        {
                                                                           if(!(_loc20_ && _loc1_))
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              if(_loc20_ && this)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(_loc21_)
                                                                              {
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       loop8:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§9q§);
                                                                                          if(_loc21_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop().particles);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§&!>§.§?!A§);
                                                                                             if(!(_loc20_ && this))
                                                                                             {
                                                                                                §§push(§-5§.§5Q§);
                                                                                                if(_loc21_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§&!>§.§&W§);
                                                                                                   if(!(_loc20_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(_loc21_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            §§push(_loc16_);
                                                                                                            §§push("");
                                                                                                            §§push(§&!>§.§-]§);
                                                                                                            §§push(_loc15_);
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               §§push(§§pop() * Math.cos(_loc17_));
                                                                                                            }
                                                                                                            §§push(_loc15_);
                                                                                                            if(!(_loc20_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * Math.sin(_loc17_));
                                                                                                               }
                                                                                                            }
                                                                                                            §§pop().§[b§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop68;
                                                                                                               }
                                                                                                               addr770:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                            }
                                                                                                            while(_loc21_ || _loc1_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  addr726:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(180);
                                                                                                                     if(!(_loc20_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() / Math.PI);
                                                                                                                        if(!(_loc20_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(!(_loc20_ && this))
                                                                                                                           {
                                                                                                                              addr810:
                                                                                                                              if(!(_loc20_ && _loc1_))
                                                                                                                              {
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    break loop4;
                                                                                                                                 }
                                                                                                                                 addr762:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 while(!(_loc21_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    break loop5;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                    §§goto(addr770);
                                                                                                                                    §§goto(addr762);
                                                                                                                                 }
                                                                                                                                 addr762:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr811:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                    addr812:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(1250);
                                                                                                                                       addr773:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Math.random() * 750);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr810:
                                                                                                                           }
                                                                                                                           §§goto(addr762);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 break loop5;
                                                                                                                              }
                                                                                                                              addr780:
                                                                                                                           }
                                                                                                                           break loop5;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr862:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              §§push(0.75);
                                                                                                                           }
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        addr862:
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr719:
                                                                                                            addr782:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().§[b§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§&!>§.§-]§,0,0,0,0,1,20,true);
                                                                                                            }
                                                                                                            addr837:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(30);
                                                                                                            addr815:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               if(_loc20_ && this)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr860:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     addr861:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr862);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                         addr836:
                                                                                                      }
                                                                                                      §§goto(addr837);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr835:
                                                                                                   }
                                                                                                   §§goto(addr836);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                   addr833:
                                                                                                }
                                                                                                §§goto(addr835);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr831:
                                                                                             }
                                                                                             §§goto(addr833);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().particles);
                                                                                                break loop8;
                                                                                             }
                                                                                             addr826:
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr831);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr860);
                                                                                 }
                                                                                 §§goto(addr812);
                                                                              }
                                                                              §§goto(addr719);
                                                                           }
                                                                           §§goto(addr815);
                                                                        }
                                                                        §§goto(addr726);
                                                                     }
                                                                     §§goto(addr861);
                                                                  }
                                                                  addr608:
                                                               }
                                                               §§goto(addr811);
                                                            }
                                                            §§goto(addr762);
                                                         }
                                                         §§goto(addr862);
                                                      }
                                                      §§goto(addr773);
                                                   }
                                                   §§goto(addr861);
                                                }
                                             }
                                             §§goto(addr769);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc16_ = §§pop();
                                          §§goto(addr782);
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§push(Math.random() * _loc2_);
                                       addr809:
                                       while(true)
                                       {
                                          §§goto(addr810);
                                       }
                                    }
                                    addr805:
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc20_ && _loc2_))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc20_)
                                    {
                                       §§goto(addr805);
                                    }
                                    §§goto(addr810);
                                 }
                                 §§goto(addr809);
                              }
                           }
                           §§goto(addr608);
                        }
                        §§goto(addr810);
                     }
                     §§goto(addr578);
                  }
                  §§goto(addr780);
               }
               §§goto(addr142);
            }
            §§goto(addr789);
         }
      }
      
      protected function §1r§(param1:§]"5§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            param1.applyDamage(param2,false,false,false,true);
         }
      }
      
      protected function §6!t§(param1:int) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
         }
         switch(§§pop())
         {
         }
         return §&!>§.§1!F§;
      }
      
      public function §,1§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§]"5§ = null;
         var _loc3_:int = this.§84§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§84§[_loc3_];
            if(_loc4_ || param1)
            {
               §§push(_loc2_.§6!@§());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(_loc2_.§<",§());
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(this.§?"+§(_loc2_));
                           while(true)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(_loc2_.isReadyToBeRemoved(param1));
                                    loop4:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(_loc2_.§9!^§());
                                          if(_loc5_)
                                          {
                                             continue loop1;
                                          }
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                          loop5:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue loop1;
                                             }
                                             addr94:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         _loc2_.update(param1);
                                                         loop8:
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ || param1))
                                                            {
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§7!#§());
                                                                        if(_loc5_)
                                                                        {
                                                                           break loop15;
                                                                        }
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              break loop15;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     addr65:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§,"3§(_loc2_,param1));
                                                                        addr248:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr249);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr244:
                                                                  }
                                                                  addr159:
                                                                  §§pop();
                                                               }
                                                               continue loop4;
                                                            }
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     addr139:
                                                                  }
                                                                  else
                                                                  {
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        this.§5"1§(_loc3_,false,false,false);
                                                                        addr223:
                                                                        while(true)
                                                                        {
                                                                           _loc2_.§"!a§(§+"&§.§<!k§);
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  addr234:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        this.§0`§(_loc2_,param1);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§5"1§(_loc3_,false,false,false);
                                                                           addr255:
                                                                           while(true)
                                                                           {
                                                                              addr228:
                                                                              while(true)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr249:
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§5"1§(_loc3_,false,true,true);
                                                                  addr170:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                                  addr194:
                                                                  _loc2_.§"!a§(§+"&§.§<!k§);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                }
                                                §§goto(addr41);
                                             }
                                          }
                                       }
                                       §§goto(addr180);
                                    }
                                    continue;
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr248);
                           }
                        }
                        §§goto(addr234);
                        if(!(_loc4_ || _loc3_))
                        {
                           continue;
                        }
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr244);
               }
            }
            §§goto(addr139);
         }
         if(_loc4_ || this)
         {
            this.§9l§();
         }
      }
      
      private function §>"3§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ !,§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§2"'§)
         {
            if(!(_loc5_ && _loc2_))
            {
               if(_loc1_.type == §6O§.§]I§)
               {
                  continue;
               }
               if(!(_loc4_ || _loc1_))
               {
                  continue;
               }
            }
            this.§9q§.§[g§.§?"$§.§%!A§(_loc1_.§5""§);
         }
      }
      
      public function §71§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§]"5§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§84§.length)
            {
               return false;
            }
            _loc2_ = this.§84§[_loc1_];
            if(!(_loc4_ && this))
            {
               §§push(_loc2_.explode());
               if(!_loc3_)
               {
                  break;
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     return true;
                  }
               }
               else
               {
                  _loc1_++;
               }
            }
         }
         return §§pop();
      }
      
      public function §?"+§(param1:§]"5§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(param1.§+!y§.§7"8§() == §+!Z§.§>$§);
                           while(!(_loc2_ && param1))
                           {
                              §§push(!§§pop());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              addr57:
                              if(_loc3_ || param1)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(true);
                                          while(!_loc3_)
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                             }
                                          }
                                          addr81:
                                          if(!(_loc3_ || this))
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc2_ && this)
                                                {
                                                   continue loop1;
                                                }
                                                if(!§§pop())
                                                {
                                                   continue loop9;
                                                }
                                                §§goto(addr138);
                                                §§goto(addr81);
                                             }
                                             addr119:
                                          }
                                          addr79:
                                          if(!_loc2_)
                                          {
                                             return §§pop();
                                          }
                                          continue loop0;
                                          addr79:
                                       }
                                       else if(!(_loc2_ && param1))
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          addr20:
                                          §§push(false);
                                          if(_loc3_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr79);
                                       }
                                       while(true)
                                       {
                                          §§push(this.§9q§.borders.§@h§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y));
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc3_ || this)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop9;
                                                }
                                                §§goto(addr116);
                                             }
                                             else
                                             {
                                                §§goto(addr79);
                                             }
                                          }
                                          §§goto(addr79);
                                       }
                                       addr139:
                                    }
                                    §§goto(addr20);
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr119);
                  }
               }
            }
         }
         §§goto(addr139);
      }
      
      public function §5"1§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§ !,§ = null;
         var _loc7_:§8"9§ = null;
         if(!(_loc13_ && param2))
         {
            if(param1 < 0)
            {
               if(!(_loc13_ && param3))
               {
                  return;
               }
            }
         }
         var _loc5_:§]"5§;
         §§push((_loc5_ = this.§84§[param1]).§]F§());
         if(_loc12_)
         {
            if(§§pop())
            {
               if(_loc12_)
               {
                  var _loc8_:*;
                  §§push((_loc8_ = this).§&!y§);
                  if(_loc12_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc9_:* = §§pop();
                  if(_loc12_)
                  {
                     _loc8_.§&!y§ = _loc9_;
                  }
                  if(_loc12_)
                  {
                     addr274:
                     if(_loc5_ == this.§9q§.activeObject)
                     {
                        while(true)
                        {
                           §§push(this.§9q§);
                           addr281:
                           while(true)
                           {
                              §§pop().activeObject = null;
                              addr283:
                              while(true)
                              {
                              }
                           }
                           addr134:
                           if(!(_loc12_ || this))
                           {
                              continue;
                           }
                           while(true)
                           {
                              if(false)
                              {
                                 loop14:
                                 while(true)
                                 {
                                    this.§>O§(_loc5_);
                                    loop15:
                                    while(_loc12_ || param1)
                                    {
                                       if(_loc12_)
                                       {
                                          if(!_loc13_)
                                          {
                                             this.§3!v§(_loc5_);
                                             if(_loc13_ && param3)
                                             {
                                                continue;
                                             }
                                             if(_loc12_ || param2)
                                             {
                                                §§goto(addr134);
                                             }
                                             else
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   if(_loc12_ || this)
                                                   {
                                                      if(_loc12_ || param1)
                                                      {
                                                         addr188:
                                                         while(true)
                                                         {
                                                            this.§3;§(_loc5_.sprite);
                                                            break loop15;
                                                         }
                                                         addr188:
                                                      }
                                                      loop9:
                                                      while(true)
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(param4);
                                                            addr197:
                                                            loop20:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     if(_loc12_ || this)
                                                                     {
                                                                        addr205:
                                                                        this.§4"'§(_loc5_);
                                                                        while(true)
                                                                        {
                                                                           addr159:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.isTexture());
                                                                              if(!_loc12_)
                                                                              {
                                                                                 continue loop20;
                                                                              }
                                                                              if(_loc12_)
                                                                              {
                                                                                 addr166:
                                                                                 if(_loc12_ || param1)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr188);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop4:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§9q§);
                                                                                                if(!(_loc12_ || param2))
                                                                                                {
                                                                                                   break loop4;
                                                                                                }
                                                                                                §§push(_loc5_.§+!y§.score);
                                                                                                §§push(§]"%§.§-!R§);
                                                                                                §§push(true);
                                                                                                §§push(_loc5_.getBody().GetPosition().x);
                                                                                                §§push(_loc5_.getBody().GetPosition().y);
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   addr273:
                                                                                                   §§push(3);
                                                                                                   if(!(_loc13_ && param1))
                                                                                                   {
                                                                                                      addr268:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      §§push(§&!>§.§6[§(_loc5_.§!F§));
                                                                                                   }
                                                                                                   §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr209:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param3);
                                                                                                         addr211:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.addDestructionParticles(_loc5_,this.§9q§.particles);
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   addr273:
                                                                                                }
                                                                                                §§goto(addr268);
                                                                                             }
                                                                                             addr224:
                                                                                          }
                                                                                          §§goto(addr273);
                                                                                       }
                                                                                       §§goto(addr209);
                                                                                       §§goto(addr166);
                                                                                    }
                                                                                    §§goto(addr281);
                                                                                    addr221:
                                                                                 }
                                                                              }
                                                                              §§goto(addr211);
                                                                           }
                                                                           continue loop16;
                                                                           §§goto(addr205);
                                                                        }
                                                                        addr208:
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                                  addr198:
                                                               }
                                                               §§goto(addr159);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr208);
                                                }
                                             }
                                          }
                                          §§goto(addr283);
                                       }
                                       §§goto(addr198);
                                    }
                                    while(!_loc13_)
                                    {
                                       while(true)
                                       {
                                          continue loop14;
                                       }
                                    }
                                    §§goto(addr212);
                                 }
                              }
                              _loc8_ = 0;
                              _loc9_ = this.§2"'§;
                              break;
                           }
                           loop23:
                           while(true)
                           {
                              §§push(§§hasnext(_loc9_,_loc8_));
                              if(_loc12_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc13_)
                                    {
                                       if(_loc12_ || param1)
                                       {
                                          if(_loc12_ || param1)
                                          {
                                             _loc8_ = 0;
                                             if(_loc12_ || param2)
                                             {
                                                addr373:
                                                _loc9_ = this.§6!F§;
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc9_,_loc8_));
                                                   break loop23;
                                                }
                                                addr430:
                                             }
                                             if(_loc12_ || param3)
                                             {
                                                _loc5_.dispose();
                                             }
                                          }
                                          _loc5_ = null;
                                          if(_loc12_ || param1)
                                          {
                                             this.§84§[param1] = null;
                                          }
                                          do
                                          {
                                             this.§84§.splice(param1,1);
                                          }
                                          while(!(_loc12_ || param3));
                                          
                                          return;
                                       }
                                    }
                                    §§goto(addr373);
                                 }
                                 else
                                 {
                                    _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                    if(_loc6_.index1 >= param1)
                                    {
                                       if(_loc12_)
                                       {
                                          var _loc10_:*;
                                          var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                          if(_loc12_)
                                          {
                                             _loc10_.index1 = _loc11_;
                                          }
                                          if(!(_loc13_ && param1))
                                          {
                                             addr323:
                                             if(_loc6_.index2 < param1)
                                             {
                                                continue;
                                             }
                                             if(_loc13_)
                                             {
                                                continue;
                                             }
                                          }
                                          _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                          if(!_loc13_)
                                          {
                                             _loc10_.index2 = _loc11_;
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr323);
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr373);
                              }
                              else
                              {
                                 _loc7_ = §§nextvalue(_loc8_,_loc9_);
                                 §§push(_loc7_.§2`§);
                                 if(!_loc13_)
                                 {
                                    §§push(param1);
                                    if(!_loc13_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc13_ && param3)
                                          {
                                             continue;
                                          }
                                          _loc7_.§]o§ = true;
                                          if(_loc13_)
                                          {
                                             continue;
                                          }
                                       }
                                       addr406:
                                       §§push(_loc7_.§2`§);
                                       §§push(param1);
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!(_loc13_ && param3))
                                       {
                                          §§push((_loc10_ = _loc7_).§2`§);
                                          if(!_loc13_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc11_ = §§pop();
                                          if(_loc12_)
                                          {
                                             _loc10_.§2`§ = _loc11_;
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr406);
                              }
                           }
                           addr141:
                        }
                     }
                     while(true)
                     {
                        §§goto(addr221);
                        §§goto(addr283);
                     }
                  }
                  §§goto(addr188);
               }
               §§goto(addr194);
            }
            else
            {
               §§push(_loc5_.§9!^§());
               if(_loc12_ || param2)
               {
                  addr80:
                  if(§§pop())
                  {
                     if(_loc12_ || param2)
                     {
                        §§push((_loc8_ = this).§0!6§);
                        if(_loc12_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc9_ = §§pop();
                        if(!(_loc13_ && param1))
                        {
                           _loc8_.§0!6§ = _loc9_;
                        }
                        if(_loc12_ || param1)
                        {
                           §§goto(addr274);
                        }
                        §§goto(addr224);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr274);
               }
            }
            §§goto(addr197);
         }
         §§goto(addr80);
      }
      
      protected function addDestructionParticles(param1:§]"5§, param2:§-5§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      private function §3;§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§9!8§);
            if(_loc3_)
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§>!w§);
                     if(_loc3_ || this)
                     {
                        if(!§§pop().contains(param1))
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§?T§);
                              if(_loc3_ || _loc2_)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§?! §);
                                       if(!(_loc2_ && param1))
                                       {
                                          if(!§§pop().contains(param1))
                                          {
                                             return;
                                          }
                                          if(_loc3_ || this)
                                          {
                                             if(_loc2_ && _loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   return;
                                                }
                                                addr138:
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      §§push(this.§>!w§);
                                                      break loop0;
                                                   }
                                                   addr177:
                                                   this.§9!8§.removeChild(param1);
                                                }
                                             }
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                addr68:
                                                this.§?! §.removeChild(param1);
                                                addr70:
                                                if(_loc3_ || this)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      return;
                                                   }
                                                   break;
                                                }
                                             }
                                             continue loop0;
                                             if(!_loc2_)
                                             {
                                                addr108:
                                                continue;
                                             }
                                             if(!(_loc2_ && this))
                                             {
                                                §§push(this.§?T§);
                                                break loop1;
                                             }
                                             continue loop1;
                                             return;
                                             addr119:
                                          }
                                          §§goto(addr70);
                                       }
                                       §§goto(addr68);
                                    }
                                    return;
                                    addr156:
                                 }
                                 §§goto(addr108);
                              }
                              break;
                           }
                           §§pop().removeChild(param1);
                           §§goto(addr119);
                        }
                        §§goto(addr138);
                     }
                     break;
                  }
                  §§pop().removeChild(param1);
                  §§goto(addr156);
               }
            }
            §§goto(addr177);
         }
         §§goto(addr159);
      }
      
      protected function §4"'§(param1:§]"5§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1.§@"?§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr134:
                        while(true)
                        {
                           §§push(param1.§?!S§());
                           if(_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc2_ && this)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(§§pop())
                  {
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     addr96:
                     this.addExplosions(§]!i§.§5!2§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     §§goto(addr134);
                  }
                  addr25:
                  return;
               }
            }
         }
         §§goto(addr134);
      }
      
      public function removeObject(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§5"1§(this.§84§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §%]§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§4!I§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr63:
               while(true)
               {
                  §§push(-§§pop());
                  addr64:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]"5§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§84§.length)
         {
            _loc3_ = this.§84§[_loc2_] as §]"5§;
            if(!(_loc4_ && _loc3_))
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr198:
                           while(true)
                           {
                              §§push(_loc3_.§]F§());
                              addr175:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr197:
                     }
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§§pop());
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc3_.§@!P§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(_loc5_)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop27:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(!§§pop());
                                                               loop20:
                                                               while(!_loc4_)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop12:
                                                                           while(!_loc4_)
                                                                           {
                                                                              §§push(_loc3_.§[!g§);
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().mTryToBlink);
                                                                                 loop14:
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       loop16:
                                                                                       while(_loc5_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc5_ || _loc3_))
                                                                                          {
                                                                                             continue loop25;
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop17:
                                                                                             while(!_loc4_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   loop18:
                                                                                                   while(!_loc4_)
                                                                                                   {
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_.§[!g§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§pop().mTryToScream);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         §§push(0);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               loop21:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        loop22:
                                                                                                                        for(; _loc5_; while(true)
                                                                                                                        {
                                                                                                                           _loc2_++;
                                                                                                                           if(_loc5_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 break loop21;
                                                                                                                              }
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                           continue loop22;
                                                                                                                        })
                                                                                                                        {
                                                                                                                           if(_loc5_ || _loc2_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr198);
                                                                                                                        }
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        continue loop27;
                                                                                                                     }
                                                                                                                     §§push(true);
                                                                                                                     §§goto(addr198);
                                                                                                                  }
                                                                                                                  §§goto(addr40);
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                               addr74:
                                                                                                            }
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               return §§pop();
                                                                                                            }
                                                                                                            §§goto(addr197);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        addr168:
                                                                     }
                                                                     §§goto(addr74);
                                                                  }
                                                               }
                                                               continue loop7;
                                                               addr164:
                                                            }
                                                            §§goto(addr175);
                                                         }
                                                         §§goto(addr164);
                                                      }
                                                   }
                                                   §§goto(addr40);
                                                }
                                                addr144:
                                             }
                                             §§goto(addr168);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr144);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr198);
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§]"5§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§84§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || _loc2_)
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§84§[_loc3_] as §]"5§));
               if(!(_loc6_ && this))
               {
                  §§push(§§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || param1)
                        {
                           §§pop();
                           if(_loc5_ || this)
                           {
                              §§push(_loc4_.§]F§());
                              loop1:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr226:
                                 loop26:
                                 while(true)
                                 {
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
                                             addr229:
                                             while(true)
                                             {
                                                §§push(_loc4_.§@!P§);
                                                addr196:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr197:
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      addr198:
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ || this))
                                                         {
                                                            continue loop15;
                                                         }
                                                         continue loop18;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc3_ = §§pop();
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               _loc2_++;
                                                               addr153:
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop9;
                                                            }
                                                            addr207:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.§[!g§);
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().mTryToBlink);
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(0);
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(!(_loc5_ || _loc3_))
                                                                                             {
                                                                                                continue loop26;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr192:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr89:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_.§[!g§);
                                                                                                      if(_loc6_ && _loc3_)
                                                                                                      {
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      §§push(§§pop().mTryToScream);
                                                                                                      if(!(_loc5_ || this))
                                                                                                      {
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      §§push(0);
                                                                                                      if(!(_loc5_ || param1))
                                                                                                      {
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      if(!(_loc5_ || _loc3_))
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr198);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                continue loop1;
                                                                                             }
                                                                                             addr208:
                                                                                          }
                                                                                       }
                                                                                       addr182:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr217:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    addr140:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr182);
                                                                           }
                                                                           §§goto(addr197);
                                                                        }
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr208);
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   §§goto(addr229);
                                                }
                                                §§goto(addr153);
                                             }
                                             while(false)
                                             {
                                                §§goto(addr89);
                                             }
                                             continue loop0;
                                             addr87:
                                          }
                                          §§goto(addr207);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr226);
                  }
                  §§goto(addr219);
               }
               §§goto(addr140);
            }
            break;
         }
         return §§pop();
      }
      
      public function getBlockCount() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§]"5§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in this.§84§)
         {
            if(_loc5_)
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_.§@!i§());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          addr66:
                                          loop9:
                                          while(§§pop())
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                if(_loc5_ || _loc1_)
                                                {
                                                   _loc1_++;
                                                }
                                                else
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.isMiscBlock());
                                                      if(_loc5_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop1;
                                                            continue loop9;
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr105:
                                                      while(_loc5_)
                                                      {
                                                         §§pop();
                                                         continue loop10;
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr108:
                                                }
                                             }
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             continue loop4;
                                          }
                                          continue loop0;
                                          addr66:
                                       }
                                       §§goto(addr105);
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr66);
                  }
               }
            }
            §§goto(addr108);
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§]"5§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§84§)
         {
            if(!(_loc6_ && _loc1_))
            {
               §§push(Boolean(_loc2_));
               if(!(_loc6_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(!(_loc5_ || _loc2_))
                        {
                           continue;
                        }
                        addr72:
                        §§push(_loc2_.isTexture());
                        if(!_loc6_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     _loc1_++;
                  }
               }
               continue;
            }
            §§goto(addr72);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§]"5§ = null;
         var _loc2_:int = this.§84§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§84§[_loc2_];
            if(_loc4_ || _loc2_)
            {
               §§push(Boolean(_loc3_));
               if(!_loc5_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr156:
                        while(true)
                        {
                           §§pop();
                           addr157:
                           while(true)
                           {
                              §§push(_loc3_.§]F§());
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue loop1;
                              }
                              §§push(Boolean(§§pop()));
                           }
                        }
                        addr156:
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               §§goto(addr156);
            }
            §§goto(addr56);
         }
      }
      
      public function §7Y§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§]"5§ = null;
         var _loc1_:* = int(this.§84§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§84§[_loc1_] as §]"5§;
            if(_loc3_)
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr124:
                           while(true)
                           {
                              §§push(_loc2_.§9!^§());
                              addr92:
                              while(_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc4_ && _loc2_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 addr107:
                                 while(true)
                                 {
                                    addr48:
                                    while(true)
                                    {
                                       §§push(_loc2_.§@!P§ > 0);
                                       if(_loc3_)
                                       {
                                          continue loop6;
                                       }
                                       addr83:
                                       if(!_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                             return §§pop();
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr92);
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           loop9:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(true);
                                       }
                                       §§goto(addr124);
                                    }
                                    else
                                    {
                                       §§goto(addr107);
                                    }
                                 }
                                 else
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       addr38:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc1_ = §§pop();
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop10;
                                       }
                                       if(true)
                                       {
                                          break loop9;
                                       }
                                       §§goto(addr48);
                                    }
                                 }
                              }
                              §§goto(addr38);
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr124);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§]"5§ = null;
         var _loc1_:* = int(this.§84§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§84§[_loc1_] as §]"5§;
            if(!(_loc3_ && _loc2_))
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr277:
                           while(true)
                           {
                              §§push(_loc2_.§@!P§);
                              addr250:
                              while(true)
                              {
                                 §§push(0);
                                 addr251:
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    addr252:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                              }
                           }
                        }
                        addr276:
                     }
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           §§push(§§pop());
                           loop10:
                           while(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§pop();
                                    loop12:
                                    while(true)
                                    {
                                       §§push(_loc2_.§,!E§);
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§§pop() == §]!>§.§=!a§);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                             }
                                             addr222:
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop15:
                                                while(!_loc3_)
                                                {
                                                   §§push(_loc2_.§%h§());
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            continue loop9;
                                                         }
                                                         addr197:
                                                         loop18:
                                                         while(!§§pop())
                                                         {
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.§9!^§());
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ && _loc1_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     §§push(§§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     if(!(_loc4_ || this))
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        loop22:
                                                                        while(!_loc3_)
                                                                        {
                                                                           §§pop();
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§@!P§);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(§§pop() > §§pop());
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_ || _loc1_)
                                                                                             {
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   loop25:
                                                                                                   while(!§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc1_);
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         addr61:
                                                                                                         _loc1_ = §§pop();
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break loop25;
                                                                                                            }
                                                                                                            if(!(_loc4_ || _loc1_))
                                                                                                            {
                                                                                                               break loop18;
                                                                                                            }
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break loop21;
                                                                                                            }
                                                                                                            if(true)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(false);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            if(_loc4_ || _loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr183:
                                                                                                            addr183:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                               {
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               §§goto(addr276);
                                                                                                            }
                                                                                                            §§goto(addr277);
                                                                                                         }
                                                                                                         return §§pop();
                                                                                                         addr114:
                                                                                                      }
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                   }
                                                                                                   addr104:
                                                                                                }
                                                                                                §§goto(addr252);
                                                                                             }
                                                                                             addr202:
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                return §§pop();
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                          continue loop22;
                                                                                       }
                                                                                       §§goto(addr114);
                                                                                    }
                                                                                    §§goto(addr251);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr250);
                                                                           }
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     §§goto(addr104);
                                                                  }
                                                                  addr246:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§#";§());
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     §§goto(addr183);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr202);
                                                            §§push(false);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr277);
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop12;
                                             }
                                             §§goto(addr44);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr222);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr207);
         }
         return true;
      }
      
      public function §2!e§(param1:Boolean = false) : §]"5§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:§]"5§ = null;
         if(!_loc7_)
         {
            if(!this.isPigsAlive())
            {
               if(_loc8_ || _loc3_)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:int = this.§84§.length;
            §§push(1);
            if(_loc8_)
            {
               §§push(int(§§pop() + Math.random() * this.getPigCount(param1)));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 0;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               loop1:
               while(true)
               {
                  §§push(_loc3_);
                  loop2:
                  while(§§pop() < §§pop())
                  {
                     §§push(0);
                     if(!_loc7_)
                     {
                        _loc5_ = §§pop();
                        if(!_loc8_)
                        {
                           break;
                        }
                        loop3:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!(_loc8_ || _loc2_))
                           {
                              continue loop1;
                           }
                           §§push(_loc2_);
                           if(_loc7_)
                           {
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc8_)
                              {
                                 break loop2;
                              }
                              continue loop0;
                           }
                           §§push(Boolean(_loc6_ = this.§84§[_loc5_]));
                           if(_loc8_ || param1)
                           {
                              §§push(§§pop());
                              if(_loc8_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§pop();
                                       if(_loc8_)
                                       {
                                          §§push(_loc6_.§]F§());
                                          loop4:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr237:
                                             loop27:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop10:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr240:
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_.§@!P§);
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               addr218:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                               }
                                                               addr143:
                                                               if(_loc7_ && _loc3_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(0);
                                                               if(!_loc7_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§§pop() <= §§pop());
                                                                     if(_loc8_)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           addr160:
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc8_ || this)
                                                                                    {
                                                                                       if(_loc8_ || _loc2_)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             _loc4_++;
                                                                                             do
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_ >= _loc3_)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         loop25:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr96:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc5_++;
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                               addr96:
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr96);
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_.§[!g§);
                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop().mTryToScream);
                                                                                                      if(_loc8_ || _loc2_)
                                                                                                      {
                                                                                                         §§goto(addr143);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         addr194:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                            addr195:
                                                                                                            loop18:
                                                                                                            while(_loc8_)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc8_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                                  addr229:
                                                                                                                  §§push(§§pop());
                                                                                                                  addr225:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     break loop18;
                                                                                                                  }
                                                                                                                  continue loop20;
                                                                                                                  §§goto(addr229);
                                                                                                               }
                                                                                                            }
                                                                                                            addr231:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr232:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.§[!g§);
                                                                                                                  break loop23;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr193:
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr193);
                                                                                                }
                                                                                                §§goto(addr96);
                                                                                             }
                                                                                             while(_loc7_);
                                                                                             
                                                                                             return _loc6_;
                                                                                             addr186:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§goto(addr225);
                                                                                                §§push(!§§pop());
                                                                                             }
                                                                                             §§goto(addr231);
                                                                                          }
                                                                                          addr221:
                                                                                       }
                                                                                       §§goto(addr232);
                                                                                    }
                                                                                    §§goto(addr186);
                                                                                 }
                                                                                 §§goto(addr96);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr221);
                                                                              }
                                                                              §§goto(addr96);
                                                                           }
                                                                           addr220:
                                                                        }
                                                                        §§goto(addr195);
                                                                     }
                                                                     §§goto(addr212);
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                               §§goto(addr194);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr220);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr240);
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr160);
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  return null;
               }
            }
         }
         addr34:
         return null;
      }
      
      public function §@!b§() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§84§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(!(_loc4_ && this))
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc4_ && this))
                        {
                           §§push(_loc1_);
                           loop1:
                           while(_loc3_)
                           {
                              §§push(this.§9q§.slingshot.§@!b§());
                              loop14:
                              while(!_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_)
                                 {
                                    §§push(int(§§pop()));
                                    loop16:
                                    while(!_loc4_)
                                    {
                                       addr93:
                                       _loc1_ = §§pop();
                                       while(true)
                                       {
                                          if(_loc3_ || _loc1_)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(_loc1_);
                                                   if(_loc4_ && _loc2_)
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      break loop0;
                                                   }
                                                   addr181:
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      addr182:
                                                      loop3:
                                                      while((this.§84§[_loc2_] as §]"5§).§%h§())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc1_);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§!w§.§!!l§.getValue());
                                                               break loop14;
                                                            }
                                                            addr156:
                                                            while(true)
                                                            {
                                                               _loc1_ = §§pop();
                                                               addr157:
                                                               while(true)
                                                               {
                                                                  break loop3;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         break loop16;
                                                      }
                                                   }
                                                }
                                                §§goto(addr129);
                                             }
                                             §§goto(addr157);
                                          }
                                          break;
                                          §§goto(addr93);
                                       }
                                       while(true)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             continue loop0;
                                          }
                                          §§goto(addr182);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop() - 1);
                                       break loop1;
                                    }
                                    addr108:
                                    addr81:
                                 }
                                 while(true)
                                 {
                                    if(_loc3_ || _loc1_)
                                    {
                                       §§goto(addr156);
                                       §§push(int(§§pop()));
                                    }
                                    addr180:
                                    while(true)
                                    {
                                       §§goto(addr181);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr148);
                                    §§push(§§pop() + §§pop() * int((this.§84§[_loc2_] as §]"5§).§'">§));
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr179:
                                 }
                                 §§goto(addr180);
                              }
                           }
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 _loc2_ = §§pop();
                                 §§goto(addr112);
                              }
                              §§goto(addr156);
                              §§goto(addr108);
                           }
                           continue;
                        }
                        §§goto(addr94);
                     }
                     else
                     {
                        addr161:
                        §§push(_loc1_);
                        §§push((this.§84§[_loc2_] as §]"5§).§+!y§.score);
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr75);
               }
               §§goto(addr161);
            }
            §§goto(addr81);
         }
         return §§pop();
      }
      
      public function §in §(param1:§]"5§, param2:§]"5§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1.§9!^§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr148:
                           loop11:
                           while(true)
                           {
                              §§push(param2.§9!^§());
                              addr115:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr116:
                                 while(_loc4_ || _loc3_)
                                 {
                                 }
                                 continue loop11;
                              }
                           }
                        }
                     }
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              §§push(true);
                              break;
                           }
                           while(true)
                           {
                              if(!_loc4_)
                              {
                              }
                              break;
                              addr88:
                              if(_loc3_ && param2)
                              {
                                 continue;
                              }
                              addr20:
                              §§push(false);
                              if(_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(_loc4_ || param2)
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§push(true);
                                                      break loop9;
                                                   }
                                                   addr110:
                                                   while(true)
                                                   {
                                                      §§push(param2.§+f§());
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         addr39:
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            §§push(!§§pop());
                                                            continue loop9;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop9;
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr111);
                                                      §§goto(addr39);
                                                   }
                                                   addr111:
                                                }
                                                else
                                                {
                                                   §§goto(addr88);
                                                }
                                             }
                                             addr86:
                                             if(!§§pop())
                                             {
                                                return §§pop();
                                             }
                                             break loop4;
                                             addr63:
                                          }
                                          §§goto(addr115);
                                       }
                                       §§goto(addr116);
                                    }
                                    addr80:
                                    §§goto(addr86);
                                    return _loc3_ && param1;
                                 }
                              }
                              §§goto(addr80);
                           }
                           §§goto(addr148);
                        }
                        while(true)
                        {
                           §§push(param1.§+f§());
                           if(!_loc3_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                              if(!_loc3_)
                              {
                                 addr106:
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr110);
                                 }
                                 §§goto(addr63);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr106);
                        }
                        continue loop0;
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr148);
      }
      
      public function §?3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.mSardineCanAdded = true;
         }
         do
         {
            this.§0!6§ = 0;
         }
         while(!_loc1_);
         
      }
      
      public function §8_§(param1:§]"5§, param2:§]"5§) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §+j§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§]"5§ = null;
         var _loc1_:* = int(this.§84§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§84§[_loc1_] as §]"5§;
            if(_loc3_)
            {
               §§push(_loc2_ == null);
               if(_loc3_ || _loc1_)
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§5"1§(_loc1_,true,true,true);
                                 addr100:
                                 while(true)
                                 {
                                 }
                              }
                              addr94:
                           }
                           while(true)
                           {
                              §§push(_loc1_);
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc1_ = §§pop();
                              if(!_loc4_)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    break;
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr100);
                           }
                           if(!(_loc4_ && this))
                           {
                              if(true)
                              {
                                 break;
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_.§]F§());
                                 if(_loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 addr124:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop5;
                                 }
                              }
                              continue loop1;
                              addr77:
                           }
                           while(true)
                           {
                              §§goto(addr77);
                           }
                        }
                        continue loop0;
                        addr92:
                     }
                  }
               }
               §§goto(addr124);
            }
            §§goto(addr100);
         }
      }
      
      public function §5!F§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§]"5§ = null;
         var _loc1_:* = int(this.§84§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§84§[_loc1_] as §]"5§;
            if(_loc3_)
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§pop();
                           addr115:
                           addr78:
                           loop5:
                           while(true)
                           {
                              addr65:
                              while(true)
                              {
                                 §§push(_loc2_.§?!S§());
                                 if(!_loc4_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc3_ || _loc2_)
                                 {
                                    break loop5;
                                 }
                                 continue loop6;
                              }
                              continue loop6;
                           }
                           if(_loc4_)
                           {
                              continue loop1;
                           }
                        }
                        addr114:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              this.§5"1§(_loc1_,true,true,true);
                           }
                           loop3:
                           while(true)
                           {
                              addr38:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc1_ = §§pop();
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              if(_loc3_)
                              {
                                 while(false)
                                 {
                                    §§goto(addr65);
                                 }
                                 continue loop0;
                                 addr63:
                              }
                              §§goto(addr115);
                           }
                        }
                        §§goto(addr38);
                        §§goto(addr78);
                     }
                     continue;
                  }
                  §§goto(addr114);
               }
            }
            §§goto(addr63);
         }
      }
      
      public function getObjectCount() : int
      {
         return this.§84§.length;
      }
      
      public function writeObjectInformation(param1:§9"§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§]"5§ = null;
         var _loc5_:§5!q§ = null;
         var _loc6_:§6O§ = null;
         var _loc7_:§ !,§ = null;
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc9_)
            {
               if(§§pop() >= this.§84§.length)
               {
                  §§push(Number(0));
                  break;
               }
               if((_loc4_ = this.§84§[_loc2_]).isGround())
               {
                  if(_loc9_)
                  {
                     continue;
                  }
               }
               else
               {
                  (_loc5_ = new §5!q§()).angle = _loc4_.§+!1§();
                  if(!_loc9_)
                  {
                     _loc5_.id = _loc4_.§!F§;
                     while(true)
                     {
                        _loc5_.x = _loc4_.getBody().GetPosition().x;
                        loop2:
                        for(; _loc8_ || _loc2_; while(_loc8_ || param1)
                        {
                           param1.addObject(_loc5_);
                           if(!_loc8_)
                           {
                              continue;
                           }
                           §§goto(addr62);
                        })
                        {
                           _loc5_.y = _loc4_.getBody().GetPosition().y;
                           while(true)
                           {
                              addr71:
                              addr112:
                              while(true)
                              {
                                 _loc5_.uniqueID = _loc4_.uniqueID;
                                 continue loop2;
                              }
                              §§push(_loc2_);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() + 1);
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              addr62:
                              _loc2_ = §§pop();
                              continue loop0;
                              if(!(_loc8_ || _loc2_))
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 §§goto(addr71);
                              }
                              else
                              {
                                 §§goto(addr112);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr112);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc8_ || _loc3_)
         {
            while(_loc3_ < this.§2"'§.length)
            {
               _loc7_ = this.§2"'§[_loc3_];
               _loc6_ = new §6O§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§8![§,_loc7_.§<"3§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§1!j§,_loc7_.motorSpeed,_loc7_.§1!e§,_loc7_.maxTorque);
               if(_loc8_ || _loc3_)
               {
                  param1.§]"=§(_loc6_);
                  if(!(_loc8_ || this))
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(!(_loc9_ && _loc3_))
               {
                  §§push(§§pop() + 1);
                  if(_loc8_ || param1)
                  {
                     addr233:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr233);
            }
         }
      }
      
      public function § I§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§84§.length <= _loc1_)
            {
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  continue;
                  addr78:
               }
            }
            else if(this.§84§[_loc1_].isGround())
            {
               if(_loc2_ || _loc1_)
               {
                  _loc1_++;
               }
               §§goto(addr78);
            }
            else
            {
               this.removeObject(this.§84§[_loc1_]);
            }
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(!_loc5_)
            {
               if(_loc6_ || param2)
               {
                  if(_loc6_ || param1)
                  {
                     if(§§pop() >= this.§84§.length)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        loop2:
                        while(_loc5_ && param1)
                        {
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        continue;
                        addr68:
                     }
                     else if(this.§84§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                     {
                        if(!(_loc5_ && this))
                        {
                           _loc3_.push(this.§84§[_loc4_]);
                        }
                        §§goto(addr115);
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() + 1);
                  }
               }
               while(true)
               {
                  §§push(Number(§§pop()));
               }
            }
            while(true)
            {
               _loc4_ = §§pop();
               §§goto(addr68);
            }
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§0"6§ = param1;
            if(_loc4_ || param1)
            {
               addr29:
               this.§7!X§(param1);
            }
            var _loc2_:* = Number(0);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(_loc4_ || param1)
               {
                  if(§§pop() >= this.§84§.length)
                  {
                     if(_loc4_ || this)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           addr76:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc3_)
                              {
                                 addr84:
                                 §§push(§§pop() + 1);
                                 if(!_loc4_)
                                 {
                                 }
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr85:
                                    while(_loc3_ && _loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§84§[_loc2_].sprite.visible = !this.§0"6§;
                                          continue loop2;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 addr84:
                              }
                              §§goto(addr84);
                           }
                        }
                     }
                     §§goto(addr85);
                  }
                  else if(this.§84§[_loc2_].isTexture())
                  {
                     §§goto(addr101);
                  }
                  §§goto(addr76);
               }
               §§goto(addr84);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§7"-§ = param1;
         }
      }
      
      public function §[!<§() : Boolean
      {
         return this.§7"-§;
      }
      
      public function §""2§() : int
      {
         return this.§5p§;
      }
      
      public function §5!7§() : int
      {
         return this.§&!y§;
      }
      
      public function getObjectWithID(param1:String) : §]"5§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]"5§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§84§.length)
         {
            _loc3_ = this.§84§[_loc2_] as §]"5§;
            if(_loc5_ || _loc3_)
            {
               if(_loc3_.uniqueID == param1)
               {
                  if(!(_loc4_ && this))
                  {
                     return _loc3_;
                  }
               }
            }
            _loc2_++;
         }
         return null;
      }
   }
}
