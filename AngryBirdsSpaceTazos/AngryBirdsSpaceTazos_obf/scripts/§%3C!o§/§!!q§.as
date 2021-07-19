package §<!o§
{
   import §'!d§.§^"§;
   import §'4§.§+"C§;
   import §'4§.§^g§;
   import §+!a§.§2!a§;
   import §+!a§.§3!;§;
   import §4&§.§ j§;
   import §4&§.§'!"§;
   import §4&§.§,C§;
   import §5Q§.§^!e§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import §]K§.§ "G§;
   import flash.geom.Rectangle;
   
   public class §!!q§
   {
       
      
      private var § !J§:int;
      
      private var §#7§:Number;
      
      private var §,!;§:Boolean;
      
      protected var §]!$§:Sprite;
      
      private var §9"6§:Array;
      
      private var §,!'§:Boolean = true;
      
      private var §7!T§:§,C§;
      
      private var §9"$§:Sprite;
      
      private var §^!8§:Sprite;
      
      private var §+!?§:Number;
      
      private var §4J§:Number;
      
      protected var §=T§:Number = 1.0;
      
      protected var §;o§:Number = 0.0;
      
      protected var §+!H§:Number = 0.0;
      
      protected var §8>§:Number = 0.0;
      
      protected var §<!f§:Number = 0.0;
      
      protected var §@f§:Number = 0.0;
      
      protected var §9r§:Number = 0.0;
      
      protected var §`O§:Boolean;
      
      public function §!!q§(param1:§2!a§, param2:Sprite, param3:§,C§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§9"6§ = [];
         }
         loop0:
         while(true)
         {
            super();
            addr107:
            while(true)
            {
               this.§7!T§ = param3;
               do
               {
                  this.§]!$§ = param2;
                  continue loop0;
               }
               while(_loc5_ && param3);
               
               return;
            }
         }
      }
      
      public function get §"!P§() : Number
      {
         return this.§#7§;
      }
      
      public function get §2a§() : Boolean
      {
         return this.§,!;§;
      }
      
      protected function get §&"'§() : Number
      {
         return this.§ !J§;
      }
      
      protected function initializePivotFromTexture(param1:§'!"§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§+!H§ = param1.pivotY;
            do
            {
               if(this.§,!;§)
               {
                  this.§;o§ = 0;
                  if(!_loc3_)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr74:
                  }
               }
               continue;
               return;
            }
            while(_loc3_ && this);
            
         }
         this.§;o§ = param1.pivotX;
         §§goto(addr74);
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Rectangle = param1.§0!L§;
         if(!_loc3_)
         {
            this.§+!H§ = _loc2_.bottom;
         }
         do
         {
            this.§;o§ = (_loc2_.left + _loc2_.right) / 2;
         }
         while(_loc3_ && param1);
         
      }
      
      protected function § use§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§'!"§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = § j§.§8!x§(param1,this.§7!T§,param2)))
         {
            if(!_loc7_)
            {
               if(!(_loc5_ = this.§7!T§.getTexture(param1)))
               {
                  if(!(_loc7_ && this))
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
                  §§pop().§=T§ = §§pop();
                  if(_loc6_)
                  {
                     loop3:
                     while(true)
                     {
                        this.initializePivotFromTexture(_loc5_);
                        while(true)
                        {
                           §§push(this);
                           §§push(_loc5_.width);
                           if(_loc6_)
                           {
                              §§push(§§pop() - 2);
                           }
                           §§pop().§ !J§ = §§pop();
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(_loc6_)
                           {
                              if(true)
                              {
                                 this.§ !J§ = Math.round(this.§ !J§);
                              }
                              else
                              {
                                 addr136:
                              }
                              continue loop3;
                              break;
                           }
                        }
                     }
                  }
               }
               return;
            }
            loop2:
            while(false)
            {
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(_loc4_.width);
                  if(_loc6_ || param1)
                  {
                     §§push(§§pop() - 2);
                  }
                  §§pop().§ !J§ = §§pop();
                  addr121:
                  while(true)
                  {
                     _loc4_.dispose();
                     if(_loc7_)
                     {
                        continue;
                     }
                     if(!_loc7_)
                     {
                        continue loop2;
                     }
                     addr135:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr136);
         }
         else
         {
            this.§=T§ = param3;
            if(_loc6_)
            {
               this.initializePivotFromComposite(_loc4_);
               §§goto(addr135);
            }
         }
         §§goto(addr121);
      }
      
      protected function §=!p§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         §§push(param3);
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§^!?§(param1,param2)).x = _loc6_ * this.§ !J§;
            if(!(_loc10_ && param2))
            {
               _loc7_.y = 0;
               loop1:
               while(true)
               {
                  _loc7_.scaleX = 1;
                  loop2:
                  while(true)
                  {
                     _loc7_.scaleY = 1;
                     while(_loc9_)
                     {
                        while(!(_loc10_ && param1))
                        {
                           _loc6_++;
                           if(!_loc10_)
                           {
                              continue loop2;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
            while(true)
            {
               §§goto(addr76);
            }
         }
         if(!_loc10_)
         {
            if(§ j§.§=!7§(param1))
            {
               addr113:
               _loc8_ = this.§!"0§(_loc5_);
               if(!_loc10_)
               {
                  _loc5_.§<!7§();
                  if(!(_loc10_ && param1))
                  {
                     _loc5_.dispose();
                  }
               }
               (_loc5_ = _loc8_).flatten();
            }
            return _loc5_;
         }
         §§goto(addr113);
      }
      
      private function §!"0§(param1:Sprite) : Sprite
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc2_:Sprite = new Sprite();
         if(_loc8_)
         {
            §§push(param1.numChildren > 0);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§push(int(Sprite(param1.getChildAt(0)).numChildren));
                        loop5:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop6:
                           while(true)
                           {
                              if(_loc8_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc8_)
                                    {
                                       §§push(int(§§pop() - 1));
                                    }
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    _loc4_ = §§pop();
                                    if(_loc8_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop6;
                                 }
                                 continue loop5;
                                 addr56:
                              }
                              else
                              {
                                 addr124:
                              }
                              while(true)
                              {
                                 §§push(param1.getChildAt(0) is Sprite);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr125);
                              }
                              addr125:
                           }
                        }
                     }
                  }
                  return _loc2_;
                  addr90:
               }
               §§goto(addr124);
            }
         }
         §§goto(addr92);
      }
      
      protected function §^!?§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§'!"§ = null;
         var _loc3_:DisplayObject = § j§.§8!x§(param1,this.§7!T§,param2);
         if(_loc6_)
         {
            if(!_loc3_)
            {
               addr42:
               _loc4_ = this.§7!T§.getTexture(param1);
               _loc3_ = new §`y§(_loc4_.texture,false,param2);
            }
            return _loc3_;
         }
         §§goto(addr42);
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(2);
         §§push(§^g§.§6!9§);
         if(!_loc3_)
         {
            §§push(1.5);
            if(_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  addr51:
                  §§push(§§pop() / (param2 * param1));
               }
               §§push(§§pop() + §§pop());
               if(!_loc3_)
               {
                  return §§pop() * 2;
               }
            }
         }
         §§goto(addr51);
      }
      
      protected function initialize(param1:§2!a§, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = 0;
         if(!_loc8_)
         {
            if(param1.scale == 0)
            {
               this.§=T§ = 1;
               loop0:
               while(true)
               {
                  if(!_loc8_)
                  {
                     if(!_loc9_)
                     {
                        while(true)
                        {
                           this.§=T§ = param1.scale;
                           addr77:
                           while(true)
                           {
                           }
                        }
                        addr73:
                     }
                     loop1:
                     while(true)
                     {
                        this.§ use§(param1.spriteName,param1.highQuality,this.§=T§);
                        while(true)
                        {
                           if(_loc9_)
                           {
                              §§push(this.§ !J§);
                              if(_loc9_ || this)
                              {
                                 if(§§pop() <= 0)
                                 {
                                    if(_loc9_)
                                    {
                                       if(!(_loc8_ && param2))
                                       {
                                          §§goto(addr43);
                                       }
                                       continue;
                                    }
                                    if(false)
                                    {
                                       continue loop1;
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
                              addr192:
                              §§push(this.getRepeatCount(param2,this.§ !J§));
                              if(!_loc8_)
                              {
                                 §§push(int(§§pop()));
                              }
                              §§push(_loc7_ = §§pop());
                              if(_loc9_)
                              {
                                 addr211:
                                 addr205:
                                 addr210:
                                 §§push(-§§pop() / 2);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc3_ = int(§§pop());
                                 addr212:
                                 §§push(_loc3_);
                                 if(_loc9_)
                                 {
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       §§push(-§§pop());
                                       if(!(_loc8_ && param2))
                                       {
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             if(_loc9_ || param1)
                                             {
                                                addr165:
                                                §§push(int(§§pop() - 1));
                                                if(!(_loc8_ && param1))
                                                {
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr181:
                                                      if(_loc9_ || this)
                                                      {
                                                         this.§`O§ = true;
                                                         addr101:
                                                         this.§@f§ = param1.xOffset;
                                                         if(!(_loc8_ && this))
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               this.§9r§ = param1.yOffset;
                                                               if(_loc9_)
                                                               {
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     addr99:
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr101);
                                                                     }
                                                                     §§push(_loc3_);
                                                                     if(_loc9_)
                                                                     {
                                                                        addr217:
                                                                        var _loc5_:int = §§pop();
                                                                        addr237:
                                                                        if(_loc5_ <= _loc4_)
                                                                        {
                                                                           this.§'!F§(param1,_loc5_ * this.§ !J§);
                                                                           if(!_loc8_)
                                                                           {
                                                                              _loc5_++;
                                                                              if(_loc9_ || param2)
                                                                              {
                                                                              }
                                                                              addr240:
                                                                              var _loc6_:Sprite = this.§=!p§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
                                                                              if(!(_loc8_ && this))
                                                                              {
                                                                                 this.§]!$§.addChild(_loc6_);
                                                                                 this.§33§();
                                                                                 this.§<!v§();
                                                                                 addr293:
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§goto(addr293);
                                                                                    }
                                                                                    return;
                                                                                    addr284:
                                                                                 }
                                                                                 addr288:
                                                                                 §§goto(addr288);
                                                                              }
                                                                              §§goto(addr284);
                                                                           }
                                                                           §§goto(addr237);
                                                                        }
                                                                        §§goto(addr240);
                                                                        addr216:
                                                                     }
                                                                     §§goto(addr217);
                                                                  }
                                                                  §§goto(addr181);
                                                               }
                                                               §§goto(addr101);
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                         addr120:
                                                         §§goto(addr120);
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr211);
                                                }
                                                §§goto(addr216);
                                             }
                                             §§goto(addr205);
                                          }
                                          §§goto(addr210);
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr192);
                                 }
                              }
                              §§goto(addr217);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr99);
                     }
                  }
                  §§goto(addr77);
               }
            }
            §§goto(addr73);
         }
         addr43:
      }
      
      private function §33§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§9"$§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§9"$§);
                     addr157:
                     while(true)
                     {
                        if(§§pop().numChildren <= 0)
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(this.§]!$§);
                           addr162:
                           while(true)
                           {
                              §§pop().addChild(this.§9"$§);
                              addr165:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr57:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     this.§^!8§ = null;
                     if(_loc2_)
                     {
                        if(_loc1_)
                        {
                           §§goto(addr160);
                        }
                        §§goto(addr25);
                     }
                     loop3:
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           addr93:
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr57);
                              }
                              else
                              {
                                 §§goto(addr118);
                              }
                           }
                           while(true)
                           {
                              §§push(this.§]!$§);
                              if(!(_loc2_ || _loc2_))
                              {
                                 break loop3;
                              }
                              §§pop().addChildAt(this.§^!8§,0);
                           }
                           addr93:
                        }
                        while(true)
                        {
                           if(_loc1_ && this)
                           {
                              §§goto(addr165);
                           }
                           §§goto(addr25);
                        }
                        §§goto(addr64);
                     }
                     addr64:
                     §§goto(addr162);
                     addr46:
                  }
               }
               while(true)
               {
                  §§push(this.§^!8§);
                  if(!(_loc1_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           §§push(this.§^!8§);
                           while(§§pop().numChildren <= 0)
                           {
                              §§push(this.§^!8§);
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              §§pop().dispose();
                              §§goto(addr46);
                           }
                           §§goto(addr93);
                           addr90:
                        }
                        §§goto(addr93);
                     }
                     break;
                  }
                  §§goto(addr90);
               }
               addr25:
               return;
            }
            §§goto(addr157);
         }
         §§goto(addr93);
      }
      
      private function §'!F§(param1:§2!a§, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§3!;§ = null;
         var _loc5_:§+"C§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < param1.§4i§)
         {
            _loc4_ = param1.§7!s§(_loc3_);
            §§push(Boolean(_loc5_ = §^"§.§3h§(_loc4_.id,this.§7!T§)));
            if(!(_loc8_ && param2))
            {
               if(§§pop())
               {
                  if(!(_loc8_ && this))
                  {
                     §§pop();
                     if(!(_loc8_ && param2))
                     {
                        §§push(_loc5_.§8!n§ > 0);
                        if(!(_loc8_ && param2))
                        {
                           addr79:
                           if(§§pop())
                           {
                              if(_loc9_ || param1)
                              {
                                 §§push(_loc5_);
                                 §§push(param2);
                                 if(!_loc8_)
                                 {
                                    §§push(_loc4_.x);
                                    if(_loc9_ || _loc3_)
                                    {
                                       addr111:
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc8_ && param2))
                                       {
                                          §§push(param1.xOffset);
                                       }
                                       §§pop().x = §§pop();
                                       if(_loc9_)
                                       {
                                          addr114:
                                          _loc5_.y = _loc4_.y;
                                          if(!_loc8_)
                                          {
                                             _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
                                             if(!(_loc8_ && param2))
                                             {
                                                _loc5_.rotation = _loc4_.rotation;
                                                loop1:
                                                while(true)
                                                {
                                                   _loc5_.alpha = _loc4_.alpha;
                                                   loop2:
                                                   while(true)
                                                   {
                                                      _loc5_.start();
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §^!e§.§1!P§.add(_loc5_);
                                                         loop4:
                                                         while(true)
                                                         {
                                                            this.§9"6§.push(_loc5_);
                                                            addr301:
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.§=%§);
                                                               addr278:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(this.§9"$§);
                                                                     loop17:
                                                                     while(!§§pop())
                                                                     {
                                                                        while(_loc8_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           this.§9"$§ = new Sprite();
                                                                           addr250:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ || param2)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    break loop17;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              addr279:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§^!8§);
                                                                                 addr281:
                                                                                 addr295:
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    addr260:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§^!8§);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§pop().addChild(_loc5_);
                                                                                          continue loop4;
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                 }
                                                                                 addr295:
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr260);
                                                                                 }
                                                                              }
                                                                              continue loop20;
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§9"$§);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§pop().addChild(_loc5_);
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 addr221:
                                                                                 _loc6_ = 0;
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop() >= _loc4_.fastForwardsAfterAdd)
                                                                                       {
                                                                                          if(!(_loc8_ && this))
                                                                                          {
                                                                                             if(!(_loc8_ && _loc3_))
                                                                                             {
                                                                                                do
                                                                                                {
                                                                                                   _loc3_++;
                                                                                                }
                                                                                                while(!_loc9_);
                                                                                                
                                                                                                if(false)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop0;
                                                                                                addr138:
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                          addr185:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_.dispose();
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                addr200:
                                                                                                continue loop7;
                                                                                             }
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§goto(addr197);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr295);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr250);
                                                                                                }
                                                                                                §§goto(addr281);
                                                                                             }
                                                                                          }
                                                                                          continue loop2;
                                                                                          addr187:
                                                                                       }
                                                                                       _loc5_.§;";§(1 / 20);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    §§goto(addr221);
                                                                                 }
                                                                                 addr222:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr244);
                                                                              }
                                                                              §§goto(addr250);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr243);
                                                                        }
                                                                        §§goto(addr244);
                                                                     }
                                                                     addr243:
                                                                  }
                                                                  §§goto(addr279);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr332:
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr246);
                                       }
                                       §§goto(addr301);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr332);
                           }
                           else if(_loc5_)
                           {
                              if(_loc9_ || param1)
                              {
                                 §§goto(addr185);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr278);
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr278);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§ "G§ = null;
         if(_loc5_ || this)
         {
            this.§]!$§.§<!7§(0,-1,true);
         }
         var _loc3_:* = this.§9"6§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               §^!e§.§1!P§.§;T§(_loc1_);
               if(_loc4_ && this)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(_loc5_)
         {
            this.§9"6§ = [];
         }
         do
         {
            this.§^!8§ = null;
            do
            {
               this.§9"$§ = null;
            }
            while(_loc4_);
            
         }
         while(_loc4_ && _loc3_);
         
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param2))
         {
            this.§+!?§ = param1;
            loop0:
            while(true)
            {
               this.§4J§ = param2;
               loop1:
               while(true)
               {
                  §§push(this.§]!$§);
                  while(true)
                  {
                     §§push(this.§=T§);
                     addr191:
                     while(true)
                     {
                        §§pop().scaleX = §§pop();
                     }
                     loop8:
                     for(; _loc9_ || param3; §§push(this.§]!$§),if(_loc8_ && param1)
                     {
                        continue;
                     },§§goto(addr39))
                     {
                        §§push(param1);
                        loop9:
                        while(true)
                        {
                           §§push(-§§pop());
                           loop10:
                           while(true)
                           {
                              §§push(this.§#7§);
                              if(_loc9_ || param2)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc9_)
                                 {
                                    §§push(this.§;o§);
                                    loop13:
                                    while(true)
                                    {
                                       §§push(this.§=T§);
                                       loop14:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          loop15:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             loop16:
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   §§push(this.§@f§);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr154:
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(!(_loc8_ && param2))
                                                            {
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr202:
                                                               while(true)
                                                               {
                                                                  §§push(this.§]!$§);
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§=T§);
                                                                     break loop11;
                                                                     addr39:
                                                                     if(_loc8_ && this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(param2);
                                                                     if(!(_loc8_ && param2))
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§push(-§§pop());
                                                                        if(_loc9_)
                                                                        {
                                                                           addr61:
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(this.§+!H§);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 §§push(this.§=T§);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc9_ || param3)
                                                                                 {
                                                                                    addr81:
                                                                                    if(_loc9_ || param2)
                                                                                    {
                                                                                       addr111:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          §§push(this.§9r§);
                                                                                       }
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§pop().y = §§pop();
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                             continue loop12;
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 §§goto(addr111);
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§goto(addr81);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr191);
                                                                           }
                                                                        }
                                                                        §§goto(addr111);
                                                                     }
                                                                     §§goto(addr61);
                                                                  }
                                                               }
                                                            }
                                                            addr183:
                                                            while(!_loc8_)
                                                            {
                                                               §§push(this.§]!$§);
                                                               continue loop8;
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop15;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§pop().scaleY = §§pop();
                                                   §§goto(addr183);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr145:
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr145);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr202);
      }
      
      private function §<!v§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ "G§ = null;
         for each(_loc1_ in this.§9"6§)
         {
            if(_loc4_)
            {
               §^!e§.§1!P§.add(_loc1_);
               if(!_loc5_)
               {
                  _loc1_.visible = true;
               }
            }
         }
      }
      
      private function §,N§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ "G§ = null;
         for each(_loc1_ in this.§9"6§)
         {
            if(!(_loc5_ && _loc1_))
            {
               §^!e§.§1!P§.§;T§(_loc1_);
               if(!_loc4_)
               {
                  continue;
               }
            }
            _loc1_.visible = false;
         }
      }
      
      public function §]i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != this.§,!'§; do
            {
               §§push(this.§,!'§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        this.§<!v§();
                     }
                  }
                  else
                  {
                     this.§,N§();
                     if(_loc3_ || param1)
                     {
                        if(!(_loc2_ && param1))
                        {
                           §§goto(addr20);
                        }
                        break loop0;
                     }
                  }
                  continue;
               }
               continue loop0;
            }
            while(!(_loc3_ || _loc2_));
            ,if(_loc2_)
            {
               §§goto(addr74);
            })
            {
               while(true)
               {
                  this.§,!'§ = param1;
                  continue loop0;
               }
            }
            return;
         }
         addr20:
      }
   }
}
