package §,![§
{
   import §!!!§.§6!l§;
   import §#!q§.§!%§;
   import §2`§.§%!!§;
   import §2`§.§5E§;
   import §2`§.§6y§;
   import §3!J§.§4!2§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   import §;n§.§<"5§;
   import §>z§.§#U§;
   import §>z§.§5!?§;
   import §@V§.§#=§;
   import §@V§.§1"-§;
   import flash.geom.Rectangle;
   
   public class §[!9§
   {
       
      
      private var §!"'§:int;
      
      private var §#m§:Number;
      
      private var §"z§:Boolean;
      
      protected var §&%§:Sprite;
      
      private var §1!;§:Array;
      
      private var §?!2§:Boolean = true;
      
      private var §,%§:§%!!§;
      
      private var §@!?§:Sprite;
      
      private var §4!c§:Sprite;
      
      private var §-!o§:Number;
      
      private var §>!]§:Number;
      
      protected var §2c§:Number = 1.0;
      
      protected var §6!f§:Number = 0.0;
      
      protected var §<!C§:Number = 0.0;
      
      protected var §2!y§:Number = 0.0;
      
      protected var §!a§:Number = 0.0;
      
      protected var §0!F§:Number = 0.0;
      
      protected var §1!!§:Number = 0.0;
      
      protected var §"§:Boolean;
      
      public function §[!9§(param1:§5!?§, param2:Sprite, param3:§%!!§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            this.§1!;§ = [];
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§,%§ = param3;
                  loop2:
                  while(_loc6_)
                  {
                     this.§&%§ = param2;
                     while(true)
                     {
                        this.§#m§ = param1.speed;
                        while(_loc6_ || param1)
                        {
                           this.§"z§ = param1.foreground;
                           while(_loc6_)
                           {
                              this.initialize(param1,param4);
                              if(_loc6_ || param2)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function get §=!1§() : Number
      {
         return this.§#m§;
      }
      
      public function get §6!6§() : Boolean
      {
         return this.§"z§;
      }
      
      protected function get §4!e§() : Number
      {
         return this.§!"'§;
      }
      
      protected function §^#§(param1:§5E§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<!C§ = param1.pivotY;
         }
         while(this.§"z§)
         {
            this.§6!f§ = 0;
            if(!_loc3_)
            {
               return;
            }
            addr20:
            addr65:
            if(!_loc3_)
            {
               break;
            }
            if(!_loc3_)
            {
               continue;
            }
            §§goto(addr20);
         }
         this.§6!f§ = param1.pivotX;
         §§goto(addr65);
      }
      
      protected function §2!,§(param1:DisplayObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Rectangle = param1.§4j§;
         if(!(_loc3_ && _loc3_))
         {
            this.§<!C§ = _loc2_.bottom;
         }
         do
         {
            this.§6!f§ = (_loc2_.left + _loc2_.right) / 2;
         }
         while(!_loc4_);
         
      }
      
      protected function §!!u§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§5E§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §6y§.§=!0§(param1,this.§,%§,param2)))
         {
            if(!_loc7_)
            {
               if(!(_loc5_ = this.§,%§.§5!X§(param1)))
               {
                  if(_loc6_)
                  {
                     return;
                  }
               }
               else
               {
                  §§push(this);
                  §§push(param3);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc5_.scale);
                  }
                  §§pop().§2c§ = §§pop();
                  loop0:
                  while(true)
                  {
                     addr77:
                     while(true)
                     {
                        this.§^#§(_loc5_);
                        while(true)
                        {
                           §§push(this);
                           §§push(_loc5_.width);
                           if(!_loc7_)
                           {
                              §§push(§§pop() - 2);
                           }
                           §§pop().§!"'§ = §§pop();
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(_loc6_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               addr152:
               return;
            }
            this.§2!,§(_loc4_);
            loop3:
            while(true)
            {
               addr110:
               while(true)
               {
                  §§push(this);
                  §§push(_loc4_.width);
                  if(_loc6_ || param3)
                  {
                     §§push(§§pop() - 2);
                  }
                  §§pop().§!"'§ = §§pop();
                  continue loop3;
               }
            }
            addr97:
            addr145:
            §§goto(addr146);
         }
         else
         {
            this.§2c§ = param3;
            if(_loc6_)
            {
               §§goto(addr97);
            }
         }
         §§goto(addr145);
      }
      
      protected function §%!'§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         §§push(param3);
         if(!(_loc9_ && param3))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         loop0:
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§%!a§(param1,param2)).x = _loc6_ * this.§!"'§;
            if(_loc10_ || param3)
            {
               _loc7_.y = 0;
               while(true)
               {
                  _loc7_.scaleX = 1;
                  loop2:
                  while(_loc10_ || param3)
                  {
                     while(true)
                     {
                        _loc7_.scaleY = 1;
                        loop4:
                        while(true)
                        {
                           addr87:
                           while(true)
                           {
                              _loc5_.addChild(_loc7_);
                              while(!_loc9_)
                              {
                                 _loc6_++;
                                 if(!(_loc9_ && param1))
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr110);
         }
         if(_loc10_ || param3)
         {
            if(§6y§.§'!L§(param1))
            {
               addr129:
               _loc8_ = this.§;3§(_loc5_);
               if(!(_loc9_ && param2))
               {
                  _loc5_.§8V§();
                  if(!(_loc9_ && param1))
                  {
                     _loc5_.dispose();
                  }
               }
               (_loc5_ = _loc8_).flatten();
            }
            return _loc5_;
         }
         §§goto(addr129);
      }
      
      private function §;3§(param1:Sprite) : Sprite
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc2_:Sprite = new Sprite();
         if(!(_loc8_ && param1))
         {
            §§push(param1.numChildren > 0);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     while(true)
                     {
                        §§push(int(Sprite(param1.getChildAt(0)).numChildren));
                        loop5:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr106:
                           while(!_loc8_)
                           {
                              continue loop5;
                           }
                           addr116:
                           while(true)
                           {
                              §§push(param1.getChildAt(0) is Sprite);
                              if(!_loc9_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr116);
                           }
                        }
                     }
                  }
                  return _loc2_;
                  addr86:
               }
               §§goto(addr116);
            }
         }
         §§goto(addr70);
      }
      
      protected function §%!a§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§5E§ = null;
         var _loc3_:DisplayObject = §6y§.§=!0§(param1,this.§,%§,param2);
         if(_loc6_ || param2)
         {
            if(!_loc3_)
            {
               addr47:
               _loc4_ = this.§,%§.§5!X§(param1);
               _loc3_ = new §4!2§(_loc4_.texture,false,param2);
            }
            return _loc3_;
         }
         §§goto(addr47);
      }
      
      protected function §>"§(param1:Number, param2:int) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(2);
         §§push(§#=§.§5B§);
         if(!_loc4_)
         {
            §§push(1.5);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || param1)
               {
                  addr55:
                  §§push(§§pop() / (param2 * param1));
               }
               §§push(§§pop() + §§pop());
               if(_loc3_)
               {
                  return §§pop() * 2;
               }
            }
         }
         §§goto(addr55);
      }
      
      protected function initialize(param1:§5!?§, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:int = 0;
         if(!(_loc8_ && _loc3_))
         {
            if(param1.scale == 0)
            {
               this.§2c§ = 1;
               loop0:
               while(true)
               {
                  if(_loc9_)
                  {
                     loop1:
                     while(true)
                     {
                        this.§!!u§(param1.§-Q§,param1.highQuality,this.§2c§);
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              §§push(this.§!"'§);
                              if(_loc9_ || this)
                              {
                                 if(§§pop() <= 0)
                                 {
                                    if(_loc9_)
                                    {
                                       if(_loc9_)
                                       {
                                          break loop1;
                                       }
                                       addr77:
                                       while(true)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    else
                                    {
                                       if(_loc8_)
                                       {
                                          continue;
                                       }
                                       if(false)
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                                 break;
                              }
                              break;
                           }
                           continue loop0;
                        }
                        var _loc3_:* = §§pop();
                        var _loc4_:* = 0;
                        if(!_loc8_)
                        {
                           if(param1.tileable)
                           {
                              addr162:
                              §§push(this.§>"§(param2,this.§!"'§));
                              if(_loc9_)
                              {
                                 addr173:
                                 §§push(-(_loc7_ = §§pop()) / 2);
                                 if(!(_loc8_ && param1))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 §§push(int(§§pop()));
                                 if(!_loc8_)
                                 {
                                    _loc3_ = §§pop();
                                    addr187:
                                    §§push(_loc3_);
                                    if(_loc9_)
                                    {
                                       if(!(_loc8_ && param2))
                                       {
                                          if(!_loc8_)
                                          {
                                             §§push(-§§pop());
                                             if(!_loc8_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   addr152:
                                                   §§push(§§pop() - 1);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc9_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         this.§"§ = true;
                                                         addr158:
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            addr101:
                                                            this.§0!F§ = param1.xOffset;
                                                            if(!_loc8_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  this.§1!!§ = param1.yOffset;
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr101);
                                                                        }
                                                                        §§push(_loc3_);
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           addr197:
                                                                           var _loc5_:int = §§pop();
                                                                           addr217:
                                                                           if(_loc5_ <= _loc4_)
                                                                           {
                                                                              this.§"!-§(param1,_loc5_ * this.§!"'§);
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 _loc5_++;
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§goto(addr217);
                                                                                 }
                                                                              }
                                                                           }
                                                                           var _loc6_:Sprite = this.§%!'§(param1.§-Q§,param1.highQuality,_loc3_,_loc4_);
                                                                           if(_loc9_ || param2)
                                                                           {
                                                                              this.§&%§.addChild(_loc6_);
                                                                              this.§@!'§();
                                                                              addr256:
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 this.§^!A§();
                                                                                 if(!(_loc9_ || _loc3_))
                                                                                 {
                                                                                    §§goto(addr256);
                                                                                 }
                                                                                 return;
                                                                                 addr273:
                                                                              }
                                                                              addr278:
                                                                              §§goto(addr278);
                                                                           }
                                                                           §§goto(addr273);
                                                                           addr196:
                                                                        }
                                                                        §§goto(addr197);
                                                                     }
                                                                     §§goto(addr162);
                                                                  }
                                                                  §§goto(addr101);
                                                                  addr110:
                                                               }
                                                            }
                                                            §§goto(addr158);
                                                         }
                                                         §§goto(addr187);
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr152);
                                          }
                                       }
                                       §§goto(addr173);
                                    }
                                 }
                              }
                              §§goto(addr197);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr110);
                     }
                     return;
                  }
                  addr73:
                  while(true)
                  {
                     this.§2c§ = param1.scale;
                  }
                  §§goto(addr77);
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §=v§(param1:Sprite, param2:int = -1) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param1)
            {
               for(; param1.numChildren <= 0; if(!_loc4_)
               {
                  break;
               },if(_loc3_)
               {
                  continue;
               },§§goto(addr34),§§push(false))
               {
                  param1.dispose();
                  if(!(_loc3_ && param2))
                  {
                     if(!(_loc3_ && param2))
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§push(param1);
                        §§push(this.§6!f§);
                        if(_loc4_ || param1)
                        {
                           §§push(this.§0!F§);
                           if(_loc4_)
                           {
                              §§push(§§pop() / this.§2c§);
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().x = §§pop();
                     }
                     addr176:
                  }
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     §§push(this.§<!C§);
                     if(!_loc3_)
                     {
                        §§push(this.§1!!§);
                        if(!(_loc3_ && param1))
                        {
                           §§push(§§pop() / this.§2c§);
                        }
                        §§push(§§pop() - §§pop());
                     }
                     §§pop().y = §§pop();
                     while(true)
                     {
                        if(_loc4_)
                        {
                           if(param2 >= 0)
                           {
                              §§push(this.§&%§);
                              if(!(_loc3_ && param1))
                              {
                                 §§pop().addChildAt(param1,param2);
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(!(_loc4_ || this))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 addr20:
                                 §§push(true);
                                 if(_loc4_ || _loc3_)
                                 {
                                    return §§pop();
                                 }
                                 addr34:
                                 return §§pop();
                                 addr124:
                                 addr45:
                              }
                              addr122:
                              §§pop().addChild(param1);
                              §§goto(addr124);
                           }
                           break;
                        }
                        addr199:
                        while(true)
                        {
                           param1.scaleY = 1 / this.§2c§;
                           continue loop1;
                        }
                     }
                     §§goto(addr122);
                  }
               }
               param1.scaleX = 1 / this.§2c§;
               §§goto(addr199);
            }
            §§goto(addr20);
         }
         §§goto(addr199);
      }
      
      private function §@!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§=v§(this.§@!?§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               while(true)
               {
                  this.§@!?§ = null;
                  addr76:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §"!-§(param1:§5!?§, param2:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§#U§ = null;
         var _loc5_:§1"-§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§ w§)
         {
            _loc4_ = param1.§2D§(_loc3_);
            §§push(Boolean(_loc5_ = §!%§.§!y§(_loc4_.id,this.§,%§)));
            if(!(_loc9_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc8_ || param2)
                  {
                     addr59:
                     §§pop();
                     if(!_loc9_)
                     {
                        §§push(_loc5_.§#!f§ > 0);
                        if(_loc8_ || param1)
                        {
                           addr73:
                           if(§§pop())
                           {
                              if(_loc8_ || param2)
                              {
                                 §§push(_loc5_);
                                 §§push(param2);
                                 if(!_loc9_)
                                 {
                                    §§push(_loc4_.x);
                                    if(_loc8_)
                                    {
                                       addr95:
                                       §§push(§§pop() + §§pop());
                                       if(!_loc9_)
                                       {
                                          §§push(param1.xOffset);
                                       }
                                       §§pop().x = §§pop();
                                       if(_loc8_ || param2)
                                       {
                                          _loc5_.y = _loc4_.y;
                                          if(_loc8_)
                                          {
                                             _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
                                             if(!_loc9_)
                                             {
                                                _loc5_.rotation = _loc4_.rotation;
                                                while(true)
                                                {
                                                   _loc5_.alpha = _loc4_.alpha;
                                                   addr331:
                                                   while(true)
                                                   {
                                                      _loc5_.start();
                                                      addr325:
                                                      while(true)
                                                      {
                                                         §6!l§.§-f§.add(_loc5_);
                                                         addr321:
                                                         while(true)
                                                         {
                                                            this.§1!;§.push(_loc5_);
                                                            loop22:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.§?K§);
                                                               addr297:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(this.§@!?§);
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§@!?§ = new Sprite();
                                                                           addr276:
                                                                           while(true)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr298);
                                                                  continue loop22;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr234);
                                          }
                                          §§goto(addr309);
                                       }
                                       §§goto(addr142);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr95);
                              }
                              else
                              {
                                 addr192:
                                 _loc5_.dispose();
                              }
                              §§goto(addr194);
                           }
                           else if(_loc5_)
                           {
                              if(!(_loc9_ && param1))
                              {
                                 if(_loc8_ || param1)
                                 {
                                    if(!(_loc9_ && this))
                                    {
                                       §§goto(addr192);
                                    }
                                    §§goto(addr325);
                                 }
                                 §§goto(addr321);
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr297);
                     }
                     §§goto(addr331);
                  }
                  §§goto(addr297);
               }
               §§goto(addr73);
            }
            §§goto(addr59);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§<"5§ = null;
         if(!(_loc4_ && this))
         {
            this.§&%§.§8V§(0,-1,true);
         }
         var _loc2_:int = 0;
         var _loc3_:* = this.§1!;§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc2_)
            {
               §6!l§.§-f§.native(_loc1_);
               if(!_loc5_)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(_loc5_ || _loc3_)
         {
            this.§1!;§ = [];
         }
         do
         {
            this.§4!c§ = null;
            do
            {
               this.§@!?§ = null;
            }
            while(_loc4_ && _loc3_);
            
         }
         while(!(_loc5_ || _loc2_));
         
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            this.§-!o§ = param1;
            while(true)
            {
               this.§>!]§ = param2;
               loop1:
               while(true)
               {
                  §§push(this.§&%§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§2c§);
                     loop3:
                     while(true)
                     {
                        §§pop().scaleX = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(this.§&%§);
                           loop5:
                           for(; _loc9_; if(_loc8_ && param2)
                           {
                              continue;
                           },§§push(param2),if(!_loc8_)
                           {
                              §§push(-§§pop());
                              if(!(_loc8_ && param2))
                              {
                                 addr47:
                                 if(!(_loc8_ && param3))
                                 {
                                    §§push(this.§<!C§);
                                    if(!_loc8_)
                                    {
                                       if(!(_loc8_ && param2))
                                       {
                                          §§push(this.§2c§);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc9_ || this)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!_loc8_)
                                                {
                                                   if(_loc9_ || param1)
                                                   {
                                                      addr89:
                                                      §§push(this.§1!!§);
                                                      if(_loc9_ || param2)
                                                      {
                                                         §§goto(addr96);
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                   §§goto(addr169);
                                                }
                                                §§goto(addr114);
                                             }
                                             §§goto(addr89);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr89);
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr114);
                           },§§goto(addr47))
                           {
                              §§push(this.§2c§);
                              loop6:
                              while(true)
                              {
                                 §§pop().scaleY = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§&%§);
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(-§§pop());
                                          if(!(_loc8_ && this))
                                          {
                                             §§push(this.§#m§);
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr96:
                                                if(!(_loc9_ || param1))
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc9_ || param1)
                                                {
                                                   if(!(_loc9_ || param1))
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(_loc8_ && param3)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§pop().y = §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         return;
                                                         addr142:
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr166:
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      continue loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§0!F§);
                                                   }
                                                   addr166:
                                                   addr170:
                                                }
                                                else
                                                {
                                                   §§goto(addr166);
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr169:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      §§goto(addr170);
                                                   }
                                                }
                                                addr168:
                                             }
                                          }
                                          addr158:
                                          while(true)
                                          {
                                             §§push(this.§6!f§);
                                             if(!_loc8_)
                                             {
                                                §§push(this.§2c§);
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr165:
                                                   while(true)
                                                   {
                                                      §§goto(addr166);
                                                   }
                                                }
                                                addr164:
                                             }
                                             §§goto(addr168);
                                          }
                                       }
                                       addr181:
                                       §§push(this.§&%§);
                                       if(!_loc8_)
                                       {
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr142);
      }
      
      private function §^!A§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§<"5§ = null;
         for each(_loc1_ in this.§1!;§)
         {
            if(_loc5_)
            {
               §6!l§.§-f§.add(_loc1_);
               if(!_loc5_)
               {
                  continue;
               }
            }
            _loc1_.visible = true;
         }
      }
      
      private function §+8§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§<"5§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§1!;§)
         {
            if(!(_loc4_ && _loc2_))
            {
               §6!l§.§-f§.native(_loc1_);
               if(!_loc4_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §'"%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == this.§?!2§)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  addr84:
                  while(true)
                  {
                  }
               }
               while(true)
               {
                  this.§?!2§ = param1;
                  continue loop0;
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
