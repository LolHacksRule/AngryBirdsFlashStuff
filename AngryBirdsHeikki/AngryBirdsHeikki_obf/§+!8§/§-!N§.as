package §+!8§
{
   import § "§.§'9§;
   import § "§.§'s§;
   import § "§.§5!N§;
   import § "§.§>!e§;
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"!I§.§ !;§;
   import §"!I§.§<!$§;
   import §"!I§.§^!2§;
   import §"!I§.§`@§;
   import §"d§.b2PrismaticJoint;
   import §"d§.b2WeldJoint;
   import §+"§.§'! §;
   import §2Y§.§7!f§;
   import §2Y§.Sprite;
   import §6A§.b2Vec2;
   import §=!<§.§8!!§;
   import §@0§.§ $§;
   import §@0§.§!k§;
   import §@0§.§3U§;
   import §@0§.§56§;
   import §@0§.§`>§;
   import §@R§.§4,§;
   import §^!0§.§&M§;
   import §^!5§.§&!E§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-!N§
   {
       
      
      protected var §7@§:Vector.<§,_§>;
      
      protected var §9=§:int;
      
      public var §=!V§:§^!2§;
      
      public var §`!N§:Vector.<§2!5§>;
      
      protected var §@!G§:Sprite;
      
      protected var §+!Z§:Sprite;
      
      private var §=U§:Sprite;
      
      private var §4@§:Sprite;
      
      private var §5!X§:Sprite;
      
      protected var §8!B§:Vector.<Texture>;
      
      protected var §5f§:Vector.<§'9§>;
      
      protected var §34§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §`n§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §9!3§:Boolean = false;
      
      protected var §4n§:Number;
      
      protected var §0!^§:int;
      
      protected var §#§:Vector.<§>!e§>;
      
      protected var §`t§:int = 0;
      
      private var §+!S§:int = 0;
      
      private var § !<§:int = 0;
      
      private var §1=§:int;
      
      private var § !3§:Boolean = true;
      
      private var §7S§:Boolean = true;
      
      public function §-!N§(param1:§^!2§, param2:§&!E§, param3:Sprite)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§'9§ = null;
         var _loc6_:§5!N§ = null;
         var _loc7_:§,_§ = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§,_§ = null;
         var _loc11_:§,_§ = null;
         if(_loc15_)
         {
            this.§7@§ = new Vector.<§,_§>();
            while(true)
            {
               this.§`!N§ = new Vector.<§2!5§>();
               loop1:
               while(true)
               {
                  this.§8!B§ = new Vector.<Texture>();
                  loop2:
                  while(true)
                  {
                     this.§4n§ = this.§<!$§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
                     while(true)
                     {
                        this.§#§ = new Vector.<§>!e§>();
                        loop8:
                        for(; !(_loc14_ && param2); while(_loc15_ || param1)
                        {
                           this.§4@§ = new Sprite();
                           §§goto(addr232);
                        })
                        {
                           §§push(this.§+!Z§);
                           loop9:
                           while(true)
                           {
                              §§pop().§0!3§ = false;
                              loop10:
                              while(true)
                              {
                                 this.§7S§ = true;
                                 while(true)
                                 {
                                    this.§ !3§ = true;
                                    loop12:
                                    while(true)
                                    {
                                       this.§@!G§ = new Sprite();
                                       addr260:
                                       while(true)
                                       {
                                          if(!_loc15_)
                                          {
                                             continue loop12;
                                          }
                                          addr262:
                                          if(_loc15_ || this)
                                          {
                                             continue loop2;
                                          }
                                          addr335:
                                          while(true)
                                          {
                                             super();
                                             continue loop1;
                                             §§goto(addr262);
                                          }
                                       }
                                       continue loop2;
                                    }
                                    addr232:
                                    while(!(_loc14_ && param2))
                                    {
                                       if(!_loc15_)
                                       {
                                          continue loop10;
                                       }
                                       this.§5!X§ = new Sprite();
                                       while(_loc15_ || this)
                                       {
                                          §§push(this.§+!Z§);
                                          continue loop9;
                                       }
                                       while(true)
                                       {
                                          this.§+!Z§ = param3;
                                          continue loop8;
                                          §§goto(addr219);
                                       }
                                       addr219:
                                       loop20:
                                       while(!(_loc14_ && param3))
                                       {
                                          §§push(this.§+!Z§);
                                          loop21:
                                          while(_loc15_ || this)
                                          {
                                             §§pop().addChild(this.§4@§);
                                             while(true)
                                             {
                                                if(_loc14_)
                                                {
                                                   continue loop20;
                                                }
                                                if(_loc15_)
                                                {
                                                   if(_loc14_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(this.§+!Z§);
                                                   if(_loc14_ && this)
                                                   {
                                                      continue loop21;
                                                   }
                                                   addr146:
                                                   if(!(_loc14_ && param3))
                                                   {
                                                      §§pop().addChild(this.§5!X§);
                                                      loop23:
                                                      while(true)
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            addr158:
                                                            if(_loc14_ && param2)
                                                            {
                                                               break;
                                                            }
                                                            do
                                                            {
                                                               §§push(this);
                                                               §§push(§'! §.§#n§(param2.theme).§@!W§);
                                                               §§push(this.§=!V§.§8z§.§88§);
                                                               if(!(_loc14_ && param1))
                                                               {
                                                                  §§push(this.§=!V§);
                                                                  if(!(_loc14_ && param1))
                                                                  {
                                                                     §§push(§§pop().§8z§);
                                                                     if(!(_loc14_ && param3))
                                                                     {
                                                                        §§push(§§pop().§>9§);
                                                                        if(!(_loc14_ && this))
                                                                        {
                                                                           addr110:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc15_ || param3)
                                                                           {
                                                                              addr105:
                                                                              §§push(§§pop() / 2);
                                                                           }
                                                                           §§push(this.§=!V§.§8z§.§"N§);
                                                                           if(!(_loc14_ && param2))
                                                                           {
                                                                              addr118:
                                                                              §§push(§§pop() + §`@§.§>!`§);
                                                                           }
                                                                           §§pop().§@!,§(§§pop(),§§pop(),§§pop());
                                                                           while(true)
                                                                           {
                                                                              if(_loc14_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              addr124:
                                                                              if(!(_loc14_ && param1))
                                                                              {
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr260);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§+!Z§);
                                                                                    addr189:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().addChild(this.§=U§);
                                                                                       continue loop20;
                                                                                       §§goto(addr146);
                                                                                    }
                                                                                    §§goto(addr124);
                                                                                 }
                                                                                 addr213:
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§9=§ = 0;
                                                                              §§goto(addr311);
                                                                           }
                                                                           addr316:
                                                                        }
                                                                        §§goto(addr118);
                                                                     }
                                                                  }
                                                                  §§goto(addr110);
                                                               }
                                                               §§goto(addr105);
                                                            }
                                                            while(false);
                                                            
                                                            var _loc4_:* = 0;
                                                            if(_loc15_)
                                                            {
                                                               _loc4_ = 0;
                                                            }
                                                            addr418:
                                                            §§push(_loc4_);
                                                            if(!(_loc14_ && param2))
                                                            {
                                                               §§push(param2.§8!3§);
                                                               if(!(_loc14_ && param1))
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     _loc6_ = param2.§@r§(_loc4_);
                                                                     if(_loc7_ = this.§@!,§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
                                                                     {
                                                                        if(_loc15_)
                                                                        {
                                                                           _loc7_.uniqueID = _loc6_.uniqueID;
                                                                           if(_loc15_)
                                                                           {
                                                                              addr417:
                                                                              _loc4_++;
                                                                           }
                                                                           §§goto(addr418);
                                                                        }
                                                                     }
                                                                     §§goto(addr417);
                                                                  }
                                                                  if(_loc15_ || param1)
                                                                  {
                                                                     this.§<!V§();
                                                                     if(!_loc14_)
                                                                     {
                                                                        this.§!&§(true);
                                                                     }
                                                                     this.§5f§ = new Vector.<§'9§>();
                                                                     addr511:
                                                                     addr507:
                                                                     §§push(0);
                                                                     if(_loc15_ || param1)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        addr492:
                                                                        if(_loc15_ || param2)
                                                                        {
                                                                           addr470:
                                                                           §§push(_loc4_);
                                                                           if(_loc15_ || this)
                                                                           {
                                                                              §§goto(addr522);
                                                                           }
                                                                           §§goto(addr531);
                                                                           addr499:
                                                                        }
                                                                        §§goto(addr507);
                                                                     }
                                                                     §§goto(addr531);
                                                                  }
                                                                  §§goto(addr499);
                                                               }
                                                               addr522:
                                                               §§goto(addr520);
                                                            }
                                                            addr520:
                                                            if(§§pop() < param2.§`,§)
                                                            {
                                                               this.§5f§.push(§'9§.§]%§(param2.§0!e§(_loc4_)));
                                                               _loc4_++;
                                                               addr481:
                                                               if(!(_loc14_ && param3))
                                                               {
                                                                  if(_loc15_)
                                                                  {
                                                                     if(!(_loc14_ && param3))
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                           }
                                                                           §§goto(addr470);
                                                                        }
                                                                        §§goto(addr511);
                                                                     }
                                                                     §§goto(addr492);
                                                                  }
                                                                  §§goto(addr481);
                                                               }
                                                               §§goto(addr730);
                                                            }
                                                            if(_loc15_ || param1)
                                                            {
                                                               addr531:
                                                               var _loc12_:int = 0;
                                                               if(!_loc14_)
                                                               {
                                                                  var _loc13_:* = this.§5f§;
                                                                  addr726:
                                                                  for each(_loc5_ in _loc13_)
                                                                  {
                                                                     §§push(int(_loc5_.index1 + this.§1=§));
                                                                     if(_loc15_ || param2)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        if(!(_loc14_ && param3))
                                                                        {
                                                                           §§push(int(_loc5_.index2 + this.§1=§));
                                                                           if(!_loc14_)
                                                                           {
                                                                              addr574:
                                                                              _loc9_ = §§pop();
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 addr582:
                                                                                 §§push(_loc8_);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    §§push(§§pop() < this.§7@§.length);
                                                                                    if(_loc15_ || param3)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             addr600:
                                                                                             §§pop();
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                addr608:
                                                                                                if(_loc9_ < this.§7@§.length)
                                                                                                {
                                                                                                   addr609:
                                                                                                   _loc10_ = this.§7@§[_loc8_];
                                                                                                   _loc11_ = this.§7@§[_loc9_];
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      §§push(Boolean(_loc10_));
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr724:
                                                                                                            §§pop();
                                                                                                            §§push(Boolean(_loc11_));
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr724);
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr684:
                                                                                                            if(_loc5_.type != §'s§.§>t§)
                                                                                                            {
                                                                                                               if(_loc15_ || param3)
                                                                                                               {
                                                                                                                  _loc5_.§5!O§ = this.§=!V§.mLevelEngine.mWorld.§^8§(_loc5_.§7z§(_loc10_,_loc11_));
                                                                                                               }
                                                                                                               addr624:
                                                                                                               §§goto(addr726);
                                                                                                               addr707:
                                                                                                            }
                                                                                                            this.§#§.push(new §>!e§(_loc8_,_loc9_,_loc5_.§07§));
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               if(!(_loc14_ && param2))
                                                                                                               {
                                                                                                                  §§goto(addr624);
                                                                                                               }
                                                                                                               §§goto(addr684);
                                                                                                            }
                                                                                                            §§goto(addr707);
                                                                                                         }
                                                                                                         throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
                                                                                                      }
                                                                                                      §§goto(addr724);
                                                                                                   }
                                                                                                   §§goto(addr684);
                                                                                                }
                                                                                                §§goto(addr726);
                                                                                             }
                                                                                             §§goto(addr609);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr608);
                                                                                    }
                                                                                    §§goto(addr600);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr608);
                                                                        }
                                                                        §§goto(addr582);
                                                                     }
                                                                     §§goto(addr574);
                                                                  }
                                                               }
                                                            }
                                                            addr730:
                                                            return;
                                                         }
                                                         §§goto(addr179);
                                                         §§goto(addr219);
                                                      }
                                                      continue loop1;
                                                   }
                                                   §§goto(addr189);
                                                   continue loop21;
                                                }
                                                §§goto(addr219);
                                             }
                                             continue loop8;
                                          }
                                          continue loop9;
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
         §§goto(addr335);
      }
      
      protected function get §<!$§() : Class
      {
         return §<!$§;
      }
      
      public function get §?s§() : Sprite
      {
         return this.§5!X§;
      }
      
      public function get §'<§() : Sprite
      {
         return this.§+!Z§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         loop0:
         while(true)
         {
            if(this.§7@§.length <= 0)
            {
               loop1:
               while(true)
               {
                  if(!_loc3_)
                  {
                     this.§7@§ = null;
                     if(!(_loc3_ && _loc2_))
                     {
                        this.§#§ = null;
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              §§push(this.§+!Z§);
                              if(_loc2_ || _loc1_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       break loop1;
                                    }
                                    if(_loc2_)
                                    {
                                       §§push(this.§+!Z§);
                                       break;
                                    }
                                    continue;
                                 }
                                 addr119:
                                 while(true)
                                 {
                                    if(this.§8!B§.length <= 0)
                                    {
                                       break loop1;
                                    }
                                    _loc1_ = this.§8!B§.pop();
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       this.§=!V§.textureManager.§=@§(_loc1_);
                                    }
                                 }
                              }
                              break;
                           }
                           continue loop1;
                        }
                        §§pop().dispose();
                        loop4:
                        while(true)
                        {
                           this.§+!Z§ = null;
                           loop5:
                           while(true)
                           {
                              this.§@!G§ = null;
                              while(_loc2_)
                              {
                                 this.§5!X§ = null;
                                 loop7:
                                 while(!_loc3_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       this.§=U§ = null;
                                       while(true)
                                       {
                                          this.§4@§ = null;
                                          if(!_loc2_)
                                          {
                                             break loop1;
                                          }
                                          if(!_loc3_)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop8;
                                             }
                                             continue loop7;
                                          }
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
            this.removeObjectWithIndex(0);
         }
      }
      
      private function §!&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§@!G§.visible = param1;
         }
      }
      
      private function §<!V§() : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc3_:§,_§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§7!f§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§,_§> = new Vector.<§,_§>();
         for each(_loc3_ in this.§7@§)
         {
            if(_loc16_ || _loc1_)
            {
               if(_loc3_.isTexture())
               {
                  if(!_loc17_)
                  {
                     addr78:
                     _loc2_.push(_loc3_);
                  }
                  _loc4_ = _loc3_.sprite.getBounds(this.§+!Z§);
                  if(_loc16_ || _loc1_)
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
         if(!(_loc17_ && _loc3_))
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
                                       loop8:
                                       while(true)
                                       {
                                          if(!(_loc17_ && _loc1_))
                                          {
                                             §§push(_loc1_.height > 2048);
                                             if(_loc17_ && _loc2_)
                                             {
                                                continue loop7;
                                             }
                                             if(_loc17_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(int(_loc1_.width));
                                                      loop11:
                                                      while(_loc16_ || _loc1_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(!_loc16_)
                                                            {
                                                               _loc1_.right /= 2;
                                                               _loc1_.bottom /= 2;
                                                               §§push(_loc5_);
                                                               if(_loc16_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() / 2);
                                                                  if(!_loc17_)
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               _loc5_ = §§pop();
                                                               addr302:
                                                               continue loop1;
                                                               addr302:
                                                               addr310:
                                                               addr294:
                                                            }
                                                            if(!(_loc16_ || this))
                                                            {
                                                               break;
                                                            }
                                                            §§push(int(_loc1_.height));
                                                            while(true)
                                                            {
                                                               _loc7_ = §§pop();
                                                               continue loop10;
                                                               addr134:
                                                               if(!(_loc16_ || _loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               addr141:
                                                               _loc9_ = §§pop();
                                                               if(_loc16_ || _loc3_)
                                                               {
                                                                  addr149:
                                                                  if(false)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(int(_loc1_.left));
                                                                        addr155:
                                                                        while(_loc16_ || _loc2_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc17_ && this))
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop10;
                                                                              §§goto(addr141);
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        continue loop11;
                                                                        §§goto(addr149);
                                                                     }
                                                                     addr327:
                                                                     _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                                                     §§push(_loc16_ || this);
                                                                     addr151:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr327);
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     this.§"t§(_loc10_.rect,_loc10_,_loc5_);
                                                                  }
                                                                  _loc11_ = this.§6! §(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                                                  if(_loc16_ || _loc1_)
                                                                  {
                                                                     _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                                                  }
                                                                  _loc12_ = this.§=!V§.textureManager.§=!Z§(_loc10_);
                                                                  if(_loc16_)
                                                                  {
                                                                     this.§8!B§.push(_loc12_);
                                                                  }
                                                                  (_loc13_ = new §7!f§(_loc12_)).x = _loc8_ / _loc5_;
                                                                  if(_loc16_ || this)
                                                                  {
                                                                     _loc13_.y = _loc9_ / _loc5_;
                                                                     _loc13_.scaleX = 1 / _loc5_;
                                                                     _loc13_.scaleY = 1 / _loc5_;
                                                                     addr423:
                                                                     this.§@!G§.addChild(_loc13_);
                                                                     addr444:
                                                                     addr467:
                                                                     if(!_loc17_)
                                                                     {
                                                                        if(_loc16_ || _loc2_)
                                                                        {
                                                                           _loc11_.dispose();
                                                                           if(!_loc17_)
                                                                           {
                                                                              if(_loc16_ || _loc3_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr423);
                                                                                 }
                                                                                 §§goto(addr468);
                                                                              }
                                                                              §§goto(addr444);
                                                                           }
                                                                           §§goto(addr423);
                                                                           addr437:
                                                                        }
                                                                        §§goto(addr467);
                                                                     }
                                                                     addr461:
                                                                     §§goto(addr461);
                                                                  }
                                                                  §§goto(addr437);
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                else
                                                {
                                                   _loc1_.left /= 2;
                                                }
                                                §§goto(addr320);
                                             }
                                          }
                                          §§goto(addr294);
                                       }
                                       continue loop6;
                                    }
                                 }
                                 §§goto(addr211);
                              }
                              addr286:
                           }
                        }
                     }
                  }
               }
               addr323:
            }
            addr468:
            return;
         }
         §§goto(addr323);
      }
      
      private function §6! §(param1:Vector.<§,_§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:§,_§ = null;
         var _loc11_:§3U§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§-h§.shape).§6p§();
            _loc13_ = new Rectangle(_loc12_[0].x / §^!2§.§3!S§ * param6,_loc12_[0].y / §^!2§.§3!S§ * param6,(_loc12_[1].x - _loc12_[0].x) / §^!2§.§3!S§ * param6,(_loc12_[1].y - _loc12_[0].y) / §^!2§.§3!S§ * param6);
            if(!(_loc17_ && param1))
            {
               _loc10_.identity();
               while(true)
               {
                  _loc10_.scale(_loc13_.width,_loc13_.height);
                  while(!(_loc17_ && this))
                  {
                     _loc10_.rotate((360 - _loc7_.§4!W§()) / 180 * Math.PI);
                     loop4:
                     while(_loc16_ || this)
                     {
                        do
                        {
                           _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                           do
                           {
                              _loc8_.draw(_loc9_,_loc10_);
                           }
                           while(!(_loc16_ || param2));
                           
                           if(_loc17_ && this)
                           {
                              continue loop4;
                           }
                           if(_loc16_)
                           {
                              continue;
                           }
                           addr226:
                           while(true)
                           {
                              _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                              break loop4;
                           }
                        }
                        while(false);
                        
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr226);
         }
         if(!_loc17_)
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §"t§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         §§push(this.§=!V§.background.§-!+§());
         if(_loc16_ || this)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§8!!§;
         if(_loc5_ = this.§=!V§.backgroundTextureManager.§8t§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(!_loc17_)
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_);
               loop0:
               while(true)
               {
                  §§push(_loc6_.width - 2);
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr398:
                     addr254:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        continue loop0;
                     }
                     if(!(_loc16_ || param1))
                     {
                        continue;
                     }
                     §§push(int(§§pop()));
                     loop30:
                     while(true)
                     {
                        if(!_loc17_)
                        {
                           §§push(§§pop());
                           if(_loc16_)
                           {
                              _loc13_ = §§pop();
                              loop31:
                              while(_loc16_)
                              {
                                 if(_loc16_)
                                 {
                                    §§push(§§pop() + 1);
                                    loop32:
                                    while(true)
                                    {
                                       _loc13_ = §§pop();
                                       while(true)
                                       {
                                          if(_loc16_ || param3)
                                          {
                                             §§push(_loc12_);
                                             if(_loc16_ || param2)
                                             {
                                                if(!_loc17_)
                                                {
                                                   continue loop30;
                                                }
                                                continue loop31;
                                             }
                                             addr199:
                                             if(_loc16_)
                                             {
                                                _loc14_ = §§pop();
                                                if(!(_loc17_ && param3))
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop32;
                                          }
                                          loop24:
                                          while(true)
                                          {
                                             if(param1.left < 0)
                                             {
                                                loop25:
                                                while(!(_loc17_ && param1))
                                                {
                                                   §§push(_loc12_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      break loop31;
                                                      addr184:
                                                      if(!(_loc16_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc16_ || this)
                                                      {
                                                         §§goto(addr199);
                                                         §§push(int(§§pop()));
                                                      }
                                                      while(!_loc17_)
                                                      {
                                                         if(!(_loc17_ && param1))
                                                         {
                                                            §§push(§§pop());
                                                            break loop30;
                                                         }
                                                         §§goto(addr398);
                                                      }
                                                      while(true)
                                                      {
                                                         _loc10_ = §§pop();
                                                         addr375:
                                                         loop14:
                                                         while(true)
                                                         {
                                                            addr326:
                                                            while(true)
                                                            {
                                                               §§push(param1.bottom / _loc9_);
                                                               while(true)
                                                               {
                                                                  §§goto(addr332);
                                                                  §§push(int(§§pop()));
                                                                  addr316:
                                                                  loop22:
                                                                  while(!(_loc17_ && param2))
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        _loc12_ = §§pop();
                                                                        continue loop24;
                                                                     }
                                                                     loop29:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.right / _loc8_);
                                                                        if(!(_loc17_ && param1))
                                                                        {
                                                                           addr245:
                                                                           if(!(_loc17_ && param3))
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§goto(addr254);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    addr390:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc9_ = §§pop();
                                                                                       addr391:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1.top / _loc9_);
                                                                                          break loop29;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr389:
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop22;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        addr382:
                                                                        while(true)
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           break loop25;
                                                                        }
                                                                        §§goto(addr245);
                                                                     }
                                                                  }
                                                               }
                                                               continue loop14;
                                                            }
                                                         }
                                                      }
                                                      addr332:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(param1.top < 0)
                                                   {
                                                      while(!(_loc17_ && param2))
                                                      {
                                                         §§push(_loc10_);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§goto(addr374);
                                                            §§push(§§pop() - 1);
                                                            addr344:
                                                            while(true)
                                                            {
                                                               if(_loc17_ && param2)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               if(_loc17_ && param2)
                                                               {
                                                                  break;
                                                               }
                                                               _loc11_ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§goto(addr316);
                                                               }
                                                            }
                                                            §§goto(addr382);
                                                         }
                                                      }
                                                      continue loop0;
                                                      addr365:
                                                   }
                                                   §§goto(addr326);
                                                }
                                                addr287:
                                             }
                                             §§goto(addr233);
                                          }
                                       }
                                       addr219:
                                       addr306:
                                       if(!(_loc17_ && param1))
                                       {
                                          if(!_loc17_)
                                          {
                                             if(!_loc17_)
                                             {
                                                if(_loc16_)
                                                {
                                                   addr85:
                                                   §§push(_loc14_);
                                                   if(!_loc17_)
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            §§push(_loc13_);
                                                            if(_loc16_)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(_loc16_)
                                                                  {
                                                                     if(!_loc17_)
                                                                     {
                                                                        if(!(_loc17_ && param2))
                                                                        {
                                                                           _loc6_.dispose();
                                                                           addr110:
                                                                           if(!(_loc17_ && param1))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 addr119:
                                                                                 if(_loc15_ >= _loc11_)
                                                                                 {
                                                                                    if(_loc16_ || this)
                                                                                    {
                                                                                       if(!(_loc17_ && param2))
                                                                                       {
                                                                                          _loc14_++;
                                                                                          addr138:
                                                                                          §§goto(addr85);
                                                                                       }
                                                                                       §§goto(addr119);
                                                                                       addr165:
                                                                                    }
                                                                                    §§goto(addr138);
                                                                                 }
                                                                                 param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                                 _loc15_++;
                                                                                 addr141:
                                                                                 §§goto(addr119);
                                                                                 addr158:
                                                                              }
                                                                              §§goto(addr423);
                                                                           }
                                                                           §§goto(addr138);
                                                                        }
                                                                        §§goto(addr158);
                                                                     }
                                                                     §§goto(addr141);
                                                                  }
                                                                  §§goto(addr110);
                                                               }
                                                               addr164:
                                                               _loc15_ = _loc10_;
                                                               addr163:
                                                               §§goto(addr165);
                                                            }
                                                            §§goto(addr119);
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      §§goto(addr164);
                                                   }
                                                   §§goto(addr119);
                                                }
                                                else
                                                {
                                                   §§goto(addr391);
                                                }
                                             }
                                             §§goto(addr375);
                                          }
                                          §§goto(addr287);
                                       }
                                       while(true)
                                       {
                                          if(!_loc17_)
                                          {
                                             if(!_loc17_)
                                             {
                                                §§goto(addr233);
                                             }
                                             §§goto(addr365);
                                          }
                                          break;
                                          §§goto(addr219);
                                       }
                                       §§goto(addr359);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr344);
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc17_)
                                 {
                                    if(!(_loc17_ && param1))
                                    {
                                       _loc12_ = §§pop();
                                       §§goto(addr306);
                                    }
                                    break;
                                 }
                                 §§goto(addr344);
                              }
                              §§goto(addr390);
                           }
                           break;
                        }
                        §§goto(addr324);
                     }
                     while(true)
                     {
                        _loc11_ = §§pop();
                        §§goto(addr343);
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr389);
            }
         }
         addr423:
      }
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §,_§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:§,_§ = null;
         var _loc11_:* = param2;
         if(_loc13_ || param1)
         {
            if("BIRD_BLACK" === _loc11_)
            {
               if(_loc13_ || param1)
               {
                  §§push(0);
                  if(!(_loc13_ || param1))
                  {
                     addr332:
                  }
               }
               else
               {
                  addr265:
                  §§push(2);
                  if(_loc12_)
                  {
                     addr282:
                  }
               }
            }
            else if("BIRD_BLUE" === _loc11_)
            {
               if(_loc13_ || param2)
               {
                  §§push(1);
                  if(_loc12_ && param1)
                  {
                     §§goto(addr282);
                  }
               }
               else
               {
                  addr307:
                  §§push(5);
                  if(_loc12_)
                  {
                     §§goto(addr332);
                  }
                  else
                  {
                     addr310:
                  }
               }
            }
            else if("BIRD_GREEN" === _loc11_)
            {
               if(_loc13_ || param3)
               {
                  §§goto(addr265);
               }
               else
               {
                  §§goto(addr307);
               }
            }
            else if("BIRD_WHITE" === _loc11_)
            {
               if(!(_loc12_ && param3))
               {
                  §§push(3);
                  if(_loc13_)
                  {
                     §§goto(addr282);
                  }
                  else
                  {
                     §§goto(addr310);
                  }
               }
               else
               {
                  addr293:
                  §§push(4);
                  if(_loc12_ && param1)
                  {
                     §§goto(addr332);
                  }
               }
            }
            else
            {
               if("BIRD_YELLOW" === _loc11_)
               {
                  if(_loc13_ || this)
                  {
                     §§goto(addr293);
                  }
               }
               else if("BIRD_RED" === _loc11_)
               {
                  if(_loc13_)
                  {
                     §§goto(addr307);
                  }
               }
               else if("BIRD_REDBIG" !== _loc11_)
               {
                  addr337:
                  switch(§§pop())
                  {
                     case 0:
                        _loc10_ = new §7Y§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
                        break;
                     case 1:
                        _loc10_ = new §!!J§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
                        break;
                     case 2:
                        _loc10_ = new §6D§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
                        break;
                     case 3:
                        _loc10_ = new §-!O§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
                        break;
                     case 4:
                        _loc10_ = new §,!K§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
                        break;
                     case 5:
                        _loc10_ = new §'!;§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
                        break;
                     case 6:
                        _loc10_ = new §8d§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
                        break;
                     default:
                        _loc10_ = new §`!O§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
                  }
                  return _loc10_;
                  §§push(7);
               }
               §§goto(addr337);
               if(_loc13_ || param2)
               {
                  §§goto(addr332);
               }
            }
            §§goto(addr337);
         }
         §§goto(addr265);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§`t§ > 0;
      }
      
      public function §@!,§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §,_§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(_loc14_)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§,_§;
         §§push((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture());
         if(_loc14_ || this)
         {
            if(§§pop())
            {
               if(!(_loc15_ && param2))
               {
                  §§push(_loc10_);
                  §§push(this.§ !3§);
                  if(!(_loc15_ && this))
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
                  if(!_loc15_)
                  {
                     this.§7@§[this.§7@§.length] = _loc11_;
                     loop0:
                     while(true)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(_loc11_ is §`!O§);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc14_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc14_ || param1)
                                    {
                                       §§pop();
                                       if(_loc14_ || param3)
                                       {
                                          if(_loc15_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(_loc11_.§,h§());
                                          if(!_loc15_)
                                          {
                                             §§push(!§§pop());
                                             if(!_loc15_)
                                             {
                                                if(!(_loc14_ || param2))
                                                {
                                                   continue;
                                                }
                                                addr88:
                                                if(§§pop())
                                                {
                                                   if(!(_loc15_ && param3))
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         this.§=U§.addChild(_loc10_);
                                                         if(_loc14_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(true)
                                                               {
                                                                  var _loc12_:*;
                                                                  §§push((_loc12_ = this).§`t§);
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                  }
                                                                  var _loc13_:* = §§pop();
                                                               }
                                                               continue loop1;
                                                               if(!(_loc15_ && param1))
                                                               {
                                                                  _loc12_.§`t§ = _loc13_;
                                                               }
                                                               if(!(_loc15_ && param1))
                                                               {
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(param5);
                                                                     loop5:
                                                                     while(_loc14_)
                                                                     {
                                                                        if(_loc14_ || param3)
                                                                        {
                                                                           addr256:
                                                                           if(§§pop())
                                                                           {
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§=!V§);
                                                                                 addr259:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§@!4§(_loc11_);
                                                                                    loop8:
                                                                                    while(!_loc15_)
                                                                                    {
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param6);
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                if(_loc14_ || param2)
                                                                                                {
                                                                                                   if(_loc15_ && param3)
                                                                                                   {
                                                                                                      addr305:
                                                                                                      §§push(§§pop());
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         addr242:
                                                                                                         while(_loc15_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param9);
                                                                                                               break loop5;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      return _loc11_;
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                this.§4@§.addChild(_loc10_);
                                                                                                break loop8;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                this.§5!X§.addChild(_loc10_);
                                                                                                addr283:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr194:
                                                                                          addr278:
                                                                                       }
                                                                                       §§goto(addr283);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr257:
                                                                           }
                                                                           §§goto(addr194);
                                                                        }
                                                                        §§pop();
                                                                        §§goto(addr308);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        addr277:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr278);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§=!V§);
                                                               if(!(_loc15_ && param2))
                                                               {
                                                                  §§pop().activeObject = _loc11_;
                                                                  §§goto(addr242);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            addr105:
                                                         }
                                                         §§goto(addr257);
                                                      }
                                                      else
                                                      {
                                                         addr142:
                                                         while(true)
                                                         {
                                                            continue loop1;
                                                         }
                                                         addr142:
                                                      }
                                                   }
                                                   §§goto(addr244);
                                                }
                                                else
                                                {
                                                   §§push(_loc11_.front);
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      addr304:
                                                      §§goto(addr305);
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                §§goto(addr307);
                                             }
                                             §§goto(addr212);
                                          }
                                          §§goto(addr256);
                                       }
                                       §§goto(addr283);
                                    }
                                    §§goto(addr304);
                                 }
                                 §§goto(addr88);
                              }
                              break;
                           }
                           if(!§§pop())
                           {
                              §§goto(addr307);
                           }
                           §§goto(addr277);
                        }
                     }
                  }
                  §§goto(addr142);
               }
               §§goto(addr105);
            }
            else
            {
               this.§7@§[this.§7@§.length] = _loc11_;
            }
            §§goto(addr142);
         }
         §§goto(addr212);
      }
      
      public function §]%§(param1:int, param2:§,_§, param3:§,_§) : §'9§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§'9§ = null;
         var _loc4_:int = this.§7@§.indexOf(param2) - this.§1=§;
         var _loc5_:int = this.§7@§.indexOf(param3) - this.§1=§;
         if(_loc8_ || param3)
         {
            §§push(_loc4_);
            if(!_loc7_)
            {
               §§push(0);
               if(_loc8_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc8_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc7_ && param2))
                        {
                           §§goto(addr73);
                        }
                     }
                     §§goto(addr84);
                  }
                  addr73:
                  §§pop();
                  if(_loc8_ || this)
                  {
                     addr84:
                     if(_loc5_ >= 0)
                     {
                        §§goto(addr85);
                     }
                     §§goto(addr132);
                  }
                  addr85:
                  (_loc6_ = new §'9§(§'s§.§7!K§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§5!O§ = this.§=!V§.mLevelEngine.mWorld.§^8§(_loc6_.§7z§(param2,param3));
                  if(_loc8_)
                  {
                     this.§5f§.push(_loc6_);
                     if(_loc7_)
                     {
                        addr132:
                        return null;
                     }
                  }
                  return _loc6_;
               }
            }
         }
         §§goto(addr84);
      }
      
      public function § !>§(param1:§'9§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(!(param1.§5!O§ is b2WeldJoint))
            {
               if(_loc4_)
               {
                  §§goto(addr25);
               }
            }
            var _loc2_:§,_§ = this.§@r§(param1.index1 + this.§1=§);
            var _loc3_:§,_§ = this.§@r§(param1.index2 + this.§1=§);
            if(_loc4_)
            {
               this.§=!V§.mLevelEngine.mWorld.§#O§(param1.§5!O§);
            }
            do
            {
               param1.§5!O§ = this.§=!V§.mLevelEngine.mWorld.§^8§(param1.§7z§(_loc2_,_loc3_));
            }
            while(_loc5_ && _loc3_);
            
            return;
         }
         addr25:
      }
      
      public function §%!=§(param1:§,_§) : Vector.<§'9§>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§'9§ = null;
         var _loc2_:Vector.<§'9§> = new Vector.<§'9§>();
         var _loc3_:int = this.§7@§.indexOf(param1) - this.§1=§;
         if(!_loc7_)
         {
            §§push(_loc3_);
            if(!_loc7_)
            {
               if(§§pop() >= 0)
               {
                  addr53:
                  addr52:
                  for each(_loc4_ in this.§5f§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(_loc8_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc7_)
                           {
                              addr75:
                              §§pop();
                              if(_loc8_)
                              {
                                 addr82:
                                 if(_loc4_.index2 != _loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                              }
                              _loc2_.push(_loc4_);
                              continue;
                           }
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr75);
                  }
               }
               return _loc2_;
            }
            §§goto(addr53);
         }
         §§goto(addr52);
      }
      
      public function §"!6§() : Vector.<§'9§>
      {
         return this.§5f§;
      }
      
      public function §4J§(param1:§,_§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§7@§.indexOf(param1) - this.§1=§;
         var _loc3_:* = int(this.§5f§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(_loc5_)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc5_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(!(_loc5_ || param1))
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(this.§5f§[_loc3_].index2 == _loc2_);
                                 if(_loc5_)
                                 {
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             break loop2;
                                          }
                                          continue loop2;
                                       }
                                       addr116:
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
                              addr60:
                              while(true)
                              {
                                 §§push(§§pop() - 1);
                                 addr61:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                 }
                              }
                           }
                        }
                     }
                     while(!_loc5_)
                     {
                        §§goto(addr84);
                     }
                     continue;
                  }
                  §§push(this.§5f§[_loc3_].index1 == _loc2_);
                  §§goto(addr116);
               }
               §§goto(addr60);
            }
            §§goto(addr61);
         }
      }
      
      protected function §#-§(param1:§,_§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1.uniqueID);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§#§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               if(_loc4_ || param1)
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        addr91:
                        this.§#§.splice(_loc3_,1);
                        while(true)
                        {
                           addr64:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr66:
                              while(true)
                              {
                                 §§push(§§pop() - 1);
                                 addr67:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                 }
                              }
                           }
                        }
                        addr96:
                     }
                     while(!_loc4_)
                     {
                        §§goto(addr96);
                     }
                     continue;
                  }
                  if(this.§#§[_loc3_].targetId.toString() == _loc2_)
                  {
                     §§goto(addr91);
                  }
                  §§goto(addr64);
               }
               §§goto(addr66);
            }
            §§goto(addr67);
         }
      }
      
      public function §=`§(param1:§,_§, param2:§,_§) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = this.§7@§.indexOf(param1) - this.§1=§;
         var _loc4_:int = this.§7@§.indexOf(param2) - this.§1=§;
         var _loc5_:* = int(this.§5f§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!_loc7_)
            {
               if(_loc6_)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc6_)
                     {
                        if(!_loc7_)
                        {
                           §§push(false);
                           if(!_loc7_)
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 break;
                              }
                              loop11:
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(true);
                                                   addr117:
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         break loop9;
                                                      }
                                                      addr142:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                      }
                                                   }
                                                }
                                                addr116:
                                             }
                                             else
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   addr68:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      addr69:
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         addr70:
                                                         while(true)
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               if(_loc6_ || param2)
                                                               {
                                                                  break;
                                                               }
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(this.§5f§[_loc5_].index2 == _loc4_);
                                                                  addr154:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr165:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§5f§[_loc5_].index1 == _loc4_);
                                                                                    addr131:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr134:
                                                                                       if(_loc6_ || param2)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          §§goto(addr142);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop16;
                                                                                             }
                                                                                             §§goto(addr134);
                                                                                          }
                                                                                          addr188:
                                                                                       }
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr189);
                                                                     continue loop16;
                                                                  }
                                                               }
                                                            }
                                                            else if(!_loc7_)
                                                            {
                                                               continue loop10;
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                             }
                                             while(_loc6_)
                                             {
                                                §§push(this.§5f§[_loc5_].index2 == _loc3_);
                                                continue loop11;
                                             }
                                             §§goto(addr165);
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr131);
                              }
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr70);
                  }
                  else
                  {
                     §§push(this.§5f§[_loc5_].index1 == _loc3_);
                     if(!_loc7_)
                     {
                        §§goto(addr188);
                        §§push(§§pop());
                     }
                  }
                  §§goto(addr189);
               }
               §§goto(addr68);
            }
            §§goto(addr69);
         }
         return §§pop();
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §,_§
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc10_:§,_§ = null;
         var _loc11_:§ $§ = null;
         var _loc12_:§ $§ = null;
         if(!_loc15_)
         {
            §§push(param2);
            if(_loc16_)
            {
               if(§§pop().indexOf("BIRD") == 0)
               {
                  if(!_loc15_)
                  {
                     addr37:
                     _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                     if(_loc16_ || param2)
                     {
                        var _loc13_:*;
                        §§push((_loc13_ = this).§ !<§);
                        if(_loc16_ || param3)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc14_:* = §§pop();
                        if(!(_loc15_ && this))
                        {
                           _loc13_.§ !<§ = _loc14_;
                        }
                        if(_loc16_ || param2)
                        {
                           addr297:
                           _loc10_.uniqueID = this.§+I§();
                           addr89:
                        }
                        return _loc10_;
                     }
                     §§goto(addr89);
                  }
                  else
                  {
                     addr95:
                     §§push(§`>§.§<!>§(param2));
                     if(!_loc15_)
                     {
                        _loc11_ = §§pop();
                        _loc10_ = new §-!;§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                     }
                     else
                     {
                        addr129:
                        §§push((_loc12_ = §§pop()) == null);
                        if(!_loc15_)
                        {
                           §§push(§§pop());
                           if(!_loc15_)
                           {
                              if(§§pop())
                              {
                                 if(_loc16_ || param3)
                                 {
                                    §§pop();
                                    if(_loc16_ || param2)
                                    {
                                       §§push(param2);
                                       if(_loc16_)
                                       {
                                          §§push(§§pop().indexOf("MISC_") == 0);
                                          if(!_loc15_)
                                          {
                                             addr174:
                                             if(§§pop())
                                             {
                                                if(!_loc15_)
                                                {
                                                   addr183:
                                                   param2 = "MISC_FOOD_" + param2.substring(5);
                                                   if(!(_loc15_ && param3))
                                                   {
                                                      addr191:
                                                      _loc12_ = §`>§.§<!>§(param2);
                                                      §§push(_loc12_.§7!?§);
                                                      if(_loc16_ || param3)
                                                      {
                                                         §§push(§ $§.§2G§);
                                                         if(_loc16_ || param2)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc15_)
                                                            {
                                                               addr217:
                                                               if(!§§pop())
                                                               {
                                                                  if(!(_loc15_ && param1))
                                                                  {
                                                                     §§pop();
                                                                     addr240:
                                                                     if(_loc16_ || param3)
                                                                     {
                                                                        addr238:
                                                                        §§push(_loc12_.§7!?§ == § $§.§#J§);
                                                                     }
                                                                     _loc10_ = new §1!!§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
                                                                     §§goto(addr297);
                                                                  }
                                                               }
                                                            }
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr240);
                                                            }
                                                            else
                                                            {
                                                               _loc10_ = new §,_§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param9,_loc12_.front);
                                                               §§goto(addr297);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr240);
                                                }
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr217);
                                       }
                                       §§goto(addr183);
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr174);
                           }
                        }
                        §§goto(addr217);
                     }
                  }
                  §§goto(addr297);
               }
               else
               {
                  addr91:
                  if(param2.indexOf("PIG") == 0)
                  {
                     §§goto(addr95);
                  }
                  else
                  {
                     §§push(§`>§.§<!>§(param2));
                  }
                  §§goto(addr129);
               }
            }
            §§goto(addr91);
         }
         §§goto(addr37);
      }
      
      protected function §+I§() : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§,_§ = null;
         var _loc1_:int = this.§7@§.length;
         var _loc2_:* = false;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc6_ && _loc2_))
            {
               while(true)
               {
                  §§push(!§§pop());
                  addr28:
                  §§push(true);
                  if(!(_loc6_ && _loc1_))
                  {
                     _loc2_ = §§pop();
                     if(!(_loc6_ && this))
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                           for each(_loc3_ in this.§7@§)
                           {
                              if(_loc7_ || this)
                              {
                                 if(_loc3_.uniqueID != _loc1_.toString())
                                 {
                                    continue;
                                 }
                                 if(_loc7_ || _loc1_)
                                 {
                                    addr89:
                                    _loc1_++;
                                    if(_loc7_ || _loc1_)
                                    {
                                       addr97:
                                       _loc2_ = false;
                                    }
                                    break;
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr89);
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        addr124:
                        §§push(_loc1_);
                     }
                     return §§pop().toString();
                  }
               }
               addr122:
            }
            while(true)
            {
               if(§§pop())
               {
                  §§goto(addr28);
               }
               break;
               §§goto(addr122);
            }
            §§goto(addr124);
         }
      }
      
      public function §'2§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§,_§ = null;
         var _loc2_:* = int(this.§7@§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7@§[_loc2_] as §,_§;
            if(_loc5_)
            {
               if(_loc3_)
               {
                  if(_loc5_ || param1)
                  {
                     addr93:
                     if(_loc3_.§[h§ > 0)
                     {
                        _loc3_.§0j§();
                        loop1:
                        while(true)
                        {
                           addr68:
                           while(true)
                           {
                              _loc3_.§4!2§();
                              addr71:
                              while(_loc5_)
                              {
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        this.removeObjectWithIndex(_loc2_,true,true,true);
                        addr99:
                        while(true)
                        {
                        }
                     }
                     addr93:
                  }
                  §§goto(addr93);
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!_loc4_)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr68);
                     }
                     else
                     {
                        §§goto(addr93);
                     }
                  }
                  §§goto(addr71);
               }
               continue;
            }
            §§goto(addr93);
         }
         if(!(_loc4_ && this))
         {
            this.§&p§(param1);
         }
      }
      
      protected function §&p§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§0!a§(param1);
         }
         do
         {
            this.§ !C§();
         }
         while(_loc2_ && this);
         
      }
      
      private function §0!a§(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§>!e§ = null;
         var _loc5_:* = 0;
         var _loc6_:§,_§ = null;
         if(_loc8_ || _loc3_)
         {
            if(this.§#§.length == 0)
            {
               if(!(_loc7_ && this))
               {
                  return;
               }
            }
         }
         var _loc2_:Vector.<§>!e§> = this.§#§.concat();
         var _loc3_:* = int(_loc2_.length - 1);
         while(_loc3_ >= 0)
         {
            §§push((_loc4_ = _loc2_[_loc3_]).§=!%§);
            if(!_loc7_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc7_ && param1))
               {
                  if(§§pop())
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        addr83:
                        §§pop();
                        if(!_loc8_)
                        {
                           continue;
                        }
                        §§push(this.§#§.indexOf(_loc4_) == -1);
                        if(_loc8_ || _loc3_)
                        {
                           addr109:
                           §§push(!§§pop());
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(_loc4_.update(param1));
                        if(_loc8_ || _loc2_)
                        {
                           §§push(int(§§pop()));
                           if(_loc8_)
                           {
                              addr131:
                              §§push(§§pop());
                              if(!_loc7_)
                              {
                                 _loc5_ = §§pop();
                                 addr183:
                                 if(!(_loc7_ && this))
                                 {
                                    §§push(-1);
                                 }
                                 _loc3_ = §§pop() - 1;
                                 continue;
                              }
                              if(§§pop() != §§pop())
                              {
                                 if(_loc7_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 addr151:
                                 §§push(this);
                                 §§push("");
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() + _loc5_);
                                 }
                                 if(_loc6_ = §§pop().§9!X§(§§pop()))
                                 {
                                    if(!_loc7_)
                                    {
                                       this.§4!P§(_loc6_,true,true,true);
                                       addr180:
                                       §§push(_loc3_);
                                       if(!_loc8_)
                                       {
                                       }
                                       §§goto(addr183);
                                    }
                                 }
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr183);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr180);
               }
               §§goto(addr109);
            }
            §§goto(addr83);
         }
      }
      
      private function § !C§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:§'9§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         loop0:
         for each(_loc1_ in this.§5f§)
         {
            if(!_loc6_)
            {
               §§push(_loc1_.type == §'s§.§`!d§);
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
                           if(!§§pop())
                           {
                              continue loop0;
                           }
                           loop7:
                           while(true)
                           {
                              §§push(_loc1_.§5!O§);
                              while(true)
                              {
                                 §§push((§§pop() as b2PrismaticJoint).§%!]§());
                                 loop9:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       loop11:
                                       while(true)
                                       {
                                          §§push(_loc1_.§5!O§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push((§§pop() as b2PrismaticJoint).§^!f§());
                                             loop13:
                                             while(_loc7_ || _loc2_)
                                             {
                                                §§push(Number(§§pop()));
                                                loop14:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(_loc1_.§2!;§));
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
                                                                  loop37:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              loop22:
                                                                              while(!(_loc6_ && _loc1_))
                                                                              {
                                                                                 §§push(0);
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() > §§pop());
                                                                                    addr241:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr242:
                                                                                       loop25:
                                                                                       while(_loc7_ || _loc3_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop26:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr251:
                                                                                                loop38:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   loop39:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() >= _loc1_.upperLimit);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            addr207:
                                                                                                            while(!_loc6_)
                                                                                                            {
                                                                                                               if(!(_loc7_ || _loc3_))
                                                                                                               {
                                                                                                                  continue loop37;
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr79:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     if(_loc7_ || _loc1_)
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                     addr118:
                                                                                                                     addr118:
                                                                                                                     if(_loc7_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           continue loop38;
                                                                                                                        }
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              while(_loc7_)
                                                                                                                              {
                                                                                                                                 if(_loc6_ && this)
                                                                                                                                 {
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop15;
                                                                                                                              addr220:
                                                                                                                           }
                                                                                                                           if(_loc7_ || this)
                                                                                                                           {
                                                                                                                              §§push(_loc2_);
                                                                                                                              if(_loc7_ || _loc2_)
                                                                                                                              {
                                                                                                                                 continue loop14;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(_loc1_.§%0§));
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                              addr338:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    continue loop23;
                                                                                                                                 }
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                              continue loop39;
                                                                                                                           }
                                                                                                                           continue loop39;
                                                                                                                           §§goto(addr118);
                                                                                                                        }
                                                                                                                        §§goto(addr217);
                                                                                                                        addr188:
                                                                                                                     }
                                                                                                                     §§goto(addr131);
                                                                                                                  }
                                                                                                                  continue loop12;
                                                                                                                  addr79:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     continue loop26;
                                                                                                                  }
                                                                                                                  §§pop();
                                                                                                               }
                                                                                                               addr217:
                                                                                                               §§goto(addr220);
                                                                                                            }
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         addr205:
                                                                                                      }
                                                                                                      §§goto(addr217);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr205);
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                        addr266:
                                                                     }
                                                                     §§goto(addr79);
                                                                  }
                                                               }
                                                               addr263:
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr310:
                     }
                     §§goto(addr337);
                  }
               }
            }
            §§goto(addr251);
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§`!N§.push(§2!5§.createExplosion(param1,param2,param3));
            do
            {
               §&M§.§6!#§("TntExplosions","ChannelExplosions");
            }
            while(!_loc4_);
            
         }
      }
      
      public function §7J§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§,_§ = null;
         var _loc3_:int = this.§7@§.length - 1;
         while(true)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§7@§[_loc3_])
               {
                  if(_loc5_ || param2)
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(!_loc6_)
                        {
                           addr59:
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr70:
                           §§push(_loc3_);
                           if(!(_loc5_ || param1))
                           {
                              continue;
                           }
                        }
                        §§push(§§pop() - 1);
                        continue;
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr59);
               }
               §§goto(addr70);
            }
            break;
         }
         return §§pop();
      }
      
      public function §=!B§(param1:Number, param2:Number) : §,_§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§,_§ = null;
         var _loc3_:* = int(this.§7@§.length - 1);
         while(true)
         {
            if(_loc3_ < 0)
            {
               return null;
            }
            if(_loc4_ = this.§7@§[_loc3_])
            {
               if(!(_loc6_ || _loc3_))
               {
                  break;
               }
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               else
               {
                  addr64:
                  §§push(_loc3_);
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc3_ = §§pop();
               }
               continue;
            }
            §§goto(addr64);
         }
         return _loc4_;
      }
      
      public function §1C§(param1:Number, param2:Number) : Vector.<§,_§>
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§,_§ = null;
         var _loc3_:Vector.<§,_§> = new Vector.<§,_§>();
         var _loc4_:* = int(this.§7@§.length - 1);
         while(_loc4_ >= 0)
         {
            §§push(Boolean(_loc5_ = this.§7@§[_loc4_]));
            if(!(_loc6_ && param1))
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     §§pop();
                     if(_loc6_ && param1)
                     {
                        continue;
                     }
                     §§push(_loc5_.isInCoordinates(param1,param2));
                     if(!_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
            }
            if(§§pop())
            {
               if(_loc6_ && param1)
               {
                  continue;
               }
               _loc3_.push(_loc5_);
               if(!_loc7_)
               {
                  continue;
               }
            }
            §§push(_loc4_);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() - 1);
            }
            _loc4_ = §§pop();
         }
         return _loc3_;
      }
      
      public function §@r§(param1:int) : §,_§
      {
         return this.§7@§[param1];
      }
      
      public function §&!G§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§,_§ = null;
         var _loc3_:* = int(this.§7@§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§7@§[_loc3_] as §,_§).§&!G§(param2,param1);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      private function §=g§(param1:§,_§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:§,_§ = null;
         if(_loc8_ || _loc3_)
         {
            §§push(this.mSardineCanAdded);
            if(!_loc9_)
            {
               if(!§§pop())
               {
                  if(!(_loc9_ && param1))
                  {
                     addr44:
                     §§push(true);
                     if(_loc8_)
                     {
                        §§goto(addr47);
                     }
                  }
                  else
                  {
                     addr55:
                     §§push(this.mMightyEagleAdded);
                     if(_loc8_ || param2)
                     {
                        if(§§pop())
                        {
                           if(_loc8_)
                           {
                              §§push(false);
                              if(_loc8_)
                              {
                                 §§goto(addr70);
                              }
                           }
                           else
                           {
                              addr71:
                              §§push(false);
                           }
                           var _loc3_:* = §§pop();
                           if(!_loc9_)
                           {
                              §§push(param1.§[h§);
                              if(_loc8_ || param1)
                              {
                                 §§push(param1.§'!V§);
                                 loop0:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(this.§0!^§);
                                       while(true)
                                       {
                                          §§push(0);
                                          addr473:
                                          while(true)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc8_ || this)
                                                {
                                                   this.§0!^§ = this.§=!V§.§#!A§;
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(param1.§[b§());
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
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
                                                                        §§pop();
                                                                        addr466:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§%!_§(param1));
                                                                           addr444:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                        }
                                                                     }
                                                                     addr465:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr447:
                                                                        while(!_loc9_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop24:
                                                                                    for(; _loc8_ || _loc3_; if(_loc9_ && param1)
                                                                                    {
                                                                                       continue;
                                                                                    },if(false)
                                                                                    {
                                                                                       §§goto(addr137);
                                                                                    },§§goto(addr557))
                                                                                    {
                                                                                       if(!(_loc9_ && this))
                                                                                       {
                                                                                          §§push(this.mMightyEagleTimer);
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() < this.§<!$§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§push(this.mMightyEagleTimer);
                                                                                                   if(_loc8_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(param2);
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr410:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr411:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc4_ = §§pop();
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr616:
                                                                                                            return _loc3_;
                                                                                                            addr615:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr410:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.mMightyEagleTimer);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         addr280:
                                                                                                         if(_loc8_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop() < this.§<!$§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                            while(_loc8_ || param2)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               addr429:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  addr430:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     while(_loc8_ || param2)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        break loop24;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        continue loop3;
                                                                                                                        §§goto(addr431);
                                                                                                                     }
                                                                                                                     addr431:
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(!(_loc9_ && this))
                                                                                                            {
                                                                                                               continue loop23;
                                                                                                            }
                                                                                                            §§goto(addr431);
                                                                                                            addr291:
                                                                                                            addr361:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr411);
                                                                                                      addr201:
                                                                                                      if(!(_loc8_ || param2))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(§§pop() >= this.§<!$§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  §§push(param1.§0c§());
                                                                                                                  loop40:
                                                                                                                  while(!_loc9_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().GetPosition());
                                                                                                                     loop41:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - this.§<!$§.MIGHTY_EAGLE_STARTING_DISTANCE_X);
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        loop42:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc5_ = §§pop();
                                                                                                                           addr234:
                                                                                                                           loop43:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr137:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1.§0c§());
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    continue loop40;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().GetPosition());
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    if(_loc9_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop42;
                                                                                                                                    }
                                                                                                                                    §§push(this.§<!$§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§<!$§.MIGHTY_EAGLE_Y_CHANGE);
                                                                                                                                    if(_loc8_ || this)
                                                                                                                                    {
                                                                                                                                       addr169:
                                                                                                                                       if(_loc9_ && param1)
                                                                                                                                       {
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() * 1.07);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          continue loop25;
                                                                                                                                       }
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                       if(_loc8_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(this.§%!_§(param1));
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             addr82:
                                                                                                                                             if(_loc9_ && param1)
                                                                                                                                             {
                                                                                                                                                while(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   §§goto(addr82);
                                                                                                                                                }
                                                                                                                                                continue loop6;
                                                                                                                                                addr337:
                                                                                                                                             }
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      continue loop24;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      continue loop43;
                                                                                                                                                   }
                                                                                                                                                   addr96:
                                                                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr103:
                                                                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(true);
                                                                                                                                                         if(!(_loc9_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr118:
                                                                                                                                                            if(!(_loc8_ || param1))
                                                                                                                                                            {
                                                                                                                                                               break loop43;
                                                                                                                                                            }
                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               continue loop24;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr615);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr616);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc8_ || param2))
                                                                                                                                                            {
                                                                                                                                                               continue loop3;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() > this.§<!$§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                                                  break loop43;
                                                                                                                                                               }
                                                                                                                                                               addr250:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr466);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr103);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr444);
                                                                                                                                                         addr340:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §&M§.§6!#§("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                                                      if(!(_loc9_ && param1))
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            addr199:
                                                                                                                                                            addr530:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr201);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr250);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr530:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(this.§4n§);
                                                                                                                                                               if(!(_loc9_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(param2);
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * this.§<!$§.SARDINE_CAN_ROTATION_ACCELERATION);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§pop().§4n§ = §§pop();
                                                                                                                                                               if(_loc8_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§0c§());
                                                                                                                                                                     break loop40;
                                                                                                                                                                  }
                                                                                                                                                                  addr501:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr616);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr197:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr616);
                                                                                                                                                      §§goto(addr96);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr557:
                                                                                                                                                   _loc7_ = this.§@!,§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§<!$§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                                                   if(_loc8_ || param1)
                                                                                                                                                   {
                                                                                                                                                      this.mMightyEagleAdded = true;
                                                                                                                                                      addr593:
                                                                                                                                                      this.§0!^§ = 0;
                                                                                                                                                      _loc7_.§[r§.§-!b§(1.82);
                                                                                                                                                      addr611:
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc8_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr591:
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr593);
                                                                                                                                                            }
                                                                                                                                                            this.mMightyEagleTimer = _loc4_;
                                                                                                                                                            §§goto(addr616);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr611);
                                                                                                                                                      }
                                                                                                                                                      addr597:
                                                                                                                                                      §§goto(addr597);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr591);
                                                                                                                                                }
                                                                                                                                                §§goto(addr591);
                                                                                                                                             }
                                                                                                                                             §§goto(addr444);
                                                                                                                                             §§goto(addr340);
                                                                                                                                          }
                                                                                                                                          §§goto(addr118);
                                                                                                                                       }
                                                                                                                                       §§goto(addr616);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr526:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop() < this.§<!$§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                                                                                                                          {
                                                                                                                                             §§goto(addr530);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr526:
                                                                                                                                    }
                                                                                                                                    §§goto(addr501);
                                                                                                                                 }
                                                                                                                                 §§goto(addr199);
                                                                                                                              }
                                                                                                                              continue loop41;
                                                                                                                           }
                                                                                                                           while(!_loc9_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc8_ || param2)
                                                                                                                                    {
                                                                                                                                       §&M§.§6!#§("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                                                    }
                                                                                                                                    §§goto(addr269);
                                                                                                                                 }
                                                                                                                                 §§goto(addr197);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr291);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param2);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * this.§4n§);
                                                                                                                     }
                                                                                                                     §§pop().§"l§(§§pop());
                                                                                                                     addr511:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§0!^§ = 0;
                                                                                                                        if(_loc9_ && _loc3_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     §§goto(addr616);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr530);
                                                                                                            }
                                                                                                            §§goto(addr234);
                                                                                                         }
                                                                                                         §§goto(addr591);
                                                                                                      }
                                                                                                      §§goto(addr410);
                                                                                                   }
                                                                                                   addr354:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr361);
                                                                                                      §§goto(addr280);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr616);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr524:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr526);
                                                                                          }
                                                                                          addr524:
                                                                                       }
                                                                                       §§goto(addr616);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr354);
                                                                                       §§goto(addr370);
                                                                                    }
                                                                                    addr370:
                                                                                 }
                                                                                 §§goto(addr616);
                                                                              }
                                                                           }
                                                                           §§goto(addr450);
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr459:
                                                   }
                                                   §§goto(addr511);
                                                }
                                             }
                                             §§goto(addr459);
                                          }
                                          §§push(this.§0!^§);
                                          if(_loc9_)
                                          {
                                             continue;
                                          }
                                          §§push(0);
                                          if(_loc8_ || _loc3_)
                                          {
                                             §§goto(addr429);
                                             §§push(§§pop() > §§pop());
                                          }
                                          §§goto(addr473);
                                       }
                                    }
                                    §§goto(addr524);
                                 }
                              }
                              §§goto(addr526);
                           }
                           §§goto(addr524);
                        }
                        §§goto(addr71);
                     }
                  }
                  addr70:
                  return §§pop();
               }
               §§goto(addr55);
            }
            addr47:
            return §§pop();
         }
         §§goto(addr44);
      }
      
      private function §;Q§(param1:§,_§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§,_§ = null;
         if(!(_loc9_ && param1))
         {
            §§push(Boolean(this.§<!$§.MIGHTY_EAGLE_USE_SHADE));
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
                        loop3:
                        while(true)
                        {
                           §§push(this.§9!3§);
                           if(!_loc9_)
                           {
                              §§push(!§§pop());
                              if(!(_loc9_ && _loc3_))
                              {
                                 addr100:
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc9_ && param1))
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§pop();
                                             addr115:
                                             while(true)
                                             {
                                                addr42:
                                                addr127:
                                                while(true)
                                                {
                                                   §§push(this.mMightyEagleTimer);
                                                   if(_loc9_ && this)
                                                   {
                                                      break;
                                                   }
                                                   continue loop4;
                                                }
                                                var _loc3_:* = §§pop();
                                                if(!(_loc9_ && param2))
                                                {
                                                   §§push(this);
                                                   §§push(this.mMightyEagleTimer);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop() + param2);
                                                   }
                                                   §§pop().mMightyEagleTimer = §§pop();
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      §§push(this.§=!V§.particles);
                                                      §§push(§!U§.§&§);
                                                      §§push(§?F§.§<G§);
                                                      §§push(§!U§.§"R§);
                                                      §§push(param1.§0c§().GetPosition().x);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc9_ && param2))
                                                            {
                                                               §§push(Math.random() * (_loc3_ * 2));
                                                               if(_loc8_)
                                                               {
                                                                  addr185:
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(param1.§0c§().GetPosition().y);
                                                                  if(!_loc8_)
                                                                  {
                                                                  }
                                                                  addr209:
                                                                  §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§!U§.§9Z§(param1.§>R§),0,0,1,0,4);
                                                                  var _loc4_:* = 1;
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     §§push(this.mMightyEagleHasTouchedGround);
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           this.mMightyEagleHasTouchedGround = param1.§0c§().GetPosition().y >= -5.5;
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           param1.§+!"§(this.§<!$§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                                           addr355:
                                                                           while(true)
                                                                           {
                                                                              §§push(-1);
                                                                              if(_loc9_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              _loc4_ = §§pop();
                                                                              continue loop11;
                                                                           }
                                                                           addr357:
                                                                           var _loc6_:* = §§pop();
                                                                           var _loc7_:* = this.§7@§;
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc7_,_loc6_));
                                                                              if(_loc8_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             this.§'i§();
                                                                                             if(_loc8_ || param1)
                                                                                             {
                                                                                                addr434:
                                                                                                §§push(this.mMightyEagleTimer > 6000);
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc8_ || _loc3_)
                                                                                                      {
                                                                                                         addr449:
                                                                                                         §§pop();
                                                                                                         if(_loc8_ || this)
                                                                                                         {
                                                                                                            §§push(this.isPigsAlive());
                                                                                                            if(_loc8_ || this)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr469:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        addr472:
                                                                                                                        _loc6_ = 0;
                                                                                                                        if(_loc8_ || this)
                                                                                                                        {
                                                                                                                           addr481:
                                                                                                                           _loc7_ = this.§7@§;
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                                              break loop26;
                                                                                                                           }
                                                                                                                           addr542:
                                                                                                                        }
                                                                                                                        if(!(_loc9_ && this))
                                                                                                                        {
                                                                                                                           addr597:
                                                                                                                           loop27:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              param1.§+,§(param2,new Point(this.§<!$§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§<!$§.MIGHTY_EAGLE_Y_CHANGE),this.§<!$§.MIGHTY_EAGLE_FLYING_SPEED);
                                                                                                                              if(!(_loc9_ && param2))
                                                                                                                              {
                                                                                                                                 addr583:
                                                                                                                                 if(!(_loc9_ && param2))
                                                                                                                                 {
                                                                                                                                    addr556:
                                                                                                                                    return false;
                                                                                                                                    addr590:
                                                                                                                                 }
                                                                                                                                 break loop11;
                                                                                                                              }
                                                                                                                              addr596:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop27;
                                                                                                                              }
                                                                                                                              §§goto(addr583);
                                                                                                                           }
                                                                                                                           addr553:
                                                                                                                        }
                                                                                                                        break loop11;
                                                                                                                     }
                                                                                                                     §§goto(addr553);
                                                                                                                  }
                                                                                                                  §§goto(addr597);
                                                                                                               }
                                                                                                               §§goto(addr556);
                                                                                                            }
                                                                                                            §§goto(addr469);
                                                                                                         }
                                                                                                         §§goto(addr472);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr469);
                                                                                                }
                                                                                                §§goto(addr449);
                                                                                             }
                                                                                             §§goto(addr597);
                                                                                          }
                                                                                          §§goto(addr590);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr481);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                    §§push(Boolean(_loc5_));
                                                                                    if(_loc8_ || _loc3_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc9_ && _loc3_))
                                                                                          {
                                                                                             §§pop();
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(_loc5_.§0T§());
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                }
                                                                                                addr395:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(_loc5_.§0c§());
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§pop().SetAwake(true);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(_loc5_.§0c§());
                                                                                                      }
                                                                                                      §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr395);
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                 §§push(Boolean(_loc5_));
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!(_loc8_ || this))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(_loc5_.§0T§());
                                                                                          if(!(_loc9_ && _loc3_))
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       §§push(_loc5_.§'!V§);
                                                                                       if(!(_loc9_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() * 2);
                                                                                       }
                                                                                       §§pop().applyDamage(§§pop(),true,true,true);
                                                                                    }
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr481);
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§`n§ = this.mMightyEagleHasTouchedGround;
                                                                        §§goto(addr596);
                                                                        §§goto(addr583);
                                                                     }
                                                                     §§goto(addr556);
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                               §§push(_loc3_);
                                                               if(_loc8_ || this)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(Math.random() * (_loc3_ * 2));
                                                                  }
                                                                  §§goto(addr209);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                }
                                                §§goto(addr185);
                                             }
                                          }
                                          addr114:
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                this.§9!3§ = true;
                                             }
                                             while(!_loc9_)
                                             {
                                                this.§=!V§.§"!C§();
                                                if(_loc9_)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc8_ || _loc3_))
                                                {
                                                   continue loop3;
                                                }
                                                while(true)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr42);
                                                   }
                                                   else
                                                   {
                                                      addr125:
                                                      §§push(Number(3));
                                                   }
                                                   §§goto(addr127);
                                                }
                                             }
                                             §§goto(addr115);
                                          }
                                          §§goto(addr125);
                                       }
                                    }
                                    continue loop1;
                                    addr109:
                                 }
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr100);
                        }
                     }
                  }
                  §§goto(addr109);
               }
            }
         }
         §§goto(addr40);
      }
      
      private function §@z§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§2!5§ = null;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§,_§ = null;
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
         while(this.§`!N§.length > 0)
         {
            _loc1_ = this.§`!N§.shift();
            if(!(_loc21_ && _loc3_))
            {
               §§push(_loc1_.§%!B§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  if(!_loc21_)
                  {
                     _loc2_ = §§pop();
                     if(_loc20_ || _loc3_)
                     {
                        §§push(_loc1_.x);
                        if(_loc21_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                        continue;
                     }
                     addr700:
                     loop19:
                     while(true)
                     {
                        §§push(this.§=!V§);
                        if(_loc20_)
                        {
                           §§push(§§pop().particles);
                           if(!(_loc20_ || _loc3_))
                           {
                              break;
                           }
                           §§push(§!U§.§2a§);
                           if(_loc20_ || _loc2_)
                           {
                              §§push(§?F§.§<G§);
                              if(_loc20_)
                              {
                                 §§push(§!U§.§"R§);
                                 if(_loc20_)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc21_ && _loc1_))
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc21_ && _loc3_))
                                       {
                                          §§push(_loc16_);
                                          §§push("");
                                          §§push(§!U§.§]6§);
                                          §§push(_loc15_);
                                          if(_loc20_)
                                          {
                                             §§push(§§pop() * Math.cos(_loc17_));
                                          }
                                          §§push(_loc15_);
                                          if(!(_loc21_ && _loc2_))
                                          {
                                             §§push(-§§pop());
                                             if(_loc20_)
                                             {
                                                addr668:
                                                §§push(§§pop() * Math.sin(_loc17_));
                                             }
                                             §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                             loop20:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                if(!_loc21_)
                                                {
                                                   if(!_loc21_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(5);
                                                         if(!(_loc21_ && _loc3_))
                                                         {
                                                            if(!_loc21_)
                                                            {
                                                               addr543:
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc21_ && this))
                                                               {
                                                                  if(_loc20_ || this)
                                                                  {
                                                                     addr727:
                                                                     if(!(_loc21_ && this))
                                                                     {
                                                                        if(!_loc21_)
                                                                        {
                                                                           addr721:
                                                                           if(_loc20_)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              if(!_loc21_)
                                                                              {
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    if(_loc20_ || _loc2_)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       addr736:
                                                                                       while(true)
                                                                                       {
                                                                                          addr773:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             break loop20;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr735:
                                                                                 }
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(180);
                                                                                    addr679:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / Math.PI);
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             if(!(_loc21_ && _loc2_))
                                                                                             {
                                                                                                addr695:
                                                                                                §§push(Number(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc17_ = §§pop();
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr700);
                                                                                                   §§goto(addr543);
                                                                                                }
                                                                                                §§goto(addr736);
                                                                                                addr695:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc16_ = §§pop();
                                                                                                addr710:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop16;
                                                                                                }
                                                                                             }
                                                                                             addr709:
                                                                                          }
                                                                                          §§goto(addr695);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr707:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr708:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr709);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break loop20;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(Math.random() * _loc2_);
                                                                              addr725:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                           }
                                                                           addr721:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        addr726:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc15_ = §§pop();
                                                                        if(!_loc20_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        if(_loc20_)
                                                                        {
                                                                           §§push(1250);
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr707);
                                                                           }
                                                                           addr703:
                                                                           addr732:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr735);
                                                                           }
                                                                           addr762:
                                                                        }
                                                                        §§goto(addr736);
                                                                     }
                                                                     addr727:
                                                                  }
                                                                  §§goto(addr708);
                                                               }
                                                               §§goto(addr695);
                                                            }
                                                            §§goto(addr679);
                                                         }
                                                         addr775:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(0.75);
                                                            if(_loc20_)
                                                            {
                                                               break loop1;
                                                            }
                                                            §§goto(addr727);
                                                         }
                                                      }
                                                      addr533:
                                                   }
                                                   §§goto(addr703);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr775);
                                             }
                                          }
                                          §§goto(addr668);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§!U§.§]6§,0,0,0,0,1,20,true);
                                          }
                                          addr750:
                                       }
                                       §§goto(addr762);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr749:
                                    }
                                    §§goto(addr750);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr748:
                                 }
                                 §§goto(addr749);
                              }
                              else
                              {
                                 while(true)
                                 {
                                 }
                                 addr746:
                              }
                              §§goto(addr748);
                           }
                           else
                           {
                              while(true)
                              {
                              }
                              addr744:
                           }
                           §§goto(addr746);
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(§§pop().particles);
                              break loop19;
                           }
                           addr739:
                        }
                     }
                     while(true)
                     {
                        §§goto(addr744);
                     }
                  }
                  break;
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc20_)
                  {
                     §§goto(addr721);
                     §§push(§§pop() * §§pop());
                  }
                  §§goto(addr725);
               }
            }
            §§goto(addr90);
         }
      }
      
      protected function §[!9§(param1:§,_§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param1.applyDamage(param2,false,false,false,true);
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
         }
         switch(§§pop())
         {
         }
         return §!U§.§each §;
      }
      
      public function §>!>§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§,_§ = null;
         var _loc3_:* = int(this.§7@§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§7@§[_loc3_];
            if(!_loc5_)
            {
               §§push(_loc2_.§9!5§());
               loop1:
               while(!§§pop())
               {
                  §§push(_loc2_.§,h§());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           this.§;Q§(_loc2_,param1);
                        }
                        addr36:
                        loop9:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc3_ = §§pop();
                           if(_loc4_ || _loc3_)
                           {
                              if(!_loc5_)
                              {
                                 if(true)
                                 {
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 addr138:
                                 while(true)
                                 {
                                    _loc2_.§^!H§(§!k§.§]^§);
                                    do
                                    {
                                       this.removeObjectWithIndex(_loc3_,false,true,true);
                                    }
                                    while(_loc5_ && _loc2_);
                                    
                                    if(!(_loc5_ && param1))
                                    {
                                       addr116:
                                       if(!(_loc4_ || this))
                                       {
                                          break loop1;
                                       }
                                    }
                                    else
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          if(!(_loc4_ || param1))
                                          {
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   this.removeObjectWithIndex(_loc3_,false,false,false);
                                                   continue loop14;
                                                }
                                                §§goto(addr195);
                                                continue loop14;
                                             }
                                             addr180:
                                          }
                                          if(_loc5_ && _loc2_)
                                          {
                                             break loop9;
                                          }
                                          continue loop9;
                                       }
                                    }
                                 }
                                 addr138:
                              }
                              while(true)
                              {
                                 continue loop9;
                              }
                           }
                           else
                           {
                              addr75:
                              if(!_loc5_)
                              {
                                 addr77:
                                 if(_loc4_ || _loc3_)
                                 {
                                    continue;
                                 }
                                 addr204:
                                 while(true)
                                 {
                                    this.removeObjectWithIndex(_loc3_,false,false,false);
                                    break loop9;
                                    §§goto(addr77);
                                 }
                              }
                              else
                              {
                                 addr176:
                                 _loc2_.§^!H§(§!k§.§]^§);
                              }
                           }
                           §§goto(addr180);
                        }
                        addr195:
                        loop7:
                        while(true)
                        {
                           addr183:
                           while(true)
                           {
                              §§goto(addr36);
                              continue loop7;
                           }
                        }
                        addr36:
                     }
                     else
                     {
                        §§push(this.§%!_§(_loc2_));
                        loop3:
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(_loc2_.isReadyToBeRemoved(param1));
                                    while(!(_loc5_ && _loc3_))
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(_loc2_.§`P§());
                                          if(!_loc4_)
                                          {
                                             continue;
                                          }
                                          if(_loc5_)
                                          {
                                             continue loop3;
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   _loc2_.update(param1);
                                                   §§goto(addr75);
                                                }
                                                §§goto(addr92);
                                             }
                                             §§goto(addr75);
                                          }
                                          §§goto(addr36);
                                       }
                                       §§goto(addr138);
                                    }
                                    addr203:
                                    if(§§pop())
                                    {
                                       §§goto(addr204);
                                    }
                                    §§goto(addr183);
                                 }
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr176);
                  }
               }
               while(true)
               {
                  §§goto(addr203);
                  §§goto(addr116);
               }
            }
            §§goto(addr138);
         }
         if(!_loc5_)
         {
            this.§@z§();
         }
      }
      
      private function §'i§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§'9§ = null;
         for each(_loc1_ in this.§5f§)
         {
            if(!_loc4_)
            {
               if(_loc1_.type != §'s§.§>t§)
               {
                  if(_loc5_)
                  {
                     this.§=!V§.mLevelEngine.mWorld.§#O§(_loc1_.§5!O§);
                  }
               }
            }
         }
      }
      
      public function §>!F§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§,_§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§7@§.length)
            {
               return false;
            }
            _loc2_ = this.§7@§[_loc1_];
            if(_loc4_)
            {
               §§push(_loc2_.explode());
               if(!_loc4_)
               {
                  break;
               }
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(true);
                     break;
                  }
               }
               else
               {
                  addr73:
                  _loc1_++;
               }
               continue;
            }
            §§goto(addr73);
         }
         return §§pop();
      }
      
      public function §%!_§(param1:§,_§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
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
                           §§push(param1.§-h§.§`K§() == §56§.§&f§);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(!§§pop());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§pop();
                                                addr133:
                                                while(true)
                                                {
                                                   §§push(this.§=!V§.§8z§.§switch§(param1.§0c§().GetPosition().x,param1.§0c§().GetPosition().y));
                                                   if(!_loc2_)
                                                   {
                                                      while(_loc3_ && _loc3_)
                                                      {
                                                         continue loop2;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr85:
                                                   }
                                                   continue loop6;
                                                   return §§pop();
                                                }
                                             }
                                             addr132:
                                          }
                                          while(true)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      §§push(true);
                                                      break;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr133);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(false);
                                                   if(_loc3_)
                                                   {
                                                      break loop9;
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                             §§goto(addr85);
                                          }
                                          return §§pop();
                                       }
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr132);
                        }
                     }
                  }
                  §§goto(addr117);
               }
            }
         }
         §§goto(addr97);
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:§'9§ = null;
         var _loc7_:§>!e§ = null;
         if(!_loc12_)
         {
            if(param1 < 0)
            {
               if(_loc13_)
               {
                  §§goto(addr30);
               }
            }
            var _loc5_:§,_§;
            §§push((_loc5_ = this.§7@§[param1]).§0T§());
            if(!_loc12_)
            {
               if(§§pop())
               {
                  if(_loc13_ || param1)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = this).§+!S§);
                     if(!_loc12_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc13_)
                     {
                        _loc8_.§+!S§ = _loc9_;
                     }
                     if(_loc13_ || param1)
                     {
                        addr260:
                        if(_loc5_ == this.§=!V§.activeObject)
                        {
                           while(true)
                           {
                              §§push(this.§=!V§);
                              loop9:
                              while(true)
                              {
                                 §§pop().activeObject = null;
                                 addr269:
                                 while(true)
                                 {
                                    continue loop9;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr204);
                        }
                     }
                     §§goto(addr205);
                  }
                  else
                  {
                     addr79:
                     §§push((_loc8_ = this).§`t§);
                     if(_loc13_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc9_ = §§pop();
                     if(_loc13_)
                     {
                        _loc8_.§`t§ = _loc9_;
                     }
                     if(_loc13_ || param1)
                     {
                        §§goto(addr260);
                     }
                  }
                  §§goto(addr259);
               }
               else
               {
                  §§push(_loc5_.§`P§());
                  if(_loc13_)
                  {
                     if(§§pop())
                     {
                        if(!_loc12_)
                        {
                           §§goto(addr79);
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr260);
                  }
               }
               §§goto(addr204);
            }
            §§goto(addr169);
         }
         addr30:
      }
      
      protected function addDestructionParticles(param1:§,_§, param2:§?F§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      private function §+!M§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§4@§);
            if(_loc2_)
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§=U§);
                     if(!(_loc3_ && this))
                     {
                        if(!§§pop().contains(param1))
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§@!G§);
                              if(_loc2_)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§5!X§);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(§§pop().contains(param1))
                                          {
                                             if(!_loc3_)
                                             {
                                                addr48:
                                                this.§5!X§.removeChild(param1);
                                             }
                                             if(_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push(this.§@!G§);
                                                }
                                                else
                                                {
                                                   addr99:
                                                }
                                                if(_loc2_ || _loc3_)
                                                {
                                                   return;
                                                }
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   return;
                                                }
                                                addr145:
                                                if(_loc2_ || _loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop0;
                                                break loop1;
                                             }
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(_loc3_ && _loc3_)
                                                {
                                                   §§push(this.§=U§);
                                                }
                                                else
                                                {
                                                   addr141:
                                                }
                                                if(_loc3_)
                                                {
                                                   return;
                                                }
                                                addr170:
                                                continue;
                                                break loop0;
                                             }
                                             break;
                                          }
                                          return;
                                       }
                                       §§goto(addr48);
                                    }
                                    addr103:
                                    if(!(_loc3_ && this))
                                    {
                                       return;
                                    }
                                    addr166:
                                    this.§4@§.removeChild(param1);
                                    §§goto(addr170);
                                 }
                                 §§goto(addr99);
                              }
                              break;
                           }
                           §§pop().removeChild(param1);
                           §§goto(addr103);
                        }
                        §§goto(addr141);
                     }
                     break;
                  }
                  §§pop().removeChild(param1);
                  §§goto(addr145);
               }
            }
            §§goto(addr166);
         }
         §§goto(addr127);
      }
      
      protected function checkExplosions(param1:§,_§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.§if §());
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
                        addr138:
                        while(true)
                        {
                           §§push(param1.§`!^§());
                           if(!(_loc3_ && param1))
                           {
                              if(_loc3_ && param1)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
                  while(§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(param1.§>R§);
                        if(_loc2_)
                        {
                           if(§§pop().toUpperCase() == §-!O§.§@!d§)
                           {
                              if(_loc2_ || param1)
                              {
                                 addr100:
                                 if(!(_loc3_ && this))
                                 {
                                    addr107:
                                    this.addExplosions(§2!5§.§=!O§,param1.§0c§().GetPosition().x,param1.§0c§().GetPosition().y);
                                 }
                                 else
                                 {
                                    §§goto(addr138);
                                 }
                              }
                           }
                           else
                           {
                              this.addExplosions(§2!5§.§,!0§,param1.§0c§().GetPosition().x,param1.§0c§().GetPosition().y);
                              if(!(_loc3_ && param1))
                              {
                                 break;
                              }
                           }
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr100);
                  }
                  return;
               }
            }
         }
         §§goto(addr107);
      }
      
      public function §4!P§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.removeObjectWithIndex(this.§7@§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §+!+§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§+!Z§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr78:
               while(true)
               {
                  §§push(-§§pop());
                  addr79:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr77:
         }
         while(true)
         {
            §§push(this.§+!Z§);
            if(!_loc4_)
            {
               §§push(param2);
               if(!_loc4_)
               {
                  if(!(_loc4_ && this))
                  {
                     addr49:
                     §§push(-§§pop());
                     if(!(_loc4_ && param2))
                     {
                        §§pop().y = §§pop();
                        if(!(_loc4_ && param1))
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr79);
               }
               §§goto(addr49);
            }
            else
            {
               §§goto(addr77);
            }
         }
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§,_§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§7@§.length)
         {
            _loc3_ = this.§7@§[_loc2_] as §,_§;
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
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr232:
                           while(true)
                           {
                              §§push(_loc3_.§0T§());
                           }
                           addr171:
                           if(!(_loc4_ || _loc3_))
                           {
                              continue;
                           }
                           loop27:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop28:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(param1);
                                       loop13:
                                       while(!_loc5_)
                                       {
                                          §§push(!§§pop());
                                          loop14:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop15:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop16:
                                                   while(_loc4_ || _loc3_)
                                                   {
                                                      §§pop();
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.§[r§);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().mTryToBlink);
                                                            addr121:
                                                            addr162:
                                                            loop19:
                                                            while(_loc4_ || param1)
                                                            {
                                                               §§push(0);
                                                               while(!(_loc5_ && param1))
                                                               {
                                                                  §§push(§§pop() <= §§pop());
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc4_ || _loc2_))
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        while(!_loc5_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              break loop16;
                                                                           }
                                                                           continue loop27;
                                                                        }
                                                                        continue loop2;
                                                                        addr211:
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        addr94:
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              do
                                                                              {
                                                                                 _loc2_++;
                                                                                 if(_loc5_ && _loc2_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          break loop24;
                                                                                          addr59:
                                                                                       }
                                                                                       while(false)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop28;
                                                                                 }
                                                                              }
                                                                              while(_loc4_);
                                                                              
                                                                              while(!_loc5_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop17;
                                                                              addr156:
                                                                              addr39:
                                                                           }
                                                                           §§push(true);
                                                                           addr97:
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    §§goto(addr156);
                                                                                    continue loop26;
                                                                                 }
                                                                                 addr155:
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              addr200:
                                                                              addr200:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 break loop13;
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.§[h§);
                                                                           break loop19;
                                                                        }
                                                                        addr94:
                                                                        addr215:
                                                                     }
                                                                  }
                                                                  §§goto(addr155);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  §§goto(addr171);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr163);
                                                               §§goto(addr121);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr215);
                                                      §§goto(addr188);
                                                   }
                                                   addr188:
                                                }
                                                §§goto(addr94);
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr232);
                                    §§goto(addr200);
                                 }
                              }
                              §§goto(addr39);
                           }
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           §§goto(addr211);
                        }
                        addr209:
                     }
                     §§goto(addr200);
                  }
               }
            }
            §§goto(addr59);
         }
         return false;
      }
      
      public function §[E§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§,_§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§7@§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_ || _loc2_)
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§7@§[_loc3_] as §,_§));
               if(!_loc5_)
               {
                  §§push(§§pop());
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           addr49:
                           §§pop();
                           if(_loc6_ || this)
                           {
                              §§push(_loc4_.§0T§());
                              loop22:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr222:
                                 loop1:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr223:
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
                                                §§push(_loc4_.§[h§);
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      if(_loc6_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§push(!§§pop());
                                                                  }
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           loop7:
                                                                           while(!_loc5_)
                                                                           {
                                                                              if(!(_loc6_ || _loc2_))
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                              §§pop();
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_.§[r§);
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().mTryToBlink);
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       addr155:
                                                                                       while(!_loc5_)
                                                                                       {
                                                                                          §§push(§§pop() <= §§pop());
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             §§push(§§pop());
                                                                                             if(_loc5_ && this)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             if(!(_loc6_ || _loc2_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr103:
                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                   if(!(_loc6_ || this))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   if(_loc5_ && _loc2_)
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            _loc2_++;
                                                                                                         }
                                                                                                         while(!(_loc5_ && param1))
                                                                                                         {
                                                                                                            if(!(_loc5_ && _loc3_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr80:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_.§[r§);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§pop().mTryToScream);
                                                                                                               if(!(_loc5_ && param1))
                                                                                                               {
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         addr135:
                                                                                                         addr177:
                                                                                                      }
                                                                                                      addr58:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                         }
                                                                                                         _loc3_ = §§pop();
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         §§goto(addr135);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                   addr130:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr130);
                                                                                             }
                                                                                             §§goto(addr177);
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop1;
                                                                           addr207:
                                                                        }
                                                                        §§goto(addr130);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            §§goto(addr58);
                                                         }
                                                         addr185:
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr185);
                                    }
                                 }
                              }
                           }
                           §§goto(addr217);
                        }
                     }
                     §§goto(addr222);
                  }
                  §§goto(addr223);
               }
               §§goto(addr49);
            }
            break;
         }
         return §§pop();
      }
      
      public function §`$§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§,_§ = null;
         var _loc1_:int = 0;
         loop0:
         for each(_loc2_ in this.§7@§)
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
                           addr114:
                           while(true)
                           {
                              addr80:
                              while(true)
                              {
                                 §§push(_loc2_.§^M§());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ && this)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop8:
                                          while(_loc5_)
                                          {
                                             if(!_loc6_)
                                             {
                                                §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc2_.§%t§());
                                                   if(_loc5_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop7;
                                                addr98:
                                             }
                                             continue loop1;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                     loop10:
                     while(§§pop())
                     {
                        if(!(_loc6_ && this))
                        {
                           if(_loc5_)
                           {
                              if(_loc5_ || this)
                              {
                                 while(true)
                                 {
                                    _loc1_++;
                                    addr78:
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          break loop10;
                                       }
                                       §§goto(addr80);
                                    }
                                 }
                                 addr77:
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr78);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr77);
         }
         return _loc1_;
      }
      
      public function §=^§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§,_§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§7@§)
         {
            if(!_loc5_)
            {
               §§push(Boolean(_loc2_));
               if(_loc6_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        addr60:
                        §§pop();
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(_loc2_.isTexture());
                           if(_loc5_)
                           {
                           }
                           addr73:
                           if(§§pop())
                           {
                              if(_loc6_ || this)
                              {
                                 addr91:
                                 _loc1_++;
                              }
                           }
                           continue;
                        }
                        §§goto(addr91);
                     }
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr73);
               }
               §§goto(addr60);
            }
            §§goto(addr91);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§,_§ = null;
         var _loc2_:* = int(this.§7@§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7@§[_loc2_];
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
                              §§push(_loc3_.§0T§());
                              while(!(_loc4_ && param1))
                              {
                                 §§push(Boolean(§§pop()));
                                 addr61:
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(_loc5_)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                §§push(_loc3_.§[r§);
                                                §§push(§&!_§.§6!c§);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() * param1);
                                                }
                                                §§pop().mTryToScream = §§pop();
                                             }
                                             loop12:
                                             while(_loc5_ || param1)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop4;
                                                }
                                                while(true)
                                                {
                                                   continue loop12;
                                                }
                                             }
                                             loop9:
                                             while(true)
                                             {
                                                addr52:
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc3_.§[h§ > 0);
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc5_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               break loop10;
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop2;
                                                         addr121:
                                                      }
                                                      §§goto(addr61);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop9;
                                                }
                                             }
                                             addr98:
                                             addr131:
                                          }
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc2_ = §§pop();
                                             if(_loc5_ || this)
                                             {
                                                if(true)
                                                {
                                                   break loop11;
                                                }
                                                §§goto(addr52);
                                             }
                                             else
                                             {
                                                §§goto(addr98);
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr121);
                     }
                  }
               }
            }
            §§goto(addr107);
         }
      }
      
      public function §?_§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§,_§ = null;
         var _loc1_:* = int(this.§7@§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7@§[_loc1_] as §,_§;
            if(_loc4_)
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
                              §§push(_loc2_.§`P§());
                              loop5:
                              while(!_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc3_ && this)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§pop();
                                                addr128:
                                                while(true)
                                                {
                                                   addr54:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§[h§ > 0);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                             addr127:
                                          }
                                          loop8:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   §§goto(addr88);
                                                   §§push(true);
                                                }
                                                else
                                                {
                                                   while(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr128);
                                                   addr96:
                                                }
                                                §§goto(addr128);
                                             }
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc1_ = §§pop();
                                                if(_loc4_ || _loc1_)
                                                {
                                                   if(true)
                                                   {
                                                      break loop8;
                                                   }
                                                   §§goto(addr54);
                                                }
                                                else
                                                {
                                                   §§goto(addr96);
                                                }
                                             }
                                             continue loop4;
                                          }
                                          continue loop0;
                                       }
                                       continue loop2;
                                       addr117:
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr127);
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr117);
                  }
               }
            }
            §§goto(addr128);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§,_§ = null;
         var _loc1_:* = int(this.§7@§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7@§[_loc1_] as §,_§;
            if(_loc4_ || _loc2_)
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
                              §§push(_loc2_.§[h§);
                              while(true)
                              {
                                 §§push(0);
                                 addr254:
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    addr255:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr257:
                                       while(!(_loc3_ && _loc2_))
                                       {
                                       }
                                       continue loop3;
                                    }
                                 }
                                 loop26:
                                 while(true)
                                 {
                                    §§push(_loc2_.§[h§);
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       break;
                                    }
                                    §§push(0);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(§§pop() > §§pop());
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr96:
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(!_loc3_)
                                                {
                                                   loop27:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop33:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break loop27;
                                                               }
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  §§push(false);
                                                                  loop28:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc4_ || _loc1_))
                                                                     {
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 continue loop26;
                                                                              }
                                                                              addr187:
                                                                           }
                                                                           else
                                                                           {
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop18:
                                                                                    for(; _loc4_; while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc3_ && _loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop24;
                                                                                       }
                                                                                       continue loop27;
                                                                                       §§goto(addr96);
                                                                                    })
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             loop29:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.§[b§());
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr195:
                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                         {
                                                                                                            addr202:
                                                                                                            §§push(!§§pop());
                                                                                                            if(_loc4_ || _loc1_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           continue loop29;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(false);
                                                                                                                           §§goto(addr215);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr212:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_.§`P§());
                                                                                                                        addr160:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue loop30;
                                                                                                                           }
                                                                                                                           if(_loc4_ || this)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              continue loop18;
                                                                                                                           }
                                                                                                                           §§goto(addr257);
                                                                                                                        }
                                                                                                                        continue loop30;
                                                                                                                     }
                                                                                                                     addr157:
                                                                                                                  }
                                                                                                                  §§goto(addr202);
                                                                                                               }
                                                                                                               addr210:
                                                                                                            }
                                                                                                            §§goto(addr215);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr270:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc2_.§7!?§);
                                                                                                               addr222:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() == § $§.§[!W§);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                     break loop30;
                                                                                                                  }
                                                                                                                  break loop30;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr195);
                                                                                                         }
                                                                                                         addr269:
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop29;
                                                                                                }
                                                                                                while(_loc4_ || this)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(_loc2_.§ !^§());
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      addr44:
                                                                                                      do
                                                                                                      {
                                                                                                         §§push(_loc1_);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr222);
                                                                                                            }
                                                                                                         }
                                                                                                         _loc1_ = §§pop();
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_ || _loc1_)
                                                                                                            {
                                                                                                               if(!(_loc3_ && this))
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     continue loop26;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            continue loop33;
                                                                                                         }
                                                                                                      }
                                                                                                      while(!(_loc3_ && _loc2_));
                                                                                                      
                                                                                                      §§goto(addr270);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr255);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr210);
                                                                                    }
                                                                                    while(_loc4_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§goto(addr269);
                                                                                       }
                                                                                       §§goto(addr235);
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                           continue loop28;
                                                                        }
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                                  addr131:
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                      }
                                                      §§goto(addr44);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                addr215:
                                                while(_loc3_)
                                                {
                                                   continue loop17;
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr160);
                                          }
                                          §§goto(addr175);
                                       }
                                       §§goto(addr131);
                                    }
                                    else
                                    {
                                       §§goto(addr254);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr266);
                     }
                  }
               }
            }
            §§goto(addr214);
         }
         return true;
      }
      
      public function §7h§(param1:Boolean = false) : §,_§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:§,_§ = null;
         if(_loc8_)
         {
            if(!this.isPigsAlive())
            {
               if(!(_loc7_ && _loc3_))
               {
                  return null;
               }
            }
         }
         var _loc2_:int = this.§7@§.length;
         §§push(1);
         if(!_loc7_)
         {
            §§push(int(§§pop() + Math.random() * this.§[E§(param1)));
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
                     if(_loc7_ && this)
                     {
                        break;
                     }
                     loop3:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc7_ && _loc2_)
                        {
                           continue loop1;
                        }
                        §§push(_loc2_);
                        if(_loc7_ && _loc3_)
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           if(_loc7_)
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                        §§push(Boolean(_loc6_ = this.§7@§[_loc5_]));
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(§§pop());
                           if(!(_loc7_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    §§pop();
                                    if(_loc8_)
                                    {
                                       §§push(_loc6_.§0T§());
                                       if(_loc8_ || _loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc8_)
                                          {
                                             addr272:
                                             §§push(§§pop());
                                             loop22:
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
                                                         §§push(_loc6_.§[h§);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            addr243:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() > §§pop());
                                                            }
                                                            addr158:
                                                            if(_loc7_ && param1)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(0);
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc8_ || _loc2_)
                                                               {
                                                                  §§push(§§pop() <= §§pop());
                                                                  if(_loc8_)
                                                                  {
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc8_ || _loc3_)
                                                                           {
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          _loc4_++;
                                                                                          while(!_loc8_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(_loc8_ || param1)
                                                                                                {
                                                                                                   addr255:
                                                                                                   §§push(!§§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr256:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr255:
                                                                                                }
                                                                                                §§goto(addr257);
                                                                                             }
                                                                                          }
                                                                                          addr205:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_ >= _loc3_)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      return _loc6_;
                                                                                                   }
                                                                                                   §§goto(addr203);
                                                                                                }
                                                                                                addr129:
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                             §§goto(addr205);
                                                                                          }
                                                                                          addr203:
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_++;
                                                                                             if(_loc8_ || _loc2_)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr119);
                                                                                                }
                                                                                                loop14:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_.§[r§);
                                                                                                   if(_loc8_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop().mTryToScream);
                                                                                                      if(!(_loc7_ && _loc2_))
                                                                                                      {
                                                                                                         §§goto(addr158);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         addr211:
                                                                                                         loop17:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                            addr212:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc8_ || this)
                                                                                                                  {
                                                                                                                     if(!(_loc7_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                                  §§goto(addr256);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     §§goto(addr246);
                                                                                                                  }
                                                                                                                  addr245:
                                                                                                               }
                                                                                                               §§goto(addr257);
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                      }
                                                                                                      addr210:
                                                                                                   }
                                                                                                   addr209:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr210);
                                                                                                   }
                                                                                                }
                                                                                                continue loop6;
                                                                                             }
                                                                                             §§goto(addr129);
                                                                                          }
                                                                                          addr119:
                                                                                          continue loop3;
                                                                                          addr106:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr209);
                                                                                       }
                                                                                       addr258:
                                                                                    }
                                                                                    §§goto(addr205);
                                                                                 }
                                                                                 §§goto(addr106);
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr255);
                                                                        }
                                                                        §§goto(addr257);
                                                                     }
                                                                     §§goto(addr212);
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               §§goto(addr243);
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                      }
                                                   }
                                                   addr274:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr245);
                                                }
                                             }
                                          }
                                          §§goto(addr274);
                                       }
                                       §§goto(addr272);
                                    }
                                    §§goto(addr258);
                                 }
                                 §§goto(addr255);
                              }
                              §§goto(addr272);
                           }
                           §§goto(addr256);
                        }
                        §§goto(addr257);
                     }
                     continue;
                  }
                  continue loop1;
               }
               return null;
            }
         }
      }
      
      public function §`!_§() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§7@§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc1_))
            {
               if(!(_loc4_ && _loc3_))
               {
                  if(!_loc4_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(_loc1_);
                                 loop16:
                                 while(!(_loc4_ && this))
                                 {
                                    §§push(this.§=!V§.slingshot.§`!_§());
                                    loop13:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          addr184:
                                          §§push(§§pop() + §§pop());
                                          break;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc4_)
                                       {
                                          §§push(int(§§pop()));
                                          loop14:
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                             addr103:
                                             while(_loc3_)
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§push(_loc1_);
                                                   if(_loc4_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break loop0;
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            §§push(§^!2§.§&6§.getValue());
                                                            while(true)
                                                            {
                                                               addr158:
                                                               §§push(§§pop() + §§pop() * int((this.§7@§[_loc2_] as §,_§).§'!V§));
                                                               if(_loc4_)
                                                               {
                                                                  break loop13;
                                                               }
                                                               §§push(int(§§pop()));
                                                               while(true)
                                                               {
                                                                  _loc1_ = §§pop();
                                                                  addr162:
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     addr113:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr115:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                           break loop16;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr147:
                                                         }
                                                         addr186:
                                                         while(true)
                                                         {
                                                            _loc1_ = §§pop();
                                                            addr187:
                                                            addr136:
                                                            while(!(this.§7@§[_loc2_] as §,_§).§ !^§())
                                                            {
                                                               §§goto(addr113);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  continue loop0;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop5;
                                                               §§goto(addr187);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr136);
                                             }
                                             addr117:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr119);
                                                }
                                                §§goto(addr162);
                                             }
                                          }
                                       }
                                       §§goto(addr158);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr186);
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    §§goto(addr117);
                                 }
                                 continue;
                                 addr75:
                              }
                              §§goto(addr103);
                           }
                           else
                           {
                              addr166:
                              §§push(_loc1_);
                              §§push((this.§7@§[_loc2_] as §,_§).§-h§.score);
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr166);
               }
               §§goto(addr115);
            }
            §§goto(addr75);
         }
         return §§pop();
      }
      
      public function §`!L§(param1:§,_§, param2:§,_§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1.§`P§());
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
                              §§push(param2.§`P§());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr138:
                                 while(!(_loc3_ && _loc3_))
                                 {
                                 }
                                 continue loop3;
                                 addr123:
                                 if(!(_loc3_ && param1))
                                 {
                                    addr130:
                                    loop11:
                                    for(; _loc4_; §§goto(addr130))
                                    {
                                       while(true)
                                       {
                                          §§push(param2.§8j§());
                                          if(!(_loc3_ && param1))
                                          {
                                             §§push(!§§pop());
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr52:
                                                if(_loc3_)
                                                {
                                                   break loop11;
                                                }
                                                addr54:
                                                if(_loc4_ || param2)
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§push(true);
                                                               while(!(_loc4_ || _loc3_))
                                                               {
                                                                  while(!(_loc3_ && param1))
                                                                  {
                                                                     §§goto(addr123);
                                                                  }
                                                                  §§goto(addr138);
                                                               }
                                                               addr85:
                                                               if(_loc4_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc3_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr116);
                                                               }
                                                               continue loop2;
                                                               addr107:
                                                               addr85:
                                                            }
                                                            else
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               addr161:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1.§8j§());
                                                               if(_loc4_ || param1)
                                                               {
                                                                  §§goto(addr107);
                                                                  §§push(!§§pop());
                                                               }
                                                               §§goto(addr116);
                                                               §§goto(addr161);
                                                            }
                                                         }
                                                         §§goto(addr85);
                                                      }
                                                      §§push(false);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr85);
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr85);
                                          }
                                          §§goto(addr52);
                                       }
                                    }
                                    §§pop();
                                    return §§pop();
                                 }
                              }
                           }
                        }
                     }
                     while(!§§pop())
                     {
                        §§goto(addr96);
                     }
                     §§goto(addr147);
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      public function §-,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.mSardineCanAdded = true;
            do
            {
               this.§`t§ = 0;
            }
            while(_loc1_);
            
         }
      }
      
      public function §`o§(param1:§,_§, param2:§,_§) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §7!c§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§,_§ = null;
         var _loc1_:* = int(this.§7@§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7@§[_loc1_] as §,_§;
            if(_loc4_)
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
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
                                 this.removeObjectWithIndex(_loc1_,true,true,true);
                                 addr106:
                                 while(_loc4_ || _loc1_)
                                 {
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    addr76:
                                    addr130:
                                    while(true)
                                    {
                                       §§push(_loc2_.§0T§());
                                       if(!_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc3_ && _loc1_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop4;
                                    }
                                 }
                                 addr57:
                                 if(_loc4_ || _loc2_)
                                 {
                                    while(false)
                                    {
                                       §§goto(addr76);
                                    }
                                    continue loop0;
                                    addr74:
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(_loc1_);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc1_ = §§pop();
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr57);
                              }
                              §§goto(addr106);
                           }
                        }
                        addr98:
                     }
                     §§goto(addr130);
                  }
               }
            }
            §§goto(addr74);
         }
      }
      
      public function §[!'§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§,_§ = null;
         var _loc1_:* = int(this.§7@§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7@§[_loc1_] as §,_§;
            if(_loc4_)
            {
               §§push(_loc2_ == null);
               if(!_loc3_)
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
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.§`!^§());
                              if(_loc4_ || _loc1_)
                              {
                                 if(_loc3_ && _loc1_)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop3;
                                       }
                                       this.removeObjectWithIndex(_loc1_,true,true,true);
                                       addr96:
                                       while(true)
                                       {
                                       }
                                       addr96:
                                    }
                                    §§goto(addr96);
                                 }
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc1_ = §§pop();
                                    if(_loc4_ || _loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr96);
                                 }
                                 if(true)
                                 {
                                    break loop4;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr84);
               }
            }
            §§goto(addr96);
         }
      }
      
      public function §-?§() : int
      {
         return this.§7@§.length;
      }
      
      public function §]!`§(param1:§&!E§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§,_§ = null;
         var _loc5_:§5!N§ = null;
         var _loc6_:§'s§ = null;
         var _loc7_:§'9§ = null;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc9_)
            {
               break;
            }
            if(§§pop() >= this.§7@§.length)
            {
               §§push(Number(0));
               break;
            }
            if((_loc4_ = this.§7@§[_loc2_]).isGround())
            {
               if(_loc8_)
               {
                  continue;
               }
            }
            else
            {
               (_loc5_ = new §5!N§()).angle = _loc4_.§4!W§();
               if(!_loc8_)
               {
                  _loc5_.id = _loc4_.§>R§;
                  loop1:
                  while(true)
                  {
                     _loc5_.x = _loc4_.§0c§().GetPosition().x;
                     loop2:
                     while(true)
                     {
                        _loc5_.y = _loc4_.§0c§().GetPosition().y;
                        loop3:
                        while(_loc9_)
                        {
                           while(true)
                           {
                              _loc5_.uniqueID = _loc4_.uniqueID;
                              addr75:
                              while(!_loc8_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  param1.§@!,§(_loc5_);
                  if(_loc9_ || param1)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr75);
               }
            }
            §§push(_loc2_);
            if(!_loc8_)
            {
               §§push(§§pop() + 1);
               if(_loc9_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            _loc2_ = §§pop();
         }
         var _loc3_:* = §§pop();
         if(_loc9_ || this)
         {
            while(_loc3_ < this.§5f§.length)
            {
               _loc7_ = this.§5f§[_loc3_];
               _loc6_ = new §'s§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§>!S§,_loc7_.§2!;§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§[z§,_loc7_.motorSpeed,_loc7_.§%0§,_loc7_.maxTorque);
               if(!_loc9_)
               {
                  continue;
               }
               param1.§7!F§(_loc6_);
               if(_loc8_ && _loc2_)
               {
                  continue;
               }
               §§push(_loc3_);
               if(!_loc8_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc8_)
                  {
                     addr214:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr214);
            }
         }
      }
      
      public function §^=§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§7@§.length <= _loc1_)
            {
               if(!_loc2_)
               {
                  if(_loc3_ || this)
                  {
                     break;
                  }
                  continue;
                  addr84:
               }
            }
            else if(this.§7@§[_loc1_].isGround())
            {
               if(_loc3_ || _loc3_)
               {
                  _loc1_++;
               }
               §§goto(addr84);
            }
            else
            {
               this.§4!P§(this.§7@§[_loc1_]);
            }
         }
      }
      
      public function §'g§(param1:Point, param2:Point) : Array
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
               if(!(_loc5_ && param1))
               {
                  if(§§pop() >= this.§7@§.length)
                  {
                     if(!(_loc5_ && param2))
                     {
                        if(_loc6_ || param1)
                        {
                           break;
                        }
                        addr104:
                        _loc3_.push(this.§7@§[_loc4_]);
                        while(true)
                        {
                           addr68:
                           while(true)
                           {
                              §§push(_loc4_);
                              addr70:
                              while(true)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc6_)
                                 {
                                    addr74:
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                    }
                                    addr74:
                                 }
                                 §§goto(addr74);
                              }
                           }
                        }
                        addr110:
                     }
                     while(!_loc6_)
                     {
                        §§goto(addr110);
                     }
                     continue;
                  }
                  if(this.§7@§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     §§goto(addr104);
                  }
                  §§goto(addr68);
               }
               §§goto(addr70);
            }
            §§goto(addr74);
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§ !3§ = param1;
            if(!(_loc4_ && _loc3_))
            {
               addr28:
               this.§!&§(param1);
            }
            var _loc2_:* = Number(0);
            while(true)
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc3_))
               {
                  if(!_loc4_)
                  {
                     if(§§pop() >= this.§7@§.length)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           this.§7@§[_loc2_].sprite.visible = !this.§ !3§;
                           addr95:
                           loop1:
                           while(true)
                           {
                              addr72:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr74:
                                 while(true)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!_loc4_)
                                    {
                                       addr78:
                                       §§push(Number(§§pop()));
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          continue loop1;
                                       }
                                       addr78:
                                    }
                                    §§goto(addr78);
                                 }
                              }
                           }
                           addr114:
                        }
                        while(!(_loc3_ || this))
                        {
                           §§goto(addr114);
                        }
                        continue;
                     }
                     if(this.§7@§[_loc2_].isTexture())
                     {
                        §§goto(addr95);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr74);
               }
               §§goto(addr78);
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7S§ = param1;
         }
      }
      
      public function §[m§() : Boolean
      {
         return this.§7S§;
      }
      
      public function §0!E§() : int
      {
         return this.§ !<§;
      }
      
      public function §>B§() : int
      {
         return this.§+!S§;
      }
      
      public function §9!X§(param1:String) : §,_§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§,_§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7@§.length)
         {
            _loc3_ = this.§7@§[_loc2_] as §,_§;
            if(!(_loc4_ && param1))
            {
               if(_loc3_.uniqueID == param1)
               {
                  if(!(_loc4_ && _loc2_))
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
