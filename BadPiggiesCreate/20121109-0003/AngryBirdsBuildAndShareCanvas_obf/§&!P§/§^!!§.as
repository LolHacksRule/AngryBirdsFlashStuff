package §&!P§
{
   import §#";§.§0"#§;
   import §%!0§.§%";§;
   import §%!0§.§,4§;
   import §%!0§.§,g§;
   import §%!0§.§3!s§;
   import §+!-§.§7"#§;
   import §+!-§.Sprite;
   import §,!0§.b2PrismaticJoint;
   import §,!0§.b2WeldJoint;
   import §0!%§.Texture;
   import §6]§.§,"0§;
   import §;"7§.§+!I§;
   import §<!a§.b2Vec2;
   import §<i§.§'!e§;
   import §[!P§.§"0§;
   import §[!P§.§8!z§;
   import §[!P§.§@R§;
   import §[!P§.§[-§;
   import §]";§.§!<§;
   import §]";§.§0A§;
   import §]";§.§1Y§;
   import §]";§.§34§;
   import §]";§.§4!p§;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §switch§.§47§;
   
   public class §^!!§
   {
       
      
      protected var §9n§:Vector.<§``§>;
      
      protected var §6!'§:int;
      
      public var §`!G§:§,4§;
      
      public var §;3§:Vector.<§=!Y§>;
      
      protected var §=!§:Sprite;
      
      protected var §!-§:Sprite;
      
      private var §,!]§:Sprite;
      
      private var §[!J§:Sprite;
      
      private var §7"-§:Sprite;
      
      protected var §6A§:Vector.<Texture>;
      
      protected var §=!O§:Vector.<§@R§>;
      
      protected var §=!T§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var § !=§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §+F§:Boolean = false;
      
      protected var §@8§:Number;
      
      protected var §;!0§:int;
      
      protected var §7p§:Vector.<§[-§>;
      
      protected var §%!A§:int = 0;
      
      private var §9W§:int = 0;
      
      private var §2!o§:int = 0;
      
      protected var §function§:int;
      
      private var §#U§:Boolean = true;
      
      private var §"+§:Boolean = true;
      
      public function §^!!§(param1:§,4§, param2:§'!e§, param3:Sprite)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§@R§ = null;
         var _loc6_:§"0§ = null;
         var _loc7_:§``§ = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§``§ = null;
         var _loc11_:§``§ = null;
         if(_loc14_ || this)
         {
            this.§9n§ = new Vector.<§``§>();
            loop0:
            while(true)
            {
               this.§;3§ = new Vector.<§=!Y§>();
               loop1:
               while(true)
               {
                  this.§6A§ = new Vector.<Texture>();
                  loop2:
                  while(true)
                  {
                     this.§@8§ = this.§,g§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
                     loop3:
                     while(true)
                     {
                        this.§7p§ = new Vector.<§[-§>();
                        loop4:
                        while(true)
                        {
                           super();
                           loop5:
                           while(true)
                           {
                              this.§`!G§ = param1;
                              while(!_loc15_)
                              {
                                 continue loop1;
                                 while(!(_loc15_ && param1))
                                 {
                                    addr170:
                                    §§push(this.§!-§);
                                    if(_loc14_)
                                    {
                                       addr128:
                                       if(!(_loc15_ && this))
                                       {
                                          if(!_loc15_)
                                          {
                                             §§pop().addChild(this.§7"-§);
                                             loop23:
                                             for(; !(_loc15_ && this); while(!(_loc15_ && this))
                                             {
                                                this.§function§ = this.§9n§.length;
                                                if(!_loc14_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr274);
                                             })
                                             {
                                                addr147:
                                                if(_loc14_ || param3)
                                                {
                                                   if(_loc14_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(§47§.§," §(param2.theme).§9!y§);
                                                         §§push(this.§`!G§.borders.§0!X§);
                                                         if(_loc14_)
                                                         {
                                                            §§push(this.§`!G§);
                                                            if(!_loc15_)
                                                            {
                                                               §§push(§§pop().borders);
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  §§push(§§pop().§2-§);
                                                                  if(!(_loc15_ && param2))
                                                                  {
                                                                     addr108:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc14_)
                                                                     {
                                                                        addr103:
                                                                        §§push(§§pop() / 2);
                                                                     }
                                                                     §§push(this.§`!G§.borders.mBorderGround_B2);
                                                                     if(!_loc15_)
                                                                     {
                                                                        addr111:
                                                                        §§push(§§pop() + §%";§.§]!6§);
                                                                     }
                                                                     §§pop().addObject(§§pop(),§§pop(),§§pop());
                                                                     continue loop23;
                                                                  }
                                                                  §§goto(addr111);
                                                               }
                                                            }
                                                            §§goto(addr108);
                                                         }
                                                         §§goto(addr103);
                                                      }
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr283:
                                                         addr249:
                                                         while(_loc14_ || param1)
                                                         {
                                                            this.§=!§ = new Sprite();
                                                            continue loop0;
                                                         }
                                                         while(_loc14_)
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§push(this.§!-§);
                                                            while(true)
                                                            {
                                                               §§pop().§#b§ = false;
                                                               addr269:
                                                               while(true)
                                                               {
                                                                  this.§"+§ = true;
                                                               }
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         addr249:
                                                         while(true)
                                                         {
                                                            this.§!-§ = param3;
                                                            §§goto(addr274);
                                                         }
                                                         addr274:
                                                         if(_loc15_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         addr58:
                                                         if(_loc14_ || param3)
                                                         {
                                                            while(false)
                                                            {
                                                               §§goto(addr67);
                                                            }
                                                            var _loc4_:* = 0;
                                                            if(_loc14_ || param1)
                                                            {
                                                               _loc4_ = 0;
                                                            }
                                                            loop27:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc14_ || this)
                                                               {
                                                                  §§push(param2.§8!Y§);
                                                                  if(!(_loc15_ && param2))
                                                                  {
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        _loc6_ = param2.getObject(_loc4_);
                                                                        if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
                                                                        {
                                                                           if(_loc15_ && param1)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           _loc7_.uniqueID = _loc6_.uniqueID;
                                                                           if(!_loc14_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        _loc4_++;
                                                                        continue;
                                                                     }
                                                                     if(!(_loc15_ && param3))
                                                                     {
                                                                        this.§,!4§();
                                                                        if(!_loc15_)
                                                                        {
                                                                           this.§ "§(true);
                                                                           loop34:
                                                                           while(true)
                                                                           {
                                                                              this.§=!O§ = new Vector.<§@R§>();
                                                                              addr489:
                                                                              addr504:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc14_ || this)
                                                                                    {
                                                                                       break loop27;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop34;
                                                                              }
                                                                              loop36:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2.§=Y§);
                                                                                 addr506:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(!(_loc15_ && this))
                                                                                       {
                                                                                          addr515:
                                                                                          var _loc12_:int = 0;
                                                                                          if(!(_loc15_ && param1))
                                                                                          {
                                                                                             loop30:
                                                                                             for each(_loc5_ in this.§=!O§)
                                                                                             {
                                                                                                §§push(int(_loc5_.index1 + this.§function§));
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   if(_loc14_ || param3)
                                                                                                   {
                                                                                                      §§push(int(_loc5_.index2 + this.§function§));
                                                                                                      if(!(_loc15_ && this))
                                                                                                      {
                                                                                                         addr563:
                                                                                                         _loc9_ = §§pop();
                                                                                                         if(_loc14_ || this)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(!(_loc15_ && param2))
                                                                                                            {
                                                                                                               addr579:
                                                                                                               §§push(§§pop() < this.§9n§.length);
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc14_ || this)
                                                                                                                     {
                                                                                                                        addr594:
                                                                                                                        §§pop();
                                                                                                                        addr608:
                                                                                                                        if(!(_loc15_ && param2))
                                                                                                                        {
                                                                                                                           addr603:
                                                                                                                           §§push(_loc9_ < this.§9n§.length);
                                                                                                                        }
                                                                                                                        _loc10_ = this.§9n§[_loc8_];
                                                                                                                        _loc11_ = this.§9n§[_loc9_];
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(_loc10_));
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr719:
                                                                                                                                    loop33:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(_loc11_));
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
                                                                                                                                          }
                                                                                                                                          if(!(_loc14_ || param1))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(_loc5_.type != §8!z§.§3I§)
                                                                                                                                          {
                                                                                                                                             _loc5_.§=!%§ = this.§`!G§.§?=§.§;!^§.§'!Y§(_loc5_.§8G§(_loc10_,_loc11_));
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          this.§7p§.push(new §[-§(_loc8_,_loc9_,_loc5_.§%!B§));
                                                                                                                                          if(_loc14_ || param3)
                                                                                                                                          {
                                                                                                                                             addr623:
                                                                                                                                             continue loop30;
                                                                                                                                          }
                                                                                                                                          continue loop33;
                                                                                                                                       }
                                                                                                                                       §§goto(addr623);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr718:
                                                                                                                              }
                                                                                                                              §§goto(addr676);
                                                                                                                           }
                                                                                                                           §§goto(addr718);
                                                                                                                        }
                                                                                                                        §§goto(addr719);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr608);
                                                                                                               }
                                                                                                               §§goto(addr594);
                                                                                                            }
                                                                                                            §§goto(addr603);
                                                                                                         }
                                                                                                         §§goto(addr594);
                                                                                                      }
                                                                                                      §§goto(addr579);
                                                                                                   }
                                                                                                   §§goto(addr594);
                                                                                                }
                                                                                                §§goto(addr563);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr724);
                                                                                       }
                                                                                       addr724:
                                                                                       return;
                                                                                    }
                                                                                    this.§=!O§.push(§@R§.§2"6§(param2.§`'§(_loc4_)));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_++;
                                                                                       if(!(_loc14_ || this))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc15_ && param2)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(false)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr450:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(!(_loc14_ || param3))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop36;
                                                                                       }
                                                                                       §§goto(addr515);
                                                                                    }
                                                                                    §§goto(addr515);
                                                                                    §§goto(addr515);
                                                                                    continue loop36;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr481:
                                                                        §§goto(addr450);
                                                                     }
                                                                     §§goto(addr515);
                                                                  }
                                                                  §§goto(addr506);
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               if(!(_loc15_ && param2))
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     §§goto(addr481);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr489);
                                                                  }
                                                               }
                                                               §§goto(addr515);
                                                            }
                                                            addr65:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               this.§[!J§ = new Sprite();
                                                               continue loop15;
                                                               §§goto(addr58);
                                                            }
                                                            addr231:
                                                         }
                                                      }
                                                      addr67:
                                                      continue loop5;
                                                   }
                                                   loop18:
                                                   while(!_loc15_)
                                                   {
                                                      §§push(this.§!-§);
                                                      while(true)
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            §§pop().addChild(this.§,!]§);
                                                            while(true)
                                                            {
                                                               if(_loc14_)
                                                               {
                                                                  addr181:
                                                                  if(_loc15_ && this)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  if(!(_loc14_ || this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(this.§!-§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().addChild(this.§[!J§);
                                                                     break loop23;
                                                                     §§goto(addr170);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§!-§);
                                                                     addr199:
                                                                     while(true)
                                                                     {
                                                                        §§pop().addChild(this.§=!§);
                                                                        continue loop18;
                                                                     }
                                                                  }
                                                                  addr210:
                                                               }
                                                               §§goto(addr147);
                                                            }
                                                            §§goto(addr269);
                                                            addr179:
                                                         }
                                                         break;
                                                         §§goto(addr128);
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   while(!_loc15_)
                                                   {
                                                      this.§#U§ = true;
                                                      §§goto(addr249);
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr179);
                                             }
                                             continue;
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr160);
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      protected function get §,g§() : Class
      {
         return §,g§;
      }
      
      public function get §`z§() : Sprite
      {
         return this.§7"-§;
      }
      
      public function get §[!l§() : Sprite
      {
         return this.§!-§;
      }
      
      public function get §>!J§() : Sprite
      {
         return this.§[!J§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         loop0:
         while(true)
         {
            if(this.§9n§.length > 0)
            {
               this.§ "5§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§9n§ = null;
               loop2:
               while(true)
               {
                  this.§7p§ = null;
                  loop3:
                  while(true)
                  {
                     if(!(_loc3_ || this))
                     {
                        continue loop0;
                     }
                     §§push(this.§!-§);
                     if(_loc3_ || _loc2_)
                     {
                        if(!§§pop())
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(this.§!-§);
                           addr80:
                           if(_loc3_ || this)
                           {
                              if(!_loc2_)
                              {
                                 this.§7"-§ = null;
                                 loop8:
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    while(true)
                                    {
                                       this.§,!]§ = null;
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       if(_loc2_ && _loc3_)
                                       {
                                          continue loop8;
                                       }
                                       this.§[!J§ = null;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr189);
                                       continue loop8;
                                    }
                                    return;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    this.§=!§ = null;
                                    if(_loc3_)
                                    {
                                       addr73:
                                       if(_loc2_ && _loc3_)
                                       {
                                          while(!(_loc2_ && this))
                                          {
                                             this.§!-§ = null;
                                             continue loop7;
                                             §§goto(addr73);
                                          }
                                          continue loop2;
                                          addr119:
                                       }
                                       §§goto(addr80);
                                    }
                                    else
                                    {
                                       §§goto(addr189);
                                    }
                                 }
                                 addr59:
                              }
                              continue loop1;
                           }
                        }
                        addr116:
                     }
                     while(true)
                     {
                        §§pop().dispose();
                        §§goto(addr119);
                        §§goto(addr116);
                     }
                  }
                  addr184:
                  if(this.§6A§.length > 0)
                  {
                     _loc1_ = this.§6A§.pop();
                     if(_loc3_ || _loc1_)
                     {
                        this.§`!G§.§8=§.§2A§(_loc1_);
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr189);
               }
            }
         }
      }
      
      private function § "§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§=!§.visible = param1;
         }
      }
      
      private function §,!4§() : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc3_:§``§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§7"#§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§``§> = new Vector.<§``§>();
         for each(_loc3_ in this.§9n§)
         {
            if(_loc16_)
            {
               if(_loc3_.isTexture())
               {
                  if(_loc16_ || _loc1_)
                  {
                     addr78:
                     _loc2_.push(_loc3_);
                  }
                  _loc4_ = _loc3_.sprite.getBounds(this.§!-§);
                  if(!(_loc17_ && _loc3_))
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
            §§goto(addr78);
         }
         if(_loc16_)
         {
            if(_loc1_)
            {
               if(_loc16_ || _loc1_)
               {
                  §§push(1);
                  loop1:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr310:
                     while(true)
                     {
                        _loc5_ = §§pop();
                     }
                     loop12:
                     while(true)
                     {
                        if(!(_loc16_ || _loc2_))
                        {
                           continue loop1;
                        }
                        _loc6_ = §§pop();
                        loop13:
                        while(true)
                        {
                           §§push(int(_loc1_.height));
                           loop14:
                           while(_loc16_)
                           {
                              _loc7_ = §§pop();
                              loop15:
                              while(true)
                              {
                                 if(_loc16_)
                                 {
                                    if(_loc16_)
                                    {
                                       do
                                       {
                                          §§push(int(_loc1_.left));
                                          loop17:
                                          while(_loc16_)
                                          {
                                             _loc8_ = §§pop();
                                             while(true)
                                             {
                                                if(!_loc17_)
                                                {
                                                   if(_loc17_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(int(_loc1_.top));
                                                   if(_loc16_ || _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop17;
                                                }
                                                continue loop15;
                                             }
                                             if(_loc16_)
                                             {
                                                §§goto(addr255);
                                             }
                                             §§goto(addr281);
                                          }
                                          continue loop14;
                                       }
                                       while(false);
                                       
                                       _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                       if(_loc16_)
                                       {
                                          this.§3!Y§(_loc10_.rect,_loc10_,_loc5_);
                                       }
                                       _loc11_ = this.§0",§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                       if(_loc16_)
                                       {
                                          _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                       }
                                       _loc12_ = this.§`!G§.§8=§.§%N§(_loc10_);
                                       if(!_loc17_)
                                       {
                                          this.§6A§.push(_loc12_);
                                       }
                                       (_loc13_ = new §7"#§(_loc12_)).x = _loc8_ / _loc5_;
                                       if(_loc16_)
                                       {
                                          _loc13_.y = _loc9_ / _loc5_;
                                          _loc13_.scaleX = 1 / _loc5_;
                                          addr419:
                                          if(!_loc17_)
                                          {
                                             _loc13_.scaleY = 1 / _loc5_;
                                             addr405:
                                             if(!(_loc17_ && _loc3_))
                                             {
                                                addr391:
                                                this.§=!§.addChild(_loc13_);
                                                if(!_loc17_)
                                                {
                                                   _loc11_.dispose();
                                                   if(_loc16_ || this)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr391);
                                                      }
                                                      §§goto(addr438);
                                                   }
                                                   §§goto(addr391);
                                                }
                                                §§goto(addr405);
                                                addr412:
                                             }
                                             §§goto(addr419);
                                          }
                                          addr437:
                                          §§goto(addr437);
                                       }
                                       §§goto(addr412);
                                    }
                                    break;
                                 }
                                 continue loop13;
                              }
                              while(true)
                              {
                                 break loop14;
                              }
                           }
                           continue loop12;
                        }
                     }
                  }
               }
               §§goto(addr311);
            }
            addr438:
            return;
         }
         §§goto(addr191);
      }
      
      private function §0",§(param1:Vector.<§``§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:§``§ = null;
         var _loc11_:§1Y§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§4";§.shape).§&8§();
            _loc13_ = new Rectangle(_loc12_[0].x / §,4§.§,^§ * param6,_loc12_[0].y / §,4§.§,^§ * param6,(_loc12_[1].x - _loc12_[0].x) / §,4§.§,^§ * param6,(_loc12_[1].y - _loc12_[0].y) / §,4§.§,^§ * param6);
            if(!_loc16_)
            {
               _loc10_.identity();
            }
            loop1:
            while(true)
            {
               _loc10_.scale(_loc13_.width,_loc13_.height);
               while(true)
               {
                  _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                  while(_loc17_ || param3)
                  {
                     _loc10_.rotate((360 - _loc7_.§?"1§()) / 180 * Math.PI);
                     loop4:
                     while(!_loc16_)
                     {
                        if(_loc17_)
                        {
                           do
                           {
                              _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                              do
                              {
                                 _loc8_.draw(_loc9_,_loc10_);
                              }
                              while(!(_loc17_ || param1));
                              
                              if(!(_loc16_ && param1))
                              {
                                 continue;
                              }
                              continue loop4;
                           }
                           while(false);
                           
                           continue loop0;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         if(!(_loc16_ && param3))
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §3!Y§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc14_:* = 0;
         var _loc15_:int = 0;
         §§push(this.§`!G§.background.§>N§());
         if(_loc16_ || param3)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§+!I§;
         if(_loc5_ = this.§`!G§.§=I§.§5!!§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(!(_loc17_ && param1))
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_,null,null,null,true);
               loop0:
               while(true)
               {
                  §§push(int(_loc6_.width));
                  loop1:
                  while(true)
                  {
                     _loc8_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(int(_loc6_.height));
                        loop3:
                        while(true)
                        {
                           _loc9_ = §§pop();
                           loop4:
                           while(_loc16_ || param3)
                           {
                              §§push(param1.top / _loc9_);
                              loop5:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    _loc10_ = §§pop();
                                    loop7:
                                    while(_loc16_)
                                    {
                                       if(param1.top < 0)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc10_);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§§pop() - 1);
                                                loop10:
                                                while(_loc16_)
                                                {
                                                   _loc10_ = §§pop();
                                                   while(_loc16_)
                                                   {
                                                      loop21:
                                                      while(!(_loc17_ && param2))
                                                      {
                                                         if(param1.left < 0)
                                                         {
                                                            loop22:
                                                            while(!_loc17_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc12_);
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        if(_loc16_ || param2)
                                                                        {
                                                                           _loc12_ = §§pop();
                                                                           loop29:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.right / _loc8_);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          §§push(int(§§pop()));
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             if(_loc17_ && param1)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             if(_loc17_ && param2)
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             §§push(§§pop());
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                if(!(_loc17_ && param2))
                                                                                                {
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                      loop24:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc13_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            §§push(_loc12_);
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                               §§push(int(§§pop()));
                                                                                                            }
                                                                                                            if(_loc17_ && param1)
                                                                                                            {
                                                                                                               continue loop28;
                                                                                                            }
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               _loc14_ = §§pop();
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(!(_loc16_ || this))
                                                                                                               {
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               addr90:
                                                                                                               §§push(_loc14_);
                                                                                                               if(_loc16_ || param1)
                                                                                                               {
                                                                                                                  if(_loc16_ || param3)
                                                                                                                  {
                                                                                                                     §§push(_loc13_);
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                        {
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              if(_loc16_)
                                                                                                                              {
                                                                                                                                 _loc6_.dispose();
                                                                                                                                 addr116:
                                                                                                                                 if(_loc16_ || param3)
                                                                                                                                 {
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          addr127:
                                                                                                                                          if(_loc15_ >= _loc11_)
                                                                                                                                          {
                                                                                                                                             addr131:
                                                                                                                                             _loc14_++;
                                                                                                                                             addr132:
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr90);
                                                                                                                                             }
                                                                                                                                             addr154:
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                _loc15_++;
                                                                                                                                                addr137:
                                                                                                                                             }
                                                                                                                                             §§goto(addr127);
                                                                                                                                             addr170:
                                                                                                                                          }
                                                                                                                                          param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                                                                                          §§goto(addr154);
                                                                                                                                       }
                                                                                                                                       §§goto(addr384);
                                                                                                                                    }
                                                                                                                                    §§goto(addr137);
                                                                                                                                 }
                                                                                                                                 §§goto(addr131);
                                                                                                                              }
                                                                                                                              §§goto(addr132);
                                                                                                                           }
                                                                                                                           §§goto(addr116);
                                                                                                                        }
                                                                                                                        §§push(_loc10_);
                                                                                                                        if(!(_loc17_ && param1))
                                                                                                                        {
                                                                                                                           addr169:
                                                                                                                           _loc15_ = §§pop();
                                                                                                                           §§goto(addr170);
                                                                                                                        }
                                                                                                                        §§goto(addr169);
                                                                                                                     }
                                                                                                                     §§goto(addr127);
                                                                                                                  }
                                                                                                                  §§goto(addr169);
                                                                                                               }
                                                                                                               §§goto(addr127);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + 1);
                                                                                                               }
                                                                                                               addr317:
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      addr254:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc11_ = §§pop();
                                                                                                      break loop22;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc11_ = §§pop();
                                                                                                §§goto(addr317);
                                                                                             }
                                                                                             addr316:
                                                                                          }
                                                                                          §§goto(addr254);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             addr308:
                                                                                             while(!(_loc17_ && param2))
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             continue loop10;
                                                                                          }
                                                                                          addr307:
                                                                                       }
                                                                                       §§goto(addr316);
                                                                                    }
                                                                                    addr283:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                    }
                                                                                    continue loop29;
                                                                                 }
                                                                                 addr212:
                                                                              }
                                                                              continue loop21;
                                                                           }
                                                                        }
                                                                        while(_loc16_ || param2)
                                                                        {
                                                                           if(!_loc17_)
                                                                           {
                                                                              _loc12_ = §§pop();
                                                                              continue loop21;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr308);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc16_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr283);
                                                               §§push(param1.left / _loc8_);
                                                            }
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr307);
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr265);
         }
         addr384:
      }
      
      public function § t§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §``§
      {
         var _loc10_:§4!p§ = §!<§.§[!@§(param2);
         return new §&!a§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §2! §(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §``§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:§``§ = null;
         var _loc11_:* = param2;
         if(_loc13_)
         {
            if("BIRD_BLACK" === _loc11_)
            {
               if(_loc13_ || param1)
               {
                  addr244:
                  §§push(0);
                  if(!(_loc13_ || this))
                  {
                     addr270:
                  }
               }
               else
               {
                  addr258:
                  §§push(1);
                  if(_loc12_)
                  {
                     addr333:
                  }
               }
            }
            else if("BIRD_BLUE" === _loc11_)
            {
               if(_loc13_)
               {
                  §§goto(addr258);
               }
               else
               {
                  addr267:
                  §§push(2);
                  if(!_loc12_)
                  {
                     §§goto(addr270);
                  }
                  else
                  {
                     addr302:
                  }
               }
            }
            else if("BIRD_GREEN" === _loc11_)
            {
               if(_loc13_)
               {
                  §§goto(addr267);
               }
               else
               {
                  addr294:
                  §§push(5);
                  if(_loc12_ && param1)
                  {
                     §§goto(addr333);
                  }
                  §§goto(addr338);
               }
            }
            else if("BIRD_WHITE" === _loc11_)
            {
               if(_loc13_)
               {
                  §§push(3);
                  if(!_loc13_)
                  {
                  }
               }
               else
               {
                  addr308:
                  §§push(6);
                  if(_loc13_ || this)
                  {
                  }
               }
            }
            else if("BIRD_YELLOW" === _loc11_)
            {
               if(!_loc12_)
               {
                  §§push(4);
                  if(_loc13_)
                  {
                     §§goto(addr338);
                  }
                  addr338:
                  switch(§§pop())
                  {
                     case 0:
                        _loc10_ = new §&!^§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
                        break;
                     case 1:
                        _loc10_ = new §>!m§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
                        break;
                     case 2:
                        _loc10_ = new §^B§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
                        break;
                     case 3:
                        _loc10_ = new §7c§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
                        break;
                     case 4:
                        _loc10_ = new §]v§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
                        break;
                     case 5:
                        _loc10_ = new §!!=§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
                        break;
                     case 6:
                        _loc10_ = new §3"'§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
                        break;
                     case 7:
                        _loc10_ = new §0!Z§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
                        break;
                     default:
                        _loc10_ = new §9`§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
                  }
                  return _loc10_;
               }
               §§goto(addr294);
               §§goto(addr333);
            }
            else
            {
               if("BIRD_RED" === _loc11_)
               {
                  if(_loc12_)
                  {
                  }
               }
               else if("BIRD_REDBIG" === _loc11_)
               {
                  if(!_loc12_)
                  {
                     §§goto(addr308);
                  }
               }
               else if("BIRD_ORANGE" !== _loc11_)
               {
                  §§goto(addr294);
                  §§push(8);
               }
               §§goto(addr294);
               if(!_loc12_)
               {
                  §§goto(addr333);
               }
            }
            §§goto(addr294);
         }
         §§goto(addr244);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§%!A§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §``§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(_loc15_)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§``§;
         §§push((_loc11_ = this.§;!p§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture());
         if(!_loc14_)
         {
            if(§§pop())
            {
               if(_loc15_)
               {
                  §§push(_loc10_);
                  §§push(this.§#U§);
                  if(_loc15_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
                  if(_loc15_ || this)
                  {
                     this.§9n§[this.§9n§.length] = _loc11_;
                     loop19:
                     while(true)
                     {
                        addr120:
                        while(true)
                        {
                           §§push(_loc11_ is §9`§);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc14_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc15_ || param2)
                                    {
                                       §§pop();
                                       loop2:
                                       while(true)
                                       {
                                          §§push(_loc11_.§!0§());
                                          if(_loc15_ || this)
                                          {
                                             §§push(!§§pop());
                                             if(!(_loc14_ && param3))
                                             {
                                                if(_loc14_ && this)
                                                {
                                                   continue loop1;
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§push(_loc11_.front);
                                                      if(!(_loc14_ && param1))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   if(!(_loc14_ && param2))
                                                   {
                                                      if(!(_loc15_ || param3))
                                                      {
                                                         continue loop19;
                                                      }
                                                      this.§,!]§.addChild(_loc10_);
                                                      if(_loc15_)
                                                      {
                                                         continue loop2;
                                                      }
                                                   }
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(param9);
                                                      addr292:
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr293:
                                                         while(true)
                                                         {
                                                            addr294:
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  this.§[!J§.addChild(_loc10_);
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     if(_loc15_)
                                                                     {
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           §§push(param5);
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              if(_loc15_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc14_ && param3))
                                                                                    {
                                                                                       if(_loc15_ || param1)
                                                                                       {
                                                                                          §§push(this.§`!G§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().§8!J§(_loc11_);
                                                                                          }
                                                                                          addr270:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          addr299:
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc14_ && param1)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    continue loop15;
                                                                                    addr272:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param6);
                                                                                    if(_loc15_ || this)
                                                                                    {
                                                                                       if(!(_loc14_ && param3))
                                                                                       {
                                                                                          if(!(_loc14_ && param1))
                                                                                          {
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                break loop3;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc15_ || param1)
                                                                                                {
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      if(_loc14_ && this)
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§`!G§);
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            §§pop().activeObject = _loc11_;
                                                                                                            addr195:
                                                                                                            return _loc11_;
                                                                                                            addr248:
                                                                                                         }
                                                                                                         §§goto(addr270);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr272);
                                                                                                }
                                                                                                §§goto(addr248);
                                                                                             }
                                                                                             §§goto(addr195);
                                                                                          }
                                                                                          break loop2;
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        addr249:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§7"-§.addChild(_loc10_);
                                                                        }
                                                                        addr295:
                                                                     }
                                                                     §§goto(addr299);
                                                                  }
                                                               }
                                                               §§goto(addr295);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   break loop1;
                                                }
                                             }
                                             §§goto(addr294);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr324);
                                       }
                                       addr323:
                                       addr136:
                                    }
                                    §§goto(addr294);
                                 }
                                 §§goto(addr89);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr323);
                              }
                              §§goto(addr293);
                           }
                        }
                     }
                     addr63:
                  }
                  §§goto(addr136);
               }
               §§goto(addr63);
            }
            else
            {
               this.§9n§[this.§9n§.length] = _loc11_;
               if(_loc15_ || param2)
               {
                  §§goto(addr120);
               }
            }
            §§goto(addr279);
         }
         §§goto(addr292);
      }
      
      public function §2"6§(param1:int, param2:§``§, param3:§``§) : §@R§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§@R§ = null;
         var _loc4_:int = this.§9n§.indexOf(param2) - this.§function§;
         var _loc5_:int = this.§9n§.indexOf(param3) - this.§function§;
         if(_loc8_ || param3)
         {
            §§push(_loc4_);
            if(!_loc7_)
            {
               §§push(0);
               if(_loc8_ || param1)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc8_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc7_ && param3))
                        {
                           addr78:
                           §§pop();
                           if(_loc8_ || param1)
                           {
                              §§goto(addr89);
                           }
                           §§goto(addr90);
                        }
                     }
                     addr89:
                     §§goto(addr88);
                  }
                  §§goto(addr78);
               }
               addr88:
               §§goto(addr87);
            }
            addr87:
            §§goto(addr86);
         }
         addr86:
         if(_loc5_ >= 0)
         {
            addr90:
            (_loc6_ = new §@R§(§8!z§.§`,§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§=!%§ = this.§`!G§.§?=§.§;!^§.§'!Y§(_loc6_.§8G§(param2,param3));
            if(!_loc7_)
            {
               this.§=!O§.push(_loc6_);
               if(_loc8_)
               {
                  return _loc6_;
               }
            }
         }
         return null;
      }
      
      public function §'K§(param1:§@R§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            if(!(param1.§=!%§ is b2WeldJoint))
            {
               if(_loc5_ || _loc2_)
               {
                  return;
               }
            }
         }
         var _loc2_:§``§ = this.getObject(param1.index1 + this.§function§);
         var _loc3_:§``§ = this.getObject(param1.index2 + this.§function§);
         if(_loc5_ || _loc3_)
         {
            this.§`!G§.§?=§.§;!^§.§ !;§(param1.§=!%§);
         }
         do
         {
            param1.§=!%§ = this.§`!G§.§?=§.§;!^§.§'!Y§(param1.§8G§(_loc2_,_loc3_));
         }
         while(_loc4_ && param1);
         
      }
      
      public function §>!]§(param1:§``§) : Vector.<§@R§>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§@R§ = null;
         var _loc2_:Vector.<§@R§> = new Vector.<§@R§>();
         var _loc3_:int = this.§9n§.indexOf(param1) - this.§function§;
         if(!(_loc7_ && _loc2_))
         {
            §§push(_loc3_);
            if(_loc8_)
            {
               if(§§pop() >= 0)
               {
                  addr48:
                  addr47:
                  for each(_loc4_ in this.§=!O§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(!(_loc7_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           if(!_loc7_)
                           {
                              addr85:
                              §§pop();
                              if(_loc8_ || _loc3_)
                              {
                                 addr97:
                                 if(_loc4_.index2 != _loc3_)
                                 {
                                    continue;
                                 }
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                              }
                              _loc2_.push(_loc4_);
                              continue;
                           }
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr85);
                  }
               }
               return _loc2_;
            }
            §§goto(addr48);
         }
         §§goto(addr47);
      }
      
      public function getJoints() : Vector.<§@R§>
      {
         return this.§=!O§;
      }
      
      public function §=!&§(param1:§``§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§9n§.indexOf(param1) - this.§function§;
         var _loc3_:int = this.§=!O§.length - 1;
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && _loc3_))
            {
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop() < 0)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(!(_loc5_ && this))
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           while(true)
                           {
                              this.§=!O§.splice(_loc3_,1);
                           }
                           addr93:
                        }
                        loop3:
                        for(; !_loc4_; §§goto(addr93))
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§=!O§[_loc3_].index2 == _loc2_);
                              if(_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          break loop4;
                                       }
                                       continue loop4;
                                    }
                                    addr120:
                                 }
                                 break;
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 break loop3;
                              }
                              continue loop3;
                           }
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           addr67:
                           while(true)
                           {
                              §§push(§§pop() - 1);
                              continue loop1;
                           }
                        }
                     }
                     continue;
                  }
                  §§push(this.§=!O§[_loc3_].index1 == _loc2_);
                  §§goto(addr120);
               }
               §§goto(addr67);
            }
            §§goto(addr68);
         }
      }
      
      protected function §95§(param1:§``§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1.uniqueID);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§7p§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || param1)
            {
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() < 0)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           addr79:
                           if(_loc5_ || _loc3_)
                           {
                              break;
                           }
                           addr107:
                           while(true)
                           {
                              this.§7p§.splice(_loc3_,1);
                              §§goto(addr79);
                           }
                        }
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr72:
                  }
                  else if(this.§7p§[_loc3_].targetId.toString() == _loc2_)
                  {
                     §§goto(addr107);
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                  }
               }
               while(true)
               {
                  §§push(§§pop() - 1);
               }
            }
            while(true)
            {
               _loc3_ = §§pop();
               §§goto(addr72);
            }
         }
      }
      
      public function §8b§(param1:§``§, param2:§``§) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = this.§9n§.indexOf(param1) - this.§function§;
         var _loc4_:int = this.§9n§.indexOf(param2) - this.§function§;
         var _loc5_:* = int(this.§=!O§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!_loc6_)
            {
               if(_loc7_ || this)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc7_)
                     {
                        if(!_loc6_)
                        {
                           if(!(_loc6_ && param1))
                           {
                              if(_loc7_)
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(false);
                                    if(!_loc6_)
                                    {
                                       if(_loc7_ || this)
                                       {
                                          if(_loc7_)
                                          {
                                             if(!(_loc6_ && param2))
                                             {
                                                break;
                                             }
                                             loop1:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop2:
                                                while(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc7_ || param2)
                                                      {
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            §§push(this.§=!O§[_loc5_].index1 == _loc4_);
                                                            addr134:
                                                            while(true)
                                                            {
                                                               if(_loc7_ || param1)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc6_ && _loc3_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  if(_loc7_ || param2)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr157:
                                                                        §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§=!O§[_loc5_].index2 == _loc3_);
                                                                           if(!_loc6_)
                                                                           {
                                                                              break loop2;
                                                                           }
                                                                           §§goto(addr122);
                                                                        }
                                                                        addr158:
                                                                     }
                                                                     break loop2;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  addr198:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr178:
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr201:
                                                         while(true)
                                                         {
                                                            §§push(this.§=!O§[_loc5_].index2 == _loc4_);
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr122);
                                                      }
                                                      addr121:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         addr104:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            addr105:
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                               addr106:
                                                               while(!_loc7_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      addr102:
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr134);
                                    }
                                    addr122:
                                    while(_loc6_)
                                    {
                                       continue loop4;
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr106);
                  }
                  else
                  {
                     §§push(this.§=!O§[_loc5_].index1 == _loc3_);
                  }
                  §§goto(addr198);
               }
               §§goto(addr104);
            }
            §§goto(addr105);
         }
         return §§pop();
      }
      
      protected function §;!p§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §``§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:§``§ = null;
         var _loc11_:§4!p§ = null;
         if(_loc14_)
         {
            §§push(param2);
            if(_loc14_ || param1)
            {
               if(§§pop().indexOf("BIRD") == 0)
               {
                  if(!_loc15_)
                  {
                     _loc10_ = this.§2! §(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                     if(_loc14_ || this)
                     {
                        var _loc12_:*;
                        §§push((_loc12_ = this).§2!o§);
                        if(!_loc15_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc13_:* = §§pop();
                        if(_loc14_)
                        {
                           _loc12_.§2!o§ = _loc13_;
                        }
                        if(!(_loc15_ && param3))
                        {
                           addr256:
                           _loc10_.uniqueID = this.§;!R§();
                           addr80:
                        }
                        return _loc10_;
                     }
                     §§goto(addr80);
                  }
                  else
                  {
                     addr86:
                     _loc10_ = this.§ t§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                  }
                  §§goto(addr256);
               }
               else
               {
                  §§push(param2);
               }
               §§goto(addr86);
            }
            if(§§pop().indexOf("PIG") == 0)
            {
               §§goto(addr86);
            }
            else
            {
               §§push((_loc11_ = §!<§.§[!@§(param2)) == null);
               if(_loc14_)
               {
                  §§push(§§pop());
                  if(_loc14_)
                  {
                     if(§§pop())
                     {
                        if(!_loc15_)
                        {
                           §§pop();
                           if(!(_loc15_ && param1))
                           {
                              §§push(param2);
                              if(_loc14_)
                              {
                                 §§push(§§pop().indexOf("MISC_") == 0);
                                 if(_loc14_ || this)
                                 {
                                    addr148:
                                    if(§§pop())
                                    {
                                       if(_loc14_)
                                       {
                                          addr157:
                                          param2 = "MISC_FOOD_" + param2.substring(5);
                                          if(!_loc15_)
                                          {
                                             addr160:
                                             _loc11_ = §!<§.§[!@§(param2);
                                             addr165:
                                             §§push(_loc11_.§@F§);
                                             if(_loc14_)
                                             {
                                                §§push(§4!p§.§#!U§);
                                                if(_loc14_ || param1)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc14_ || this)
                                                   {
                                                      addr187:
                                                      addr186:
                                                      if(!§§pop())
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            addr190:
                                                            §§pop();
                                                            addr199:
                                                            if(!_loc15_)
                                                            {
                                                               addr197:
                                                               §§push(_loc11_.§@F§ == §4!p§.§+Q§);
                                                            }
                                                            _loc10_ = new §!!"§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                                                            §§goto(addr256);
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr199);
                                                      }
                                                      else
                                                      {
                                                         _loc10_ = new §``§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param9,_loc11_.front);
                                                         §§goto(addr256);
                                                      }
                                                   }
                                                   §§goto(addr190);
                                                }
                                             }
                                             §§goto(addr197);
                                          }
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr190);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr187);
               }
               §§goto(addr186);
            }
         }
         §§goto(addr86);
      }
      
      protected function §;!R§() : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§``§ = null;
         var _loc1_:int = this.§9n§.length;
         var _loc2_:* = false;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               §§push(!§§pop());
            }
            while(§§pop())
            {
               §§push(true);
               if(_loc6_)
               {
                  _loc2_ = §§pop();
                  if(_loc7_)
                  {
                     break;
                  }
                  §§push(0);
                  if(!_loc6_)
                  {
                     return §§pop().toString();
                  }
                  addr99:
                  for each(_loc3_ in this.§9n§)
                  {
                     if(!(_loc7_ && _loc1_))
                     {
                        if(_loc3_.uniqueID != _loc1_.toString())
                        {
                           continue;
                        }
                        if(!_loc7_)
                        {
                           _loc1_++;
                           if(_loc6_)
                           {
                              addr76:
                              _loc2_ = false;
                           }
                           break;
                        }
                     }
                     §§goto(addr76);
                  }
                  continue loop0;
               }
            }
            §§goto(addr99);
         }
      }
      
      public function §="3§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§``§ = null;
         var _loc2_:* = int(this.§9n§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§9n§[_loc2_] as §``§;
            if(_loc5_ || _loc2_)
            {
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc3_.§8W§ <= 0)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.§ "5§(_loc2_,true,true,true);
                        }
                        loop2:
                        while(true)
                        {
                           addr44:
                           loop6:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc5_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc2_ = §§pop();
                              if(_loc5_ || param1)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 addr89:
                                 while(true)
                                 {
                                    addr78:
                                    while(true)
                                    {
                                       _loc3_.§'!8§();
                                    }
                                 }
                              }
                              while(!_loc4_)
                              {
                                 while(true)
                                 {
                                    continue loop6;
                                 }
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        _loc3_.§8<§();
                     }
                     §§goto(addr89);
                  }
               }
               §§goto(addr44);
            }
            §§goto(addr83);
         }
         if(!(_loc4_ && this))
         {
            this.§>g§(param1);
         }
      }
      
      protected function §>g§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§#!T§(param1);
         }
         do
         {
            this.§&!q§();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      private function §#!T§(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§[-§ = null;
         var _loc5_:* = 0;
         var _loc6_:§``§ = null;
         if(_loc8_ || this)
         {
            if(this.§7p§.length == 0)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
         }
         var _loc2_:Vector.<§[-§> = this.§7p§.concat();
         var _loc3_:* = int(_loc2_.length - 1);
         while(_loc3_ >= 0)
         {
            §§push((_loc4_ = _loc2_[_loc3_]).§4x§);
            if(_loc8_ || param1)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc7_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§pop();
                        if(!_loc7_)
                        {
                           §§push(this.§7p§.indexOf(_loc4_) == -1);
                           if(_loc8_)
                           {
                              addr100:
                              if(!§§pop())
                              {
                                 if(_loc8_ || _loc2_)
                                 {
                                    addr108:
                                    §§push(_loc4_.update(param1));
                                    if(_loc8_ || this)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc8_)
                                       {
                                          §§push(§§pop());
                                          if(_loc8_ || _loc3_)
                                          {
                                             _loc5_ = §§pop();
                                             if(!_loc7_)
                                             {
                                                addr133:
                                                if(§§pop() != -1)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      continue;
                                                   }
                                                   addr136:
                                                   §§push(this);
                                                   §§push("");
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() + _loc5_);
                                                   }
                                                   if(_loc6_ = §§pop().getObjectWithID(§§pop()))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         this.removeObject(_loc6_,true,true,true);
                                                         addr155:
                                                         §§push(_loc3_);
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            addr173:
                                                            §§push(§§pop() - 1);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr155);
                                             }
                                             _loc3_ = §§pop();
                                             continue;
                                          }
                                          §§goto(addr133);
                                       }
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr108);
                     }
                  }
               }
            }
            §§goto(addr100);
         }
      }
      
      private function §&!q§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:§@R§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         loop0:
         for each(_loc1_ in this.§=!O§)
         {
            if(_loc6_ || _loc3_)
            {
               §§push(_loc1_.type == §8!z§.§%_§);
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
                           addr327:
                           while(true)
                           {
                              §§push(Boolean(_loc1_.§!!H§));
                           }
                        }
                        addr326:
                     }
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              continue loop0;
                           }
                           loop7:
                           while(true)
                           {
                              §§push(_loc1_.§=!%§);
                              loop8:
                              while(true)
                              {
                                 §§push((§§pop() as b2PrismaticJoint).§>!b§());
                                 loop9:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop10:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       loop11:
                                       while(!(_loc7_ && _loc2_))
                                       {
                                          §§push(_loc1_.§=!%§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push((§§pop() as b2PrismaticJoint).§,;§());
                                             while(!_loc7_)
                                             {
                                                §§push(Number(§§pop()));
                                                loop14:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(_loc1_.§!z§));
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               continue loop1;
                                                            }
                                                            loop21:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop22:
                                                               while(_loc6_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop23:
                                                                     for(; !_loc7_; if(_loc7_ && this)
                                                                     {
                                                                        continue;
                                                                     },§§pop(),§§goto(addr183))
                                                                     {
                                                                        §§pop();
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(!(_loc6_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(0);
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§pop();
                                                                                                while(_loc6_)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() >= _loc1_.upperLimit);
                                                                                                      continue loop29;
                                                                                                   }
                                                                                                   addr110:
                                                                                                   if(!(_loc6_ || this))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   if(true)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   loop37:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      addr123:
                                                                                                      while(_loc6_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                         §§push(§§pop() < §§pop());
                                                                                                         if(_loc6_ || _loc1_)
                                                                                                         {
                                                                                                            if(!(_loc6_ || _loc2_))
                                                                                                            {
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               while(!_loc7_)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               continue loop6;
                                                                                                               addr251:
                                                                                                            }
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               addr147:
                                                                                                               §§push(§§pop());
                                                                                                               if(!(_loc7_ && this))
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc7_ && this))
                                                                                                                        {
                                                                                                                           continue loop23;
                                                                                                                        }
                                                                                                                        addr220:
                                                                                                                        addr62:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                        }
                                                                                                                        §§push(§§pop() <= _loc1_.lowerLimit);
                                                                                                                        if(_loc7_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                        addr74:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           if(_loc6_ || _loc2_)
                                                                                                                           {
                                                                                                                              continue loop12;
                                                                                                                           }
                                                                                                                           addr101:
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              continue loop24;
                                                                                                                           }
                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§goto(addr110);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr221:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop37;
                                                                                                                              }
                                                                                                                              addr221:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop8;
                                                                                                                        addr74:
                                                                                                                     }
                                                                                                                     continue loop23;
                                                                                                                     addr168:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr74);
                                                                                                                  }
                                                                                                                  §§goto(addr221);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr220);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr74);
                                                                                                                     }
                                                                                                                     §§goto(addr147);
                                                                                                                  }
                                                                                                                  addr219:
                                                                                                               }
                                                                                                               §§goto(addr74);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr326);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr168);
                                                                                                      }
                                                                                                      §§goto(addr207);
                                                                                                   }
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr251);
                                                                                             addr190:
                                                                                             §§push(Boolean(_loc1_.§=@§));
                                                                                             if(!(_loc6_ || _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!(_loc6_ || _loc2_))
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   continue loop25;
                                                                                                }
                                                                                                §§goto(addr123);
                                                                                             }
                                                                                          }
                                                                                          addr276:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr219);
                                                                                       }
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  §§goto(addr74);
                                                               }
                                                               continue loop17;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop10;
                                          }
                                       }
                                       §§goto(addr327);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr204);
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§``§> = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§;3§.push(§=!Y§.§`!W§(param1,param2,param3,param4));
         }
         do
         {
            §0"#§.§9"2§("TntExplosions","ChannelExplosions");
         }
         while(!_loc6_);
         
      }
      
      public function §&A§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§``§ = null;
         var _loc3_:int = this.§9n§.length - 1;
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ || _loc3_))
            {
               break;
            }
            if(§§pop() < 0)
            {
               break;
            }
            if(_loc4_ = this.§9n§[_loc3_])
            {
               if(!_loc6_)
               {
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(!(_loc6_ && this))
                     {
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           return §§pop();
                        }
                        continue;
                     }
                  }
               }
            }
            §§push(_loc3_);
            if(_loc5_ || param1)
            {
               return §§pop() - 1;
            }
         }
         return §§pop();
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §``§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§``§ = null;
         var _loc3_:* = int(this.§9n§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§9n§[_loc3_])
            {
               if(_loc5_ || _loc3_)
               {
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(!_loc6_)
                     {
                        return _loc4_;
                     }
                     continue;
                  }
               }
            }
            §§push(_loc3_);
            if(_loc5_ || param2)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return null;
      }
      
      public function getObjectsFromPoint(param1:Number, param2:Number) : Vector.<§``§>
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§``§ = null;
         var _loc3_:Vector.<§``§> = new Vector.<§``§>();
         var _loc4_:* = int(this.§9n§.length - 1);
         while(_loc4_ >= 0)
         {
            §§push(Boolean(_loc5_ = this.§9n§[_loc4_]));
            if(!(_loc6_ && this))
            {
               if(§§pop())
               {
                  if(_loc7_ || param2)
                  {
                     addr68:
                     §§pop();
                     if(!_loc6_)
                     {
                        §§push(_loc5_.isInCoordinates(param1,param2));
                        if(_loc7_ || this)
                        {
                        }
                        addr83:
                        if(§§pop())
                        {
                           if(!(_loc7_ || param1))
                           {
                              continue;
                           }
                           _loc3_.push(_loc5_);
                           if(!(_loc7_ || param2))
                           {
                              continue;
                           }
                        }
                        §§push(_loc4_);
                        if(_loc7_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc4_ = §§pop();
                     }
                     continue;
                  }
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr83);
            }
            §§goto(addr68);
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §``§
      {
         return this.§9n§[param1];
      }
      
      public function §0!j§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§``§ = null;
         var _loc3_:* = int(this.§9n§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§9n§[_loc3_] as §``§).§0!j§(param2,param1);
            if(_loc5_ || param1)
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
      
      private function §+! §(param1:§``§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:§``§ = null;
         if(_loc8_)
         {
            §§push(this.mSardineCanAdded);
            if(_loc8_ || param2)
            {
               if(!§§pop())
               {
                  if(_loc8_)
                  {
                     §§push(true);
                     if(_loc8_ || _loc3_)
                     {
                        return §§pop();
                     }
                     addr64:
                     if(§§pop())
                     {
                        if(!(_loc9_ && param1))
                        {
                           addr72:
                           §§push(false);
                           if(!_loc9_)
                           {
                              §§goto(addr75);
                           }
                        }
                        else
                        {
                           addr76:
                           §§push(false);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc8_)
                        {
                           §§push(param1.§8W§);
                           loop0:
                           while(true)
                           {
                              §§push(param1.§%5§);
                              loop1:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    §§push(this.§;!0§);
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
                                                this.§;!0§ = this.§`!G§.§<I§;
                                                addr502:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr497:
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             §§push(param1.§+!>§());
                                             loop7:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(this.§!&§(param1));
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     loop44:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop45:
                                                                        while(_loc8_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              addr471:
                                                                              if(_loc8_ || param2)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr479:
                                                                                    while(_loc8_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    §§goto(addr502);
                                                                                    §§goto(addr471);
                                                                                 }
                                                                                 addr478:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              loop36:
                                                                              while(true)
                                                                              {
                                                                                 loop37:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop38:
                                                                                       while(_loc8_ || param2)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§push(this.mMightyEagleTimer);
                                                                                             loop39:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc8_ || this))
                                                                                                {
                                                                                                   while(§§pop() < this.§,g§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(this.§@8§);
                                                                                                         if(!(_loc9_ && param2))
                                                                                                         {
                                                                                                            §§push(param2);
                                                                                                            if(_loc8_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() * this.§,g§.SARDINE_CAN_ROTATION_ACCELERATION);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         §§pop().§@8§ = §§pop();
                                                                                                         §§goto(addr561);
                                                                                                         break loop38;
                                                                                                      }
                                                                                                   }
                                                                                                   break;
                                                                                                   addr533:
                                                                                                }
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                if(§§pop() < this.§,g§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                {
                                                                                                   loop40:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.mMightyEagleTimer);
                                                                                                      loop41:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param2);
                                                                                                         loop42:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            loop17:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop18:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     if(!(_loc8_ || this))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(this.mMightyEagleTimer);
                                                                                                                     loop19:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() < this.§,g§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                        if(_loc8_ || this)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              continue loop37;
                                                                                                                           }
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              while(_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                              }
                                                                                                                              continue loop7;
                                                                                                                              addr432:
                                                                                                                           }
                                                                                                                           if(!(_loc8_ || _loc3_))
                                                                                                                           {
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                           addr333:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!(_loc9_ && this))
                                                                                                                           {
                                                                                                                              if(_loc8_ || param2)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr349:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr350:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc8_ || param1))
                                                                                                                                          {
                                                                                                                                             continue loop40;
                                                                                                                                          }
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() > this.§,g§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                             addr280:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   continue loop44;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr349:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       loop21:
                                                                                                                                       while(_loc8_ || this)
                                                                                                                                       {
                                                                                                                                          §0"#§.§9"2§("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                                                          while(_loc8_)
                                                                                                                                          {
                                                                                                                                             §0"#§.§9"2§("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                                             loop23:
                                                                                                                                             while(_loc8_ || param2)
                                                                                                                                             {
                                                                                                                                                loop24:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() >= this.§,g§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc9_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_ && param1)
                                                                                                                                                            {
                                                                                                                                                               continue loop21;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.getBody());
                                                                                                                                                               loop25:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().GetPosition());
                                                                                                                                                                  loop26:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        addr244:
                                                                                                                                                                        §§push(§§pop() - this.§,g§.MIGHTY_EAGLE_STARTING_DISTANCE_X);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        addr244:
                                                                                                                                                                     }
                                                                                                                                                                     loop27:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc5_ = §§pop();
                                                                                                                                                                        loop28:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc8_ || param2))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop38;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              loop29:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.getBody());
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop25;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc8_ || param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop().GetPosition());
                                                                                                                                                                                 if(_loc9_ && this)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop26;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc8_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop27;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop19;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop18;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(this.§,g§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§,g§.MIGHTY_EAGLE_Y_CHANGE);
                                                                                                                                                                                       if(_loc8_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * 1.07);
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop1;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc8_ || param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop39;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr244);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_ && param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop17;
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                                                                    loop30:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc8_ || this))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop28;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc9_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§!&§(param1));
                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc9_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc8_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop30;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(true);
                                                                                                                                                                                                      if(!(_loc9_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr621);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr349);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr621);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop23;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§,g§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.mMightyEagleAdded = true;
                                                                                                                                                                                                   loop55:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr598:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§;!0§ = 0;
                                                                                                                                                                                                         continue loop55;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr616:
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc7_.§8C§.setScale(1.82);
                                                                                                                                                                                                   if(!(_loc8_ || _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop24;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr616);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr598);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr280);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr621);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr479);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr276);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * this.§@8§);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().§5'§(§§pop());
                                                                                                                                                                                 break loop38;
                                                                                                                                                                              }
                                                                                                                                                                              addr511:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              break loop39;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop38;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(_loc8_ || this)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§`!G§.§<I§);
                                                                                                                                                                  if(!(_loc9_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() > this.§;!0§ + this.§,g§.SARDINE_CAN_DELAY_AFTER_HIT);
                                                                                                                                                                     continue loop36;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop17;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop6;
                                                                                                                                                               }
                                                                                                                                                               addr444:
                                                                                                                                                               addr507:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr621);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr244);
                                                                                                                                                }
                                                                                                                                                this.mMightyEagleTimer = _loc4_;
                                                                                                                                                §§goto(addr621);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                       §§goto(addr350);
                                                                                                                                    }
                                                                                                                                    §§goto(addr210);
                                                                                                                                 }
                                                                                                                                 continue loop40;
                                                                                                                              }
                                                                                                                              continue loop45;
                                                                                                                           }
                                                                                                                           addr621:
                                                                                                                           return _loc3_;
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 continue loop36;
                                                                                                                              }
                                                                                                                              if(_loc9_ && param2)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§pop();
                                                                                                                              §§goto(addr444);
                                                                                                                              §§goto(addr333);
                                                                                                                           }
                                                                                                                           §§goto(addr621);
                                                                                                                        }
                                                                                                                        §§goto(addr349);
                                                                                                                     }
                                                                                                                     continue loop37;
                                                                                                                  }
                                                                                                                  §§goto(addr621);
                                                                                                               }
                                                                                                               §§goto(addr497);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr621);
                                                                                                §§goto(addr561);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr511);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             addr531:
                                                                                          }
                                                                                          §§goto(addr533);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             this.§;!0§ = 0;
                                                                                             §§goto(addr507);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr537);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr621);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr621);
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr478);
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                      §§goto(addr466);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr531);
                              }
                           }
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr75);
               }
               §§push(this.mMightyEagleAdded);
               if(!(_loc9_ && param1))
               {
                  §§goto(addr64);
               }
            }
            addr75:
            return §§pop();
         }
         §§goto(addr72);
      }
      
      private function §-e§(param1:§``§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§``§ = null;
         if(_loc9_)
         {
            §§push(Boolean(this.§,g§.MIGHTY_EAGLE_USE_SHADE));
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
                        while(true)
                        {
                           §§push(this.§+F§);
                           if(_loc9_ || param1)
                           {
                              if(!_loc9_)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                              if(_loc9_)
                              {
                                 addr91:
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc9_)
                                       {
                                          continue loop1;
                                       }
                                       if(§§pop())
                                       {
                                          loop4:
                                          while(_loc9_)
                                          {
                                             §§pop();
                                             loop5:
                                             while(true)
                                             {
                                                addr38:
                                                while(true)
                                                {
                                                   §§push(this.mMightyEagleTimer);
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() > this.§,g§.MIGHTY_EAGLE_SHADING_DELAY);
                                                      if(!_loc9_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(_loc8_ && _loc3_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(Number(3));
                                                         }
                                                         else
                                                         {
                                                            addr111:
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   break;
                                                }
                                                var _loc3_:* = §§pop();
                                                if(!_loc8_)
                                                {
                                                   §§push(this);
                                                   §§push(this.mMightyEagleTimer);
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      §§push(§§pop() + param2);
                                                   }
                                                   §§pop().mMightyEagleTimer = §§pop();
                                                   if(_loc9_)
                                                   {
                                                      addr131:
                                                      §§push(this.§`!G§.particles);
                                                      §§push(§`!E§.§@!1§);
                                                      §§push(§6!Q§.§+f§);
                                                      §§push(§`!E§.§]W§);
                                                      §§push(param1.getBody().GetPosition().x);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc9_ || param1)
                                                            {
                                                               addr157:
                                                               §§push(Math.random() * (_loc3_ * 2));
                                                               if(_loc9_)
                                                               {
                                                                  addr166:
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(param1.getBody().GetPosition().y);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc9_)
                                                                     {
                                                                        addr185:
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(Math.random() * (_loc3_ * 2));
                                                                        }
                                                                        §§pop().§'p§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§`!E§.§]!I§(param1.§+!A§),0,0,1,0,4);
                                                                        var _loc4_:* = 1;
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           §§push(this.mMightyEagleHasTouchedGround);
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 this.mMightyEagleHasTouchedGround = param1.getBody().GetPosition().y >= -5.5;
                                                                                 break;
                                                                              }
                                                                              if(!(_loc8_ && param2))
                                                                              {
                                                                                 param1.§'n§(this.§,g§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                                              }
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 §§push(-1);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 continue loop13;
                                                                                 addr270:
                                                                                 loop16:
                                                                                 while(!(_loc8_ && param2))
                                                                                 {
                                                                                    this.§ !=§ = false;
                                                                                    loop17:
                                                                                    while(_loc9_)
                                                                                    {
                                                                                       this.§`!G§.§[!3§();
                                                                                       while(true)
                                                                                       {
                                                                                          param1.§^!x§(§34§.§do§);
                                                                                          loop25:
                                                                                          for(; !(_loc8_ && param1); if(_loc9_ || param2)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr231);
                                                                                             }
                                                                                             break loop14;
                                                                                          })
                                                                                          {
                                                                                             this.mSardineCanAdded = false;
                                                                                             loop26:
                                                                                             while(true)
                                                                                             {
                                                                                                addr231:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.§8C§);
                                                                                                   loop28:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().§!t§ = true;
                                                                                                      while(_loc9_)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§push(param1.§8C§);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§pop().§^!+§();
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                }
                                                                                                continue loop25;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                              }
                                                                              var _loc6_:* = §§pop();
                                                                              var _loc7_:* = this.§9n§;
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc7_,_loc6_));
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(!(_loc8_ && param1))
                                                                                             {
                                                                                                this.§+[§();
                                                                                                if(_loc9_ || this)
                                                                                                {
                                                                                                   addr405:
                                                                                                   §§push(this.mMightyEagleTimer > 6000);
                                                                                                   if(_loc9_ || param2)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§push(this.isPigsAlive());
                                                                                                               if(_loc9_ || _loc3_)
                                                                                                               {
                                                                                                                  addr437:
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     addr440:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           _loc6_ = 0;
                                                                                                                           if(!(_loc8_ && param2))
                                                                                                                           {
                                                                                                                              addr452:
                                                                                                                              _loc7_ = this.§9n§;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                                                 break loop20;
                                                                                                                              }
                                                                                                                              addr518:
                                                                                                                           }
                                                                                                                           if(_loc9_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr563:
                                                                                                                              loop21:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 param1.§!h§(param2,new Point(this.§,g§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§,g§.MIGHTY_EAGLE_Y_CHANGE),this.§,g§.MIGHTY_EAGLE_FLYING_SPEED);
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          break loop13;
                                                                                                                                       }
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                    addr532:
                                                                                                                                    return false;
                                                                                                                                    addr554:
                                                                                                                                    addr560:
                                                                                                                                 }
                                                                                                                                 §§goto(addr554);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr554);
                                                                                                                        }
                                                                                                                        break loop13;
                                                                                                                     }
                                                                                                                     §§goto(addr563);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr532);
                                                                                                         }
                                                                                                         §§goto(addr437);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr440);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr532);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr452);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                       §§push(Boolean(_loc5_));
                                                                                       if(!(_loc8_ && param1))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc9_ || param2)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(_loc5_.§>!r§());
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   addr355:
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(_loc5_.getBody());
                                                                                             if(!(_loc8_ && _loc3_))
                                                                                             {
                                                                                                §§pop().SetAwake(true);
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr372:
                                                                                                §§push(_loc5_.getBody());
                                                                                             }
                                                                                             §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr372);
                                                                                       }
                                                                                       §§goto(addr355);
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§goto(addr452);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                    §§push(Boolean(_loc5_));
                                                                                    if(!(_loc8_ && param2))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc8_ && param1))
                                                                                          {
                                                                                             §§pop();
                                                                                             if(_loc8_ && param1)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(_loc5_.§>!r§());
                                                                                             if(!(_loc8_ && this))
                                                                                             {
                                                                                                addr498:
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             §§push(_loc5_.§%5§);
                                                                                             if(!(_loc8_ && param2))
                                                                                             {
                                                                                                §§push(§§pop() * 2);
                                                                                             }
                                                                                             §§pop().applyDamage(§§pop(),true,true,true);
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr498);
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§ !=§ = this.mMightyEagleHasTouchedGround;
                                                                              §§goto(addr560);
                                                                           }
                                                                        }
                                                                        §§goto(addr263);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                         }
                                                         §§goto(addr166);
                                                      }
                                                      §§goto(addr157);
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr131);
                                             }
                                          }
                                          continue loop2;
                                          addr98:
                                       }
                                       §§goto(addr56);
                                    }
                                 }
                                 addr93:
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr91);
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr93);
               }
            }
         }
         §§goto(addr36);
      }
      
      private function §3m§() : void
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc1_:§=!Y§ = null;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§``§ = null;
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
         while(this.§;3§.length > 0)
         {
            _loc1_ = this.§;3§.shift();
            if(_loc21_ || _loc1_)
            {
               §§push(_loc1_.§@z§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  addr142:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     if(_loc20_)
                     {
                        break;
                     }
                     §§push(_loc1_.x);
                     continue loop1;
                  }
                  loop25:
                  while(true)
                  {
                     §§push(30);
                     loop26:
                     while(true)
                     {
                        _loc7_ = §§pop();
                        loop19:
                        while(true)
                        {
                           loop18:
                           while(true)
                           {
                              §§push(_loc7_);
                              loop23:
                              while(true)
                              {
                                 §§push(150);
                                 loop22:
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       continue loop0;
                                    }
                                    §§push(0.75);
                                    if(!_loc20_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc21_ || _loc2_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc20_ && this))
                                             {
                                                while(true)
                                                {
                                                   §§push(Math.random() * _loc2_);
                                                   addr844:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc21_)
                                                      {
                                                      }
                                                      addr848:
                                                      loop13:
                                                      while(true)
                                                      {
                                                         _loc15_ = §§pop();
                                                         addr849:
                                                         loop102:
                                                         while(true)
                                                         {
                                                            §§push(1250);
                                                            loop20:
                                                            while(true)
                                                            {
                                                               if(_loc20_)
                                                               {
                                                                  continue loop26;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(Math.random() * 750);
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc21_ || this)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     addr807:
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        _loc16_ = §§pop();
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc21_)
                                                                           {
                                                                              continue loop102;
                                                                           }
                                                                           if(_loc20_ && _loc3_)
                                                                           {
                                                                              continue loop25;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              while(true)
                                                                              {
                                                                                 §§push(180);
                                                                                 if(_loc20_ && _loc3_)
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 §§push(§§pop() / Math.PI);
                                                                                 if(_loc20_ && _loc1_)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 §§push(§§pop() / §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr786:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       _loc17_ = §§pop();
                                                                                       loop10:
                                                                                       while(true)
                                                                                       {
                                                                                          addr679:
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§`!G§);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(§§pop().particles);
                                                                                                if(_loc20_ && _loc3_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(§`!E§.§1[§);
                                                                                                if(!(_loc20_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§6!Q§.§+f§);
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(§`!E§.§]W§);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            if(_loc21_ || this)
                                                                                                            {
                                                                                                               §§push(_loc16_);
                                                                                                               §§push("");
                                                                                                               §§push(§`!E§.§-4§);
                                                                                                               §§push(_loc15_);
                                                                                                               if(!(_loc20_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(§§pop() * Math.cos(_loc17_));
                                                                                                               }
                                                                                                               §§push(_loc15_);
                                                                                                               if(_loc21_ || this)
                                                                                                               {
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     addr747:
                                                                                                                     §§push(§§pop() * Math.sin(_loc17_));
                                                                                                                  }
                                                                                                                  §§pop().§'p§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               §§goto(addr747);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                            }
                                                                                                            addr866:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().§'p§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§`!E§.§-4§,0,0,0,0,1,20,true);
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                         addr865:
                                                                                                      }
                                                                                                      §§goto(addr866);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr863:
                                                                                                   }
                                                                                                   §§goto(addr865);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                   addr861:
                                                                                                }
                                                                                                §§goto(addr863);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().particles);
                                                                                                   break loop11;
                                                                                                }
                                                                                                addr856:
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr861);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr646:
                                                                                    if(!(_loc21_ || _loc3_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          continue loop23;
                                                                                       }
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       _loc7_ = §§pop();
                                                                                       if(_loc20_ && _loc1_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       if(_loc20_ && this)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       if(true)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       §§goto(addr679);
                                                                                    }
                                                                                 }
                                                                                 if(_loc20_ && _loc1_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(5);
                                                                                 if(_loc20_ && _loc2_)
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    §§goto(addr646);
                                                                                 }
                                                                                 §§goto(addr786);
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop102;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr840:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr848);
                                             }
                                          }
                                          §§goto(addr844);
                                       }
                                       addr824:
                                    }
                                    §§goto(addr848);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr849);
         }
      }
      
      protected function §1O§(param1:§``§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param1.applyDamage(param2,false,false,false,true);
         }
      }
      
      protected function §+U§(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
         }
         switch(§§pop())
         {
         }
         return §`!E§.§&q§;
      }
      
      public function §#!z§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§``§ = null;
         var _loc3_:* = int(this.§9n§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§9n§[_loc3_];
            if(!(_loc5_ && this))
            {
               §§push(_loc2_.§9!W§());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(_loc2_.§!0§());
                     loop2:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                    this.§-e§(_loc2_,param1);
                                 }
                                 addr219:
                              }
                              loop3:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc3_ = §§pop();
                                       if(_loc4_)
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§0!8§());
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         addr154:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                                  continue loop3;
                                                                  addr164:
                                                               }
                                                               else
                                                               {
                                                                  addr203:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc2_.§^!x§(§34§.§,!t§);
                                                                        addr208:
                                                                        while(true)
                                                                        {
                                                                           this.§ "5§(_loc3_,false,false,false);
                                                                           addr196:
                                                                           while(true)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr204:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr183:
                                                                     §§push(_loc2_.isReadyToBeRemoved(param1));
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§push(_loc2_.§'5§());
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                     addr183:
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc2_.§^!x§(§34§.§,!t§);
                                                                  addr188:
                                                                  while(true)
                                                                  {
                                                                     this.§ "5§(_loc3_,false,true,true);
                                                                     addr176:
                                                                     while(true)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                               }
                                                               addr184:
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     _loc2_.update(param1);
                                                                     addr131:
                                                                     continue;
                                                                  }
                                                                  addr229:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§+! §(_loc2_,param1));
                                                                     addr233:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§ "5§(_loc3_,false,false,false);
                                                                              addr250:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           addr234:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr250);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr196);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr188);
                                                         }
                                                      }
                                                      §§goto(addr131);
                                                   }
                                                   §§goto(addr204);
                                                }
                                                §§goto(addr208);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr131);
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr234);
                              }
                           }
                           else
                           {
                              §§push(this.§!&§(_loc2_));
                           }
                           §§goto(addr203);
                        }
                        §§goto(addr233);
                     }
                  }
                  §§goto(addr229);
               }
            }
            §§goto(addr219);
         }
         if(!_loc5_)
         {
            this.§3m§();
         }
      }
      
      private function §+[§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§@R§ = null;
         for each(_loc1_ in this.§=!O§)
         {
            if(_loc5_ || this)
            {
               if(_loc1_.type == §8!z§.§3I§)
               {
                  continue;
               }
               if(_loc4_)
               {
                  continue;
               }
            }
            this.§`!G§.§?=§.§;!^§.§ !;§(_loc1_.§=!%§);
         }
      }
      
      public function § !3§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§``§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§9n§.length)
            {
               return false;
            }
            _loc2_ = this.§9n§[_loc1_];
            if(_loc3_ || this)
            {
               §§push(_loc2_.explode());
               if(_loc4_)
               {
                  break;
               }
               if(§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(true);
                     break;
                  }
               }
               _loc1_++;
            }
         }
         return §§pop();
      }
      
      public function §!&§(param1:§``§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
                        addr140:
                        loop9:
                        while(true)
                        {
                           §§push(param1.§4";§.§0-§() == §0A§.§7"=§);
                           if(!_loc2_)
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          if(_loc3_ && _loc2_)
                                          {
                                             continue loop9;
                                          }
                                          §§push(this.§`!G§.borders.§5"!§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y));
                                          loop7:
                                          while(true)
                                          {
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                continue loop2;
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(_loc2_ || _loc3_)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         addr80:
                                                         §§push(true);
                                                         if(!_loc3_)
                                                         {
                                                            break loop4;
                                                         }
                                                         continue loop4;
                                                      }
                                                      if(_loc3_ && _loc2_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§goto(addr80);
                                                   }
                                                   §§push(false);
                                                   if(_loc2_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                                addr75:
                                             }
                                             §§goto(addr80);
                                          }
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr110:
                                             while(true)
                                             {
                                                continue loop4;
                                             }
                                          }
                                       }
                                       continue loop9;
                                    }
                                 }
                                 §§goto(addr75);
                              }
                           }
                           continue loop0;
                           return §§pop();
                        }
                     }
                  }
                  §§goto(addr110);
               }
            }
         }
         §§goto(addr140);
      }
      
      public function § "5§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§@R§ = null;
         var _loc7_:§[-§ = null;
         if(!_loc13_)
         {
            if(param1 < 0)
            {
               if(!(_loc13_ && param2))
               {
                  §§goto(addr34);
               }
            }
            var _loc5_:§``§;
            §§push((_loc5_ = this.§9n§[param1]).§>!r§());
            if(_loc12_ || this)
            {
               if(§§pop())
               {
                  if(!_loc13_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = this).§9W§);
                     if(_loc12_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc9_:* = §§pop();
                     if(!_loc13_)
                     {
                        _loc8_.§9W§ = _loc9_;
                     }
                     if(!_loc13_)
                     {
                        addr264:
                        if(_loc5_ == this.§`!G§.activeObject)
                        {
                           while(true)
                           {
                              §§push(this.§`!G§);
                              addr271:
                              loop13:
                              while(true)
                              {
                                 §§pop().activeObject = null;
                                 addr273:
                                 while(true)
                                 {
                                    continue loop13;
                                 }
                              }
                           }
                           addr269:
                        }
                        while(true)
                        {
                           §§push(param2);
                           addr208:
                           loop26:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop14:
                                 while(true)
                                 {
                                    §§push(this.§`!G§);
                                    if(!(_loc13_ && param3))
                                    {
                                       §§push(_loc5_.§4";§.score);
                                       §§push(§3!s§.§0`§);
                                       §§push(true);
                                       §§push(_loc5_.getBody().GetPosition().x);
                                       §§push(_loc5_.getBody().GetPosition().y);
                                       if(!(_loc13_ && param2))
                                       {
                                          §§push(3);
                                          if(!(_loc13_ && param2))
                                          {
                                             addr258:
                                             §§push(§§pop() - §§pop());
                                             §§push(§`!E§.§6!%§(_loc5_.§+!A§));
                                          }
                                          §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                          loop15:
                                          while(true)
                                          {
                                             addr196:
                                             while(true)
                                             {
                                                §§push(param3);
                                                loop17:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr199:
                                                      while(true)
                                                      {
                                                         this.addDestructionParticles(_loc5_,this.§`!G§.particles);
                                                         addr205:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr199:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param4);
                                                      loop3:
                                                      while(true)
                                                      {
                                                         if(!(_loc13_ && param3))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§[!e§(_loc5_);
                                                                  addr188:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc12_ || param1))
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               addr185:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc5_.isTexture());
                                                               if(_loc13_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(!(_loc12_ || param1))
                                                               {
                                                                  continue loop17;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr170:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc13_)
                                                                        {
                                                                           if(!(_loc13_ && param3))
                                                                           {
                                                                              addr163:
                                                                              if(_loc12_ || param1)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr273);
                                                                           }
                                                                           §§goto(addr205);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr185);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§,'§(_loc5_.sprite);
                                                                        while(true)
                                                                        {
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              this.§=!&§(_loc5_);
                                                                              while(_loc12_)
                                                                              {
                                                                                 if(_loc12_ || param1)
                                                                                 {
                                                                                    this.§95§(_loc5_);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       break loop9;
                                                                                    }
                                                                                    if(!(_loc13_ && param1))
                                                                                    {
                                                                                       if(_loc13_ && param1)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             _loc8_ = 0;
                                                                                             _loc9_ = this.§=!O§;
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                if(_loc12_ || param3)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         if(!(_loc13_ && param2))
                                                                                                         {
                                                                                                            if(!(_loc13_ && this))
                                                                                                            {
                                                                                                               _loc8_ = 0;
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  _loc9_ = this.§7p§;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                                     break loop21;
                                                                                                                  }
                                                                                                                  addr443:
                                                                                                                  if(_loc12_ || param2)
                                                                                                                  {
                                                                                                                     addr451:
                                                                                                                     _loc5_.dispose();
                                                                                                                  }
                                                                                                                  _loc5_ = null;
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     this.§9n§[param1] = null;
                                                                                                                     do
                                                                                                                     {
                                                                                                                        this.§9n§.splice(param1,1);
                                                                                                                     }
                                                                                                                     while(_loc13_);
                                                                                                                     
                                                                                                                  }
                                                                                                                  return;
                                                                                                                  addr442:
                                                                                                                  addr440:
                                                                                                               }
                                                                                                               §§goto(addr443);
                                                                                                            }
                                                                                                            §§goto(addr451);
                                                                                                         }
                                                                                                         §§goto(addr443);
                                                                                                      }
                                                                                                      §§goto(addr442);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                      if(_loc6_.index1 >= param1)
                                                                                                      {
                                                                                                         if(_loc12_ || this)
                                                                                                         {
                                                                                                            var _loc10_:*;
                                                                                                            var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               _loc10_.index1 = _loc11_;
                                                                                                            }
                                                                                                            if(_loc13_ && this)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr318:
                                                                                                            if(_loc6_.index2 < param1)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                         }
                                                                                                         _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                                                                         if(!(_loc13_ && param2))
                                                                                                         {
                                                                                                            _loc10_.index2 = _loc11_;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr318);
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§goto(addr443);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc7_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                   §§push(_loc7_.§86§);
                                                                                                   if(_loc12_ || param3)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      if(_loc12_ || this)
                                                                                                      {
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(!(_loc13_ && this))
                                                                                                            {
                                                                                                               _loc7_.§4x§ = true;
                                                                                                               if(!(_loc13_ && this))
                                                                                                               {
                                                                                                                  addr419:
                                                                                                                  if(_loc7_.§86§ < param1)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§push((_loc10_ = _loc7_).§86§);
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                            }
                                                                                                            _loc11_ = §§pop();
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               _loc10_.§86§ = _loc11_;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr419);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr125:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr269);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr154);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr199);
                                                                                 }
                                                                                 §§goto(addr205);
                                                                              }
                                                                              §§goto(addr188);
                                                                           }
                                                                        }
                                                                        §§goto(addr163);
                                                                     }
                                                                     addr154:
                                                                     addr170:
                                                                  }
                                                                  §§goto(addr170);
                                                               }
                                                            }
                                                            continue loop17;
                                                         }
                                                         continue loop26;
                                                      }
                                                      continue loop26;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr258);
                                    }
                                    §§goto(addr271);
                                 }
                              }
                              §§goto(addr196);
                           }
                        }
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr170);
               }
               else
               {
                  §§push(_loc5_.§'5§());
                  if(!(_loc13_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc12_)
                        {
                           §§push((_loc8_ = this).§%!A§);
                           if(_loc12_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = §§pop();
                           if(_loc12_)
                           {
                              _loc8_.§%!A§ = _loc9_;
                           }
                           if(!_loc13_)
                           {
                              §§goto(addr264);
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr170);
                     }
                     §§goto(addr264);
                  }
               }
               §§goto(addr153);
            }
            §§goto(addr208);
         }
         addr34:
      }
      
      protected function addDestructionParticles(param1:§``§, param2:§6!Q§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      protected function §,'§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§[!J§);
            if(!(_loc3_ && this))
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§,!]§);
                     if(!(_loc3_ && param1))
                     {
                        if(!§§pop().contains(param1))
                        {
                           loop1:
                           do
                           {
                              §§push(this.§=!§);
                              if(!_loc3_)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§7"-§);
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       if(!§§pop().contains(param1))
                                       {
                                          §§goto(addr52);
                                       }
                                       if(!_loc3_)
                                       {
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§push(this.§7"-§);
                                             break;
                                          }
                                          if(_loc2_ || param1)
                                          {
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                       if(!_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             if(!(_loc3_ && param1))
                                             {
                                                return;
                                                addr63:
                                             }
                                             else
                                             {
                                                addr161:
                                                addr163:
                                             }
                                             §§goto(addr165);
                                          }
                                          continue loop0;
                                       }
                                       addr92:
                                       this.§=!§.removeChild(param1);
                                       continue loop1;
                                    }
                                    §§pop().removeChild(param1);
                                    addr52:
                                    return;
                                 }
                              }
                              §§goto(addr92);
                           }
                           while(!(_loc2_ || this));
                           
                           §§goto(addr128);
                        }
                        §§goto(addr124);
                     }
                     break;
                  }
                  §§pop().removeChild(param1);
                  addr128:
                  if(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        return;
                     }
                     addr124:
                     §§push(this.§,!]§);
                     break loop0;
                  }
                  if(_loc2_ || param1)
                  {
                     return;
                  }
                  addr165:
                  this.§[!J§.removeChild(param1);
                  return;
               }
               §§goto(addr161);
            }
            §§goto(addr163);
         }
         §§goto(addr63);
      }
      
      protected function §[!e§(param1:§``§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1.§2@§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr134:
                        loop3:
                        while(true)
                        {
                           §§push(param1.§`!m§());
                           if(_loc3_ || _loc3_)
                           {
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue loop4;
                              }
                              addr76:
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 break loop3;
                                 §§goto(addr76);
                              }
                           }
                           break;
                        }
                        while(§§pop())
                        {
                           if(_loc2_)
                           {
                              addr96:
                              this.addExplosions(§=!Y§.§9"5§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
                              break;
                              addr108:
                           }
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           §§goto(addr134);
                        }
                        addr25:
                        return;
                     }
                     addr133:
                  }
                  §§goto(addr77);
               }
               §§goto(addr133);
            }
         }
         §§goto(addr48);
      }
      
      public function removeObject(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§ "5§(this.§9n§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §6"1§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§!-§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr83:
               while(true)
               {
                  §§push(-§§pop());
                  addr84:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr82:
         }
         while(true)
         {
            §§push(this.§!-§);
            if(!_loc4_)
            {
               §§push(param2);
               if(_loc3_ || param2)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr59:
                     §§push(-§§pop());
                     if(_loc3_)
                     {
                        §§pop().y = §§pop();
                        if(!(_loc4_ && this))
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr84);
               }
               §§goto(addr59);
            }
            else
            {
               §§goto(addr82);
            }
         }
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§``§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§9n§.length)
         {
            _loc3_ = this.§9n§[_loc2_] as §``§;
            if(_loc4_ || param1)
            {
               §§push(Boolean(_loc3_));
               loop1:
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
                                       if(§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(param1);
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             loop15:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop16:
                                                while(_loc4_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr193:
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_.§8C§);
                                                            loop23:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().mTryToBlink);
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(§§pop() <= §§pop());
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc5_ && this)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              if(!(_loc4_ || param1))
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              addr89:
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc2_++;
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(_loc5_ && param1)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.§8C§);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   §§push(§§pop().mTryToScream);
                                                                                                   if(!(_loc4_ || _loc2_))
                                                                                                   {
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr166:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         break loop20;
                                                                                                      }
                                                                                                      addr166:
                                                                                                   }
                                                                                                }
                                                                                                addr61:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.§>!r§());
                                                                                                   continue loop1;
                                                                                                }
                                                                                                addr227:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(true);
                                                                                             }
                                                                                             addr91:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(_loc5_ && _loc3_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   return §§pop();
                                                                                                }
                                                                                                continue loop1;
                                                                                             }
                                                                                             continue loop20;
                                                                                             §§goto(addr79);
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          continue loop22;
                                                                                       }
                                                                                       addr162:
                                                                                       addr162:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr61);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr166);
                                                                                    }
                                                                                    addr210:
                                                                                    addr39:
                                                                                 }
                                                                                 §§goto(addr91);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                              }
                                                                              addr226:
                                                                           }
                                                                           §§goto(addr227);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() > §§pop());
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr89);
                                                }
                                                continue loop2;
                                             }
                                          }
                                          §§goto(addr193);
                                       }
                                       §§goto(addr39);
                                    }
                                    addr175:
                                 }
                                 §§goto(addr209);
                              }
                           }
                        }
                        addr206:
                     }
                     §§goto(addr226);
                  }
               }
            }
            §§goto(addr162);
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§``§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§9n§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc6_ && _loc2_))
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§9n§[_loc3_] as §``§));
               if(!_loc6_)
               {
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§pop();
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(_loc4_.§>!r§());
                              loop23:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr221:
                                 loop25:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop26:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop16:
                                          while(true)
                                          {
                                             §§pop();
                                             addr224:
                                             while(true)
                                             {
                                                §§push(_loc4_.§8W§);
                                                addr191:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr192:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                   }
                                                }
                                                continue loop16;
                                             }
                                          }
                                          addr223:
                                       }
                                       loop19:
                                       while(true)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         §§push(§§pop());
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(_loc6_ && this)
                                                            {
                                                               continue loop26;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.§8C§);
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().mTryToBlink);
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() <= §§pop());
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    if(_loc6_ && _loc2_)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    §§push(§§pop());
                                                                                    if(_loc6_ && _loc2_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                       }
                                                                                       addr126:
                                                                                       loop3:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop4:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   _loc2_++;
                                                                                                   loop5:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr57:
                                                                                                      addr79:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                         }
                                                                                                         _loc3_ = §§pop();
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         if(_loc6_ && param1)
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         while(!(_loc5_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_.§8C§);
                                                                                                            if(_loc6_ && _loc2_)
                                                                                                            {
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            §§push(§§pop().mTryToScream);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(_loc6_ && this)
                                                                                                               {
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               §§push(§§pop() <= §§pop());
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        continue loop3;
                                                                                                                     }
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               addr177:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     §§goto(addr180);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr223);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr191);
                                                                                                         }
                                                                                                         addr180:
                                                                                                      }
                                                                                                      while(false)
                                                                                                      {
                                                                                                         §§goto(addr81);
                                                                                                         §§goto(addr72);
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr224);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr57);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr177);
                                                                              }
                                                                              §§goto(addr192);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr126);
                                                         }
                                                         continue loop19;
                                                      }
                                                      continue loop25;
                                                   }
                                                }
                                             }
                                             §§goto(addr57);
                                          }
                                       }
                                    }
                                 }
                              }
                              addr219:
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr219);
                     }
                     §§goto(addr221);
                  }
                  §§goto(addr176);
               }
               §§goto(addr221);
            }
            break;
         }
         return §§pop();
      }
      
      public function getBlockCount() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§``§ = null;
         var _loc1_:int = 0;
         loop0:
         for each(_loc2_ in this.§9n§)
         {
            if(_loc6_)
            {
               §§push(Boolean(_loc2_));
               if(!(_loc5_ && this))
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           loop3:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(_loc2_.§^_§());
                                 loop4:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          while(§§pop())
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                if(!(_loc5_ && _loc1_))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   _loc1_++;
                                                }
                                                else
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.isMiscBlock());
                                                      if(_loc6_)
                                                      {
                                                         if(!(_loc6_ || this))
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      addr51:
                                                      if(!(_loc5_ && _loc1_))
                                                      {
                                                         continue loop4;
                                                      }
                                                      addr104:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§pop();
                                                            continue loop9;
                                                         }
                                                         continue loop8;
                                                         §§goto(addr51);
                                                      }
                                                      continue loop8;
                                                   }
                                                   addr107:
                                                }
                                             }
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          continue loop0;
                                          addr75:
                                       }
                                       §§goto(addr104);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        addr129:
                     }
                     §§goto(addr75);
                  }
               }
               §§goto(addr129);
            }
            §§goto(addr107);
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§``§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§9n§)
         {
            if(!(_loc6_ && _loc3_))
            {
               §§push(Boolean(_loc2_));
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        addr59:
                        §§pop();
                        addr80:
                        if(_loc5_)
                        {
                           §§push(_loc2_.isTexture());
                           if(!_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                        _loc1_++;
                        continue;
                     }
                  }
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     continue;
                  }
                  §§goto(addr80);
               }
            }
            §§goto(addr59);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§``§ = null;
         var _loc2_:* = int(this.§9n§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§9n§[_loc2_];
            if(_loc5_)
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
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc3_.§>!r§());
                              loop5:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc5_)
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                       addr125:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc4_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§pop();
                                             addr136:
                                             while(true)
                                             {
                                                addr52:
                                                while(true)
                                                {
                                                   §§push(_loc3_.§8W§ > 0);
                                                   if(_loc5_ || param1)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                          }
                                          addr135:
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(_loc3_.§8C§);
                                                   §§push(§0;§.§2!_§);
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§push(§§pop() * param1);
                                                   }
                                                   §§pop().mTryToScream = §§pop();
                                                }
                                                §§goto(addr136);
                                             }
                                             loop9:
                                             while(_loc5_ || _loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc2_ = §§pop();
                                                   if(_loc4_ && _loc2_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(true)
                                                   {
                                                      break loop8;
                                                   }
                                                   §§goto(addr52);
                                                }
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr37);
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr135);
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr125);
                  }
               }
            }
            §§goto(addr136);
         }
      }
      
      public function §+!J§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§``§ = null;
         var _loc1_:* = int(this.§9n§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9n§[_loc1_] as §``§;
            if(_loc3_)
            {
               §§push(Boolean(_loc2_));
               if(!_loc4_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop10:
                        while(true)
                        {
                           §§pop();
                           loop11:
                           while(true)
                           {
                              §§push(_loc2_.§'5§());
                              if(_loc3_ || _loc3_)
                              {
                                 addr108:
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc4_)
                                       {
                                          if(§§pop())
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§8W§ > 0);
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc4_ && this)
                                                         {
                                                            continue loop4;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break loop3;
                                                         }
                                                         continue loop3;
                                                      }
                                                      addr86:
                                                      if(!(_loc3_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr94);
                                                      }
                                                   }
                                                   continue loop11;
                                                }
                                                continue loop10;
                                             }
                                             §§goto(addr108);
                                             addr115:
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§goto(addr86);
                                                }
                                                else
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      addr38:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         _loc1_ = §§pop();
                                                         if(!(_loc4_ && this))
                                                         {
                                                            break;
                                                         }
                                                         continue loop8;
                                                      }
                                                      if(true)
                                                      {
                                                         break loop7;
                                                      }
                                                      §§goto(addr53);
                                                   }
                                                }
                                             }
                                             §§goto(addr38);
                                          }
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    return §§pop();
                                 }
                                 addr110:
                              }
                              §§goto(addr115);
                           }
                        }
                        addr143:
                     }
                     §§goto(addr110);
                  }
               }
               §§goto(addr143);
            }
            §§goto(addr93);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§``§ = null;
         var _loc1_:* = int(this.§9n§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9n§[_loc1_] as §``§;
            if(_loc3_ || this)
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
                           addr286:
                           while(true)
                           {
                              §§push(_loc2_.§8W§);
                              addr261:
                              while(true)
                              {
                                 §§push(0);
                                 addr262:
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    addr263:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                              }
                           }
                        }
                        addr285:
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
                                       §§push(_loc2_.§@F§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop() == §4!p§.§>_§);
                                          addr242:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                          }
                                          loop28:
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             if(_loc3_ || _loc1_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop9;
                                             }
                                             addr55:
                                             _loc1_ = §§pop();
                                             if(_loc3_ || this)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                loop29:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§8W§);
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      §§push(0);
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop28;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(false);
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              §§goto(addr285);
                                                                           }
                                                                           else
                                                                           {
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc3_ || this)
                                                                                 {
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       addr133:
                                                                                       if(!(_loc4_ && _loc1_))
                                                                                       {
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(!(_loc3_ || _loc2_))
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr170:
                                                                                                      if(!(_loc3_ || _loc2_))
                                                                                                      {
                                                                                                         loop17:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            §§pop();
                                                                                                            loop18:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc2_.§+!>§());
                                                                                                               if(!(_loc4_ && _loc2_))
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(!§§pop());
                                                                                                                  while(!(_loc4_ && this))
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc3_ || _loc1_)
                                                                                                                           {
                                                                                                                              continue loop18;
                                                                                                                           }
                                                                                                                           addr235:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr107:
                                                                                                                              if(_loc3_ || _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr235:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop23;
                                                                                                                           §§goto(addr235);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           addr227:
                                                                                                                           break loop17;
                                                                                                                        }
                                                                                                                        §§push(false);
                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                        {
                                                                                                                           return §§pop();
                                                                                                                        }
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     addr245:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_.§8N§());
                                                                                                                        break loop18;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     while(_loc3_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        §§goto(addr201);
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  addr192:
                                                                                                               }
                                                                                                               §§goto(addr192);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr248);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      addr177:
                                                                                                      §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop29;
                                                                                                         §§goto(addr177);
                                                                                                      }
                                                                                                      §§goto(addr261);
                                                                                                      §§goto(addr263);
                                                                                                   }
                                                                                                   §§goto(addr192);
                                                                                                }
                                                                                                continue loop9;
                                                                                                addr168:
                                                                                             }
                                                                                             §§goto(addr251);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr242);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop28;
                                                                                          }
                                                                                          §§goto(addr245);
                                                                                          §§goto(addr133);
                                                                                       }
                                                                                       addr244:
                                                                                    }
                                                                                    §§goto(addr227);
                                                                                 }
                                                                                 §§goto(addr168);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr95:
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           §§goto(addr107);
                                                                        }
                                                                        break;
                                                                        §§goto(addr55);
                                                                     }
                                                                     §§goto(addr178);
                                                                     addr105:
                                                                  }
                                                                  §§goto(addr235);
                                                               }
                                                            }
                                                            §§goto(addr168);
                                                         }
                                                         §§goto(addr95);
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   §§goto(addr261);
                                                }
                                             }
                                             §§goto(addr105);
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr244);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr286);
         }
         return true;
      }
      
      public function §#"!§(param1:Boolean = false) : §``§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§&!a§ = null;
         if(!(_loc9_ && this))
         {
            if(!this.isPigsAlive())
            {
               if(_loc8_)
               {
                  return null;
               }
            }
         }
         var _loc2_:int = this.§9n§.length;
         §§push(this.getPigCount(param1));
         if(_loc8_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc9_)
         {
            §§push(_loc3_);
            if(_loc8_ || param1)
            {
               if(§§pop() == 0)
               {
                  if(!_loc9_)
                  {
                     return null;
                  }
                  addr66:
                  §§push(int(Math.random() * _loc3_));
               }
               §§goto(addr66);
            }
            var _loc4_:* = §§pop();
            var _loc5_:int = 0;
            var _loc6_:int = 0;
            loop0:
            while(_loc6_ < _loc2_)
            {
               §§push(Boolean(_loc7_ = this.§9n§[_loc6_] as §&!a§));
               if(!_loc9_)
               {
                  §§push(§§pop());
                  if(_loc8_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || param1)
                        {
                           §§pop();
                           if(_loc8_)
                           {
                              §§push(Boolean(_loc7_.§>!r§()));
                              if(!(_loc9_ && this))
                              {
                                 addr270:
                                 §§push(§§pop());
                                 loop18:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr272:
                                       while(true)
                                       {
                                          §§pop();
                                          addr273:
                                          while(true)
                                          {
                                             §§push(_loc7_.§8W§ > 0);
                                          }
                                       }
                                       addr272:
                                    }
                                    while(true)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc9_ && this))
                                             {
                                                §§push(param1);
                                                while(true)
                                                {
                                                   §§push(!§§pop());
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               §§goto(addr248);
                                                            }
                                                         }
                                                         §§goto(addr164);
                                                      }
                                                   }
                                                }
                                                addr244:
                                             }
                                             addr248:
                                             loop4:
                                             while(true)
                                             {
                                                §§push(_loc7_.§8C§.mTryToBlink <= 0);
                                                loop5:
                                                while(true)
                                                {
                                                   if(_loc9_ && param1)
                                                   {
                                                      continue loop15;
                                                   }
                                                   if(!_loc8_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(_loc9_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop());
                                                   if(!(_loc8_ || _loc2_))
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      continue loop18;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      loop8:
                                                      while(§§pop())
                                                      {
                                                         if(_loc8_ || this)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_.§8C§.mTryToScream <= 0);
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  addr220:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        §§pop();
                                                                        continue loop7;
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               continue loop5;
                                                            }
                                                            if(_loc5_ < _loc4_)
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  _loc5_++;
                                                                  addr126:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        break loop8;
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr182:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        break loop9;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               §§goto(addr273);
                                                               addr124:
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  break loop4;
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      while(true)
                                                      {
                                                         _loc6_++;
                                                         if(_loc8_ || this)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr124);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr178);
                                                            }
                                                         }
                                                         §§goto(addr126);
                                                      }
                                                      continue loop0;
                                                      addr164:
                                                      addr111:
                                                   }
                                                   §§goto(addr220);
                                                }
                                                §§goto(addr272);
                                             }
                                             return _loc7_;
                                          }
                                          §§goto(addr111);
                                       }
                                    }
                                 }
                                 addr271:
                              }
                              §§goto(addr272);
                           }
                           §§goto(addr273);
                        }
                        §§goto(addr244);
                     }
                     §§goto(addr270);
                  }
                  §§goto(addr271);
               }
               §§goto(addr272);
            }
            return null;
         }
         §§goto(addr66);
      }
      
      public function §'i§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§9n§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(!(_loc3_ && _loc3_))
            {
               if(_loc4_)
               {
                  §§push(0);
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§push(_loc1_);
                              if(_loc4_ || _loc1_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       addr75:
                                       §§push(§§pop() + this.§`!G§.slingshot.§'i§());
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(int(§§pop()));
                                             loop2:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                addr97:
                                                addr106:
                                                while(_loc4_)
                                                {
                                                   continue loop2;
                                                }
                                                if(_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                loop5:
                                                while(true)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         addr102:
                                                         §§push(_loc2_);
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         addr126:
                                                         while(true)
                                                         {
                                                            addr129:
                                                            §§push(§,4§.§]O§.getValue());
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               addr147:
                                                               §§push(int(§§pop() + §§pop() * int((this.§9n§[_loc2_] as §``§).§%5§)));
                                                               if(_loc4_ || this)
                                                               {
                                                                  break;
                                                               }
                                                               addr167:
                                                               §§push((this.§9n§[_loc2_] as §``§).§4";§.score);
                                                            }
                                                            addr186:
                                                            _loc1_ = int(§§pop() + §§pop());
                                                            continue loop6;
                                                            addr125:
                                                         }
                                                         _loc1_ = §§pop();
                                                         continue loop5;
                                                      }
                                                      addr104:
                                                      §§push(§§pop() - 1);
                                                      break loop1;
                                                      addr100:
                                                   }
                                                   while(true)
                                                   {
                                                      if((this.§9n§[_loc2_] as §``§).§8N§())
                                                      {
                                                         if(_loc3_ && _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr125);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr100);
                                                      }
                                                   }
                                                }
                                             }
                                             addr96:
                                          }
                                          §§goto(addr186);
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr97);
                        }
                        else
                        {
                           §§push(_loc1_);
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr75);
               }
               §§goto(addr102);
            }
            while(true)
            {
               _loc2_ = §§pop();
               §§goto(addr106);
               §§goto(addr104);
            }
         }
      }
      
      public function §;"<§(param1:§``§, param2:§``§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param2 is §>!m§);
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
                        addr133:
                        while(true)
                        {
                           §§push(param1 is §>!m§);
                        }
                     }
                     addr132:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           do
                           {
                              §§push(param1.§=!8§());
                              loop7:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 if(_loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(§§pop());
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break loop7;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc4_ && param1)
                                                      {
                                                         addr110:
                                                         if(_loc3_)
                                                         {
                                                            addr113:
                                                            §§push(true);
                                                            if(!_loc4_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                         break;
                                                      }
                                                      §§push(param2.§=!8§());
                                                      if(!_loc3_)
                                                      {
                                                         break loop9;
                                                      }
                                                      if(_loc4_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§goto(addr113);
                                                   }
                                                   §§goto(addr133);
                                                }
                                             }
                                             §§push(false);
                                             if(!(_loc3_ || param1))
                                             {
                                                break;
                                             }
                                             if(!_loc4_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          §§goto(addr81);
                                       }
                                       continue loop5;
                                    }
                                 }
                                 §§goto(addr95);
                              }
                           }
                           while(!_loc3_);
                           
                           addr80:
                           addr81:
                           addr56:
                           return §§pop();
                           §§push(true);
                        }
                        §§goto(addr110);
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §4![§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.mSardineCanAdded = true;
            do
            {
               this.§%!A§ = 0;
            }
            while(_loc2_);
            
         }
      }
      
      public function §3!E§(param1:§``§, param2:§``§) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §;!H§(param1:§``§, param2:§``§) : void
      {
      }
      
      public function §7!E§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§``§ = null;
         var _loc1_:* = int(this.§9n§.length - 1);
         loop0:
         for(; _loc1_ >= 0; if(true)
         {
            continue;
         },§§goto(addr64))
         {
            _loc2_ = this.§9n§[_loc1_] as §``§;
            if(!_loc3_)
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    while(true)
                                    {
                                       this.§ "5§(_loc1_,true,true,true);
                                    }
                                    addr93:
                                 }
                                 loop4:
                                 while(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc1_ = §§pop();
                                       if(_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    addr64:
                                    while(true)
                                    {
                                       §§push(_loc2_.§>!r§());
                                       if(!(_loc4_ || _loc2_))
                                       {
                                          break loop5;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr39);
                           }
                           continue loop0;
                           addr83:
                        }
                     }
                  }
                  §§goto(addr120);
               }
            }
            §§goto(addr93);
         }
      }
      
      public function §;e§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§``§ = null;
         var _loc1_:* = int(this.§9n§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9n§[_loc1_] as §``§;
            if(!(_loc4_ && _loc3_))
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr110:
                           while(true)
                           {
                              addr65:
                              do
                              {
                                 §§push(_loc2_.§`!m§());
                                 if(!_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              while(!_loc4_);
                              
                              continue loop2;
                           }
                        }
                     }
                     loop6:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop7:
                           while(!(_loc4_ && this))
                           {
                              while(true)
                              {
                                 this.§ "5§(_loc1_,true,true,true);
                                 loop10:
                                 while(true)
                                 {
                                    addr43:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc1_ = §§pop();
                                       if(!_loc3_)
                                       {
                                          continue loop10;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop7;
                                       }
                                       if(true)
                                       {
                                          break loop6;
                                       }
                                       §§goto(addr65);
                                       continue loop10;
                                    }
                                 }
                              }
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr43);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr86);
         }
      }
      
      public function getObjectCount() : int
      {
         return this.§9n§.length;
      }
      
      public function writeObjectInformation(param1:§'!e§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§``§ = null;
         var _loc5_:§"0§ = null;
         var _loc6_:§8!z§ = null;
         var _loc7_:§@R§ = null;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc9_ || this)
            {
               if(§§pop() >= this.§9n§.length)
               {
                  §§push(Number(0));
                  break;
               }
               if((_loc4_ = this.§9n§[_loc2_]).isGround())
               {
                  if(!(_loc9_ || this))
                  {
                     continue;
                  }
               }
               else
               {
                  (_loc5_ = new §"0§()).angle = _loc4_.§?"1§();
                  if(_loc9_ || param1)
                  {
                     _loc5_.id = _loc4_.§+!A§;
                     while(true)
                     {
                        _loc5_.x = _loc4_.getBody().GetPosition().x;
                        addr105:
                        while(!_loc8_)
                        {
                        }
                     }
                  }
                  while(true)
                  {
                     _loc5_.y = _loc4_.getBody().GetPosition().y;
                     loop4:
                     for(; !_loc8_; while(_loc9_ || _loc3_)
                     {
                        param1.addObject(_loc5_);
                        if(!_loc9_)
                        {
                           continue;
                        }
                        §§goto(addr73);
                     })
                     {
                        do
                        {
                           _loc5_.uniqueID = _loc4_.uniqueID;
                           continue loop4;
                        }
                        while(false);
                        
                     }
                     §§goto(addr105);
                  }
               }
               §§push(_loc2_);
               if(!(_loc8_ && _loc2_))
               {
                  §§push(§§pop() + 1);
                  if(_loc9_ || _loc2_)
                  {
                     addr139:
                     §§push(Number(§§pop()));
                  }
                  _loc2_ = §§pop();
                  continue;
               }
               §§goto(addr139);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(!(_loc8_ && param1))
         {
            while(_loc3_ < this.§=!O§.length)
            {
               _loc7_ = this.§=!O§[_loc3_];
               _loc6_ = new §8!z§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§=Z§,_loc7_.§!z§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§=@§,_loc7_.motorSpeed,_loc7_.§!!H§,_loc7_.maxTorque);
               if(_loc9_ || _loc2_)
               {
                  param1.§@!V§(_loc6_);
                  if(!_loc9_)
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(_loc9_ || _loc3_)
               {
                  §§push(§§pop() + 1);
                  if(_loc9_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      public function §`!q§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§9n§.length <= _loc1_)
            {
               if(_loc2_ || this)
               {
                  if(!_loc3_)
                  {
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     addr82:
                     _loc1_++;
                  }
               }
               else
               {
                  addr63:
               }
               continue;
            }
            if(!this.§9n§[_loc1_].isGround())
            {
               this.removeObject(this.§9n§[_loc1_]);
               §§goto(addr63);
            }
            §§goto(addr82);
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_)
            {
               if(!(_loc6_ && _loc3_))
               {
                  if(§§pop() >= this.§9n§.length)
                  {
                     if(!(_loc6_ && param2))
                     {
                        break;
                     }
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           addr98:
                           while(true)
                           {
                              _loc3_.push(this.§9n§[_loc4_]);
                           }
                        }
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr67:
                  }
                  else if(this.§9n§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     §§goto(addr98);
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                     addr66:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        §§goto(addr67);
                     }
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr66);
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§#U§ = param1;
            if(_loc4_ || _loc2_)
            {
               this.§ "§(param1);
            }
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  if(_loc4_)
                  {
                     if(§§pop() >= this.§9n§.length)
                     {
                        if(!(_loc3_ && this))
                        {
                           if(!(_loc3_ && param1))
                           {
                              break;
                           }
                           this.§9n§[_loc2_].sprite.visible = !this.§#U§;
                           addr101:
                           while(true)
                           {
                              addr85:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr87:
                                 while(true)
                                 {
                                    §§push(§§pop() + 1);
                                    addr88:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr89:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                       }
                                    }
                                 }
                              }
                           }
                           addr120:
                        }
                        while(!_loc4_)
                        {
                           §§goto(addr120);
                        }
                        continue;
                     }
                     if(this.§9n§[_loc2_].isTexture())
                     {
                        §§goto(addr101);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr87);
               }
               §§goto(addr88);
            }
            §§goto(addr89);
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"+§ = param1;
         }
      }
      
      public function § !'§() : Boolean
      {
         return this.§"+§;
      }
      
      public function §5">§() : int
      {
         return this.§2!o§;
      }
      
      public function §=!_§() : int
      {
         return this.§9W§;
      }
      
      public function getObjectWithID(param1:String) : §``§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§``§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§9n§.length)
         {
            _loc3_ = this.§9n§[_loc2_] as §``§;
            if(!_loc4_)
            {
               if(_loc3_.uniqueID == param1)
               {
                  if(_loc5_ || param1)
                  {
                     return _loc3_;
                  }
                  continue;
               }
            }
            _loc2_++;
         }
         return null;
      }
   }
}
