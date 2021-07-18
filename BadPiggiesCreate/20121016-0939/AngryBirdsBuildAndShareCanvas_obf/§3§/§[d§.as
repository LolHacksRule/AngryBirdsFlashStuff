package §3§
{
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'i§.§'!;§;
   import §62§.§0!t§;
   import §7r§.§=q§;
   import com.rovio.assets.§>!]§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   
   public class §[d§ extends Sprite
   {
      
      private static const §0I§:int = 3;
      
      private static const §=!N§:int = 2000;
      
      private static const §function§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §0I§ = 3;
         }
         do
         {
            §=!N§ = 2000;
            do
            {
               §function§ = 0.2;
            }
            while(!_loc1_);
            
         }
         while(!(_loc1_ || §[d§));
         
      }
      
      private var §?N§:§=q§;
      
      private var §7!N§:MovieClip;
      
      private var §9a§:Vector.<§!!!§>;
      
      private var §%z§:DisplayObjectContainer;
      
      private var §;!F§:DisplayObject;
      
      private var §8!g§:§3^§;
      
      private var §-U§:Timer;
      
      private var §#[§:Boolean = false;
      
      private var §#A§:TextField;
      
      public function §[d§(param1:§=q§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§9a§ = new Vector.<§!!!§>();
            loop0:
            while(true)
            {
               addr34:
               while(true)
               {
                  super();
                  continue loop0;
               }
            }
            addr44:
         }
         while(true)
         {
            this.§?N§ = param1;
            if(!_loc3_)
            {
               continue;
            }
            if(_loc3_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr44);
            }
            §§goto(addr34);
         }
         var _loc2_:Class = §>!]§.§1!8§("thoughtBubble");
         if(!_loc4_)
         {
            this.§7!N§ = new _loc2_();
            while(true)
            {
               this.§;!F§ = this.§7!N§.getChildByName("content") as DisplayObject;
               loop4:
               while(true)
               {
                  this.§;!F§.visible = false;
                  loop5:
                  while(true)
                  {
                     this.§%z§ = new Sprite();
                     while(true)
                     {
                        addChild(this.§7!N§);
                        continue loop5;
                        loop18:
                        for(; !(_loc4_ && _loc3_); while(true)
                        {
                           if(!(_loc3_ || _loc2_))
                           {
                              continue loop18;
                           }
                           §§goto(addr151);
                           §§goto(addr120);
                        },§§goto(addr241))
                        {
                           this.§7!N§.graphics.drawRect(0,0,-this.§7!N§.width,-this.§7!N§.height);
                           loop19:
                           while(true)
                           {
                              this.§7!N§.graphics.endFill();
                              loop20:
                              while(!_loc4_)
                              {
                                 addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                                 loop21:
                                 while(true)
                                 {
                                    addEventListener(Event.REMOVED_FROM_STAGE,this.§?!N§);
                                    addr166:
                                    loop22:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          addr170:
                                          if(!(_loc4_ && this))
                                          {
                                             addEventListener(MouseEvent.ROLL_OVER,this.§`j§);
                                             continue loop18;
                                          }
                                          addr321:
                                          addr321:
                                          while(_loc3_ || this)
                                          {
                                             if(!_loc4_)
                                             {
                                                this.§#A§.autoSize = "center";
                                                break loop22;
                                             }
                                             continue loop4;
                                             §§goto(addr170);
                                          }
                                          continue loop5;
                                       }
                                       continue loop20;
                                    }
                                    while(true)
                                    {
                                       this.§#A§.text = "!";
                                       while(true)
                                       {
                                          this.§#A§.x = (this.§;!F§.width - this.§#A§.width) / 2 + this.§;!F§.x;
                                          loop14:
                                          while(!_loc4_)
                                          {
                                             this.§#A§.y = (this.§;!F§.height - this.§#A§.height) / 2 + this.§;!F§.y;
                                             loop15:
                                             while(true)
                                             {
                                                this.§#A§.selectable = false;
                                                while(!_loc4_)
                                                {
                                                   this.§7!N§.addChild(this.§#A§);
                                                   while(!(_loc4_ && _loc3_))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         this.§7!N§.graphics.beginFill(0,0);
                                                         continue loop18;
                                                      }
                                                      continue loop15;
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         addEventListener(MouseEvent.ROLL_OUT,this.§''§);
                                                         loop24:
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               continue loop19;
                                                            }
                                                            continue loop18;
                                                            addr96:
                                                            while(true)
                                                            {
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop21;
                                                               }
                                                               continue loop24;
                                                            }
                                                            §§goto(addr166);
                                                         }
                                                         continue loop19;
                                                         addr120:
                                                      }
                                                   }
                                                }
                                                continue loop14;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr354:
                              while(true)
                              {
                                 this.§#A§ = new TextField();
                                 §§goto(addr348);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr276);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`j§();
         }
      }
      
      private function §0!h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§''§();
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`j§();
            while(true)
            {
               this.§`+§();
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §?!N§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§-U§)
            {
               while(true)
               {
                  this.§-U§.stop();
                  addr85:
                  while(true)
                  {
                  }
                  addr61:
                  if(!(_loc2_ || param1))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§goto(addr23);
                  }
                  addr78:
               }
            }
            while(true)
            {
               §§push(this.§8!g§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr58:
                        this.§8!g§.stop();
                     }
                     §§goto(addr59);
                  }
                  addr23:
                  while(true)
                  {
                     removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                     if(_loc2_)
                     {
                        break;
                     }
                     addr59:
                     while(_loc2_)
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr85);
                  }
                  return;
               }
               §§goto(addr58);
               §§goto(addr85);
            }
         }
         §§goto(addr78);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§?N§);
            if(!(_loc4_ && _loc2_))
            {
               if(!§§pop().§&!5§())
               {
                  do
                  {
                     visible = true;
                  }
                  while(!(_loc3_ || param1));
                  
                  if(!_loc4_)
                  {
                     addr32:
                     if(true)
                     {
                        §§goto(addr66);
                     }
                  }
                  else
                  {
                     addr63:
                  }
                  return;
               }
               if(_loc3_)
               {
                  visible = false;
               }
               §§goto(addr63);
            }
            addr66:
            var _loc2_:Point = this.§?N§.§ Q§();
            if(_loc3_ || _loc2_)
            {
               x = _loc2_.x;
               do
               {
                  y = _loc2_.y;
               }
               while(_loc4_ && param1);
               
            }
            return;
         }
         §§goto(addr32);
      }
      
      private function §`+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§-U§ = new Timer(§=!N§,1);
            while(true)
            {
               this.§-U§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§''§);
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.§-U§.start();
            if(_loc2_ || this)
            {
               if(_loc2_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §''§(param1:Event = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            if(!this.§#[§)
            {
               loop0:
               while(true)
               {
                  if(this.§-U§)
                  {
                     loop1:
                     while(_loc3_)
                     {
                        this.§-U§.stop();
                        loop2:
                        while(true)
                        {
                           addr33:
                           if(_loc4_ && _loc2_)
                           {
                              continue;
                           }
                           if(_loc4_ && this)
                           {
                              continue loop1;
                           }
                           while(false)
                           {
                              loop5:
                              while(true)
                              {
                                 this.§%z§.visible = false;
                                 loop6:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       while(!(_loc4_ && _loc3_))
                                       {
                                          §§push(this.§8!g§);
                                          while(true)
                                          {
                                             §§pop().stop();
                                             break loop6;
                                          }
                                       }
                                       continue loop0;
                                       addr68:
                                    }
                                    this.§#A§.visible = true;
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr33);
                                 }
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                              continue loop2;
                           }
                           §§push(§function§);
                           if(!_loc4_)
                           {
                              §§push(§§pop() / this.§7!N§.scaleX);
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr118:
                                 §§push(Number(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              if(_loc3_ || _loc3_)
                              {
                                 this.§8!g§ = §7!E§.§2=§.§<!C§(this,{
                                    "scaleX":_loc2_,
                                    "scaleY":_loc2_
                                 },{
                                    "scaleX":scaleX,
                                    "scaleY":scaleY
                                 },0.3,§7!E§.§5!+§);
                                 do
                                 {
                                    this.§8!g§.play();
                                 }
                                 while(!(_loc3_ || _loc2_));
                                 
                              }
                              return;
                           }
                           §§goto(addr118);
                        }
                     }
                     §§goto(addr102);
                  }
                  while(true)
                  {
                     §§push(this.§8!g§);
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr68);
                        }
                        §§goto(addr49);
                     }
                     §§goto(addr87);
                  }
               }
            }
            addr102:
            return;
         }
         §§goto(addr47);
      }
      
      private function §`j§(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§#[§)
            {
               loop0:
               while(true)
               {
                  if(this.§-U§)
                  {
                     while(true)
                     {
                        this.§-U§.stop();
                        addr142:
                        while(!(_loc2_ && this))
                        {
                        }
                        continue loop0;
                     }
                     addr139:
                  }
                  while(true)
                  {
                     §§push(this.§8!g§);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    §§goto(addr163);
                                 }
                                 §§push(this.§8!g§);
                                 while(true)
                                 {
                                    §§pop().stop();
                                    addr134:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr139);
                              }
                           }
                           §§goto(addr142);
                           addr117:
                        }
                        loop5:
                        while(true)
                        {
                           this.§%z§.visible = true;
                           loop6:
                           while(true)
                           {
                              this.§#A§.visible = false;
                              loop7:
                              while(_loc3_ || this)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    this.§8!g§ = §7!E§.§2=§.§<!C§(this,{
                                       "scaleX":1,
                                       "scaleY":1
                                    },{
                                       "scaleX":scaleX,
                                       "scaleY":scaleY
                                    },0.3,§7!E§.§5!+§);
                                    for(; !_loc2_; §§pop().play(),if(_loc2_ && this)
                                    {
                                       continue;
                                    },if(_loc2_)
                                    {
                                       continue loop7;
                                    },if(!(_loc3_ || _loc2_))
                                    {
                                       continue loop6;
                                    },if(_loc3_ || param1)
                                    {
                                       break loop10;
                                    },§§goto(addr142))
                                    {
                                       §§push(this.§8!g§);
                                       if(!(_loc2_ && this))
                                       {
                                          continue;
                                       }
                                    }
                                    §§goto(addr117);
                                 }
                                 return;
                              }
                              continue loop5;
                           }
                        }
                     }
                     §§goto(addr133);
                  }
               }
            }
            addr163:
            return;
         }
         §§goto(addr104);
      }
      
      public function §9%§(param1:String, param2:Boolean) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc7_:§!!!§ = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         if(_loc12_ || param2)
         {
            this.§9a§.push(new §!!!§(param1,param2));
         }
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < this.§9a§.length)
         {
            _loc7_ = this.§9a§[_loc3_];
            if(!(_loc11_ && param2))
            {
               §§push(0);
               loop1:
               while(true)
               {
                  _loc8_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     if(_loc12_ || param2)
                     {
                        continue loop1;
                     }
                     addr467:
                     loop4:
                     while(true)
                     {
                        loop28:
                        switch(§§pop())
                        {
                           case 0:
                              addr335:
                              _loc8_ = int(_loc7_.width / 2 + this.§9a§[0].width / 2);
                              addr316:
                              loop5:
                              while(true)
                              {
                                 §§push(_loc7_.height / 2);
                                 addr293:
                                 while(true)
                                 {
                                    §§push(§0I§);
                                    addr294:
                                    while(true)
                                    {
                                       §§push(§§pop() / 2);
                                       addr296:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          addr297:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc12_)
                                             {
                                                break loop5;
                                             }
                                             _loc9_ = §§pop();
                                             continue loop5;
                                          }
                                          addr393:
                                          §§push(0);
                                          addr466:
                                          if(!_loc11_)
                                          {
                                             addr396:
                                          }
                                          else
                                          {
                                             addr447:
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 var _loc10_:* = §§pop();
                                 if(_loc12_)
                                 {
                                    §§push(1);
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       §§push(_loc10_);
                                       if(_loc12_ || this)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc11_ && this))
                                             {
                                                §§goto(addr393);
                                             }
                                             else
                                             {
                                                addr416:
                                                §§push(1);
                                                if(!_loc12_)
                                                {
                                                   addr461:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(2);
                                             if(_loc12_ || param2)
                                             {
                                                §§push(_loc10_);
                                                if(_loc12_ || _loc3_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         §§goto(addr416);
                                                      }
                                                      else
                                                      {
                                                         addr458:
                                                         §§push(3);
                                                         if(_loc11_)
                                                         {
                                                         }
                                                         §§goto(addr466);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(3);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(_loc10_);
                                                         if(!(_loc11_ && this))
                                                         {
                                                            addr431:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc12_ || this)
                                                               {
                                                                  §§push(2);
                                                                  if(_loc12_ || _loc3_)
                                                                  {
                                                                     §§goto(addr447);
                                                                  }
                                                                  §§goto(addr466);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr458);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(4);
                                                               if(_loc12_ || this)
                                                               {
                                                                  addr457:
                                                                  if(§§pop() === _loc10_)
                                                                  {
                                                                     §§goto(addr458);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr466);
                                                                     §§push(4);
                                                                  }
                                                               }
                                                               §§goto(addr466);
                                                            }
                                                            §§goto(addr466);
                                                         }
                                                         §§goto(addr457);
                                                      }
                                                   }
                                                   §§goto(addr461);
                                                }
                                                §§goto(addr457);
                                             }
                                          }
                                          §§goto(addr466);
                                       }
                                       §§goto(addr431);
                                    }
                                    §§goto(addr396);
                                 }
                                 §§goto(addr393);
                              }
                              break;
                              addr336:
                              addr366:
                           case 1:
                              §§push(0);
                              if(!_loc11_)
                              {
                                 _loc8_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc12_ || param1)
                                    {
                                       §§push(_loc7_.height / 2);
                                       while(!(_loc11_ && _loc3_))
                                       {
                                          if(!(_loc11_ && this))
                                          {
                                             §§push(this.§9a§[0].height / 2);
                                             while(_loc12_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                while(true)
                                                {
                                                   §§push(§0I§);
                                                   addr263:
                                                   while(_loc12_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      while(!_loc11_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         while(true)
                                                         {
                                                            _loc9_ = §§pop();
                                                            addr270:
                                                            while(true)
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  break loop28;
                                                               }
                                                               continue loop6;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr297);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr294);
                                             }
                                             addr259:
                                          }
                                          else
                                          {
                                             §§goto(addr316);
                                          }
                                          §§goto(addr316);
                                       }
                                       break;
                                       addr238:
                                    }
                                    continue loop2;
                                 }
                              }
                              continue;
                              §§goto(addr316);
                              break;
                           case 2:
                              addr205:
                              §§push(this.§9a§[0].width / 2);
                              if(!(_loc11_ && this))
                              {
                                 addr224:
                                 _loc8_ = int(§§pop() + this.§9a§[1].width + _loc7_.width / 2);
                                 if(_loc12_ || param1)
                                 {
                                    addr179:
                                    §§push(0);
                                    if(_loc11_ && this)
                                    {
                                       §§goto(addr224);
                                    }
                                    _loc9_ = §§pop();
                                    if(_loc12_ || param1)
                                    {
                                       addr147:
                                       break;
                                    }
                                    _loc7_.y = _loc9_;
                                    while(true)
                                    {
                                       if(_loc11_)
                                       {
                                          continue;
                                       }
                                    }
                                    addr505:
                                    addr499:
                                 }
                                 addr501:
                                 loop21:
                                 while(true)
                                 {
                                    this.§%z§.addChild(_loc7_);
                                    addr492:
                                    while(_loc11_)
                                    {
                                       §§goto(addr499);
                                       continue loop21;
                                    }
                                 }
                                 addr487:
                              }
                              else
                              {
                                 §§goto(addr262);
                              }
                              break;
                           case 3:
                              §§push(this.§9a§[0].width / 2);
                              while(true)
                              {
                                 if(_loc12_)
                                 {
                                    §§push(int(§§pop() + this.§9a§[1].width + _loc7_.width / 2));
                                    if(_loc11_)
                                    {
                                       continue loop4;
                                    }
                                    _loc8_ = §§pop();
                                    if(_loc11_)
                                    {
                                       break loop28;
                                    }
                                    §§push(_loc7_.height / 2);
                                    if(_loc11_)
                                    {
                                       continue;
                                    }
                                    if(_loc12_)
                                    {
                                       §§push(this.§9a§[0].height / 2);
                                       if(_loc12_ || param1)
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc11_ && _loc3_))
                                             {
                                                continue;
                                             }
                                             addr102:
                                             if(!(_loc11_ && param1))
                                             {
                                                §§push(int(§§pop()));
                                                if(!(_loc12_ || param1))
                                                {
                                                   continue loop4;
                                                }
                                                if(_loc12_ || this)
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(_loc12_ || this)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               if(_loc12_ || _loc3_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break loop28;
                                                                  }
                                                                  §§goto(addr147);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr301);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr270);
                                                            }
                                                            §§goto(addr336);
                                                         }
                                                         addr485:
                                                         if(true)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr487);
                                                      }
                                                      §§goto(addr335);
                                                   }
                                                   §§goto(addr269);
                                                }
                                                else
                                                {
                                                   §§goto(addr179);
                                                }
                                             }
                                             §§goto(addr293);
                                          }
                                          §§goto(addr296);
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr266);
                                 }
                                 else
                                 {
                                    §§goto(addr205);
                                 }
                              }
                              §§goto(addr262);
                        }
                        _loc7_.x = _loc8_;
                        §§goto(addr179);
                     }
                  }
               }
            }
            while(true)
            {
               _loc3_++;
               if(_loc12_ || _loc3_)
               {
                  §§goto(addr485);
               }
               §§goto(addr492);
            }
         }
         if(_loc12_ || _loc3_)
         {
            this.§7!N§.scaleX = this.§7!N§.scaleY = 1;
         }
         §§push(this.§%z§.width / this.§;!F§.width);
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§%z§.height / this.§;!F§.height);
         if(_loc12_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Number = Math.max(0.4,Math.max(_loc4_,_loc5_));
         if(!(_loc11_ && this))
         {
            this.§7!N§.scaleY = _loc6_;
            while(true)
            {
               this.§7!N§.scaleX = _loc6_;
               while(_loc12_ || param1)
               {
                  this.§%z§.x = (this.§;!F§.width * _loc6_ - this.§%z§.width) / 2 + this.§;!F§.x * _loc6_;
                  loop26:
                  while(_loc12_)
                  {
                     while(true)
                     {
                        this.§%z§.y = (this.§;!F§.height * _loc6_ - this.§%z§.height) / 2 + this.§;!F§.y * _loc6_;
                        if(!(_loc11_ && _loc3_))
                        {
                           break;
                        }
                        continue loop26;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr629);
      }
      
      public function update(param1:Vector.<§=q§>) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:§!!!§ = null;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         §§push(this.§#[§);
         if(!(_loc9_ && this))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = true;
         loop0:
         for each(_loc4_ in this.§9a§)
         {
            §§push(_loc4_.§7!q§);
            if(_loc10_)
            {
               §§push(Boolean(§§pop()));
               if(_loc10_)
               {
                  _loc5_ = §§pop();
                  if(_loc10_ || param1)
                  {
                     §§push(_loc4_);
                     §§push(_loc4_.§,"8§);
                     if(_loc10_ || param1)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§,!$§(§§pop());
                     loop1:
                     while(true)
                     {
                        §§push(int(param1.length - 1));
                        loop2:
                        while(true)
                        {
                           _loc6_ = §§pop();
                           while(true)
                           {
                              loop4:
                              do
                              {
                                 §§push(_loc6_);
                                 if(_loc9_)
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop() < 0)
                                 {
                                    if(_loc10_ || this)
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc4_.§7!q§);
                                          loop6:
                                          while(true)
                                          {
                                             if(§§pop() != _loc5_)
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   this.§`j§();
                                                   addr134:
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            loop9:
                                                            while(true)
                                                            {
                                                               this.§`+§();
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  addr66:
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.§7!q§);
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc10_)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(!_loc10_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           if(_loc9_ && this)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           if(_loc9_ && this)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           addr98:
                                                                           §§push(false);
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break loop7;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           addr182:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 break loop5;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr98);
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               _loc4_.§,!$§(_loc4_.§,"8§);
                                                               addr199:
                                                               while(true)
                                                               {
                                                                  param1.splice(_loc6_,1);
                                                               }
                                                            }
                                                            addr195:
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                }
                                                addr132:
                                             }
                                             §§goto(addr66);
                                          }
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr134);
                                 }
                                 else if(param1[_loc6_].getName() != _loc4_.§@!h§)
                                 {
                                    §§push(_loc6_);
                                    if(_loc10_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr195);
                              }
                              while(!_loc9_);
                              
                           }
                        }
                     }
                  }
                  §§goto(addr132);
               }
            }
            §§goto(addr100);
         }
         if(_loc10_)
         {
            this.§#[§ = _loc3_;
            while(true)
            {
               §§push(this.§#[§);
               if(!_loc9_)
               {
                  if(§§pop() != _loc2_)
                  {
                     loop18:
                     for(; _loc10_; while(true)
                     {
                        if(!(_loc10_ || _loc2_))
                        {
                           continue loop18;
                        }
                        §§push(this.§8!g§);
                        if(_loc10_ || this)
                        {
                           §§pop().play();
                           §§goto(addr274);
                        }
                        §§goto(addr354);
                     })
                     {
                        §§push(this.§#[§);
                        loop19:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.§`j§();
                              for(; !(_loc9_ && _loc3_); this.§`+§(),if(!(_loc10_ || this))
                              {
                                 continue;
                              },if(!_loc9_)
                              {
                                 if(_loc10_)
                                 {
                                    break loop19;
                                 }
                                 §§goto(addr355);
                              },§§goto(addr317))
                              {
                                 if(_loc9_)
                                 {
                                    continue loop18;
                                 }
                                 if(_loc10_)
                                 {
                                    continue;
                                 }
                                 loop21:
                                 while(true)
                                 {
                                    this.§-U§.stop();
                                    addr317:
                                    while(true)
                                    {
                                       if(_loc9_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§8!g§);
                                             if(_loc10_ || _loc2_)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§8!g§);
                                                      addr354:
                                                      while(true)
                                                      {
                                                         §§pop().stop();
                                                         addr355:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      continue loop21;
                                                   }
                                                   addr352:
                                                }
                                                while(this.§-U§)
                                                {
                                                   continue loop21;
                                                }
                                                while(true)
                                                {
                                                   this.§8!g§ = §7!E§.§2=§.§<!C§(this,{
                                                      "scaleX":0,
                                                      "scaleY":0
                                                   },{
                                                      "scaleX":scaleX,
                                                      "scaleY":scaleY
                                                   },0.3,§7!E§.§5!+§);
                                                   continue loop18;
                                                }
                                                addr227:
                                                return;
                                                addr282:
                                                addr281:
                                             }
                                             §§goto(addr354);
                                          }
                                          addr332:
                                       }
                                       §§goto(addr282);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(_loc9_ && _loc3_)
                                 {
                                    §§goto(addr352);
                                 }
                                 §§goto(addr281);
                              }
                              addr274:
                           }
                           §§goto(addr332);
                        }
                     }
                     continue;
                  }
                  §§goto(addr227);
               }
               §§goto(addr331);
            }
         }
         §§goto(addr227);
      }
   }
}
