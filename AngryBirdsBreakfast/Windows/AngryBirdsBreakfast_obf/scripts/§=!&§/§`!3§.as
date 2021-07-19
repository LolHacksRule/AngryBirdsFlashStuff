package §=!&§
{
   import § ! §.§+D§;
   import § ! §.§5!x§;
   import § ! §.§8-§;
   import §'!3§.§=@§;
   import §,C§.§ "%§;
   import §,C§.§<U§;
   import §6![§.§1!J§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import §8]§.§7!4§;
   import §@L§.§30§;
   import §@L§.§?!'§;
   import §`!a§.§1"&§;
   import flash.geom.Rectangle;
   
   public class §`!3§
   {
       
      
      private var §[=§:int;
      
      private var § 1§:Number;
      
      private var §;]§:Boolean;
      
      protected var §#e§:Sprite;
      
      private var §1!-§:Array;
      
      private var §%9§:Boolean = true;
      
      private var §`8§:§5!x§;
      
      private var §2[§:Sprite;
      
      private var §;!e§:Sprite;
      
      private var §`R§:Number;
      
      private var §#m§:Number;
      
      protected var §6!r§:Number = 1.0;
      
      protected var §=$§:Number = 0.0;
      
      protected var §0I§:Number = 0.0;
      
      protected var §#!A§:Number = 0.0;
      
      protected var §<`§:Number = 0.0;
      
      protected var §7c§:Number = 0.0;
      
      protected var §#!=§:Number = 0.0;
      
      protected var §?H§:Boolean;
      
      public function §`!3§(param1:§ "%§, param2:Sprite, param3:§5!x§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            this.§1!-§ = [];
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§`8§ = param3;
                  do
                  {
                     this.§#e§ = param2;
                     continue loop0;
                  }
                  while(!(_loc6_ || this));
                  
                  addr79:
                  loop4:
                  while(_loc6_ || this)
                  {
                     this.§;]§ = param1.foreground;
                     while(_loc6_ || param2)
                     {
                        this.initialize(param1,param4);
                        if(!(_loc6_ || this))
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           continue loop4;
                        }
                        §§goto(addr43);
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function get §&!q§() : Number
      {
         return this.§ 1§;
      }
      
      public function get §[!I§() : Boolean
      {
         return this.§;]§;
      }
      
      protected function get §#4§() : Number
      {
         return this.§[=§;
      }
      
      protected function §%h§(param1:§8-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§0I§ = param1.pivotY;
            do
            {
               if(!this.§;]§)
               {
                  if(!(_loc2_ && param1))
                  {
                     this.§=$§ = param1.pivotX;
                  }
               }
               else
               {
                  this.§=$§ = 0;
                  if(!_loc2_)
                  {
                     §§goto(addr25);
                  }
               }
            }
            while(!_loc3_);
            
         }
         addr25:
      }
      
      protected function §`T§(param1:DisplayObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Rectangle = param1.§5!&§;
         if(_loc4_)
         {
            this.§0I§ = _loc2_.bottom;
            do
            {
               this.§=$§ = (_loc2_.left + _loc2_.right) / 2;
            }
            while(!(_loc4_ || _loc2_));
            
         }
      }
      
      protected function §7;§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§8-§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §+D§.§<p§(param1,this.§`8§,param2)))
         {
            if(!(_loc6_ && this))
            {
               if(!(_loc5_ = this.§`8§.§`I§(param1)))
               {
                  if(_loc7_)
                  {
                     return;
                  }
               }
               §§push(this);
               §§push(param3);
               if(!_loc6_)
               {
                  §§push(§§pop() * _loc5_.scale);
               }
               §§pop().§6!r§ = §§pop();
               loop2:
               while(true)
               {
                  addr98:
                  while(true)
                  {
                     this.§%h§(_loc5_);
                     while(true)
                     {
                        §§push(this);
                        §§push(_loc5_.width);
                        if(!_loc6_)
                        {
                           §§push(§§pop() - 2);
                        }
                        §§pop().§[=§ = §§pop();
                        if(!(_loc7_ || param3))
                        {
                           break;
                        }
                        if(_loc7_ || this)
                        {
                           continue loop2;
                        }
                     }
                     §§goto(addr168);
                  }
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  addr138:
                  while(true)
                  {
                     §§push(this);
                     §§push(_loc4_.width);
                     if(_loc7_)
                     {
                        §§push(§§pop() - 2);
                     }
                     §§pop().§[=§ = §§pop();
                     continue loop0;
                  }
               }
               addr161:
            }
            this.§[=§ = Math.round(this.§[=§);
            addr168:
            return;
         }
         this.§6!r§ = param3;
         if(_loc7_ || this)
         {
            this.§`T§(_loc4_);
            §§goto(addr161);
         }
         §§goto(addr147);
      }
      
      protected function §,!1§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         §§push(param3);
         if(!(_loc10_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§5!L§(param1,param2)).x = _loc6_ * this.§[=§;
            if(_loc9_)
            {
               _loc7_.y = 0;
               while(true)
               {
                  _loc7_.scaleX = 1;
                  loop2:
                  while(true)
                  {
                     _loc7_.scaleY = 1;
                     loop3:
                     while(true)
                     {
                        addr73:
                        while(true)
                        {
                           _loc5_.addChild(_loc7_);
                           while(_loc9_)
                           {
                              _loc6_++;
                              if(!_loc10_)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr73);
            }
         }
         if(!(_loc10_ && param1))
         {
            if(§+D§.§3,§(param1))
            {
               addr108:
               _loc8_ = this.§@!'§(_loc5_);
               if(!_loc10_)
               {
                  _loc5_.§-8§();
                  if(_loc9_)
                  {
                     _loc5_.dispose();
                  }
               }
               (_loc5_ = _loc8_).flatten();
            }
            return _loc5_;
         }
         §§goto(addr108);
      }
      
      private function §@!'§(param1:Sprite) : Sprite
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc2_:Sprite = new Sprite();
         if(_loc8_ || this)
         {
            §§push(param1.numChildren > 0);
            if(!_loc9_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(param1.getChildAt(0) is Sprite);
                        if(_loc8_ || this)
                        {
                           loop0:
                           while(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(int(Sprite(param1.getChildAt(0)).numChildren));
                                 loop2:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr125:
                                    loop5:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc9_)
                                          {
                                             if(_loc9_ && _loc2_)
                                             {
                                                continue loop2;
                                             }
                                             §§push(int(§§pop() - 1));
                                          }
                                          _loc4_ = §§pop();
                                          if(!(_loc8_ || param1))
                                          {
                                             continue loop5;
                                          }
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                          if(_loc9_ && param1)
                                          {
                                             continue loop4;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             loop8:
                                             while(§§pop() >= 0)
                                             {
                                                §§push(0);
                                                if(!(_loc8_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                _loc5_ = §§pop();
                                                if(!(_loc9_ && param1))
                                                {
                                                   if(false)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!_loc9_)
                                                      {
                                                         if(§§pop() >= param1.numChildren)
                                                         {
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               addr188:
                                                               §§push(_loc4_);
                                                               if(!(_loc8_ || param1))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() - 1);
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop8;
                                                            }
                                                            continue loop7;
                                                         }
                                                         if(_loc6_ = param1.getChildAt(_loc5_) as Sprite)
                                                         {
                                                            if(!(_loc8_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            _loc7_ = _loc6_.getChildAt(_loc4_);
                                                            if(_loc8_)
                                                            {
                                                               _loc2_.addChildAt(_loc7_,0);
                                                               if(!_loc8_)
                                                               {
                                                               }
                                                               addr174:
                                                               _loc5_++;
                                                               continue;
                                                            }
                                                            _loc7_.x += _loc6_.x;
                                                         }
                                                         §§goto(addr174);
                                                      }
                                                      break;
                                                   }
                                                   _loc4_ = §§pop();
                                                   if(_loc9_ && this)
                                                   {
                                                      break loop0;
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr188);
                                             }
                                             break loop0;
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           return _loc2_;
                           addr115:
                        }
                        break;
                     }
                  }
                  addr134:
               }
               §§goto(addr115);
            }
            §§goto(addr134);
         }
         §§goto(addr125);
      }
      
      protected function §5!L§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§8-§ = null;
         var _loc3_:DisplayObject = §+D§.§<p§(param1,this.§`8§,param2);
         if(!(_loc5_ && _loc3_))
         {
            if(!_loc3_)
            {
               addr47:
               _loc4_ = this.§`8§.§`I§(param1);
               _loc3_ = new §1!J§(_loc4_.texture,false,param2);
            }
            return _loc3_;
         }
         §§goto(addr47);
      }
      
      protected function §1!>§(param1:Number, param2:int) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(2);
         §§push(§?!'§.§]2§);
         if(!(_loc4_ && this))
         {
            §§push(1.5);
            if(_loc3_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  addr50:
                  §§push(§§pop() / (param2 * param1));
               }
               §§push(§§pop() + §§pop());
               if(!(_loc4_ && _loc3_))
               {
                  return §§pop() * 2;
               }
            }
         }
         §§goto(addr50);
      }
      
      protected function initialize(param1:§ "%§, param2:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:int = 0;
         if(_loc8_ || this)
         {
            if(param1.scale == 0)
            {
               this.§6!r§ = 1;
               loop0:
               while(true)
               {
                  if(_loc9_ && this)
                  {
                     while(true)
                     {
                     }
                     addr81:
                  }
                  addr42:
                  while(true)
                  {
                     this.§7;§(param1.§3x§,param1.highQuality,this.§6!r§);
                     continue loop0;
                  }
               }
            }
            §§goto(addr77);
         }
         §§goto(addr37);
      }
      
      private function §!M§(param1:Sprite, param2:int = -1) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
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
                     loop1:
                     while(true)
                     {
                        if(!(_loc4_ && param1))
                        {
                           while(true)
                           {
                              §§push(param1);
                              §§push(this.§0I§);
                              if(!_loc4_)
                              {
                                 §§push(this.§#!=§);
                                 if(!(_loc4_ && param2))
                                 {
                                    §§push(§§pop() / this.§6!r§);
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§pop().y = §§pop();
                              loop6:
                              while(_loc3_ || param1)
                              {
                                 if(param2 < 0)
                                 {
                                    §§push(this.§#e§);
                                 }
                                 else
                                 {
                                    §§push(this.§#e§);
                                    if(_loc3_)
                                    {
                                       §§pop().addChildAt(param1,param2);
                                       if(!(_loc4_ && this))
                                       {
                                          if(!_loc3_)
                                          {
                                             continue;
                                          }
                                          if(_loc4_)
                                          {
                                             while(true)
                                             {
                                                param1.scaleX = 1 / this.§6!r§;
                                                addr188:
                                                while(true)
                                                {
                                                   param1.scaleY = 1 / this.§6!r§;
                                                   break loop6;
                                                }
                                             }
                                             addr182:
                                          }
                                       }
                                       else
                                       {
                                          addr99:
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       addr24:
                                       §§push(true);
                                       if(!(_loc4_ && param2))
                                       {
                                          return §§pop();
                                       }
                                       break loop0;
                                    }
                                    addr97:
                                    §§pop().addChild(param1);
                                    §§goto(addr99);
                                 }
                                 §§goto(addr97);
                              }
                              continue loop1;
                           }
                           addr157:
                        }
                        §§goto(addr188);
                     }
                  }
                  §§goto(addr182);
               }
               return §§pop();
            }
            §§goto(addr24);
         }
         §§goto(addr157);
      }
      
      private function §81§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§!M§(this.§2[§));
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
            }
         }
         §§goto(addr83);
      }
      
      private function §9!A§(param1:§ "%§, param2:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§<U§ = null;
         var _loc5_:§30§ = null;
         var _loc6_:* = 0;
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < param1.§93§)
         {
            _loc4_ = param1.§5p§(_loc3_);
            §§push(Boolean(_loc5_ = §7!4§.§5!o§(_loc4_.id,this.§`8§)));
            if(!_loc9_)
            {
               if(§§pop())
               {
                  if(_loc8_)
                  {
                     addr49:
                     §§pop();
                     if(_loc8_)
                     {
                        §§push(_loc5_.§8!,§ > 0);
                        if(_loc8_ || _loc3_)
                        {
                           addr63:
                           if(§§pop())
                           {
                              if(_loc8_)
                              {
                                 §§push(_loc5_);
                                 §§push(param2);
                                 if(_loc8_ || this)
                                 {
                                    §§push(_loc4_.x);
                                    if(_loc8_)
                                    {
                                       addr90:
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc9_ && this))
                                       {
                                          §§push(param1.xOffset);
                                       }
                                       §§pop().x = §§pop();
                                       if(!_loc9_)
                                       {
                                          _loc5_.y = _loc4_.y;
                                          if(_loc8_ || _loc3_)
                                          {
                                             _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
                                             if(!_loc9_)
                                             {
                                                _loc5_.rotation = _loc4_.rotation;
                                                while(true)
                                                {
                                                   _loc5_.alpha = _loc4_.alpha;
                                                   addr316:
                                                   while(true)
                                                   {
                                                      _loc5_.start();
                                                      addr310:
                                                      while(true)
                                                      {
                                                         §1"&§.§"!U§.add(_loc5_);
                                                      }
                                                   }
                                                }
                                                addr331:
                                             }
                                             loop22:
                                             while(true)
                                             {
                                                this.§1!-§.push(_loc5_);
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(_loc4_.§^#§);
                                                   addr279:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§push(this.§2[§);
                                                         loop2:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               continue;
                                                            }
                                                            if(!(_loc9_ && param2))
                                                            {
                                                               this.§2[§ = new Sprite();
                                                            }
                                                            loop3:
                                                            while(!(_loc9_ && this))
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               addr137:
                                                               if(!(_loc8_ || param2))
                                                               {
                                                                  continue;
                                                               }
                                                               if(true)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc8_)
                                                                  {
                                                                     if(§§pop() >= _loc4_.fastForwardsAfterAdd)
                                                                     {
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    addr117:
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_++;
                                                                                       if(_loc8_ || param1)
                                                                                       {
                                                                                          if(_loc8_ || _loc3_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr209:
                                                                                                continue loop9;
                                                                                             }
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§goto(addr137);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         addr221:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            addr222:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         break loop9;
                                                                                                      }
                                                                                                      addr219:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§;!e§);
                                                                                                         loop15:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc9_ && param1)
                                                                                                                  {
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                                  this.§;!e§ = new Sprite();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               addr283:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§;!e§);
                                                                                                               if(!(_loc9_ && param2))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            §§pop().addChild(_loc5_);
                                                                                                            break loop9;
                                                                                                         }
                                                                                                      }
                                                                                                      addr280:
                                                                                                   }
                                                                                                }
                                                                                                addr235:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_.dispose();
                                                                                                      addr193:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            _loc6_++;
                                                                                                            break;
                                                                                                            addr218:
                                                                                                         }
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(!(_loc9_ && this))
                                                                                                               {
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               §§goto(addr331);
                                                                                                            }
                                                                                                            §§goto(addr316);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr222);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr209);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr182:
                                                                                          }
                                                                                          §§goto(addr294);
                                                                                       }
                                                                                       §§goto(addr193);
                                                                                    }
                                                                                    continue loop22;
                                                                                 }
                                                                                 addr179:
                                                                              }
                                                                              §§goto(addr283);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr193);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc5_.§^Y§(1 / 20);
                                                                     }
                                                                     §§goto(addr218);
                                                                  }
                                                                  §§goto(addr221);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr219);
                                                               }
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                      }
                                                      §§goto(addr280);
                                                      continue loop18;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr275);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr179);
                           }
                           else if(_loc5_)
                           {
                              §§goto(addr182);
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr279);
                     }
                     §§goto(addr262);
                  }
                  §§goto(addr279);
               }
               §§goto(addr63);
            }
            §§goto(addr49);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§=@§ = null;
         if(!_loc4_)
         {
            this.§#e§.§-8§(0,-1,true);
         }
         for each(_loc1_ in this.§1!-§)
         {
            if(_loc5_ || this)
            {
               §1"&§.§"!U§.§3O§(_loc1_);
               if(_loc5_)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(_loc5_)
         {
            this.§1!-§ = [];
         }
         do
         {
            this.§;!e§ = null;
            do
            {
               this.§2[§ = null;
            }
            while(!_loc5_);
            
         }
         while(_loc4_);
         
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param3))
         {
            this.§`R§ = param1;
            while(true)
            {
               this.§#m§ = param2;
               loop1:
               for(; _loc8_ || param1; while(!(_loc9_ && this))
               {
                  §§goto(addr182);
                  §§push(this.§#e§);
               })
               {
                  §§push(this.§#e§);
                  while(true)
                  {
                     §§push(this.§6!r§);
                     addr191:
                     while(true)
                     {
                        §§pop().scaleX = §§pop();
                        continue loop1;
                     }
                     addr38:
                     if(_loc9_ && this)
                     {
                        continue;
                     }
                     §§push(param2);
                     if(_loc8_ || param2)
                     {
                        §§push(-§§pop());
                        if(!_loc9_)
                        {
                           if(_loc8_ || param3)
                           {
                              if(_loc8_)
                              {
                                 if(!_loc9_)
                                 {
                                    §§push(this.§0I§);
                                    if(_loc8_)
                                    {
                                       if(_loc8_ || param2)
                                       {
                                          §§push(this.§6!r§);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc8_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc9_ && this))
                                                {
                                                   addr95:
                                                   §§push(this.§#!=§);
                                                   if(!(_loc9_ && param3))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         addr115:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc9_ && param2))
                                                         {
                                                            §§pop().y = §§pop();
                                                            if(_loc8_)
                                                            {
                                                               return;
                                                            }
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  if(!(_loc8_ || param3))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(this.§#e§);
                                                                  if(_loc8_ || param3)
                                                                  {
                                                                     §§goto(addr38);
                                                                  }
                                                                  while(_loc8_)
                                                                  {
                                                                     §§push(param1);
                                                                     while(!(_loc9_ && param1))
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(_loc8_)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(this.§ 1§);
                                                                              if(_loc8_ || param3)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§=$§);
                                                                                    addr156:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§6!r§);
                                                                                       addr158:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr159:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr160:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§7c§);
                                                                                                addr162:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr163:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr115);
                                                                                 }
                                                                                 addr154:
                                                                              }
                                                                              §§goto(addr156);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop().scaleY = §§pop();
                                                                              }
                                                                              addr184:
                                                                           }
                                                                        }
                                                                        §§goto(addr160);
                                                                     }
                                                                     §§goto(addr191);
                                                                     §§goto(addr178);
                                                                  }
                                                                  addr178:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr184);
                                                                  }
                                                                  addr129:
                                                               }
                                                               addr185:
                                                               while(true)
                                                               {
                                                                  §§goto(addr129);
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr154);
                                                      }
                                                      §§goto(addr156);
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr115);
                                             }
                                             §§goto(addr95);
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr163);
                        }
                     }
                     §§goto(addr115);
                  }
               }
            }
         }
         §§goto(addr185);
      }
      
      private function §`^§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§=@§ = null;
         for each(_loc1_ in this.§1!-§)
         {
            if(_loc5_ || _loc1_)
            {
               §1"&§.§"!U§.add(_loc1_);
               if(!(_loc4_ && this))
               {
                  _loc1_.visible = true;
               }
            }
         }
      }
      
      private function §3d§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§=@§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§1!-§)
         {
            if(!_loc4_)
            {
               §1"&§.§"!U§.§3O§(_loc1_);
               if(_loc5_ || _loc2_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §<8§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == this.§%9§)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr50:
                     if(_loc2_ || _loc3_)
                     {
                        addr24:
                        return;
                     }
                  }
               }
               while(true)
               {
                  this.§%9§ = param1;
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
