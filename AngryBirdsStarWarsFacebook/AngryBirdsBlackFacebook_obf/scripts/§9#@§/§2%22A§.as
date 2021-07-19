package §9#@§
{
   import §!!U§.§#"t§;
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §&#H§.§3#J§;
   import §,!#§.§5"N§;
   import §1#M§.§'!]§;
   import §69§.§>!b§;
   import §69§.§`"-§;
   import §7!F§.§7§;
   import §7!F§.§8!W§;
   import §7!F§.§^"U§;
   import §^#>§.§#_§;
   import §^#>§.§-#D§;
   import flash.geom.Rectangle;
   
   public class §2"A§
   {
       
      
      private var §1"r§:int;
      
      private var §>!t§:Number;
      
      private var §;w§:Boolean;
      
      protected var §%G§:Sprite;
      
      private var §9"l§:Array;
      
      private var §4"!§:Boolean = true;
      
      private var §6V§:§7#5§;
      
      private var §,"p§:Sprite;
      
      private var §9"B§:Sprite;
      
      private var §`!j§:Number;
      
      private var §8"R§:Number;
      
      protected var §8"2§:Number = 1.0;
      
      protected var §%!<§:Number = 0.0;
      
      protected var §=!C§:Number = 0.0;
      
      protected var §[!4§:Number = 0.0;
      
      protected var §6"?§:Number = 0.0;
      
      protected var §2x§:Number = 0.0;
      
      protected var §+"v§:Number = 0.0;
      
      protected var §;O§:Boolean;
      
      public function §2"A§(param1:§>!b§, param2:Sprite, param3:§7#5§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§9"l§ = [];
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§6V§ = param3;
                  while(true)
                  {
                     this.§%G§ = param2;
                     continue loop0;
                     addr66:
                     while(!(_loc6_ && this))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§;w§ = param1.foreground;
            while(_loc5_)
            {
               this.initialize(param1,param4);
               if(!(_loc5_ || this))
               {
                  continue;
               }
               §§goto(addr35);
            }
            §§goto(addr66);
         }
         §§goto(addr42);
      }
      
      public function get §6Y§() : Number
      {
         return this.§>!t§;
      }
      
      public function get §;&§() : Boolean
      {
         return this.§;w§;
      }
      
      protected function get §,,§() : Number
      {
         return this.§1"r§;
      }
      
      protected function initializePivotFromTexture(param1:§8!W§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=!C§ = param1.pivotY;
            do
            {
               if(this.§;w§)
               {
                  this.§%!<§ = 0;
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc3_ || this)
                  {
                     addr20:
                     return;
                     addr54:
                  }
               }
               this.§%!<§ = param1.pivotX;
            }
            while(_loc2_ && this);
            
            §§goto(addr20);
         }
         §§goto(addr54);
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Rectangle = param1.§@"&§;
         if(!(_loc4_ && _loc2_))
         {
            this.§=!C§ = _loc2_.bottom;
            do
            {
               this.§%!<§ = (_loc2_.left + _loc2_.right) / 2;
            }
            while(!_loc3_);
            
         }
      }
      
      protected function §39§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§8!W§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §^"U§.§]!6§(param1,this.§6V§,param2)))
         {
            if(!(_loc6_ && param2))
            {
               if(!(_loc5_ = this.§6V§.getTexture(param1)))
               {
                  if(!_loc6_)
                  {
                     return;
                  }
                  loop1:
                  while(true)
                  {
                     if(false)
                     {
                        loop2:
                        while(true)
                        {
                           this.initializePivotFromTexture(_loc5_);
                           if(_loc6_ && this)
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              continue loop1;
                           }
                           addr96:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                     else
                     {
                        addr142:
                        this.§1"r§ = Math.round(this.§1"r§);
                     }
                     addr148:
                     return;
                  }
               }
               else
               {
                  §§push(this);
                  §§push(param3);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * _loc5_.scale);
                  }
                  §§pop().§8"2§ = §§pop();
               }
               §§goto(addr96);
            }
            else
            {
               loop0:
               while(true)
               {
                  _loc4_.dispose();
                  if(!_loc7_)
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr141:
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(_loc4_.width);
                     if(_loc7_)
                     {
                        §§push(§§pop() - 2);
                     }
                     §§pop().§1"r§ = §§pop();
                     continue loop0;
                  }
               }
            }
            §§goto(addr142);
         }
         else
         {
            this.§8"2§ = param3;
            if(!(_loc6_ && param2))
            {
               this.initializePivotFromComposite(_loc4_);
            }
         }
         §§goto(addr141);
      }
      
      protected function §&?§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         §§push(param3);
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         loop0:
         for(; _loc6_ <= param4; if(true)
         {
            continue;
         },§§goto(addr72))
         {
            (_loc7_ = this.§<!<§(param1,param2)).x = _loc6_ * this.§1"r§;
            if(_loc10_ || this)
            {
               _loc7_.y = 0;
               while(true)
               {
                  _loc7_.scaleX = 1;
                  addr93:
                  while(_loc10_)
                  {
                     _loc7_.scaleY = 1;
                     loop3:
                     while(true)
                     {
                        addr72:
                        while(true)
                        {
                           _loc5_.addChild(_loc7_);
                           continue loop3;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               _loc6_++;
               if(_loc10_)
               {
                  if(!_loc9_)
                  {
                     continue loop0;
                  }
                  §§goto(addr93);
               }
               §§goto(addr76);
            }
         }
         if(_loc10_)
         {
            if(§^"U§.§?Z§(param1))
            {
               addr109:
               _loc8_ = this.§%!]§(_loc5_);
               if(_loc10_ || param1)
               {
                  _loc5_.§1!r§();
                  if(!_loc9_)
                  {
                     addr135:
                     _loc5_.dispose();
                  }
                  (_loc5_ = _loc8_).flatten();
                  §§goto(addr142);
               }
               §§goto(addr135);
            }
            addr142:
            return _loc5_;
         }
         §§goto(addr109);
      }
      
      private function §%!]§(param1:Sprite) : Sprite
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc2_:Sprite = new Sprite();
         if(!_loc9_)
         {
            §§push(param1.numChildren > 0);
            loop0:
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
                        §§push(param1.getChildAt(0) is Sprite);
                        if(!(_loc8_ || this))
                        {
                           break;
                        }
                        if(_loc9_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               loop3:
               while(§§pop())
               {
                  if(_loc8_)
                  {
                     §§push(int(Sprite(param1.getChildAt(0)).numChildren));
                     while(true)
                     {
                        _loc3_ = §§pop();
                        loop6:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc8_ || _loc3_)
                           {
                              §§push(int(§§pop() - 1));
                           }
                           if(_loc9_ && param1)
                           {
                              break;
                           }
                           _loc4_ = §§pop();
                           if(!(_loc9_ && param1))
                           {
                              if(_loc8_)
                              {
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       loop9:
                                       while(§§pop() >= 0)
                                       {
                                          §§push(0);
                                          if(!_loc9_)
                                          {
                                             _loc5_ = §§pop();
                                             if(_loc8_ || param1)
                                             {
                                                if(false)
                                                {
                                                   continue loop6;
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop() >= param1.numChildren)
                                                         {
                                                            if(!(_loc8_ || param1))
                                                            {
                                                               break loop3;
                                                            }
                                                            §§push(_loc4_);
                                                            if(_loc9_ && param1)
                                                            {
                                                               break loop10;
                                                            }
                                                            §§push(§§pop() - 1);
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               break loop10;
                                                            }
                                                            continue loop9;
                                                         }
                                                         if(_loc6_ = param1.getChildAt(_loc5_) as Sprite)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            _loc7_ = _loc6_.getChildAt(_loc4_);
                                                            if(_loc8_ || this)
                                                            {
                                                               _loc2_.addChildAt(_loc7_,0);
                                                               if(_loc9_ && _loc3_)
                                                               {
                                                               }
                                                               addr169:
                                                               _loc5_++;
                                                               continue loop10;
                                                            }
                                                            _loc7_.x += _loc6_.x;
                                                         }
                                                         §§goto(addr169);
                                                      }
                                                      addr178:
                                                   }
                                                   break;
                                                }
                                                _loc4_ = §§pop();
                                                if(_loc9_ && this)
                                                {
                                                   break loop3;
                                                }
                                             }
                                             continue loop8;
                                          }
                                          §§goto(addr178);
                                       }
                                       break loop3;
                                    }
                                 }
                                 addr79:
                              }
                              else
                              {
                                 §§goto(addr125);
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 continue loop6;
                              }
                              addr117:
                           }
                        }
                     }
                  }
                  §§goto(addr117);
               }
               return _loc2_;
            }
         }
         §§goto(addr79);
      }
      
      protected function §<!<§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§8!W§ = null;
         var _loc3_:DisplayObject = §^"U§.§]!6§(param1,this.§6V§,param2);
         if(!(_loc5_ && param1))
         {
            if(!_loc3_)
            {
               addr47:
               _loc4_ = this.§6V§.getTexture(param1);
               _loc3_ = new §#"t§(_loc4_.texture,false,param2);
            }
            return _loc3_;
         }
         §§goto(addr47);
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(2);
         §§push(§#_§.§]#Q§);
         if(!_loc3_)
         {
            §§push(1.5);
            if(_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && this))
               {
                  addr56:
                  §§push(§§pop() / (param2 * param1));
               }
               §§push(§§pop() + §§pop());
               if(!_loc3_)
               {
                  return §§pop() * 2;
               }
            }
         }
         §§goto(addr56);
      }
      
      protected function initialize(param1:§>!b§, param2:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!_loc9_)
         {
            if(param1.scale != 0)
            {
               if(!_loc9_)
               {
                  this.§8"2§ = param1.scale;
               }
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     this.§39§(param1.spriteName,param1.highQuality,this.§8"2§);
                     while(true)
                     {
                        §§push(this.§1"r§);
                        if(!_loc9_)
                        {
                           if(§§pop() <= 0)
                           {
                              if(!(_loc9_ && param1))
                              {
                                 if(_loc9_ && param2)
                                 {
                                    continue;
                                 }
                                 if(_loc8_)
                                 {
                                    break loop1;
                                 }
                                 addr63:
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                              else if(false)
                              {
                                 continue loop1;
                              }
                           }
                           break;
                        }
                        break;
                     }
                     var _loc3_:* = §§pop();
                     var _loc4_:* = 0;
                     if(_loc8_ || this)
                     {
                        if(param1.tileable)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.getRepeatCount(param2,this.§1"r§));
                              if(!_loc9_)
                              {
                                 §§push(int(§§pop()));
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc7_ = §§pop());
                                    if(_loc8_ || this)
                                    {
                                       §§push(-§§pop());
                                       while(true)
                                       {
                                          §§push(§§pop() / 2);
                                          addr218:
                                          while(true)
                                          {
                                             §§push(§§pop() - 1);
                                             addr219:
                                             while(true)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                          }
                                          addr183:
                                          if(_loc8_ || param1)
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc8_)
                                             {
                                                _loc4_ = §§pop();
                                                while(true)
                                                {
                                                   this.§;O§ = true;
                                                   continue loop3;
                                                }
                                                addr136:
                                                loop12:
                                                while(true)
                                                {
                                                   this.§2x§ = param1.xOffset;
                                                   while(!_loc9_)
                                                   {
                                                      if(!(_loc9_ && this))
                                                      {
                                                         if(!(_loc9_ && param2))
                                                         {
                                                            this.§+"v§ = param1.yOffset;
                                                            if(_loc8_ || param2)
                                                            {
                                                               if(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc9_)
                                                                  {
                                                                     break loop3;
                                                                  }
                                                               }
                                                               continue loop12;
                                                               break loop12;
                                                            }
                                                            continue;
                                                         }
                                                         addr221:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!(_loc9_ && this))
                                                            {
                                                               if(!(_loc8_ || param1))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc9_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§push(-§§pop());
                                                               if(!_loc9_)
                                                               {
                                                                  if(_loc8_ || _loc3_)
                                                                  {
                                                                     addr176:
                                                                     §§push(§§pop() - 1);
                                                                     if(!(_loc9_ && param2))
                                                                     {
                                                                        §§goto(addr183);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr218);
                                                                  }
                                                                  §§goto(addr219);
                                                               }
                                                               §§goto(addr176);
                                                            }
                                                            break loop12;
                                                         }
                                                      }
                                                      §§goto(addr194);
                                                   }
                                                   continue loop3;
                                                }
                                                addr194:
                                                addr226:
                                                var _loc5_:* = §§pop();
                                                while(_loc5_ <= _loc4_)
                                                {
                                                   this.§,"z§(param1,_loc5_ * this.§1"r§);
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   _loc5_++;
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                var _loc6_:Sprite = this.§&?§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   this.§%G§.addChild(_loc6_);
                                                }
                                                do
                                                {
                                                   this.§6";§();
                                                   do
                                                   {
                                                      this.§6"@§();
                                                   }
                                                   while(_loc9_);
                                                   
                                                }
                                                while(_loc9_);
                                                
                                                return;
                                                addr103:
                                             }
                                             break loop3;
                                          }
                                       }
                                    }
                                    §§goto(addr220);
                                 }
                              }
                              break;
                           }
                           §§goto(addr226);
                           §§push(int(§§pop()));
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr221);
                  }
                  return;
               }
            }
            else
            {
               this.§8"2§ = 1;
            }
            §§goto(addr63);
         }
         §§goto(addr65);
      }
      
      private function §^"h§(param1:Sprite, param2:int = -1) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param1)
            {
               loop0:
               while(true)
               {
                  if(param1.numChildren <= 0)
                  {
                     param1.dispose();
                     if(!_loc4_)
                     {
                        §§push(false);
                        break;
                     }
                     while(true)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           if(param2 < 0)
                           {
                              if(_loc3_)
                              {
                                 if(_loc3_ || param2)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(this.§%G§);
                                       break;
                                    }
                                    addr182:
                                    while(true)
                                    {
                                       param1.scaleX = 1 / this.§8"2§;
                                       addr188:
                                       while(true)
                                       {
                                          param1.scaleY = 1 / this.§8"2§;
                                          addr165:
                                          while(true)
                                          {
                                             §§push(param1);
                                             §§push(this.§%!<§);
                                             if(_loc3_ || this)
                                             {
                                                §§push(this.§2x§);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() / this.§8"2§);
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§pop().x = §§pop();
                                          }
                                       }
                                    }
                                 }
                                 while(!_loc3_)
                                 {
                                    §§goto(addr188);
                                    §§goto(addr165);
                                 }
                                 continue;
                              }
                           }
                           else
                           {
                              §§push(this.§%G§);
                              if(_loc4_ && this)
                              {
                                 break;
                              }
                              §§pop().addChildAt(param1,param2);
                              if(_loc3_ || param1)
                              {
                                 continue loop0;
                              }
                           }
                           addr19:
                           §§push(true);
                           if(!(_loc4_ && _loc3_))
                           {
                              return §§pop();
                           }
                           break loop0;
                           addr111:
                           addr44:
                        }
                        §§goto(addr165);
                     }
                     §§pop().addChild(param1);
                     §§goto(addr111);
                  }
                  §§goto(addr182);
               }
               return §§pop();
            }
            §§goto(addr19);
         }
         §§goto(addr157);
      }
      
      private function §6";§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§^"h§(this.§,"p§));
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(_loc2_ || this)
               {
                  this.§,"p§ = null;
               }
            }
         }
         §§goto(addr96);
      }
      
      private function §,"z§(param1:§>!b§, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§`"-§ = null;
         var _loc5_:§-#D§ = null;
         var _loc6_:* = 0;
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < param1.§package§)
         {
            _loc4_ = param1.§+"_§(_loc3_);
            §§push(Boolean(_loc5_ = §'!]§.§#"§(_loc4_.id,this.§6V§)));
            if(!(_loc8_ && param2))
            {
               if(§§pop())
               {
                  if(!(_loc8_ && this))
                  {
                     addr60:
                     §§pop();
                     if(!_loc8_)
                     {
                        §§push(_loc5_.§0"g§ > 0);
                        if(_loc9_)
                        {
                           addr69:
                           if(§§pop())
                           {
                              if(!(_loc8_ && this))
                              {
                                 §§push(_loc5_);
                                 §§push(param2);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(_loc4_.x);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc8_ && this))
                                       {
                                          addr105:
                                          §§push(§§pop() + param1.xOffset);
                                       }
                                       §§pop().x = §§pop();
                                       if(!(_loc8_ && param1))
                                       {
                                          _loc5_.y = _loc4_.y;
                                          if(!_loc8_)
                                          {
                                             _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
                                             if(!_loc8_)
                                             {
                                                _loc5_.rotation = _loc4_.rotation;
                                                loop19:
                                                while(true)
                                                {
                                                   _loc5_.alpha = _loc4_.alpha;
                                                   loop20:
                                                   while(true)
                                                   {
                                                      _loc5_.start();
                                                      addr316:
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §3#J§.§^#A§.add(_loc5_);
                                                         loop23:
                                                         while(true)
                                                         {
                                                            this.§9"l§.push(_loc5_);
                                                            loop24:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.§9"Q§);
                                                               addr278:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(this.§,"p§);
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           addr255:
                                                                           while(true)
                                                                           {
                                                                              this.§,"p§ = new Sprite();
                                                                              addr259:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           addr255:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§,"p§);
                                                                           if(_loc8_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§pop().addChild(_loc5_);
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(!(_loc9_ || param1))
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             loop10:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                if(§§pop() >= _loc4_.fastForwardsAfterAdd)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(!(_loc9_ || this))
                                                                                                      {
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc3_++;
                                                                                                         if(_loc9_ || this)
                                                                                                         {
                                                                                                            if(!(_loc9_ || this))
                                                                                                            {
                                                                                                               addr219:
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  break loop10;
                                                                                                               }
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  _loc6_++;
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr279:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc9_ || this))
                                                                                                                  {
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                                  §§push(this.§9"B§);
                                                                                                                  loop17:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc8_ && this))
                                                                                                                           {
                                                                                                                              addr296:
                                                                                                                              this.§9"B§ = new Sprite();
                                                                                                                              break loop10;
                                                                                                                           }
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                        addr289:
                                                                                                                     }
                                                                                                                     addr260:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§9"B§);
                                                                                                                        if(_loc9_ || this)
                                                                                                                        {
                                                                                                                           §§pop().addChild(_loc5_);
                                                                                                                           addr272:
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              continue loop7;
                                                                                                                           }
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               addr151:
                                                                                                            }
                                                                                                            §§goto(addr272);
                                                                                                         }
                                                                                                         addr207:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      addr210:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            _loc5_.dispose();
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr255);
                                                                                                         }
                                                                                                      }
                                                                                                      addr189:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc8_ && param2))
                                                                                                      {
                                                                                                         if(!(_loc9_ || param2))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr207);
                                                                                                      }
                                                                                                      §§goto(addr210);
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                   addr193:
                                                                                                }
                                                                                                _loc5_.§9"x§(1 / 20);
                                                                                                §§goto(addr219);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr260);
                                                                                                §§goto(addr296);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr259);
                                                                                       }
                                                                                       continue loop23;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr289);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr279);
                                                                  continue loop24;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr316);
                                          }
                                          §§goto(addr255);
                                       }
                                       §§goto(addr210);
                                    }
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr316);
                           }
                           else if(_loc5_)
                           {
                              if(!(_loc8_ && this))
                              {
                                 §§goto(addr189);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr278);
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr278);
               }
               §§goto(addr69);
            }
            §§goto(addr60);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§5"N§ = null;
         if(_loc5_ || this)
         {
            this.§%G§.§1!r§(0,-1,true);
         }
         var _loc3_:* = this.§9"l§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || this)
            {
               §3#J§.§^#A§.§>"k§(_loc1_);
               if(!(_loc5_ || _loc3_))
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(_loc5_)
         {
            this.§9"l§ = [];
            while(true)
            {
               this.§9"B§ = null;
               loop2:
               while(_loc5_)
               {
                  while(true)
                  {
                     this.§,"p§ = null;
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop2;
                  }
                  return;
               }
            }
         }
         §§goto(addr110);
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            this.§`!j§ = param1;
            loop0:
            while(true)
            {
               this.§8"R§ = param2;
               loop1:
               while(true)
               {
                  §§push(this.§%G§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§8"2§);
                     loop3:
                     while(true)
                     {
                        §§pop().scaleX = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(this.§%G§);
                           loop5:
                           while(true)
                           {
                              §§push(this.§8"2§);
                              loop6:
                              while(true)
                              {
                                 §§pop().scaleY = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§%G§);
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(_loc9_)
                                       {
                                          §§push(-§§pop());
                                          loop9:
                                          while(true)
                                          {
                                             §§push(this.§>!t§);
                                             if(_loc9_ || param3)
                                             {
                                                §§push(§§pop() * §§pop());
                                                loop10:
                                                for(; !_loc8_; if(_loc9_ || param3)
                                                {
                                                   continue loop9;
                                                })
                                                {
                                                   §§push(this.§%!<§);
                                                   while(true)
                                                   {
                                                      §§push(this.§8"2§);
                                                      addr150:
                                                      addr57:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr151:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr152:
                                                            while(true)
                                                            {
                                                               §§push(this.§2x§);
                                                            }
                                                         }
                                                      }
                                                      if(!(_loc9_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(this.§8"2§);
                                                      if(_loc9_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc9_)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc9_ || param1)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               addr105:
                                                               addr105:
                                                               if(!_loc8_)
                                                               {
                                                                  §§pop().y = §§pop();
                                                                  if(!(_loc8_ && param3))
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              return;
                                                                              addr126:
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr152);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr155:
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  continue loop0;
                                                               }
                                                            }
                                                            addr154:
                                                         }
                                                         else
                                                         {
                                                            addr104:
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§goto(addr105);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr150);
                                                      }
                                                   }
                                                }
                                                continue loop3;
                                                addr144:
                                             }
                                             §§goto(addr154);
                                             if(_loc8_)
                                             {
                                                continue;
                                             }
                                             if(!_loc9_)
                                             {
                                                continue loop6;
                                             }
                                             §§goto(addr104);
                                             §§push(this.§+"v§);
                                          }
                                       }
                                       §§goto(addr155);
                                       addr163:
                                       §§push(this.§%G§);
                                       if(_loc8_)
                                       {
                                          continue;
                                       }
                                       if(!_loc9_)
                                       {
                                          continue loop5;
                                       }
                                       if(_loc8_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(param2);
                                       if(!_loc8_)
                                       {
                                          §§push(-§§pop());
                                          if(!_loc8_)
                                          {
                                             if(_loc9_)
                                             {
                                                §§push(this.§=!C§);
                                                if(_loc9_ || param3)
                                                {
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      §§goto(addr57);
                                                   }
                                                   §§goto(addr151);
                                                }
                                                §§goto(addr104);
                                             }
                                             §§goto(addr155);
                                          }
                                          §§goto(addr81);
                                       }
                                       §§goto(addr105);
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
         §§goto(addr126);
      }
      
      private function §6"@§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§5"N§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§9"l§)
         {
            if(_loc5_)
            {
               §3#J§.§^#A§.add(_loc1_);
               if(!(_loc4_ && _loc2_))
               {
                  _loc1_.visible = true;
               }
            }
         }
      }
      
      private function §0"A§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§5"N§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§9"l§)
         {
            if(_loc5_ || _loc2_)
            {
               §3#J§.§^#A§.§>"k§(_loc1_);
               if(_loc5_ || _loc2_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §%Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§4"!§)
            {
               while(true)
               {
                  this.§4"!§ = param1;
                  continue loop0;
               }
            }
            addr108:
            return;
            addr105:
         }
         while(true)
         {
            §§push(this.§4"!§);
            if(!(_loc2_ && param1))
            {
               if(§§pop())
               {
                  if(_loc2_ && _loc3_)
                  {
                     break;
                  }
                  continue;
               }
               this.§0"A§();
               if(_loc2_ && this)
               {
                  break;
               }
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr20);
               }
            }
            else
            {
               §§goto(addr105);
            }
            §§goto(addr89);
         }
         addr20:
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
