package §%Q§
{
   import § use§.§+N§;
   import § use§.§-$§;
   import § use§.§0!D§;
   import § use§.§<!t§;
   import §"R§.§ !Q§;
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §,!5§.§0;§;
   import §,!5§.§;v§;
   import §,!5§.§[$§;
   import §,!5§.§^g§;
   import §,!Q§.§ !P§;
   import §-w§.§+W§;
   import §0!N§.§=+§;
   import §9!"§.b2PrismaticJoint;
   import §9!"§.b2WeldJoint;
   import §<!1§.§0"§;
   import §<!1§.§2!W§;
   import §<!1§.§9B§;
   import §<!1§.§<!R§;
   import §<!1§.§<F§;
   import §>H§.b2Vec2;
   import §]V§.§+F§;
   import §]V§.§1!e§;
   import §^!+§.Texture;
   import §^_§.§!>§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=[§
   {
       
      
      protected var §;Y§:Vector.<§`!<§>;
      
      protected var §>Q§:int;
      
      public var §?l§:§^g§;
      
      public var §]O§:Vector.<§=N§>;
      
      protected var §0R§:Sprite;
      
      protected var §!U§:Sprite;
      
      private var §42§:Sprite;
      
      private var §4!n§:Sprite;
      
      private var §7!o§:Sprite;
      
      protected var §1!Z§:Vector.<Texture>;
      
      protected var §4a§:Vector.<§-$§>;
      
      protected var §?@§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §"2§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §%!%§:Boolean = false;
      
      protected var §-d§:Number;
      
      protected var §<y§:int;
      
      protected var §@!=§:Vector.<§<!t§>;
      
      protected var §^!O§:int = 0;
      
      private var §5!h§:int = 0;
      
      private var § m§:int = 0;
      
      private var §3!y§:int;
      
      private var §>!I§:Boolean = true;
      
      private var §^Y§:Boolean = true;
      
      public function §=[§(param1:§^g§, param2:§=+§, param3:Sprite)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§-$§ = null;
         var _loc6_:§0!D§ = null;
         var _loc7_:§`!<§ = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§`!<§ = null;
         var _loc11_:§`!<§ = null;
         if(_loc14_)
         {
            this.§;Y§ = new Vector.<§`!<§>();
            loop0:
            while(true)
            {
               this.§]O§ = new Vector.<§=N§>();
               loop1:
               while(true)
               {
                  this.§1!Z§ = new Vector.<Texture>();
                  loop2:
                  while(true)
                  {
                     this.§-d§ = this.§0;§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
                     while(true)
                     {
                        this.§@!=§ = new Vector.<§<!t§>();
                        while(true)
                        {
                           super();
                           addr296:
                           while(true)
                           {
                              this.§?l§ = param1;
                              continue loop0;
                           }
                           addr230:
                           if(!(_loc14_ || this))
                           {
                              continue;
                           }
                           this.§4!n§ = new Sprite();
                           while(true)
                           {
                              this.§7!o§ = new Sprite();
                              continue loop1;
                           }
                        }
                        addr153:
                        if(_loc15_ && this)
                        {
                           continue;
                        }
                        loop25:
                        while(true)
                        {
                           §§push(this);
                           §§push(§ !P§.§^!'§(param2.theme).§]!k§);
                           §§push(this.§?l§.§ !p§.§"Z§);
                           if(!_loc15_)
                           {
                              §§push(this.§?l§);
                              if(!(_loc15_ && param2))
                              {
                                 §§push(§§pop().§ !p§);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop().§!!_§);
                                    if(_loc14_ || this)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc15_ && param1))
                                       {
                                          addr116:
                                          §§push(§§pop() / 2);
                                          §§push(this.§?l§.§ !p§.§>6§);
                                          if(_loc14_ || this)
                                          {
                                             addr127:
                                             §§push(§§pop() + §[$§.§5#§);
                                          }
                                          §§pop().addObject(§§pop(),§§pop(),§§pop());
                                          while(!_loc15_)
                                          {
                                             this.§3!y§ = this.§;Y§.length;
                                             if(_loc15_ && param1)
                                             {
                                                continue;
                                             }
                                             if(!_loc15_)
                                             {
                                                addr53:
                                                if(_loc14_ || param2)
                                                {
                                                   addr60:
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      if(!_loc15_)
                                                      {
                                                         if(true)
                                                         {
                                                            var _loc4_:* = 0;
                                                            if(_loc14_ || this)
                                                            {
                                                               _loc4_ = 0;
                                                            }
                                                            loop27:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(param2.§ %§);
                                                                  if(!(_loc15_ && param2))
                                                                  {
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        _loc6_ = param2.§8!3§(_loc4_);
                                                                        if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
                                                                        {
                                                                           if(_loc14_)
                                                                           {
                                                                              _loc7_.uniqueID = _loc6_.uniqueID;
                                                                              if(_loc15_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                        }
                                                                        _loc4_++;
                                                                        continue;
                                                                     }
                                                                     if(_loc14_ || this)
                                                                     {
                                                                        this.§9!Q§();
                                                                        if(_loc14_)
                                                                        {
                                                                           this.§ !]§(true);
                                                                           loop36:
                                                                           while(true)
                                                                           {
                                                                              this.§4a§ = new Vector.<§-$§>();
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 addr461:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc14_ || param2))
                                                                                    {
                                                                                       continue loop29;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       addr428:
                                                                                       while(true)
                                                                                       {
                                                                                          addr481:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             if(!(_loc15_ && this))
                                                                                             {
                                                                                                break loop29;
                                                                                             }
                                                                                             break loop27;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2.§^!"§);
                                                                                 addr491:
                                                                                 loop28:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr709);
                                                                                    }
                                                                                    this.§4a§.push(§-$§.§1j§(param2.§!y§(_loc4_)));
                                                                                    if(_loc14_ || param1)
                                                                                    {
                                                                                       if(_loc14_ || param3)
                                                                                       {
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             continue loop36;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_++;
                                                                                             if(!(_loc14_ || param2))
                                                                                             {
                                                                                                break loop28;
                                                                                             }
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr428);
                                                                                             }
                                                                                             §§goto(addr481);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr461);
                                                                                       }
                                                                                       §§goto(addr428);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 break loop27;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr468);
                                                                     }
                                                                     §§goto(addr455);
                                                                  }
                                                                  §§goto(addr491);
                                                               }
                                                               break;
                                                            }
                                                            var _loc12_:* = §§pop();
                                                         }
                                                         continue loop25;
                                                         if(_loc14_ || param3)
                                                         {
                                                            loop31:
                                                            for each(_loc5_ in this.§4a§)
                                                            {
                                                               §§push(int(_loc5_.index1 + this.§3!y§));
                                                               if(!_loc15_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  if(_loc14_ || param1)
                                                                  {
                                                                     §§push(int(_loc5_.index2 + this.§3!y§));
                                                                     if(_loc14_)
                                                                     {
                                                                        addr538:
                                                                        _loc9_ = §§pop();
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(_loc14_)
                                                                           {
                                                                              addr549:
                                                                              §§push(§§pop() < this.§;Y§.length);
                                                                              if(!(_loc15_ && param1))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       addr564:
                                                                                       §§pop();
                                                                                       addr578:
                                                                                       if(_loc14_ || param3)
                                                                                       {
                                                                                          addr573:
                                                                                          §§push(_loc9_ < this.§;Y§.length);
                                                                                       }
                                                                                       _loc10_ = this.§;Y§[_loc8_];
                                                                                       _loc11_ = this.§;Y§[_loc9_];
                                                                                       if(_loc14_ || this)
                                                                                       {
                                                                                          §§push(Boolean(_loc10_));
                                                                                          loop32:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc14_ || param2)
                                                                                                      {
                                                                                                         if(_loc5_.type != §+N§.§3!!§)
                                                                                                         {
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr598:
                                                                                                            continue loop31;
                                                                                                            addr698:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            this.§@!=§.push(new §<!t§(_loc8_,_loc9_,_loc5_.§5l§));
                                                                                                            if(_loc14_ || param2)
                                                                                                            {
                                                                                                               if(!(_loc14_ || this))
                                                                                                               {
                                                                                                                  loop34:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(_loc11_));
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        continue loop32;
                                                                                                                     }
                                                                                                                     addr703:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        continue loop34;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop32;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr698);
                                                                                                            }
                                                                                                            §§goto(addr598);
                                                                                                         }
                                                                                                         §§goto(addr598);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
                                                                                                }
                                                                                                _loc5_.§5?§ = this.§?l§.mLevelEngine.mWorld.§00§(_loc5_.§6-§(_loc10_,_loc11_));
                                                                                                §§goto(addr598);
                                                                                                addr661:
                                                                                             }
                                                                                             §§goto(addr703);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr598);
                                                                                    }
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr578);
                                                                              }
                                                                              §§goto(addr564);
                                                                           }
                                                                        }
                                                                        §§goto(addr573);
                                                                     }
                                                                     §§goto(addr549);
                                                                  }
                                                                  §§goto(addr564);
                                                               }
                                                               §§goto(addr538);
                                                            }
                                                         }
                                                         addr709:
                                                         return;
                                                      }
                                                      while(!(_loc15_ && param1))
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         this.§^Y§ = true;
                                                         while(true)
                                                         {
                                                            this.§>!I§ = true;
                                                            addr248:
                                                            while(true)
                                                            {
                                                               this.§0R§ = new Sprite();
                                                               while(true)
                                                               {
                                                                  this.§42§ = new Sprite();
                                                                  addr228:
                                                                  while(!_loc15_)
                                                                  {
                                                                     §§goto(addr230);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      loop8:
                                                      for(; _loc14_; §§goto(addr259))
                                                      {
                                                         §§push(this.§!U§);
                                                         while(true)
                                                         {
                                                            §§pop().§@!U§ = false;
                                                            continue loop8;
                                                            addr189:
                                                            loop17:
                                                            while(!(_loc15_ && param2))
                                                            {
                                                               §§pop().addChild(this.§0R§);
                                                               while(!_loc15_)
                                                               {
                                                                  if(!_loc15_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§!U§);
                                                                        loop20:
                                                                        for(; _loc14_; while(!(_loc15_ && param3))
                                                                        {
                                                                           §§pop().addChild(this.§4!n§);
                                                                           break loop25;
                                                                        })
                                                                        {
                                                                           §§pop().addChild(this.§42§);
                                                                           loop21:
                                                                           while(_loc14_)
                                                                           {
                                                                              §§push(this.§!U§);
                                                                              continue loop20;
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc15_ && param1))
                                                                                 {
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          §§goto(addr153);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr228);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                              §§goto(addr222);
                                                                           }
                                                                           §§goto(addr248);
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     addr203:
                                                                  }
                                                                  §§goto(addr296);
                                                                  §§goto(addr60);
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                         }
                                                      }
                                                      addr259:
                                                      while(true)
                                                      {
                                                         this.§!U§ = param3;
                                                         §§goto(addr273);
                                                      }
                                                      addr273:
                                                      addr280:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr199);
                                                   }
                                                   §§goto(addr296);
                                                }
                                                break loop25;
                                             }
                                             §§goto(addr142);
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr116);
                                    }
                                    §§goto(addr127);
                                 }
                              }
                           }
                           §§goto(addr116);
                        }
                        while(true)
                        {
                           §§push(this.§!U§);
                           if(_loc14_)
                           {
                              §§pop().addChild(this.§7!o§);
                              §§goto(addr142);
                           }
                           break;
                           §§goto(addr53);
                        }
                        §§goto(addr164);
                     }
                  }
               }
            }
         }
         §§goto(addr203);
      }
      
      protected function get §0;§() : Class
      {
         return §0;§;
      }
      
      public function get §9G§() : Sprite
      {
         return this.§7!o§;
      }
      
      public function get §'^§() : Sprite
      {
         return this.§!U§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         loop0:
         while(true)
         {
            if(this.§;Y§.length > 0)
            {
               this.§>I§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§;Y§ = null;
               loop2:
               while(true)
               {
                  this.§@!=§ = null;
                  while(!_loc2_)
                  {
                     §§push(this.§!U§);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           loop4:
                           for(; _loc3_; if(_loc2_ && _loc1_)
                           {
                              continue;
                           },§§goto(addr48))
                           {
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              §§push(this.§!U§);
                              while(true)
                              {
                                 §§pop().dispose();
                                 loop6:
                                 while(true)
                                 {
                                    this.§!U§ = null;
                                    if(!_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                       this.§0R§ = null;
                                       while(true)
                                       {
                                          this.§7!o§ = null;
                                          loop8:
                                          while(!_loc2_)
                                          {
                                             while(true)
                                             {
                                                this.§42§ = null;
                                                while(true)
                                                {
                                                   this.§4!n§ = null;
                                                   if(_loc2_)
                                                   {
                                                      break loop6;
                                                   }
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         continue loop4;
                                                      }
                                                      continue loop8;
                                                      continue loop8;
                                                   }
                                                }
                                                addr48:
                                                if(_loc3_)
                                                {
                                                   if(true)
                                                   {
                                                      addr154:
                                                      if(this.§1!Z§.length > 0)
                                                      {
                                                         _loc1_ = this.§1!Z§.pop();
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            this.§?l§.textureManager.unregisterBitmapDataTexture(_loc1_);
                                                         }
                                                         §§goto(addr154);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr135:
                                                   }
                                                   continue;
                                                   break loop6;
                                                }
                                                break;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 return;
                              }
                           }
                           continue;
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr100);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function § !]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0R§.visible = param1;
         }
      }
      
      private function §9!Q§() : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc3_:§`!<§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§?!U§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§`!<§> = new Vector.<§`!<§>();
         for each(_loc3_ in this.§;Y§)
         {
            if(_loc16_ || _loc3_)
            {
               if(!_loc3_.isTexture())
               {
                  continue;
               }
               if(_loc16_ || _loc3_)
               {
                  _loc2_.push(_loc3_);
               }
            }
            _loc4_ = _loc3_.sprite.getBounds(this.§!U§);
            if(_loc16_ || this)
            {
               if(_loc1_ != null)
               {
                  _loc1_ = _loc1_.union(_loc4_);
                  continue;
               }
            }
            _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
         }
         if(!(_loc17_ && _loc2_))
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
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(_loc1_.width > 2048);
                              loop6:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§pop();
                                       addr237:
                                       do
                                       {
                                          §§push(_loc1_.height > 2048);
                                          if(!_loc16_)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       while(_loc16_);
                                       
                                       continue loop6;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       _loc1_.left /= 2;
                                       break;
                                    }
                                    if(!(_loc17_ && _loc1_))
                                    {
                                       if(!_loc17_)
                                       {
                                          if(!_loc16_)
                                          {
                                             break;
                                          }
                                          §§push(int(_loc1_.width));
                                          loop10:
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                             addr221:
                                             loop11:
                                             while(_loc16_ || this)
                                             {
                                                §§push(int(_loc1_.height));
                                                loop12:
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                   while(true)
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(int(_loc1_.left));
                                                         loop15:
                                                         while(_loc16_)
                                                         {
                                                            _loc8_ = §§pop();
                                                            while(true)
                                                            {
                                                               if(!(_loc16_ || _loc3_))
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(_loc17_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc16_)
                                                               {
                                                                  §§push(int(_loc1_.top));
                                                                  if(_loc17_ && this)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  if(_loc17_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  if(!_loc16_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  _loc9_ = §§pop();
                                                                  if(_loc17_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc17_ && _loc2_)
                                                                  {
                                                                     break loop14;
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                                                  if(!(_loc17_ && _loc3_))
                                                                  {
                                                                     this.§]K§(_loc10_.rect,_loc10_,_loc5_);
                                                                  }
                                                                  _loc11_ = this.§3b§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                                                  if(!_loc17_)
                                                                  {
                                                                     _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                                                  }
                                                                  _loc12_ = this.§?l§.textureManager.getTextureFromBitmapData(_loc10_);
                                                                  if(_loc16_)
                                                                  {
                                                                     this.§1!Z§.push(_loc12_);
                                                                  }
                                                                  (_loc13_ = new §?!U§(_loc12_)).x = _loc8_ / _loc5_;
                                                                  if(_loc16_ || this)
                                                                  {
                                                                     _loc13_.y = _loc9_ / _loc5_;
                                                                     _loc13_.scaleX = 1 / _loc5_;
                                                                     addr447:
                                                                  }
                                                                  _loc13_.scaleY = 1 / _loc5_;
                                                                  addr398:
                                                                  this.§0R§.addChild(_loc13_);
                                                                  addr441:
                                                                  if(_loc16_ || _loc2_)
                                                                  {
                                                                     if(!(_loc17_ && _loc1_))
                                                                     {
                                                                        _loc11_.dispose();
                                                                        if(!_loc17_)
                                                                        {
                                                                           if(_loc16_ || _loc3_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr398);
                                                                              }
                                                                              §§goto(addr448);
                                                                           }
                                                                           §§goto(addr447);
                                                                        }
                                                                        §§goto(addr398);
                                                                     }
                                                                     §§goto(addr441);
                                                                  }
                                                                  addr434:
                                                                  §§goto(addr434);
                                                               }
                                                               else
                                                               {
                                                                  _loc1_.bottom /= 2;
                                                                  addr280:
                                                               }
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr237);
                                          }
                                       }
                                       if(!_loc16_)
                                       {
                                          _loc1_.right /= 2;
                                          §§goto(addr280);
                                          addr288:
                                       }
                                       if(_loc17_ && _loc1_)
                                       {
                                          continue loop4;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(_loc16_)
                                          {
                                             if(!_loc16_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(§§pop() / 2);
                                             if(!(_loc17_ && _loc1_))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc5_ = §§pop();
                                          continue loop5;
                                       }
                                    }
                                    §§goto(addr221);
                                 }
                                 if(_loc17_)
                                 {
                                    continue loop1;
                                 }
                                 _loc1_.top /= 2;
                                 §§goto(addr288);
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr448:
            return;
         }
         §§goto(addr272);
      }
      
      private function §3b§(param1:Vector.<§`!<§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:§`!<§ = null;
         var _loc11_:§2!W§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§9o§.shape).§%!x§();
            _loc13_ = new Rectangle(_loc12_[0].x / §^g§.§^!S§ * param6,_loc12_[0].y / §^g§.§^!S§ * param6,(_loc12_[1].x - _loc12_[0].x) / §^g§.§^!S§ * param6,(_loc12_[1].y - _loc12_[0].y) / §^g§.§^!S§ * param6);
            if(!(_loc17_ && param1))
            {
               _loc10_.identity();
               loop1:
               while(true)
               {
                  _loc10_.scale(_loc13_.width,_loc13_.height);
                  addr231:
                  while(true)
                  {
                     _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                     continue loop1;
                  }
               }
            }
            §§goto(addr151);
         }
         if(!(_loc17_ && param2))
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §]K§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
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
         §§push(this.§?l§.background.§`!T§());
         if(_loc17_ || param1)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§+W§;
         if(_loc5_ = this.§?l§.backgroundTextureManager.§6u§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(!_loc16_)
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
                           while(true)
                           {
                              §§push(int(§§pop()));
                              addr383:
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 addr384:
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param1.top / _loc9_);
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr375:
                                       while(true)
                                       {
                                          _loc10_ = §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             if(param1.top < 0)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   addr356:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      addr357:
                                                      while(true)
                                                      {
                                                         _loc10_ = §§pop();
                                                         addr368:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   addr274:
                                                   if(!(_loc16_ && param3))
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                §§push(param1.bottom / _loc9_);
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   loop16:
                                                   while(_loc17_)
                                                   {
                                                      §§push(§§pop());
                                                      while(true)
                                                      {
                                                         _loc11_ = §§pop();
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            addr337:
                                                            while(true)
                                                            {
                                                               _loc11_ = §§pop();
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(_loc17_)
                                                                  {
                                                                     if(_loc16_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!(_loc16_ && param3))
                                                                     {
                                                                        §§push(param1.left / _loc8_);
                                                                        loop21:
                                                                        while(!_loc16_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              _loc12_ = §§pop();
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 if(param1.left < 0)
                                                                                 {
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       continue loop22;
                                                                                       addr253:
                                                                                       addr303:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc17_ || param2))
                                                                                          {
                                                                                             continue loop24;
                                                                                          }
                                                                                          if(_loc16_ && param3)
                                                                                          {
                                                                                             continue loop23;
                                                                                          }
                                                                                          if(_loc16_ && param3)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          §§goto(addr274);
                                                                                       }
                                                                                       addr303:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc17_ || param3))
                                                                                          {
                                                                                             continue loop18;
                                                                                          }
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             _loc12_ = §§pop();
                                                                                             addr315:
                                                                                             while(true)
                                                                                             {
                                                                                                addr210:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.right / _loc8_);
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                                continue loop21;
                                                                                             }
                                                                                             addr315:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr357);
                                                                                          }
                                                                                       }
                                                                                       continue loop16;
                                                                                    }
                                                                                    addr294:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr210);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr356);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              if(_loc16_ && param2)
                              {
                                 continue;
                              }
                              §§push(int(§§pop()));
                              while(true)
                              {
                                 if(!(_loc16_ && param3))
                                 {
                                    §§push(§§pop());
                                    if(_loc17_)
                                    {
                                       _loc13_ = §§pop();
                                       if(!_loc16_)
                                       {
                                          if(!_loc16_)
                                          {
                                             if(!_loc17_)
                                             {
                                                continue loop2;
                                             }
                                             §§push(§§pop() + 1);
                                             while(true)
                                             {
                                                _loc13_ = §§pop();
                                                §§goto(addr253);
                                             }
                                             addr252:
                                          }
                                          else
                                          {
                                             §§goto(addr383);
                                          }
                                          §§goto(addr384);
                                       }
                                       §§goto(addr252);
                                    }
                                    §§goto(addr335);
                                 }
                                 break;
                                 addr161:
                                 if(_loc16_ && param1)
                                 {
                                    continue;
                                 }
                                 if(_loc17_)
                                 {
                                    addr171:
                                    §§push(int(§§pop()));
                                    if(_loc17_)
                                    {
                                       if(!_loc16_)
                                       {
                                          if(_loc17_ || this)
                                          {
                                             _loc14_ = §§pop();
                                             if(!_loc16_)
                                             {
                                                if(!(_loc16_ && this))
                                                {
                                                   if(!(_loc17_ || param2))
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr86:
                                                   §§push(_loc14_);
                                                   if(_loc17_)
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         §§push(_loc13_);
                                                         if(!_loc16_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(!_loc16_)
                                                               {
                                                                  if(!_loc16_)
                                                                  {
                                                                     _loc6_.dispose();
                                                                     addr102:
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           addr111:
                                                                           if(_loc15_ >= _loc11_)
                                                                           {
                                                                              if(_loc17_)
                                                                              {
                                                                                 _loc14_++;
                                                                                 addr118:
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    if(_loc17_ || this)
                                                                                    {
                                                                                       §§goto(addr86);
                                                                                    }
                                                                                    _loc15_++;
                                                                                    addr147:
                                                                                 }
                                                                                 §§goto(addr111);
                                                                              }
                                                                              §§goto(addr118);
                                                                           }
                                                                           param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                           §§goto(addr147);
                                                                        }
                                                                        §§goto(addr399);
                                                                     }
                                                                     §§goto(addr118);
                                                                  }
                                                                  §§goto(addr111);
                                                                  addr156:
                                                               }
                                                               §§goto(addr102);
                                                            }
                                                            §§push(_loc10_);
                                                            if(!_loc16_)
                                                            {
                                                               addr155:
                                                               _loc15_ = §§pop();
                                                               §§goto(addr156);
                                                            }
                                                            §§goto(addr155);
                                                         }
                                                         §§goto(addr111);
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                   §§goto(addr111);
                                                }
                                                else
                                                {
                                                   §§goto(addr315);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr253);
                                             }
                                             §§goto(addr294);
                                          }
                                          §§goto(addr375);
                                       }
                                       §§goto(addr337);
                                    }
                                    else
                                    {
                                       §§goto(addr252);
                                    }
                                 }
                                 §§goto(addr303);
                              }
                              §§goto(addr295);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr315);
         }
         addr399:
      }
      
      public function §#m§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`!<§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:§`!<§ = null;
         var _loc11_:* = param2;
         if(!(_loc13_ && param1))
         {
            §§push("BIRD_BLACK");
            if(_loc12_)
            {
               §§push(_loc11_);
               if(_loc12_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc12_ || param1)
                     {
                        §§push(0);
                        if(_loc13_ && param2)
                        {
                        }
                     }
                     else
                     {
                        addr253:
                        §§push(1);
                        if(!(_loc12_ || param3))
                        {
                           addr360:
                        }
                     }
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(_loc12_ || this)
                     {
                        §§push(_loc11_);
                        if(!_loc13_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc12_)
                              {
                                 §§goto(addr253);
                              }
                              else
                              {
                                 addr276:
                                 §§push(2);
                                 if(_loc13_)
                                 {
                                    addr292:
                                 }
                                 §§goto(addr365);
                              }
                           }
                           else
                           {
                              §§push("BIRD_GREEN");
                              if(!_loc13_)
                              {
                                 §§push(_loc11_);
                                 if(!(_loc13_ && param2))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc12_)
                                       {
                                          §§goto(addr276);
                                       }
                                       else
                                       {
                                          addr345:
                                          §§push(5);
                                          if(!(_loc13_ && param1))
                                          {
                                             addr353:
                                          }
                                          §§goto(addr365);
                                       }
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(_loc12_)
                                       {
                                          §§push(_loc11_);
                                          if(!_loc13_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc12_)
                                                {
                                                   §§push(3);
                                                   if(!_loc13_)
                                                   {
                                                      §§goto(addr292);
                                                   }
                                                   else
                                                   {
                                                      addr310:
                                                      §§goto(addr365);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr345);
                                                }
                                                §§goto(addr365);
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(_loc13_)
                                                {
                                                }
                                                addr319:
                                                §§push(_loc11_);
                                                if(!(_loc13_ && param1))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc12_ || param1)
                                                      {
                                                         §§goto(addr345);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr356:
                                                      if("BIRD_REDBIG" !== _loc11_)
                                                      {
                                                         addr365:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               _loc10_ = new §%d§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 1:
                                                               _loc10_ = new §1!=§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 2:
                                                               _loc10_ = new §8<§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 3:
                                                               _loc10_ = new §`b§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 4:
                                                               _loc10_ = new §6!Y§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 5:
                                                               _loc10_ = new §!!t§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 6:
                                                               _loc10_ = new §]!2§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            default:
                                                               _loc10_ = new §3L§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
                                                         }
                                                         return _loc10_;
                                                         §§push(7);
                                                      }
                                                   }
                                                   §§goto(addr365);
                                                   §§goto(addr365);
                                                }
                                                §§goto(addr356);
                                             }
                                          }
                                          addr299:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc13_)
                                             {
                                                §§push(4);
                                                if(!(_loc13_ && param3))
                                                {
                                                   §§goto(addr310);
                                                }
                                                else
                                                {
                                                   §§goto(addr353);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr345);
                                             }
                                             §§goto(addr365);
                                          }
                                          else
                                          {
                                             §§push("BIRD_RED");
                                             if(_loc12_ || param2)
                                             {
                                                §§goto(addr319);
                                             }
                                             §§goto(addr356);
                                          }
                                       }
                                       §§goto(addr319);
                                    }
                                    §§goto(addr365);
                                 }
                                 §§goto(addr299);
                              }
                              §§push(_loc11_);
                              if(!_loc13_)
                              {
                                 §§goto(addr299);
                              }
                           }
                           §§goto(addr365);
                        }
                     }
                     §§goto(addr356);
                  }
                  §§goto(addr365);
               }
               §§goto(addr299);
            }
            §§goto(addr319);
         }
         §§goto(addr345);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§^!O§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §`!<§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(!_loc15_)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§`!<§;
         §§push((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture());
         if(_loc14_)
         {
            if(§§pop())
            {
               if(!(_loc15_ && param2))
               {
                  §§push(_loc10_);
                  §§push(this.§>!I§);
                  if(!_loc15_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
                  if(_loc14_)
                  {
                     this.§;Y§[this.§;Y§.length] = _loc11_;
                     if(_loc14_ || param1)
                     {
                        loop0:
                        while(true)
                        {
                           §§push(_loc11_ is §3L§);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc15_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc14_)
                                    {
                                       §§pop();
                                       if(_loc14_)
                                       {
                                          §§push(_loc11_.§-!R§());
                                          if(_loc14_ || param1)
                                          {
                                             if(_loc15_)
                                             {
                                                continue;
                                             }
                                             §§push(!§§pop());
                                             if(_loc14_ || this)
                                             {
                                                addr83:
                                                if(§§pop())
                                                {
                                                   if(_loc14_)
                                                   {
                                                      this.§42§.addChild(_loc10_);
                                                      if(!_loc15_)
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop0;
                                                         }
                                                         addr197:
                                                         var _loc12_:*;
                                                         §§push((_loc12_ = this).§^!O§);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         var _loc13_:* = §§pop();
                                                         if(_loc14_ || param2)
                                                         {
                                                            _loc12_.§^!O§ = _loc13_;
                                                         }
                                                         if(_loc15_)
                                                         {
                                                         }
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(this.§?l§);
                                                            if(!(_loc15_ && param3))
                                                            {
                                                               §§pop().activeObject = _loc11_;
                                                               addr208:
                                                            }
                                                            else
                                                            {
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§pop().§=!Z§(_loc11_);
                                                                  loop8:
                                                                  while(!_loc15_)
                                                                  {
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(param6);
                                                                        if(_loc14_)
                                                                        {
                                                                           addr272:
                                                                           if(_loc14_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc14_ || param1)
                                                                                 {
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§7!o§.addChild(_loc10_);
                                                                                       break loop8;
                                                                                    }
                                                                                    addr259:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr208);
                                                                                 }
                                                                              }
                                                                              §§goto(addr174);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param9);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr257:
                                                                                 }
                                                                                 addr258:
                                                                                 addr215:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr259);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.§4!n§.addChild(_loc10_);
                                                                                       while(true)
                                                                                       {
                                                                                          addr209:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param5);
                                                                                             break loop10;
                                                                                          }
                                                                                       }
                                                                                       addr251:
                                                                                    }
                                                                                 }
                                                                                 addr215:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    if(_loc15_ && this)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr251);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr272:
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!_loc15_)
                                                                        {
                                                                           if(_loc14_)
                                                                           {
                                                                              §§goto(addr215);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 break loop1;
                                                                              }
                                                                              addr270:
                                                                           }
                                                                        }
                                                                        §§goto(addr258);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr209);
                                                                  }
                                                               }
                                                            }
                                                            addr174:
                                                            return _loc11_;
                                                         }
                                                         addr197:
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   §§goto(addr209);
                                                }
                                                else
                                                {
                                                   §§push(_loc11_.front);
                                                   if(_loc14_)
                                                   {
                                                      addr269:
                                                      §§goto(addr270);
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   §§goto(addr272);
                                                }
                                             }
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr272);
                                 }
                                 §§goto(addr83);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr272);
                              }
                              §§goto(addr257);
                           }
                        }
                        addr95:
                     }
                     §§goto(addr208);
                  }
                  else
                  {
                     addr135:
                  }
                  §§goto(addr95);
               }
               §§goto(addr197);
            }
            else
            {
               this.§;Y§[this.§;Y§.length] = _loc11_;
               if(!(_loc15_ && param2))
               {
                  §§goto(addr135);
               }
            }
            §§goto(addr227);
         }
         §§goto(addr269);
      }
      
      public function §1j§(param1:int, param2:§`!<§, param3:§`!<§) : §-$§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§-$§ = null;
         var _loc4_:int = this.§;Y§.indexOf(param2) - this.§3!y§;
         var _loc5_:int = this.§;Y§.indexOf(param3) - this.§3!y§;
         if(!(_loc7_ && param2))
         {
            §§push(_loc4_);
            if(!(_loc7_ && param3))
            {
               §§push(0);
               if(!(_loc7_ && param2))
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc8_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc7_ && param2))
                        {
                           §§pop();
                           if(!_loc7_)
                           {
                              addr89:
                              if(_loc5_ >= 0)
                              {
                                 (_loc6_ = new §-$§(§+N§.§,a§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§5?§ = this.§?l§.mLevelEngine.mWorld.§00§(_loc6_.§6-§(param2,param3));
                                 §§goto(addr90);
                              }
                              §§goto(addr137);
                           }
                           addr90:
                           if(_loc8_)
                           {
                              this.§4a§.push(_loc6_);
                              if(!_loc8_)
                              {
                                 addr137:
                                 return null;
                              }
                           }
                           return _loc6_;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §[!§(param1:§-$§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(!(param1.§5?§ is b2WeldJoint))
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         var _loc2_:§`!<§ = this.§8!3§(param1.index1 + this.§3!y§);
         var _loc3_:§`!<§ = this.§8!3§(param1.index2 + this.§3!y§);
         if(_loc4_ || this)
         {
            this.§?l§.mLevelEngine.mWorld.§5!l§(param1.§5?§);
            do
            {
               param1.§5?§ = this.§?l§.mLevelEngine.mWorld.§00§(param1.§6-§(_loc2_,_loc3_));
            }
            while(!(_loc4_ || _loc3_));
            
         }
      }
      
      public function §,!S§(param1:§`!<§) : Vector.<§-$§>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§-$§ = null;
         var _loc2_:Vector.<§-$§> = new Vector.<§-$§>();
         var _loc3_:int = this.§;Y§.indexOf(param1) - this.§3!y§;
         if(_loc8_ || _loc2_)
         {
            §§push(_loc3_);
            if(_loc8_ || param1)
            {
               if(§§pop() >= 0)
               {
                  addr63:
                  addr62:
                  for each(_loc4_ in this.§4a§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(!_loc7_)
                     {
                        if(!§§pop())
                        {
                           if(_loc8_)
                           {
                              §§pop();
                              if(!(_loc8_ || _loc3_))
                              {
                                 continue;
                              }
                              §§push(_loc4_.index2 == _loc3_);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc8_ || this)
                        {
                           _loc2_.push(_loc4_);
                        }
                     }
                  }
               }
               return _loc2_;
            }
            §§goto(addr63);
         }
         §§goto(addr62);
      }
      
      public function §7H§() : Vector.<§-$§>
      {
         return this.§4a§;
      }
      
      public function §;G§(param1:§`!<§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§;Y§.indexOf(param1) - this.§3!y§;
         var _loc3_:* = int(this.§4a§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || this)
            {
               if(_loc4_ || _loc3_)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(_loc5_ && _loc2_)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(this.§4a§[_loc3_].index2 == _loc2_);
                                 if(!_loc5_)
                                 {
                                    if(!(_loc4_ || this))
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             break loop2;
                                          }
                                          continue loop2;
                                       }
                                       addr130:
                                    }
                                    break;
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(_loc3_);
                              addr69:
                              while(true)
                              {
                                 §§push(§§pop() - 1);
                                 addr70:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                 }
                              }
                           }
                        }
                     }
                     while(!(_loc4_ || this))
                     {
                        §§goto(addr108);
                     }
                     continue;
                  }
                  §§push(this.§4a§[_loc3_].index1 == _loc2_);
                  §§goto(addr130);
               }
               §§goto(addr69);
            }
            §§goto(addr70);
         }
      }
      
      public function § !`§(param1:§`!<§, param2:§`!<§) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = this.§;Y§.indexOf(param1) - this.§3!y§;
         var _loc4_:int = this.§;Y§.indexOf(param2) - this.§3!y§;
         var _loc5_:* = int(this.§4a§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc7_ || param2)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(false);
                     if(_loc7_ || param1)
                     {
                        if(_loc7_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(true);
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             break;
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc7_ || this)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop1;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     §§push(this.§4a§[_loc5_].index2 == _loc3_);
                                                                     continue loop1;
                                                                  }
                                                                  addr214:
                                                                  while(true)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr216:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§4a§[_loc5_].index2 == _loc4_);
                                                                              if(_loc7_ || _loc3_)
                                                                              {
                                                                              }
                                                                              addr202:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 §§goto(addr203);
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                        }
                                                                        addr215:
                                                                     }
                                                                  }
                                                                  addr203:
                                                               }
                                                               addr166:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr215);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr214);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                   }
                                                   while(!§§pop())
                                                   {
                                                      §§goto(addr202);
                                                   }
                                                   continue loop1;
                                                }
                                                addr213:
                                                while(true)
                                                {
                                                }
                                                §§goto(addr214);
                                             }
                                             §§goto(addr202);
                                          }
                                       }
                                       §§goto(addr158);
                                    }
                                    return §§pop();
                                    addr117:
                                 }
                                 §§goto(addr216);
                              }
                              else
                              {
                                 loop2:
                                 for(; !_loc6_; while(!(_loc7_ || param2))
                                 {
                                    continue loop2;
                                 },continue loop0)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(_loc7_ || this)
                                       {
                                          addr83:
                                          §§push(§§pop() - 1);
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             continue loop2;
                                          }
                                          addr83:
                                       }
                                       §§goto(addr83);
                                    }
                                 }
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr73);
                        }
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr84);
               }
               else
               {
                  §§push(this.§4a§[_loc5_].index1 == _loc3_);
               }
               §§goto(addr213);
            }
            §§goto(addr83);
         }
         return §§pop();
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`!<§
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc10_:§`!<§ = null;
         var _loc11_:§9B§ = null;
         var _loc12_:§9B§ = null;
         if(!(_loc15_ && param3))
         {
            §§push(param2);
            if(_loc16_ || param2)
            {
               §§push("BIRD");
               if(!_loc15_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc16_ || this)
                     {
                        addr54:
                        _loc10_ = this.§#m§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                        if(!_loc15_)
                        {
                           var _loc13_:*;
                           §§push((_loc13_ = this).§ m§);
                           if(!(_loc15_ && param3))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc14_:* = §§pop();
                           if(_loc16_ || param1)
                           {
                              _loc13_.§ m§ = _loc14_;
                           }
                        }
                     }
                     else
                     {
                        addr100:
                        §§push(§<F§.§1]§(param2));
                        if(_loc16_)
                        {
                           _loc11_ = §§pop();
                           _loc10_ = new §6j§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                        }
                        else
                        {
                           addr144:
                           §§push((_loc12_ = §§pop()) == null);
                           if(_loc16_ || param3)
                           {
                              §§push(§§pop());
                              if(!(_loc15_ && param3))
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc15_)
                                    {
                                       §§pop();
                                       if(!_loc15_)
                                       {
                                          §§push(param2);
                                          if(!(_loc15_ && param1))
                                          {
                                             §§push(§§pop().indexOf("MISC_") == 0);
                                             if(!_loc15_)
                                             {
                                                addr184:
                                                if(§§pop())
                                                {
                                                   if(_loc16_ || param1)
                                                   {
                                                      addr200:
                                                      §§push("MISC_FOOD_");
                                                      if(_loc16_)
                                                      {
                                                         §§push(§§pop() + param2.substring(5));
                                                      }
                                                      param2 = §§pop();
                                                      if(!_loc15_)
                                                      {
                                                         _loc12_ = §<F§.§1]§(param2);
                                                      }
                                                      addr226:
                                                      if(_loc12_.§6K§ == §9B§.§4x§)
                                                      {
                                                         _loc10_ = new §7!Z§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
                                                         addr289:
                                                         return _loc10_;
                                                         addr232:
                                                      }
                                                      else
                                                      {
                                                         _loc10_ = new §`!<§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param9,_loc12_.front);
                                                         §§goto(addr289);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                §§push(_loc12_.§6K§);
                                                if(_loc16_)
                                                {
                                                   §§push(§9B§.§=!%§);
                                                   if(_loc16_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc16_)
                                                      {
                                                         addr220:
                                                         if(!§§pop())
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               addr223:
                                                               §§pop();
                                                               if(_loc16_)
                                                               {
                                                                  §§goto(addr226);
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr223);
                                          }
                                       }
                                       §§goto(addr200);
                                    }
                                    §§goto(addr223);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr220);
                           }
                           §§goto(addr200);
                        }
                     }
                     §§goto(addr289);
                  }
                  else
                  {
                     addr97:
                     if(param2.indexOf("PIG") == 0)
                     {
                        §§goto(addr100);
                     }
                     else
                     {
                        §§push(§<F§.§1]§(param2));
                     }
                     §§goto(addr144);
                  }
               }
            }
            §§goto(addr97);
         }
         §§goto(addr54);
      }
      
      public function §?!k§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§`!<§ = null;
         var _loc2_:* = int(this.§;Y§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;Y§[_loc2_] as §`!<§;
            if(_loc4_)
            {
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc3_.§%!R§ <= 0)
                     {
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              this.§>I§(_loc2_,true,true,true);
                           }
                           addr107:
                        }
                        loop2:
                        while(true)
                        {
                           addr38:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc2_ = §§pop();
                              if(_loc5_)
                              {
                                 continue loop1;
                              }
                              if(!_loc5_)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        _loc3_.§<!&§();
                     }
                     while(true)
                     {
                        §§goto(addr72);
                     }
                  }
               }
               §§goto(addr38);
            }
            §§goto(addr107);
         }
         if(!(_loc5_ && this))
         {
            this.§ ![§(param1);
         }
      }
      
      protected function § ![§(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:§-$§ = null;
         var _loc4_:§<!t§ = null;
         var _loc5_:* = 0;
         var _loc6_:§`!<§ = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:* = int(this.§@!=§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc12_ && param1))
            {
               if(§§pop() < 0)
               {
                  §§goto(addr487);
               }
               if((_loc4_ = this.§@!=§[_loc2_]).§"?§)
               {
                  if(_loc12_ && _loc2_)
                  {
                     continue;
                  }
                  §§push(_loc4_.update(param1));
                  if(_loc11_)
                  {
                     §§push(int(§§pop()));
                     if(!(_loc12_ && param1))
                     {
                        §§push(§§pop());
                        if(_loc11_)
                        {
                           _loc5_ = §§pop();
                           if(_loc11_ || this)
                           {
                              addr80:
                              if(§§pop() != -1)
                              {
                                 if(_loc12_)
                                 {
                                    continue;
                                 }
                                 §§push(this);
                                 §§push("block_");
                                 if(_loc11_ || this)
                                 {
                                    §§push(§§pop() + _loc5_);
                                 }
                                 if(_loc6_ = §§pop().§#-§(§§pop()))
                                 {
                                    if(_loc11_ || this)
                                    {
                                       this.§!!D§(_loc6_,true,true,true);
                                       if(_loc12_ && _loc3_)
                                       {
                                       }
                                       addr124:
                                       §§push(_loc2_);
                                       if(!_loc12_)
                                       {
                                          addr127:
                                          §§push(§§pop() - 1);
                                       }
                                       _loc2_ = §§pop();
                                       continue;
                                    }
                                 }
                                 this.§@!=§.splice(_loc2_,1);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr80);
                     }
                  }
                  §§goto(addr80);
               }
               §§goto(addr124);
            }
            break;
         }
         var _loc9_:* = §§pop();
         if(_loc11_)
         {
            loop1:
            for each(_loc3_ in this.§4a§)
            {
               if(_loc11_)
               {
                  §§push(_loc3_.type == §+N§.§0!'§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr482:
                              while(true)
                              {
                                 §§push(Boolean(_loc3_.§9!J§));
                              }
                           }
                           addr481:
                        }
                        while(true)
                        {
                           loop7:
                           while(§§pop())
                           {
                              while(true)
                              {
                                 §§push(_loc3_.§5?§);
                                 addr468:
                                 while(true)
                                 {
                                    §§push((§§pop() as b2PrismaticJoint).§<!0§());
                                    addr471:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr472:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                       }
                                    }
                                 }
                              }
                              loop28:
                              while(_loc11_ || _loc3_)
                              {
                                 if(!(_loc12_ && this))
                                 {
                                    §§push(§§pop());
                                    loop29:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop30:
                                          while(!_loc12_)
                                          {
                                             addr372:
                                             if(_loc11_ || this)
                                             {
                                                §§pop();
                                                loop31:
                                                while(true)
                                                {
                                                   if(!(_loc12_ && param1))
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         if(_loc11_ || this)
                                                         {
                                                            §§push(_loc7_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() >= _loc3_.upperLimit);
                                                               if(!_loc12_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     continue loop29;
                                                                  }
                                                                  addr303:
                                                               }
                                                               addr163:
                                                               if(_loc12_ && param1)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc11_)
                                                               {
                                                                  §§push(§§pop() <= _loc3_.lowerLimit);
                                                                  if(!_loc12_)
                                                                  {
                                                                     if(!(_loc11_ || this))
                                                                     {
                                                                        continue loop28;
                                                                     }
                                                                     loop41:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           break loop7;
                                                                        }
                                                                        if(!(_loc12_ && _loc2_))
                                                                        {
                                                                           §§push(_loc3_.§5?§);
                                                                           if(_loc11_)
                                                                           {
                                                                              if(_loc11_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() as b2PrismaticJoint);
                                                                                 §§push(_loc8_);
                                                                                 if(_loc11_ || this)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                 }
                                                                                 §§pop().§[>§(§§pop());
                                                                                 addr216:
                                                                                 if(_loc11_ || this)
                                                                                 {
                                                                                    if(!(_loc11_ || _loc3_))
                                                                                    {
                                                                                       continue loop31;
                                                                                    }
                                                                                    if(true)
                                                                                    {
                                                                                       break loop7;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       loop36:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc12_ && _loc2_))
                                                                                          {
                                                                                             if(_loc11_ || this)
                                                                                             {
                                                                                                addr258:
                                                                                                §§push(0);
                                                                                                if(!(_loc12_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() < §§pop());
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      if(_loc11_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            continue loop29;
                                                                                                         }
                                                                                                         if(!(_loc12_ && _loc3_))
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               continue loop41;
                                                                                                            }
                                                                                                            while(!(_loc12_ && _loc2_))
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr163);
                                                                                                                  §§goto(addr216);
                                                                                                               }
                                                                                                               continue loop36;
                                                                                                            }
                                                                                                            continue loop30;
                                                                                                            addr287:
                                                                                                         }
                                                                                                         loop18:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        break loop30;
                                                                                                                     }
                                                                                                                     continue loop41;
                                                                                                                     addr312:
                                                                                                                     if(_loc12_ && this)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(_loc12_ && _loc2_)
                                                                                                                     {
                                                                                                                        continue loop3;
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        continue loop41;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        continue loop31;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr410:
                                                                                                            }
                                                                                                            addr430:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr431:
                                                                                                               while(_loc11_)
                                                                                                               {
                                                                                                                  §§push(Boolean(_loc3_.§7!H§));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc12_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     addr428:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     §§goto(addr372);
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               addr459:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr428);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr327);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr287);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop28;
                                                                                                   §§goto(addr258);
                                                                                                }
                                                                                                addr353:
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr458:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             §§goto(addr459);
                                                                                             continue loop36;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr472);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr295);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr468);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr216);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push((§§pop() as b2PrismaticJoint).§1!V§());
                                                                        addr440:
                                                                        while(!(_loc12_ && _loc2_))
                                                                        {
                                                                           §§goto(addr458);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr471);
                                                                     }
                                                                     addr437:
                                                                  }
                                                                  §§goto(addr287);
                                                               }
                                                               while(!(_loc12_ && _loc2_))
                                                               {
                                                                  §§goto(addr353);
                                                                  §§push(0);
                                                               }
                                                               §§goto(addr440);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr466);
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr437);
                                                      }
                                                      addr473:
                                                   }
                                                   §§goto(addr431);
                                                }
                                             }
                                             §§goto(addr401);
                                          }
                                          while(true)
                                          {
                                             if(!(_loc12_ && _loc3_))
                                             {
                                                §§pop();
                                                §§goto(addr421);
                                             }
                                             §§goto(addr430);
                                          }
                                       }
                                       §§goto(addr303);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr481);
                                 }
                                 §§goto(addr482);
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr473);
            }
         }
         addr487:
         if(!_loc12_)
         {
            break loop0;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            this.§]O§.push(§=N§.createExplosion(param1,param2,param3));
            do
            {
               § !Q§.playSound("TntExplosions","ChannelExplosions");
            }
            while(_loc5_);
            
         }
      }
      
      public function §=V§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§`!<§ = null;
         var _loc3_:* = int(this.§;Y§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§;Y§[_loc3_])
               {
                  if(!(_loc6_ && param2))
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(_loc6_)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr80:
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
               }
               §§goto(addr80);
            }
            break;
         }
         return §§pop();
      }
      
      public function §"+§(param1:Number, param2:Number) : §`!<§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§`!<§ = null;
         var _loc3_:* = int(this.§;Y§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§;Y§[_loc3_])
            {
               if(_loc6_ && this)
               {
                  continue;
               }
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  if(!_loc6_)
                  {
                     return _loc4_;
                  }
                  continue;
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
      
      public function §8!3§(param1:int) : §`!<§
      {
         return this.§;Y§[param1];
      }
      
      public function §!!7§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§`!<§ = null;
         var _loc3_:* = int(this.§;Y§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§;Y§[_loc3_] as §`!<§).§!!7§(param2,param1);
            if(!_loc6_)
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
      
      private function §^!9§(param1:§`!<§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:§`!<§ = null;
         if(!_loc8_)
         {
            §§push(this.mSardineCanAdded);
            if(_loc9_ || param1)
            {
               if(!§§pop())
               {
                  if(_loc9_ || _loc3_)
                  {
                     addr45:
                     §§push(true);
                     if(_loc9_)
                     {
                        return §§pop();
                     }
                     addr55:
                     if(§§pop())
                     {
                        if(_loc9_ || _loc3_)
                        {
                           addr63:
                           §§push(false);
                           if(_loc9_)
                           {
                              §§goto(addr66);
                           }
                           else
                           {
                              addr68:
                              var _loc3_:* = §§pop();
                              if(!(_loc8_ && param2))
                              {
                                 §§push(param1.§%!R§);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(param1.§-!!§);
                                    loop1:
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          §§push(this.§<y§);
                                          loop2:
                                          while(true)
                                          {
                                             §§push(0);
                                             addr500:
                                             while(true)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   loop4:
                                                   while(true)
                                                   {
                                                      this.§<y§ = this.§?l§.§ i§;
                                                      if(_loc9_ || param1)
                                                      {
                                                         addr479:
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(param1.§9!i§());
                                                            if(!(_loc8_ && param2))
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§1!§(param1));
                                                                              if(!(_loc8_ && this))
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop41:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop16:
                                                                                             while(true)
                                                                                             {
                                                                                                loop17:
                                                                                                while(§§pop())
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      §§push(this.mMightyEagleTimer);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(§§pop() < this.§0;§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                         {
                                                                                                            loop18:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.mMightyEagleTimer);
                                                                                                               if(!(_loc8_ && param1))
                                                                                                               {
                                                                                                                  §§push(param2);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr407:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     addr170:
                                                                                                                     §§push(this.§0;§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§0;§.MIGHTY_EAGLE_Y_CHANGE);
                                                                                                                     if(_loc9_ || param2)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * 1.07);
                                                                                                                     }
                                                                                                                     if(_loc8_ && param2)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(_loc8_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(_loc9_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              addr213:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 addr215:
                                                                                                                                 if(!(_loc8_ && this))
                                                                                                                                 {
                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§1!§(param1));
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             continue loop6;
                                                                                                                                          }
                                                                                                                                          addr360:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             loop24:
                                                                                                                                             while(!(_loc8_ && param2))
                                                                                                                                             {
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() > this.§0;§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                                      addr320:
                                                                                                                                                      while(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  § !Q§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                                                                               }
                                                                                                                                                               loop28:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     § !Q§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                                                                     loop29:
                                                                                                                                                                     while(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop18;
                                                                                                                                                                        }
                                                                                                                                                                        addr306:
                                                                                                                                                                        if(!(_loc9_ || param1))
                                                                                                                                                                        {
                                                                                                                                                                           while(!(_loc8_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§?l§.§ i§);
                                                                                                                                                                              continue loop16;
                                                                                                                                                                              §§goto(addr306);
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this);
                                                                                                                                                                              §§push(this.§-d§);
                                                                                                                                                                              if(!(_loc8_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * this.§0;§.SARDINE_CAN_ROTATION_ACCELERATION);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§-d§ = §§pop();
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop4;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.§5b§());
                                                                                                                                                                                 addr522:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * this.§-d§);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().§@X§(§§pop());
                                                                                                                                                                                    addr529:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§<y§ = 0;
                                                                                                                                                                                       break loop24;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr541:
                                                                                                                                                                           addr452:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc9_ || param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop29;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.§5b§());
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc9_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().GetPosition());
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    if(_loc9_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_ && param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop0;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr170);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr213);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       continue loop0;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr254:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr522);
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr254);
                                                                                                                                                                           }
                                                                                                                                                                           addr122:
                                                                                                                                                                           if(!(_loc9_ || _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           addr129:
                                                                                                                                                                           if(!(_loc9_ || param2))
                                                                                                                                                                           {
                                                                                                                                                                              while(!(_loc8_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.§5b§());
                                                                                                                                                                                 §§goto(addr129);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop2;
                                                                                                                                                                              addr244:
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop24;
                                                                                                                                                                           }
                                                                                                                                                                           if(false)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr140);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§0;§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                                                                              addr563:
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 this.mMightyEagleAdded = true;
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    loop51:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§<y§ = 0;
                                                                                                                                                                                       do
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc7_.§?!M§.§<!K§(1.82);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(!_loc9_);
                                                                                                                                                                                       
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.mMightyEagleTimer = _loc4_;
                                                                                                                                                                                             break loop4;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr608:
                                                                                                                                                                                          continue loop51;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr597);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop9;
                                                                                                                                                                     }
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  addr535:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§-d§);
                                                                                                                                                                     break loop28;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() < this.§0;§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr541);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr519);
                                                                                                                                                               }
                                                                                                                                                               addr537:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                               if(_loc8_ && param2)
                                                                                                                                                               {
                                                                                                                                                                  continue loop0;
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc8_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() < this.§0;§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr244);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr537);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr608);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop17;
                                                                                                                                                      §§goto(addr215);
                                                                                                                                                   }
                                                                                                                                                   addr316:
                                                                                                                                                }
                                                                                                                                                §§goto(addr529);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop5;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr117:
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr122);
                                                                                                                                             }
                                                                                                                                             break loop4;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr320);
                                                                                                                                       addr100:
                                                                                                                                       if(_loc8_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc9_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(true);
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr117);
                                                                                                                                          }
                                                                                                                                          §§goto(addr612);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.mMightyEagleTimer);
                                                                                                                                          §§goto(addr341);
                                                                                                                                       }
                                                                                                                                       addr409:
                                                                                                                                    }
                                                                                                                                    addr223:
                                                                                                                                 }
                                                                                                                                 §§goto(addr316);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr267:
                                                                                                                                 addr408:
                                                                                                                                 while(_loc9_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       continue loop16;
                                                                                                                                    }
                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                    §§goto(addr277);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc4_ = §§pop();
                                                                                                                                    §§goto(addr409);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr266:
                                                                                                                           }
                                                                                                                           addr341:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() < this.§0;§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                 if(_loc9_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc9_ || param2))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   while(_loc9_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                   }
                                                                                                                                                   continue loop8;
                                                                                                                                                   addr444:
                                                                                                                                                }
                                                                                                                                                continue loop16;
                                                                                                                                             }
                                                                                                                                             continue loop41;
                                                                                                                                          }
                                                                                                                                          continue loop7;
                                                                                                                                          addr434:
                                                                                                                                       }
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          §§goto(addr360);
                                                                                                                                       }
                                                                                                                                       §§goto(addr322);
                                                                                                                                       §§goto(addr452);
                                                                                                                                    }
                                                                                                                                    §§goto(addr444);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr407);
                                                                                                                           }
                                                                                                                           §§goto(addr612);
                                                                                                                        }
                                                                                                                        §§goto(addr267);
                                                                                                                     }
                                                                                                                     §§goto(addr213);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr408);
                                                                                                            }
                                                                                                         }
                                                                                                         break loop4;
                                                                                                      }
                                                                                                      §§goto(addr407);
                                                                                                   }
                                                                                                   break loop4;
                                                                                                }
                                                                                                break loop4;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr474:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr477:
                                                                              }
                                                                              §§goto(addr612);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr474);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr612);
                                                         }
                                                         addr479:
                                                      }
                                                      break;
                                                   }
                                                   addr612:
                                                   return §§pop();
                                                   §§push(_loc3_);
                                                }
                                                §§goto(addr479);
                                             }
                                          }
                                       }
                                       §§goto(addr535);
                                    }
                                 }
                              }
                              §§goto(addr223);
                           }
                        }
                     }
                     §§goto(addr68);
                     §§push(false);
                  }
                  §§goto(addr63);
               }
               else
               {
                  §§push(this.mMightyEagleAdded);
                  if(_loc9_)
                  {
                     §§goto(addr55);
                  }
               }
               addr66:
               return §§pop();
            }
            §§goto(addr68);
         }
         §§goto(addr45);
      }
      
      private function §'!#§(param1:§`!<§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§`!<§ = null;
         if(_loc9_ || param1)
         {
            §§push(Boolean(this.§0;§.MIGHTY_EAGLE_USE_SHADE));
            loop0:
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
                        if(_loc8_ && this)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr99:
                              while(_loc9_ || _loc3_)
                              {
                                 while(true)
                                 {
                                    addr38:
                                    addr118:
                                    while(true)
                                    {
                                       §§push(this.mMightyEagleTimer);
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    var _loc3_:* = §§pop();
                                    if(_loc9_)
                                    {
                                       §§push(this);
                                       §§push(this.mMightyEagleTimer);
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() + param2);
                                       }
                                       §§pop().mMightyEagleTimer = §§pop();
                                       if(_loc9_)
                                       {
                                          §§push(this.§?l§.particles);
                                          §§push(§1!e§.§?A§);
                                          §§push(§+F§.§+!X§);
                                          §§push(§1!e§.§<V§);
                                          §§push(param1.§5b§().GetPosition().x);
                                          if(_loc9_)
                                          {
                                             §§push(_loc3_);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc9_)
                                                {
                                                   §§push(Math.random() * (_loc3_ * 2));
                                                   if(_loc9_ || this)
                                                   {
                                                      addr166:
                                                      §§push(§§pop() + §§pop());
                                                      §§push(param1.§5b§().GetPosition().y);
                                                      if(_loc9_)
                                                      {
                                                         addr172:
                                                         §§push(_loc3_);
                                                         if(_loc9_ || param2)
                                                         {
                                                            addr190:
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc8_)
                                                            {
                                                               §§push(Math.random() * (_loc3_ * 2));
                                                            }
                                                            §§pop().§ K§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§1!e§.§"!J§(param1.§<!]§),0,0,1,0,4);
                                                            var _loc4_:* = 1;
                                                            if(!_loc8_)
                                                            {
                                                               addr303:
                                                               if(this.mMightyEagleHasTouchedGround)
                                                               {
                                                                  addr304:
                                                                  param1.§&!a§(this.§0;§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                                  addr311:
                                                                  §§push(-1);
                                                                  if(_loc9_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     addr298:
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(this.§"2§);
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr270:
                                                                              if(_loc9_ || param2)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    this.§"2§ = false;
                                                                                    this.§?l§.§9!g§();
                                                                                    param1.§@j§(§<!R§.§5F§);
                                                                                    this.mSardineCanAdded = false;
                                                                                    addr236:
                                                                                    addr253:
                                                                                    addr292:
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(!(_loc8_ && param2))
                                                                                          {
                                                                                             addr227:
                                                                                             param1.§?!M§.§82§ = true;
                                                                                             addr224:
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§push(param1.§?!M§);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§pop().§true §();
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(!(_loc8_ && _loc3_))
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr224);
                                                                                                         }
                                                                                                         addr313:
                                                                                                         var _loc6_:int = 0;
                                                                                                         var _loc7_:* = this.§;Y§;
                                                                                                         addr369:
                                                                                                         §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                                               §§push(Boolean(_loc5_));
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        addr333:
                                                                                                                        §§pop();
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.§<+§());
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              addr341:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc9_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_.§5b§());
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       §§pop().SetAwake(true);
                                                                                                                                       if(_loc9_ || param1)
                                                                                                                                       {
                                                                                                                                          addr362:
                                                                                                                                          §§push(_loc5_.§5b§());
                                                                                                                                       }
                                                                                                                                       §§goto(addr369);
                                                                                                                                    }
                                                                                                                                    §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                                                                 }
                                                                                                                                 §§goto(addr362);
                                                                                                                              }
                                                                                                                              §§goto(addr369);
                                                                                                                           }
                                                                                                                           §§goto(addr341);
                                                                                                                        }
                                                                                                                        §§goto(addr362);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr341);
                                                                                                               }
                                                                                                               §§goto(addr333);
                                                                                                            }
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     this.override();
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        addr385:
                                                                                                                        §§push(this.mMightyEagleTimer > 6000);
                                                                                                                        if(_loc9_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 addr400:
                                                                                                                                 §§pop();
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(this.isPigsAlive());
                                                                                                                                    if(!(_loc8_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          addr415:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                _loc6_ = 0;
                                                                                                                                                if(_loc9_ || this)
                                                                                                                                                {
                                                                                                                                                   _loc7_ = this.§;Y§;
                                                                                                                                                   addr503:
                                                                                                                                                   for each(_loc5_ in _loc7_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Boolean(_loc5_));
                                                                                                                                                      if(!(_loc8_ && param2))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               if(!(_loc8_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_.§<+§());
                                                                                                                                                                  if(!(_loc8_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr479:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr487:
                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                           §§push(_loc5_.§-!!§);
                                                                                                                                                                           if(_loc9_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * 2);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().applyDamage(§§pop(),true,true,true);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr503);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr479);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr487);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr479);
                                                                                                                                                   }
                                                                                                                                                   addr506:
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      param1.§7@§(param2,new Point(this.§0;§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§0;§.MIGHTY_EAGLE_Y_CHANGE),this.§0;§.MIGHTY_EAGLE_FLYING_SPEED);
                                                                                                                                                      addr515:
                                                                                                                                                      if(_loc9_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            this.§"2§ = this.mMightyEagleHasTouchedGround;
                                                                                                                                                            addr557:
                                                                                                                                                            §§goto(addr515);
                                                                                                                                                            addr567:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr557);
                                                                                                                                                      addr558:
                                                                                                                                                      addr509:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr567);
                                                                                                                                                   addr505:
                                                                                                                                                }
                                                                                                                                                §§goto(addr506);
                                                                                                                                             }
                                                                                                                                             §§goto(addr512);
                                                                                                                                          }
                                                                                                                                          §§goto(addr558);
                                                                                                                                       }
                                                                                                                                       §§goto(addr512);
                                                                                                                                    }
                                                                                                                                    §§goto(addr415);
                                                                                                                                 }
                                                                                                                                 §§goto(addr557);
                                                                                                                              }
                                                                                                                              addr512:
                                                                                                                              return false;
                                                                                                                           }
                                                                                                                           §§goto(addr415);
                                                                                                                        }
                                                                                                                        §§goto(addr400);
                                                                                                                     }
                                                                                                                     §§goto(addr509);
                                                                                                                  }
                                                                                                                  §§goto(addr557);
                                                                                                               }
                                                                                                               §§goto(addr506);
                                                                                                            }
                                                                                                            §§goto(addr505);
                                                                                                         }
                                                                                                         §§goto(addr503);
                                                                                                      }
                                                                                                      §§goto(addr236);
                                                                                                   }
                                                                                                   §§goto(addr224);
                                                                                                }
                                                                                                §§goto(addr227);
                                                                                             }
                                                                                             §§goto(addr253);
                                                                                          }
                                                                                          §§goto(addr270);
                                                                                       }
                                                                                       §§goto(addr292);
                                                                                    }
                                                                                    addr258:
                                                                                    §§goto(addr258);
                                                                                 }
                                                                                 §§goto(addr304);
                                                                              }
                                                                              §§goto(addr298);
                                                                           }
                                                                           §§goto(addr385);
                                                                        }
                                                                        §§goto(addr303);
                                                                        addr300:
                                                                     }
                                                                     §§goto(addr311);
                                                                  }
                                                                  §§goto(addr313);
                                                               }
                                                               this.mMightyEagleHasTouchedGround = param1.§5b§().GetPosition().y >= -5.5;
                                                               §§goto(addr557);
                                                            }
                                                            §§goto(addr300);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                   §§goto(addr190);
                                                }
                                                §§goto(addr166);
                                             }
                                             §§goto(addr172);
                                          }
                                          §§goto(addr166);
                                       }
                                    }
                                    §§goto(addr190);
                                 }
                              }
                              addr115:
                              while(true)
                              {
                                 §§push(this.§%!%§);
                                 if(!_loc8_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc9_)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr115);
                              }
                           }
                           addr98:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc9_ || _loc3_)
                              {
                                 this.§%!%§ = true;
                              }
                              do
                              {
                                 this.§?l§.§#S§();
                              }
                              while(!_loc9_);
                              
                              if(_loc9_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr99);
                              }
                              §§goto(addr38);
                           }
                           break;
                           §§goto(addr43);
                        }
                        §§goto(addr118);
                        §§push(Number(3));
                     }
                     continue;
                     addr88:
                  }
                  §§goto(addr115);
               }
            }
         }
         §§goto(addr106);
      }
      
      private function §1!y§() : void
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc1_:§=N§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§`!<§ = null;
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
         while(this.§]O§.length > 0)
         {
            _loc1_ = this.§]O§.shift();
            if(_loc21_)
            {
               §§push(_loc1_.§@!§);
               if(!_loc20_)
               {
                  §§push(Number(§§pop()));
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     if(!(_loc20_ && _loc3_))
                     {
                        §§push(_loc1_.x);
                        if(_loc21_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc21_ || _loc3_)
                           {
                              _loc3_ = §§pop();
                              if(_loc20_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§push(_loc1_.y);
                                 addr91:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc21_ || _loc1_))
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 addr711:
                                 §§push(Number(§§pop()));
                                 loop12:
                                 while(true)
                                 {
                                    _loc16_ = §§pop();
                                    loop13:
                                    while(true)
                                    {
                                       if(!(_loc20_ && _loc1_))
                                       {
                                          if(_loc21_ || this)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                if(_loc21_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(180);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / Math.PI);
                                                         if(!(_loc20_ && _loc2_))
                                                         {
                                                            addr683:
                                                            §§push(§§pop() / §§pop());
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr684:
                                                               addr768:
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(!_loc20_)
                                                                  {
                                                                     addr686:
                                                                     if(!(_loc20_ && _loc1_))
                                                                     {
                                                                        _loc17_ = §§pop();
                                                                        if(_loc20_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§?l§);
                                                                           if(_loc21_)
                                                                           {
                                                                              §§push(§§pop().particles);
                                                                              if(!(_loc21_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§1!e§.§2!^§);
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(§+F§.§+!X§);
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    §§push(§1!e§.§<V§);
                                                                                    if(_loc21_ || _loc1_)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(_loc16_);
                                                                                             §§push("");
                                                                                             §§push(§1!e§.§3!4§);
                                                                                             §§push(_loc15_);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(§§pop() * Math.cos(_loc17_));
                                                                                             }
                                                                                             §§push(_loc15_);
                                                                                             if(!(_loc20_ && _loc3_))
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(!(_loc20_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§pop() * Math.sin(_loc17_));
                                                                                                }
                                                                                             }
                                                                                             §§pop().§ K§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             if(!(_loc21_ || _loc2_))
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             §§push(_loc7_);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                addr535:
                                                                                                if(_loc21_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc21_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(5);
                                                                                                      if(_loc21_ || _loc3_)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() < §§pop())
                                                                                                         {
                                                                                                            §§push(0.75);
                                                                                                            if(_loc21_ || _loc1_)
                                                                                                            {
                                                                                                               addr739:
                                                                                                               §§push(_loc2_);
                                                                                                               if(!(_loc20_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc20_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr759:
                                                                                                                     §§push(§§pop() + Math.random() * _loc2_);
                                                                                                                     if(_loc21_ || _loc2_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     break loop16;
                                                                                                                  }
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  break loop16;
                                                                                                               }
                                                                                                               §§goto(addr759);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      addr814:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         break loop1;
                                                                                                      }
                                                                                                      addr774:
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Math.random() * 750);
                                                                                                   break loop14;
                                                                                                   §§goto(addr535);
                                                                                                }
                                                                                                addr699:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr814);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                          }
                                                                                          addr798:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§ K§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§1!e§.§3!4§,0,0,0,0,1,20,true);
                                                                                          break loop13;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr797:
                                                                                    }
                                                                                    §§goto(addr798);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr795:
                                                                                 }
                                                                                 §§goto(addr797);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr793:
                                                                              }
                                                                              §§goto(addr795);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().particles);
                                                                                 break loop17;
                                                                              }
                                                                              addr778:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr793);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc15_ = §§pop();
                                                                  addr769:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc21_)
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     §§goto(addr699);
                                                                     §§push(1250);
                                                                  }
                                                                  §§goto(addr686);
                                                               }
                                                            }
                                                            addr683:
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc21_ || this))
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§goto(addr711);
                                                      }
                                                   }
                                                   addr671:
                                                }
                                                §§goto(addr813);
                                             }
                                             addr727:
                                          }
                                          break;
                                       }
                                       §§goto(addr769);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr774);
                                    }
                                 }
                              }
                           }
                           §§goto(addr683);
                        }
                        §§goto(addr739);
                     }
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr812);
                  }
               }
               §§goto(addr768);
            }
            §§goto(addr109);
         }
      }
      
      protected function §>1§(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
         }
         switch(§§pop())
         {
         }
         return §1!e§.§[!&§;
      }
      
      public function §6s§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§`!<§ = null;
         var _loc3_:* = int(this.§;Y§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§;Y§[_loc3_];
            if(!_loc5_)
            {
               §§push(_loc2_.§+!O§());
               loop1:
               while(!§§pop())
               {
                  §§push(_loc2_.§-!R§());
                  loop2:
                  while(!§§pop())
                  {
                     §§push(this.§1!§(_loc2_));
                     while(true)
                     {
                        if(_loc4_)
                        {
                           if(!§§pop())
                           {
                              §§push(_loc2_.isReadyToBeRemoved(param1));
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                              loop14:
                              while(true)
                              {
                                 _loc2_.§@j§(§<!R§.§1!p§);
                                 loop15:
                                 while(true)
                                 {
                                    if(_loc5_ && param1)
                                    {
                                       break loop2;
                                    }
                                    this.§>I§(_loc3_,false,true,true);
                                    loop16:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(!_loc5_)
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   addr36:
                                                   addr154:
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      _loc3_ = §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               while(false)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               continue loop0;
                                                               addr55:
                                                            }
                                                            addr199:
                                                            while(true)
                                                            {
                                                               this.§>I§(_loc3_,false,false,false);
                                                               addr205:
                                                               while(true)
                                                               {
                                                                  addr170:
                                                                  while(true)
                                                                  {
                                                                     continue loop8;
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
                                                                  continue loop15;
                                                               }
                                                               _loc2_.update(param1);
                                                            }
                                                            addr79:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue loop14;
                                                      }
                                                   }
                                                   addr154:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr154);
                                             }
                                             if(!§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      break loop1;
                                                   }
                                                   _loc2_.§@j§(§<!R§.§1!p§);
                                                   while(true)
                                                   {
                                                      this.§>I§(_loc3_,false,false,false);
                                                      addr144:
                                                      while(true)
                                                      {
                                                         §§goto(addr36);
                                                      }
                                                   }
                                                   addr169:
                                                }
                                                §§goto(addr205);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr190:
                                             }
                                             §§goto(addr36);
                                          }
                                          §§goto(addr169);
                                       }
                                       §§goto(addr144);
                                    }
                                 }
                              }
                           }
                           §§goto(addr154);
                        }
                        break;
                        if(!(_loc4_ || _loc2_))
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           continue loop1;
                        }
                        if(§§pop())
                        {
                           §§goto(addr79);
                        }
                        §§goto(addr36);
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§goto(addr199);
                        }
                        §§goto(addr170);
                     }
                  }
                  while(true)
                  {
                     this.§'!#§(_loc2_,param1);
                     §§goto(addr190);
                  }
               }
               while(true)
               {
                  §§goto(addr198);
               }
            }
            §§goto(addr55);
         }
         if(_loc4_)
         {
            this.§1!y§();
         }
      }
      
      private function override() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§-$§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§4a§)
         {
            if(!(_loc4_ && _loc2_))
            {
               this.§?l§.mLevelEngine.mWorld.§5!l§(_loc1_.§5?§);
            }
         }
      }
      
      public function §8L§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§`!<§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§;Y§.length)
            {
               return false;
            }
            _loc2_ = this.§;Y§[_loc1_];
            if(_loc4_)
            {
               addr64:
               break;
            }
            §§push(_loc2_.explode());
            if(!(_loc3_ || _loc3_))
            {
               return §§pop();
            }
            if(§§pop())
            {
               if(!_loc4_)
               {
                  break;
               }
            }
            else
            {
               _loc1_++;
            }
         }
         §§goto(addr64);
         §§push(true);
      }
      
      public function §1!§(param1:§`!<§) : Boolean
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
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc2_ || _loc2_))
                        {
                           continue loop1;
                        }
                        if(!§§pop())
                        {
                           loop4:
                           while(§§pop())
                           {
                              if(!(_loc3_ && this))
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(true);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(this.§?l§.§ !p§.§,A§(param1.§5b§().GetPosition().x,param1.§5b§().GetPosition().y));
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             continue loop4;
                                          }
                                          addr125:
                                          while(true)
                                          {
                                             if(_loc2_ || this)
                                             {
                                                continue loop3;
                                             }
                                             addr149:
                                             while(true)
                                             {
                                                §§pop();
                                                addr150:
                                                while(true)
                                                {
                                                   §§push(param1.§9o§.§#!N§() == §0"§.§5P§);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                       break;
                                    }
                                 }
                                 §§goto(addr87);
                              }
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§goto(addr150);
                              §§goto(addr150);
                           }
                           §§push(false);
                           if(_loc3_)
                           {
                              addr87:
                              return §§pop();
                           }
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr142);
                     }
                     return §§pop();
                  }
                  §§goto(addr149);
               }
            }
         }
         §§goto(addr150);
      }
      
      public function §>I§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:§-$§ = null;
         var _loc7_:§<!t§ = null;
         if(!_loc12_)
         {
            if(param1 < 0)
            {
               if(!_loc12_)
               {
                  return;
               }
            }
         }
         var _loc5_:§`!<§;
         §§push((_loc5_ = this.§;Y§[param1]).§<+§());
         if(!_loc12_)
         {
            if(§§pop())
            {
               if(!(_loc12_ && param3))
               {
                  var _loc8_:*;
                  §§push((_loc8_ = this).§5!h§);
                  if(!(_loc12_ && param3))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc9_:* = §§pop();
                  if(_loc13_)
                  {
                     _loc8_.§5!h§ = _loc9_;
                  }
                  if(!(_loc12_ && param1))
                  {
                     addr228:
                     if(_loc5_ == this.§?l§.activeObject)
                     {
                        addr233:
                        while(true)
                        {
                           §§push(this.§?l§);
                           addr235:
                           while(true)
                           {
                              §§pop().activeObject = null;
                              addr237:
                              while(true)
                              {
                              }
                           }
                        }
                        addr233:
                     }
                     while(true)
                     {
                        §§push(param2);
                        loop5:
                        while(!§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§push(param3);
                              addr165:
                              loop12:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr166:
                                    if(!(_loc12_ && this))
                                    {
                                       while(true)
                                       {
                                          this.addDestructionParticles(_loc5_,this.§?l§.particles);
                                          §§goto(addr166);
                                       }
                                       addr173:
                                    }
                                    while(true)
                                    {
                                    }
                                    addr179:
                                 }
                                 while(true)
                                 {
                                    §§push(param4);
                                    loop11:
                                    while(true)
                                    {
                                       if(!_loc13_)
                                       {
                                          continue loop12;
                                       }
                                       if(_loc12_ && param2)
                                       {
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(!_loc12_)
                                             {
                                                this.§=!9§(_loc5_);
                                                while(true)
                                                {
                                                }
                                                addr144:
                                                do
                                                {
                                                   this.§;G§(_loc5_);
                                                }
                                                while(!_loc13_);
                                                
                                                if(!_loc12_)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         if(false)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc5_.isTexture());
                                                               if(!_loc13_)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              addr140:
                                                                              this.§+!a§(_loc5_.sprite);
                                                                              §§goto(addr144);
                                                                           }
                                                                           §§goto(addr237);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        addr227:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr162);
                                                                     }
                                                                  }
                                                                  §§goto(addr144);
                                                               }
                                                               §§goto(addr140);
                                                            }
                                                            continue loop11;
                                                            addr126:
                                                         }
                                                         _loc8_ = 0;
                                                         _loc9_ = this.§4a§;
                                                         addr301:
                                                         §§push(§§hasnext(_loc9_,_loc8_));
                                                         if(_loc13_ || param1)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                               if(_loc6_.index1 >= param1)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     var _loc10_:*;
                                                                     var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                                                     if(_loc13_ || param1)
                                                                     {
                                                                        _loc10_.index1 = _loc11_;
                                                                     }
                                                                     if(!_loc12_)
                                                                     {
                                                                        addr277:
                                                                        if(_loc6_.index2 >= param1)
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              addr283:
                                                                              _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                                              if(_loc13_ || param2)
                                                                              {
                                                                                 _loc10_.index2 = _loc11_;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr301);
                                                                     }
                                                                     §§goto(addr283);
                                                                  }
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                            if(_loc13_ || this)
                                                            {
                                                               if(_loc13_ || param2)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     _loc8_ = 0;
                                                                     if(!(_loc12_ && param3))
                                                                     {
                                                                        _loc9_ = this.§@!=§;
                                                                        addr394:
                                                                        for each(_loc7_ in _loc9_)
                                                                        {
                                                                           §§push(_loc7_.id1);
                                                                           if(_loc13_ || param2)
                                                                           {
                                                                              §§push(param1);
                                                                              if(!_loc12_)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       _loc7_.§"?§ = true;
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          addr368:
                                                                                          if(_loc7_.id1 >= param1)
                                                                                          {
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                §§push((_loc10_ = _loc7_).id1);
                                                                                                if(!(_loc12_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() - 1);
                                                                                                }
                                                                                                _loc11_ = §§pop();
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   _loc10_.id1 = _loc11_;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr394);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr368);
                                                                        }
                                                                        addr407:
                                                                        if(_loc13_)
                                                                        {
                                                                           addr410:
                                                                           _loc5_.dispose();
                                                                        }
                                                                        _loc5_ = null;
                                                                        if(!_loc12_)
                                                                        {
                                                                           this.§;Y§[param1] = null;
                                                                        }
                                                                        this.§;Y§.splice(param1,1);
                                                                        addr436:
                                                                        if(!_loc13_)
                                                                        {
                                                                           §§goto(addr436);
                                                                        }
                                                                        return;
                                                                        addr406:
                                                                     }
                                                                     §§goto(addr407);
                                                                  }
                                                                  §§goto(addr410);
                                                               }
                                                               §§goto(addr407);
                                                            }
                                                            §§goto(addr406);
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   break loop5;
                                                }
                                             }
                                             §§goto(addr179);
                                          }
                                          §§goto(addr126);
                                       }
                                    }
                                    continue loop12;
                                 }
                              }
                           }
                        }
                        addr183:
                        while(true)
                        {
                           §§push(this.§?l§);
                           if(_loc13_)
                           {
                              §§push(_loc5_.§9o§.score);
                              §§push(§;v§.§-!A§);
                              §§push(true);
                              §§push(_loc5_.§5b§().GetPosition().x);
                              §§push(_loc5_.§5b§().GetPosition().y);
                              if(_loc13_ || param1)
                              {
                                 §§push(3);
                                 if(!_loc12_)
                                 {
                                    addr222:
                                    §§push(§§pop() - §§pop());
                                    §§push(§1!e§.§?L§(_loc5_.§<!]§));
                                 }
                                 §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                 §§goto(addr227);
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr235);
                        }
                     }
                  }
                  §§goto(addr173);
               }
               §§goto(addr237);
            }
            else
            {
               §§push(_loc5_.§ !"§());
               if(!_loc12_)
               {
                  if(§§pop())
                  {
                     if(_loc13_)
                     {
                        §§push((_loc8_ = this).§^!O§);
                        if(_loc13_ || param3)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc9_ = §§pop();
                        if(_loc13_)
                        {
                           _loc8_.§^!O§ = _loc9_;
                        }
                        if(!(_loc12_ && param3))
                        {
                           §§goto(addr228);
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr233);
                  }
                  §§goto(addr228);
               }
            }
            §§goto(addr165);
         }
         §§goto(addr156);
      }
      
      protected function addDestructionParticles(param1:§`!<§, param2:§+F§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      private function §+!a§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§4!n§);
            if(!(_loc2_ && this))
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§42§);
                     if(_loc3_)
                     {
                        if(!§§pop().contains(param1))
                        {
                           loop1:
                           do
                           {
                              §§push(this.§0R§);
                              if(_loc3_ || param1)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§7!o§);
                                       if(!_loc2_)
                                       {
                                          if(!§§pop().contains(param1))
                                          {
                                             return;
                                          }
                                          if(!_loc2_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc2_ && _loc3_)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      return;
                                                   }
                                                   addr162:
                                                   this.§4!n§.removeChild(param1);
                                                }
                                                addr48:
                                                this.§7!o§.removeChild(param1);
                                                addr50:
                                                if(_loc3_)
                                                {
                                                   return;
                                                }
                                                if(_loc2_ && _loc2_)
                                                {
                                                   §§push(this.§42§);
                                                   break loop0;
                                                }
                                                addr125:
                                                addr125:
                                                if(!(_loc3_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                continue;
                                                break;
                                                addr139:
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr50);
                                       }
                                       §§goto(addr48);
                                    }
                                    return;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 §§push(this.§0R§);
                              }
                              §§pop().removeChild(param1);
                           }
                           while(_loc2_ && param1);
                           
                           if(_loc3_ || _loc3_)
                           {
                              return;
                           }
                           continue;
                        }
                        §§goto(addr125);
                     }
                     break;
                  }
                  §§pop().removeChild(param1);
                  §§goto(addr139);
               }
            }
            §§goto(addr162);
         }
         §§goto(addr125);
      }
      
      protected function §=!9§(param1:§`!<§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1.§'!Q§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr123:
                        do
                        {
                           §§push(param1.§&!&§());
                           if(_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                        }
                        while(_loc2_ || param1);
                        
                        continue loop1;
                     }
                  }
                  while(§§pop())
                  {
                     if(_loc3_)
                     {
                        this.addExplosions(§=N§.§;!P§,param1.§5b§().GetPosition().x,param1.§5b§().GetPosition().y);
                        break;
                     }
                     addr102:
                     addr114:
                     continue loop0;
                  }
                  addr24:
                  return;
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §!!D§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§>I§(this.§;Y§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §9!=§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§!U§);
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
         }
         §§goto(addr79);
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§`!<§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§;Y§.length)
         {
            _loc3_ = this.§;Y§[_loc2_] as §`!<§;
            if(!_loc4_)
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
                              §§push(_loc3_.§<+§());
                              loop5:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop30:
                                 while(true)
                                 {
                                    if(_loc4_ && param1)
                                    {
                                       continue loop5;
                                    }
                                    §§push(!§§pop());
                                    loop13:
                                    while(!_loc4_)
                                    {
                                       §§push(§§pop());
                                       loop14:
                                       while(!(_loc4_ && this))
                                       {
                                          if(_loc4_ && this)
                                          {
                                             continue loop2;
                                          }
                                          if(!§§pop())
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§pop();
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ || _loc2_))
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§push(_loc3_.§?!M§);
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().mTryToBlink);
                                                         addr139:
                                                         addr166:
                                                         loop18:
                                                         while(_loc5_ || param1)
                                                         {
                                                            §§push(0);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() <= §§pop());
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop30;
                                                                  }
                                                                  §§push(§§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     addr93:
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              §§push(true);
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr155:
                                                                                       addr236:
                                                                                       while(_loc5_ || _loc3_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_.§%!R§);
                                                                                          break loop18;
                                                                                       }
                                                                                       continue loop26;
                                                                                    }
                                                                                    addr154:
                                                                                 }
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                                 continue loop20;
                                                                              }
                                                                              addr103:
                                                                           }
                                                                           loop25:
                                                                           while(_loc5_ || this)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop25;
                                                                                 }
                                                                                 addr134:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop30;
                                                                                 }
                                                                                 addr174:
                                                                              }
                                                                           }
                                                                           §§goto(addr155);
                                                                           addr123:
                                                                        }
                                                                        addr35:
                                                                        while(true)
                                                                        {
                                                                           _loc2_++;
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break loop24;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           §§goto(addr123);
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                     addr93:
                                                                  }
                                                                  §§goto(addr154);
                                                               }
                                                               §§push(0);
                                                               addr59:
                                                               continue loop30;
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  addr167:
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop() <= §§pop());
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        if(_loc4_ && this)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        addr86:
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           §§goto(addr93);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              break loop14;
                                                                              §§goto(addr86);
                                                                           }
                                                                           addr233:
                                                                        }
                                                                     }
                                                                     §§goto(addr103);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§goto(addr35);
                                                                        }
                                                                        §§goto(addr174);
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                                  addr167:
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr167);
                                                            §§goto(addr139);
                                                         }
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          §§goto(addr93);
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             break loop13;
                                          }
                                          §§goto(addr172);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr236);
                                    }
                                 }
                              }
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
            §§goto(addr134);
         }
         return false;
      }
      
      public function §"!i§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§`!<§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§;Y§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§;Y§[_loc3_] as §`!<§));
               if(_loc5_)
               {
                  §§push(§§pop());
                  if(!(_loc6_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(_loc4_.§<+§());
                              loop1:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr241:
                                 loop22:
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
                                             loop12:
                                             while(true)
                                             {
                                                §§push(_loc4_.§%!R§);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop27:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  addr208:
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ && this)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_ && this)
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_.§?!M§);
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().mTryToBlink);
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_ && _loc3_)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          §§push(0);
                                                                                          loop18:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() <= §§pop());
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             addr189:
                                                                                             addr182:
                                                                                             while(!(_loc5_ || this))
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr190:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr93:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_.§?!M§);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      §§push(§§pop().mTryToScream);
                                                                                                      if(_loc6_ && _loc2_)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      §§push(0);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      if(!(_loc5_ || this))
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr182);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr182:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              addr132:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                       }
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          if(!(_loc6_ && _loc2_))
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§goto(addr93);
                                                                                             }
                                                                                             §§goto(addr236);
                                                                                          }
                                                                                          §§goto(addr190);
                                                                                       }
                                                                                    }
                                                                                    continue loop27;
                                                                                    addr62:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    continue loop27;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr62);
                                                         }
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr205);
                                    }
                                 }
                              }
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr241);
                  }
                  §§goto(addr181);
               }
               §§goto(addr132);
            }
            break;
         }
         return §§pop();
      }
      
      public function §case §() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§`!<§ = null;
         var _loc1_:int = 0;
         loop0:
         for each(_loc2_ in this.§;Y§)
         {
            if(_loc6_ || _loc2_)
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
                           addr135:
                           while(true)
                           {
                              addr115:
                              while(true)
                              {
                                 §§push(_loc2_.§=]§());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_ && this)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§pop();
                                             addr129:
                                             while(true)
                                             {
                                                §§push(_loc2_.§'!U§());
                                                if(!_loc5_)
                                                {
                                                   continue loop8;
                                                }
                                                addr75:
                                                if(_loc5_ && _loc1_)
                                                {
                                                   continue loop7;
                                                }
                                                if(!_loc6_)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop8;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                     while(§§pop())
                     {
                        if(_loc6_)
                        {
                           _loc1_++;
                        }
                        if(!(_loc5_ && _loc1_))
                        {
                           if(_loc6_ || _loc2_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr129);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr135);
         }
         return _loc1_;
      }
      
      public function §3!A§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§`!<§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§;Y§)
         {
            if(!_loc6_)
            {
               §§push(Boolean(_loc2_));
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(!(_loc6_ && _loc1_))
                     {
                        §§pop();
                        if(!_loc6_)
                        {
                           addr72:
                           §§push(_loc2_.isTexture());
                           if(!_loc5_)
                           {
                           }
                           addr77:
                           if(§§pop())
                           {
                              if(_loc5_)
                              {
                                 _loc1_++;
                              }
                           }
                        }
                        continue;
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
               §§goto(addr77);
            }
            §§goto(addr72);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§`!<§ = null;
         var _loc2_:int = this.§;Y§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;Y§[_loc2_];
            if(!(_loc4_ && _loc3_))
            {
               §§push(Boolean(_loc3_));
               if(_loc5_ || this)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr147:
                        while(true)
                        {
                           §§pop();
                           addr148:
                           while(true)
                           {
                              §§push(_loc3_.§<+§());
                              if(_loc4_)
                              {
                                 continue loop1;
                              }
                              §§push(Boolean(§§pop()));
                           }
                        }
                        addr147:
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               §§goto(addr147);
            }
            §§goto(addr103);
         }
      }
      
      public function § !y§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`!<§ = null;
         var _loc1_:* = int(this.§;Y§.length - 1);
         loop0:
         for(; _loc1_ >= 0; if(true)
         {
            continue;
         },§§goto(addr61))
         {
            _loc2_ = this.§;Y§[_loc1_] as §`!<§;
            if(!_loc3_)
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
                           addr125:
                           while(true)
                           {
                              §§push(_loc2_.§ !"§());
                              addr103:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr124:
                     }
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!(_loc4_ || _loc1_))
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§pop();
                                 loop9:
                                 while(_loc4_)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(_loc2_.§%!R§ > 0);
                                       if(!_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(!_loc3_)
                                             {
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      do
                                                      {
                                                         §§push(_loc1_);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         _loc1_ = §§pop();
                                                      }
                                                      while(_loc3_);
                                                      
                                                      if(!_loc3_)
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      break loop10;
                                                   }
                                                }
                                                continue loop0;
                                                addr72:
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr103);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop7;
                                       }
                                       continue loop8;
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr125);
                              }
                           }
                           §§goto(addr72);
                        }
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr76);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`!<§ = null;
         var _loc1_:* = int(this.§;Y§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;Y§[_loc1_] as §`!<§;
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
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.§%!R§);
                              while(true)
                              {
                                 §§push(0);
                                 addr271:
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    addr272:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 loop30:
                                 while(true)
                                 {
                                    §§push(_loc2_.§%!R§);
                                    if(!(_loc4_ || _loc1_))
                                    {
                                       break;
                                    }
                                    §§push(0);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(§§pop() > §§pop());
                                       if(_loc4_)
                                       {
                                          addr98:
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!(_loc4_ || _loc2_))
                                                {
                                                   continue loop3;
                                                }
                                                loop31:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr116:
                                                      §§push(false);
                                                      if(!(_loc4_ || _loc2_))
                                                      {
                                                         loop14:
                                                         while(!(_loc3_ && _loc2_))
                                                         {
                                                            §§push(!§§pop());
                                                            loop15:
                                                            while(true)
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     addr44:
                                                                     loop32:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           _loc1_ = §§pop();
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 addr66:
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       while(false)
                                                                                       {
                                                                                          continue loop30;
                                                                                       }
                                                                                       continue loop0;
                                                                                       addr75:
                                                                                    }
                                                                                    addr248:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.§,!R§());
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             loop20:
                                                                                             while(!_loc3_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_ || this)
                                                                                                               {
                                                                                                                  if(_loc3_ && _loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_.§ !"§());
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        addr152:
                                                                                                                        if(_loc4_ || _loc1_)
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc3_ && this)
                                                                                                                              {
                                                                                                                                 addr209:
                                                                                                                                 if(_loc4_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    return §§pop();
                                                                                                                                 }
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop30;
                                                                                                                                 §§goto(addr66);
                                                                                                                              }
                                                                                                                              §§goto(addr98);
                                                                                                                           }
                                                                                                                           continue loop19;
                                                                                                                           addr168:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(_loc4_ || this)
                                                                                                                           {
                                                                                                                              §§push(!§§pop());
                                                                                                                              continue loop16;
                                                                                                                              §§goto(addr152);
                                                                                                                           }
                                                                                                                           loop21:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr266:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop21;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr182:
                                                                                                                           addr265:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        continue loop20;
                                                                                                                     }
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue loop31;
                                                                                                                     }
                                                                                                                     §§goto(addr168);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     break loop20;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr280:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_.§6K§);
                                                                                                                  break loop32;
                                                                                                               }
                                                                                                               addr127:
                                                                                                               if(!(_loc4_ || this))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  continue loop32;
                                                                                                               }
                                                                                                               §§goto(addr266);
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                            addr217:
                                                                                                         }
                                                                                                         §§push(false);
                                                                                                         §§goto(addr209);
                                                                                                      }
                                                                                                      §§goto(addr147);
                                                                                                   }
                                                                                                   addr204:
                                                                                                }
                                                                                                §§goto(addr265);
                                                                                             }
                                                                                             while(_loc4_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   break loop14;
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr178);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr116);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr127);
                                                                           }
                                                                           §§goto(addr217);
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop14;
                                                                        §§goto(addr44);
                                                                     }
                                                                     addr44:
                                                                  }
                                                                  §§goto(addr248);
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            §§goto(addr280);
                                                            §§goto(addr238);
                                                         }
                                                         addr238:
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      continue loop1;
                                                   }
                                                   §§goto(addr44);
                                                }
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr116);
                                    }
                                    else
                                    {
                                       §§goto(addr271);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr275);
                     }
                  }
               }
            }
            §§goto(addr75);
         }
         return true;
      }
      
      public function §;l§(param1:Boolean = false) : §`!<§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:§`!<§ = null;
         if(!(_loc7_ && this))
         {
            if(!this.isPigsAlive())
            {
               if(_loc8_ || _loc3_)
               {
                  §§goto(addr39);
               }
            }
            var _loc2_:int = this.§;Y§.length;
            §§push(1);
            if(_loc8_)
            {
               §§push(int(§§pop() + Math.random() * this.§"!i§(param1)));
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
                     if(_loc8_)
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
                           if(_loc7_)
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
                           §§push(Boolean(_loc6_ = this.§;Y§[_loc5_]));
                           if(!_loc7_)
                           {
                              §§push(§§pop());
                              if(!_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       §§pop();
                                       if(!_loc7_)
                                       {
                                          §§push(_loc6_.§<+§());
                                          loop4:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr277:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop27:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr280:
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_.§%!R§);
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               addr245:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                               }
                                                               loop18:
                                                               while(!(_loc7_ && _loc2_))
                                                               {
                                                                  §§push(0);
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() <= §§pop());
                                                                     loop20:
                                                                     while(_loc8_)
                                                                     {
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§pop();
                                                                                       while(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          §§push(_loc6_.§?!M§);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§push(§§pop().mTryToScream);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             §§push(0);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             §§goto(addr245);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop18;
                                                                                             §§goto(addr240);
                                                                                          }
                                                                                          addr240:
                                                                                       }
                                                                                       continue loop5;
                                                                                       addr233:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          addr268:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                continue loop27;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   break loop20;
                                                                                                }
                                                                                                addr179:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc7_ && param1))
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            _loc4_++;
                                                                                                            loop14:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc7_ && param1))
                                                                                                               {
                                                                                                                  addr198:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_ >= _loc3_)
                                                                                                                     {
                                                                                                                        if(_loc8_ || param1)
                                                                                                                        {
                                                                                                                           return _loc6_;
                                                                                                                        }
                                                                                                                        addr117:
                                                                                                                        while(!(_loc8_ || param1))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.§?!M§);
                                                                                                                              break loop20;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     break;
                                                                                                                     §§goto(addr198);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc5_++;
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr104);
                                                                                                                     }
                                                                                                                     §§goto(addr117);
                                                                                                                  }
                                                                                                                  addr104:
                                                                                                                  continue loop3;
                                                                                                                  addr96:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr248:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1);
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                            }
                                                                                                            addr191:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr233);
                                                                                                         }
                                                                                                         §§goto(addr202);
                                                                                                      }
                                                                                                      §§goto(addr191);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop27;
                                                                                       }
                                                                                       addr267:
                                                                                    }
                                                                                    §§goto(addr96);
                                                                                 }
                                                                              }
                                                                              §§goto(addr179);
                                                                           }
                                                                           §§goto(addr268);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§goto(addr198);
                                                                           }
                                                                           §§goto(addr248);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        §§goto(addr272);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr247);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr280);
                                    }
                                    §§goto(addr247);
                                 }
                                 §§goto(addr277);
                              }
                              §§goto(addr270);
                           }
                           §§goto(addr266);
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  return null;
               }
            }
         }
         addr39:
         return null;
      }
      
      public function §^!v§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§;Y§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(!_loc3_)
               {
                  if(_loc4_ || this)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        if(_loc4_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!_loc3_)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(_loc1_);
                                       loop17:
                                       while(true)
                                       {
                                          §§push(this.§?l§.slingshot.§^!v§());
                                          addr104:
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc4_)
                                                {
                                                   §§push(int(§§pop()));
                                                   loop14:
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      addr116:
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         if(!(_loc4_ || _loc1_))
                                                         {
                                                            continue loop14;
                                                         }
                                                         if(!(_loc4_ || _loc1_))
                                                         {
                                                            continue loop17;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            if(_loc4_ || this)
                                                            {
                                                               break loop0;
                                                            }
                                                            addr180:
                                                            loop7:
                                                            while(true)
                                                            {
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  addr187:
                                                                  _loc1_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr119:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                           addr120:
                                                                           while(true)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              addr121:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    if(_loc4_ || _loc1_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr203:
                                                                                    loop4:
                                                                                    while((this.§;Y§[_loc2_] as §`!<§).§,!R§())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc1_ = §§pop();
                                                                                          continue loop4;
                                                                                       }
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    if(_loc4_ || _loc1_)
                                                                                    {
                                                                                       §§push(§^g§.§>p§.getValue());
                                                                                       break loop6;
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr187);
                                                                  }
                                                                  addr188:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push((this.§;Y§[_loc2_] as §`!<§).§9o§.score);
                                                                     addr200:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr201:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr202);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr192:
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                         }
                                                         §§goto(addr120);
                                                         continue loop14;
                                                      }
                                                      addr156:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                }
                                                if(_loc4_)
                                                {
                                                   §§goto(addr180);
                                                   §§push(int(§§pop()));
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr156);
                                          }
                                       }
                                       addr100:
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr116);
                           }
                           else
                           {
                              §§push(_loc1_);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr202);
               }
               §§goto(addr119);
            }
            §§goto(addr100);
         }
         return §§pop();
      }
      
      public function §>8§(param1:§`!<§, param2:§`!<§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(param1.§ !"§());
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
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param2.§ !"§());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop13:
                                 while(_loc4_ || _loc3_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(param1.§8U§());
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         addr99:
                                                         while(!(_loc3_ && param2))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!(_loc4_ || _loc3_))
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           addr84:
                                                                           §§push(true);
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr121:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ || param2)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(true);
                                                                                             break;
                                                                                          }
                                                                                          addr137:
                                                                                          §§push(param2.§8U§());
                                                                                          continue loop13;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                 }
                                                                                 addr120:
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           addr84:
                                                                        }
                                                                        §§goto(addr121);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr94:
                                                                     }
                                                                     §§goto(addr84);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(false);
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           break loop14;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     §§goto(addr84);
                                                                  }
                                                                  §§goto(addr35);
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr35:
                                                               return §§pop();
                                                               addr55:
                                                            }
                                                            §§goto(addr120);
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                                §§goto(addr137);
                                             }
                                             addr136:
                                          }
                                          §§goto(addr55);
                                       }
                                       §§goto(addr99);
                                    }
                                    §§goto(addr84);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr136);
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §2G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.mSardineCanAdded = true;
         }
         do
         {
            this.§^!O§ = 0;
         }
         while(!_loc1_);
         
      }
      
      public function §7!4§(param1:§`!<§, param2:§`!<§) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         if(_loc21_)
         {
            §§push(this.mMightyEagleAdded);
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.mSardineCanAdded);
                  loop1:
                  while(true)
                  {
                     if(_loc21_)
                     {
                        if(!(_loc20_ && param1))
                        {
                           if(_loc21_ || this)
                           {
                              §§push(Boolean(§§pop()));
                              loop2:
                              while(_loc21_ || param2)
                              {
                                 if(!_loc20_)
                                 {
                                    §§push(§§pop());
                                    loop3:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§pop();
                                             loop5:
                                             while(true)
                                             {
                                                if(!_loc20_)
                                                {
                                                   if(_loc21_)
                                                   {
                                                      §§push(this.mMightyEagleTimer);
                                                      if(_loc20_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() == this.§0;§.MIGHTY_EAGLE_WAIT_TIME);
                                                      loop6:
                                                      for(; !_loc20_; if(_loc21_ || param2)
                                                      {
                                                         if(_loc20_ && this)
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(_loc21_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc20_)
                                                               {
                                                                  §§goto(addr62);
                                                               }
                                                               if(false)
                                                               {
                                                                  §§goto(addr88);
                                                               }
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                         addr217:
                                                      },continue,while(true)
                                                      {
                                                         if(!_loc20_)
                                                         {
                                                            §§push(true);
                                                            break;
                                                         }
                                                         addr251:
                                                         addr251:
                                                         loop41:
                                                         while(true)
                                                         {
                                                            §§push(param1.§<+§());
                                                            addr222:
                                                            while(true)
                                                            {
                                                               if(_loc21_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  continue loop31;
                                                               }
                                                               addr266:
                                                               while(true)
                                                               {
                                                                  if(!(_loc20_ && param2))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        addr275:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop33:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2);
                                                                                 §§push(param2.§-!!§);
                                                                                 if(_loc21_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() * 2);
                                                                                 }
                                                                                 §§pop().applyDamage(§§pop(),true,true,true,false);
                                                                                 addr293:
                                                                                 while(_loc20_ && _loc3_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.§-!R§());
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    continue loop33;
                                                                                 }
                                                                                 break loop2;
                                                                              }
                                                                              addr276:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2.§-!R§());
                                                                                 addr247:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    addr248:
                                                                                    loop32:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr249:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             continue loop30;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             continue loop41;
                                                                                          }
                                                                                          continue loop32;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr244:
                                                                           }
                                                                        }
                                                                     }
                                                                     addr274:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr310:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr274);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      },return §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  if(_loc21_)
                                                                  {
                                                                     if(!(_loc20_ && param2))
                                                                     {
                                                                        §§push(param1.§+!O§());
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           if(_loc21_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             §§push(param1.§-!!§);
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                §§push(§§pop() * 2);
                                                                                             }
                                                                                             §§pop().applyDamage(§§pop(),true,true,true,false);
                                                                                             §§goto(addr241);
                                                                                          }
                                                                                          addr229:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             addr24:
                                                                                             addr313:
                                                                                             loop35:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§>8§(param1,param2));
                                                                                                if(!(_loc20_ && this))
                                                                                                {
                                                                                                   addr36:
                                                                                                   if(!(_loc20_ && _loc3_))
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   addr101:
                                                                                                   addr154:
                                                                                                   while(!(_loc20_ && _loc3_))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            continue loop35;
                                                                                                         }
                                                                                                         loop21:
                                                                                                         for(; !_loc20_; if(_loc20_ && this)
                                                                                                         {
                                                                                                            continue;
                                                                                                         },if(_loc21_)
                                                                                                         {
                                                                                                            addr79:
                                                                                                            §§push(false);
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                               §§goto(addr311);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  break loop21;
                                                                                                               }
                                                                                                               addr174:
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr241:
                                                                                                            §§goto(addr217);
                                                                                                         },§§goto(addr251))
                                                                                                         {
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            this.mMightyEagleTimer = 0;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               if(!(_loc20_ && param2))
                                                                                                               {
                                                                                                                  continue loop35;
                                                                                                               }
                                                                                                               loop23:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr266);
                                                                                                                  §§push(param2.§<+§());
                                                                                                                  addr311:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr62:
                                                                                                               if(_loc21_ || param2)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr36);
                                                                                                   }
                                                                                                   while(_loc21_)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                      §§goto(addr101);
                                                                                                   }
                                                                                                   addr101:
                                                                                                   continue loop1;
                                                                                                }
                                                                                                §§goto(addr79);
                                                                                                while(true)
                                                                                                {
                                                                                                   addr88:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param2.§+!O§());
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             break loop5;
                                                                                          }
                                                                                          addr176:
                                                                                       }
                                                                                       §§goto(addr311);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr248);
                                                                              }
                                                                           }
                                                                           §§goto(addr154);
                                                                        }
                                                                     }
                                                                     else if(!(_loc20_ && _loc3_))
                                                                     {
                                                                        §§goto(addr244);
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                                  §§goto(addr176);
                                                               }
                                                            }
                                                            §§goto(addr24);
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr293);
                                                }
                                                §§goto(addr229);
                                             }
                                             var _loc3_:* = §§pop();
                                             §§push(param1.§;!`§(param2.§'!Q§()));
                                             if(!_loc20_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc4_:* = §§pop();
                                             §§push(param1.§"!5§(param2.§'!Q§()));
                                             if(!_loc20_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc5_:* = §§pop();
                                             §§push(param2.§;!`§(param1.§'!Q§()));
                                             if(_loc21_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc6_:* = §§pop();
                                             §§push(param2.§"!5§(param1.§'!Q§()));
                                             if(!(_loc20_ && param1))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc7_:* = §§pop();
                                             §§push(param1.§5b§().GetMass());
                                             if(!(_loc20_ && param1))
                                             {
                                                §§push(param1.§5b§());
                                                if(_loc21_)
                                                {
                                                   §§push(§§pop().GetLinearVelocity().x);
                                                   if(_loc21_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc20_)
                                                      {
                                                         addr376:
                                                         §§push(param2.§5b§().GetMass());
                                                         if(_loc21_ || this)
                                                         {
                                                            addr389:
                                                            §§push(§§pop() - §§pop() * param2.§5b§().GetLinearVelocity().x);
                                                            if(!(_loc20_ && this))
                                                            {
                                                               addr397:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc8_:* = §§pop();
                                                            §§push(param1.§5b§().GetMass());
                                                            if(!(_loc20_ && this))
                                                            {
                                                               §§push(param1.§5b§());
                                                               if(_loc21_ || param2)
                                                               {
                                                                  §§push(§§pop().GetLinearVelocity().y);
                                                                  if(_loc21_ || this)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc21_)
                                                                     {
                                                                        addr432:
                                                                        §§push(param2.§5b§().GetMass());
                                                                        if(_loc21_ || this)
                                                                        {
                                                                           addr445:
                                                                           §§push(§§pop() - §§pop() * param2.§5b§().GetLinearVelocity().y);
                                                                           if(_loc21_)
                                                                           {
                                                                              addr448:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr445);
                                                                     }
                                                                     var _loc9_:* = §§pop();
                                                                     §§push(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / _loc3_);
                                                                     if(!(_loc20_ && param1))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc10_:* = §§pop();
                                                                     §§push(_loc4_);
                                                                     if(_loc21_)
                                                                     {
                                                                        §§push(§§pop() * _loc10_);
                                                                        if(!_loc20_)
                                                                        {
                                                                           addr477:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc11_:* = §§pop();
                                                                        §§push(_loc6_);
                                                                        if(!(_loc20_ && param2))
                                                                        {
                                                                           §§push(§§pop() * _loc10_);
                                                                           if(_loc21_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc12_:* = §§pop();
                                                                        var _loc13_:Number = Math.max(0,param1.§%!R§);
                                                                        var _loc14_:Number = Math.max(0,param2.§%!R§);
                                                                        §§push(param1.applyDamage(_loc12_,true,param2.§ !"§(),_loc14_ == param2.§-!!§));
                                                                        if(_loc21_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc15_:* = §§pop();
                                                                        §§push(param2.applyDamage(_loc11_,true,param1.§ !"§(),_loc13_ == param1.§-!!§));
                                                                        if(!(_loc20_ && this))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc16_:* = §§pop();
                                                                        var _loc17_:Boolean;
                                                                        §§push(_loc17_ = false);
                                                                        if(!_loc20_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc21_ || param1)
                                                                              {
                                                                                 §!>§.log("--- NEW COLLISION ---");
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§push(§!>§);
                                                                                    §§push("Mat Dam Factor1 = ");
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(" Mat Dam Factor2 = ");
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   §§push(_loc6_);
                                                                                                   if(_loc21_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         addr1250:
                                                                                                         §§push(" Mat Vel Factor1 = ");
                                                                                                         if(!(_loc20_ && param1))
                                                                                                         {
                                                                                                            addr1268:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               addr1271:
                                                                                                               §§push(_loc5_);
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  addr1274:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     addr1278:
                                                                                                                     addr1277:
                                                                                                                     §§push(§§pop() + " Mat Vel Factor2 = ");
                                                                                                                     if(_loc20_ && param1)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr1288:
                                                                                                                     §§pop().log(§§pop());
                                                                                                                     addr1289:
                                                                                                                     §§push(§!>§);
                                                                                                                     §§push("Object1: ");
                                                                                                                     if(!(_loc20_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + param1.§<!]§);
                                                                                                                        if(_loc21_ || this)
                                                                                                                        {
                                                                                                                           §§push(" force1 = ");
                                                                                                                           if(_loc21_ || param2)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 addr1177:
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 if(!(_loc20_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(" obj health1 = ");
                                                                                                                                       if(!(_loc20_ && param2))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             addr1199:
                                                                                                                                             §§push(_loc13_);
                                                                                                                                             if(!(_loc20_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   addr1211:
                                                                                                                                                   §§push(§§pop() + " new health1 = ");
                                                                                                                                                   if(_loc21_ || param2)
                                                                                                                                                   {
                                                                                                                                                      addr1220:
                                                                                                                                                      §§push(§§pop() + _loc15_);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§pop().log(§§pop());
                                                                                                                                                addr1222:
                                                                                                                                                §§push(§!>§);
                                                                                                                                                §§push("Object2: ");
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + param2.§<!]§);
                                                                                                                                                   if(!(_loc20_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(" force2 = ");
                                                                                                                                                      if(_loc21_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                            if(_loc21_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!(_loc20_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr1111:
                                                                                                                                                                  §§push(" obj health2 = ");
                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc21_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr1122:
                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(_loc21_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr1134:
                                                                                                                                                                              §§push(§§pop() + " new health2 = ");
                                                                                                                                                                              if(_loc21_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1143:
                                                                                                                                                                                 §§push(§§pop() + _loc16_);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1143);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1134);
                                                                                                                                                               }
                                                                                                                                                               §§pop().log(§§pop());
                                                                                                                                                               addr1066:
                                                                                                                                                               addr1145:
                                                                                                                                                               §§push(_loc15_ <= 0);
                                                                                                                                                               if(_loc15_ <= 0)
                                                                                                                                                               {
                                                                                                                                                                  addr1067:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr1024:
                                                                                                                                                                  addr1068:
                                                                                                                                                                  §§push(_loc12_ != 0);
                                                                                                                                                                  if(!(_loc20_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr1033:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr1035:
                                                                                                                                                                        addr1049:
                                                                                                                                                                        addr1036:
                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                        if(!(_loc20_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           addr1046:
                                                                                                                                                                           §§push(Number((§§pop() - §§pop()) / _loc12_));
                                                                                                                                                                           §§push(Number((§§pop() - §§pop()) / _loc12_));
                                                                                                                                                                        }
                                                                                                                                                                        _loc18_ = §§pop();
                                                                                                                                                                        addr1052:
                                                                                                                                                                        addr1053:
                                                                                                                                                                        addr1055:
                                                                                                                                                                        addr1051:
                                                                                                                                                                        addr1054:
                                                                                                                                                                        addr1050:
                                                                                                                                                                        addr1056:
                                                                                                                                                                        if((_loc18_ = Number(§§pop() * _loc7_)) > 1)
                                                                                                                                                                        {
                                                                                                                                                                           addr1059:
                                                                                                                                                                           _loc18_ = Number(1);
                                                                                                                                                                           addr1058:
                                                                                                                                                                           addr1057:
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           addr989:
                                                                                                                                                                           if(!(_loc20_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§!>§);
                                                                                                                                                                              §§push(param1.§<!]§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + param2.§<!]§);
                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + " is ");
                                                                                                                                                                                    if(!(_loc20_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1017:
                                                                                                                                                                                       §§push(§§pop() + _loc18_);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().log(§§pop());
                                                                                                                                                                                 addr1020:
                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                 §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                 §§push(param2.§5b§().GetLinearVelocity().x);
                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr971:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       §§push(param2.§5b§().GetLinearVelocity().y);
                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * _loc18_);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().§"q§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                    addr981:
                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr936:
                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr940:
                                                                                                                                                                                             §§push(§§pop() <= 0);
                                                                                                                                                                                             if(!(_loc20_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr948:
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr949:
                                                                                                                                                                                                   if(_loc21_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      addr957:
                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc20_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr781:
                                                                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                                                                     if(_loc21_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr789:
                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                        if(!(_loc20_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr796:
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr798:
                                                                                                                                                                                                                              if(_loc21_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc11_);
                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                                                                    if(!(_loc20_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr817:
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                       if(!(_loc20_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                                                                if(_loc21_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                   if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc20_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            if(_loc21_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                        if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc19_ = §§pop();
                                                                                                                                                                                                                                                                              addr883:
                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr886:
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr890:
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc21_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                             addr904:
                                                                                                                                                                                                                                                                                             if(§§pop() > 1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                                                                                                                            if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr932:
                                                                                                                                                                                                                                                                                                               _loc19_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                               addr716:
                                                                                                                                                                                                                                                                                                               addr933:
                                                                                                                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                                                                                                                               if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr724:
                                                                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr730:
                                                                                                                                                                                                                                                                                                                              §§push(§!>§);
                                                                                                                                                                                                                                                                                                                              §§push(param2.§<!]§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + param1.§<!]§);
                                                                                                                                                                                                                                                                                                                                 if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr751:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + _loc19_);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§pop().log(§§pop());
                                                                                                                                                                                                                                                                                                                                 addr754:
                                                                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr678:
                                                                                                                                                                                                                                                                                                                                    §§push(param1);
                                                                                                                                                                                                                                                                                                                                    §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                                                                                                    §§push(param1.§5b§().GetLinearVelocity().x);
                                                                                                                                                                                                                                                                                                                                    if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                       if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr701:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                          §§push(param1.§5b§().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr707:
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * _loc19_);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§pop().§"q§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                                                                          addr711:
                                                                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr602:
                                                                                                                                                                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr629:
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() <= 0);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr654:
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr663:
                                                                                                                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr629);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr596);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr654);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1024);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr904);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr629);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1052);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1053);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1055);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr602);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr989);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr724);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr754);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr711);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr949);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr716);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        addr596:
                                                                                                                                                                                                                                                                                                                                                                        return §§pop();
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1066);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr948);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr781);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr789);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr817);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr883);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr890);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr904);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr932);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr798);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr707);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr701);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr957);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr751);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1035);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr981);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr933);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr678);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr940);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1058);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1289);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1058);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1020);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr932);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1046);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1049);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1051);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr932);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr890);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1054);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr886);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1036);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1059);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr936);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr890);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1066);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1046);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr890);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr886);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1024);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1046);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1050);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr890);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1068);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr602);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1035);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1024);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1066);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1056);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr940);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr904);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr817);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1066);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr796);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1024);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1046);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1145);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1057);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr971);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1017);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1222);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1020);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr936);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1067);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1033);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1143);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1122);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1134);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1111);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1143);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1220);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1211);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1220);
                                                                                                                              }
                                                                                                                              §§goto(addr1199);
                                                                                                                           }
                                                                                                                           §§goto(addr1211);
                                                                                                                        }
                                                                                                                        §§goto(addr1220);
                                                                                                                     }
                                                                                                                     §§goto(addr1177);
                                                                                                                  }
                                                                                                                  addr1287:
                                                                                                                  §§push(§§pop() + _loc7_);
                                                                                                               }
                                                                                                               §§goto(addr1287);
                                                                                                            }
                                                                                                            §§goto(addr1288);
                                                                                                         }
                                                                                                         §§goto(addr1278);
                                                                                                      }
                                                                                                      §§goto(addr1271);
                                                                                                   }
                                                                                                   §§goto(addr1287);
                                                                                                }
                                                                                                §§goto(addr1277);
                                                                                             }
                                                                                             §§goto(addr1268);
                                                                                          }
                                                                                          §§goto(addr1278);
                                                                                       }
                                                                                       §§goto(addr1274);
                                                                                    }
                                                                                    §§goto(addr1250);
                                                                                 }
                                                                                 §§goto(addr730);
                                                                              }
                                                                           }
                                                                           §§goto(addr1066);
                                                                        }
                                                                        §§goto(addr663);
                                                                     }
                                                                     §§goto(addr477);
                                                                  }
                                                                  §§goto(addr445);
                                                               }
                                                               §§goto(addr432);
                                                            }
                                                            §§goto(addr448);
                                                         }
                                                         §§goto(addr389);
                                                      }
                                                      §§goto(addr397);
                                                   }
                                                   §§goto(addr389);
                                                }
                                             }
                                             §§goto(addr376);
                                          }
                                       }
                                       §§goto(addr138);
                                    }
                                 }
                                 §§goto(addr275);
                              }
                              return §§pop();
                           }
                           §§goto(addr247);
                        }
                        §§goto(addr250);
                     }
                     §§goto(addr222);
                  }
               }
               §§goto(addr304);
            }
         }
         §§goto(addr251);
      }
      
      public function §1W§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§`!<§ = null;
         var _loc1_:* = int(this.§;Y§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;Y§[_loc1_] as §`!<§;
            if(_loc3_ || _loc3_)
            {
               §§push(_loc2_ == null);
               if(_loc3_)
               {
                  §§push(!§§pop());
               }
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr130:
                        while(true)
                        {
                           addr77:
                           while(true)
                           {
                              §§push(_loc2_.§<+§());
                              if(_loc3_ || _loc1_)
                              {
                                 continue loop1;
                              }
                              addr105:
                              if(_loc4_ && this)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           this.§>I§(_loc1_,true,true,true);
                           addr120:
                           while(true)
                           {
                           }
                        }
                        addr114:
                     }
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc1_ = §§pop();
                        if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        §§goto(addr114);
                     }
                     if(_loc3_ || _loc2_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr130);
                  }
                  continue loop0;
               }
            }
            §§goto(addr120);
         }
      }
      
      public function §;!>§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`!<§ = null;
         var _loc1_:* = int(this.§;Y§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;Y§[_loc1_] as §`!<§;
            if(_loc4_)
            {
               §§push(_loc2_ == null);
               if(_loc4_)
               {
                  §§push(!§§pop());
                  if(!(_loc3_ && this))
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§pop();
                           addr131:
                           while(true)
                           {
                              addr76:
                              while(true)
                              {
                                 §§push(_loc2_.§&!&§());
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop6;
                              }
                           }
                        }
                        addr130:
                     }
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§>I§(_loc1_,true,true,true);
                              addr107:
                              while(!(_loc3_ && _loc2_))
                              {
                              }
                              §§goto(addr131);
                           }
                           addr91:
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!(_loc3_ && _loc1_))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc1_ = §§pop();
                           if(_loc4_ || _loc3_)
                           {
                              if(_loc4_ || this)
                              {
                                 if(true)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr107);
                        }
                     }
                     continue;
                  }
               }
               §§goto(addr130);
            }
            §§goto(addr131);
         }
      }
      
      public function §,3§() : int
      {
         return this.§;Y§.length;
      }
      
      public function §'&§(param1:§=+§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§`!<§ = null;
         var _loc5_:§0!D§ = null;
         var _loc6_:§+N§ = null;
         var _loc7_:§-$§ = null;
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc9_ && param1))
            {
               if(§§pop() >= this.§;Y§.length)
               {
                  §§push(Number(0));
                  break;
               }
               §§push((_loc4_ = this.§;Y§[_loc2_]).§8!x§);
               if(!(_loc9_ && param1))
               {
                  if(!§§pop())
                  {
                     if(_loc9_ && this)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr59:
                     if(_loc4_.isGround())
                     {
                        if(_loc9_)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        (_loc5_ = new §0!D§()).angle = _loc4_.§2a§();
                        if(!_loc9_)
                        {
                           _loc5_.id = _loc4_.§<!]§;
                           while(true)
                           {
                              _loc5_.x = _loc4_.§5b§().GetPosition().x;
                              loop2:
                              while(true)
                              {
                                 _loc5_.y = _loc4_.§5b§().GetPosition().y;
                                 addr111:
                                 while(true)
                                 {
                                    addr84:
                                    while(true)
                                    {
                                       _loc5_.uniqueID = _loc4_.uniqueID;
                                       continue loop2;
                                    }
                                 }
                              }
                              if(_loc9_ && _loc3_)
                              {
                                 continue;
                              }
                              param1.addObject(_loc5_);
                              if(_loc8_)
                              {
                                 if(!_loc9_)
                                 {
                                    while(false)
                                    {
                                       §§goto(addr84);
                                    }
                                    addr135:
                                    §§push(_loc2_);
                                    if(_loc8_ || _loc3_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc8_ || _loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    _loc2_ = §§pop();
                                    continue loop0;
                                    addr82:
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr89);
                           }
                        }
                        §§goto(addr82);
                     }
                  }
                  §§goto(addr135);
               }
               §§goto(addr59);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(!_loc9_)
         {
            while(_loc3_ < this.§4a§.length)
            {
               _loc7_ = this.§4a§[_loc3_];
               _loc6_ = new §+N§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§%!d§,_loc7_.§,!X§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§7!H§,_loc7_.motorSpeed,_loc7_.§9!J§,_loc7_.maxTorque);
               if(!(_loc9_ && this))
               {
                  param1.§"!K§(_loc6_);
                  if(!(_loc8_ || param1))
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(!_loc9_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc9_ && param1))
                  {
                     addr246:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr246);
            }
         }
      }
      
      public function §&!T§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§;Y§.length <= _loc1_)
            {
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  addr72:
                  _loc1_++;
               }
               else
               {
                  addr61:
                  if(_loc2_)
                  {
                     continue;
                  }
               }
               continue;
               addr73:
            }
            else if(this.§;Y§[_loc1_].isGround())
            {
               §§goto(addr72);
            }
            else
            {
               this.§!!D§(this.§;Y§[_loc1_]);
               §§goto(addr61);
            }
            §§goto(addr72);
         }
      }
      
      public function §!Z§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop() >= this.§;Y§.length)
                  {
                     if(!_loc5_)
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
                  else if(this.§;Y§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     if(_loc6_ || this)
                     {
                        _loc3_.push(this.§;Y§[_loc4_]);
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
                  if(!(_loc5_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§>!I§ = param1;
            if(_loc3_ || _loc3_)
            {
               this.§ !]§(param1);
            }
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(_loc3_ || this)
               {
                  if(!_loc4_)
                  {
                     if(§§pop() >= this.§;Y§.length)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           break;
                        }
                        while(true)
                        {
                           if(_loc3_)
                           {
                              addr94:
                              if(_loc3_ || _loc3_)
                              {
                                 break;
                              }
                              addr110:
                              while(true)
                              {
                                 this.§;Y§[_loc2_].sprite.visible = !this.§>!I§;
                                 §§goto(addr94);
                              }
                           }
                           while(true)
                           {
                           }
                        }
                        continue;
                        addr92:
                     }
                     else if(this.§;Y§[_loc2_].isTexture())
                     {
                        §§goto(addr110);
                     }
                     while(true)
                     {
                        §§push(_loc2_);
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
               _loc2_ = §§pop();
               §§goto(addr92);
            }
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§^Y§ = param1;
         }
      }
      
      public function §3m§() : Boolean
      {
         return this.§^Y§;
      }
      
      public function §9a§() : int
      {
         return this.§ m§;
      }
      
      public function §]N§() : int
      {
         return this.§5!h§;
      }
      
      public function §#-§(param1:String) : §`!<§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§`!<§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;Y§.length)
         {
            _loc3_ = this.§;Y§[_loc2_] as §`!<§;
            if(_loc4_)
            {
               if(_loc3_.uniqueID == param1)
               {
                  if(_loc4_ || _loc3_)
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
