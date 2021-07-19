package §7&§
{
   import §"_§.§!"8§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §1" §.§#!j§;
   import §7t§.§7a§;
   import com.rovio.assets.§69§;
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
   
   public class §%""§ extends Sprite
   {
      
      private static const §0!c§:int = 3;
      
      private static const §8O§:int = 2000;
      
      private static const §@!4§:Number = 0.2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0!c§ = 3;
         }
         do
         {
            §8O§ = 2000;
            do
            {
               §@!4§ = 0.2;
            }
            while(_loc1_);
            
         }
         while(!_loc2_);
         
      }
      
      private var §&!4§:§7a§;
      
      private var §,!o§:MovieClip;
      
      private var §+!8§:Vector.<§"!-§>;
      
      private var §;!7§:DisplayObjectContainer;
      
      private var §>",§:DisplayObject;
      
      private var §,!c§:§=!r§;
      
      private var §>!M§:Timer;
      
      private var § !7§:Boolean = false;
      
      private var §'!2§:TextField;
      
      public function §%""§(param1:§7a§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§+!8§ = new Vector.<§"!-§>();
         }
         loop0:
         while(true)
         {
            addr32:
            addr50:
            while(true)
            {
               super();
               continue loop0;
            }
            var _loc2_:Class = §69§.§ 0§("thoughtBubble");
            if(!_loc4_)
            {
               this.§,!o§ = new _loc2_();
               loop3:
               while(true)
               {
                  this.§>",§ = this.§,!o§.getChildByName("content") as DisplayObject;
                  while(true)
                  {
                     this.§>",§.visible = false;
                     addr178:
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     addEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
                     loop22:
                     while(true)
                     {
                        addEventListener(MouseEvent.ROLL_OVER,this.§-!u§);
                        loop23:
                        while(true)
                        {
                           if(!(_loc3_ || param1))
                           {
                              continue loop22;
                           }
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 addr144:
                                 if(_loc4_ && param1)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              loop15:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       this.§'!2§.selectable = false;
                                       addr384:
                                       while(_loc3_)
                                       {
                                          this.§,!o§.addChild(this.§'!2§);
                                          loop17:
                                          while(_loc3_ || _loc2_)
                                          {
                                             this.§,!o§.graphics.beginFill(0,0);
                                             loop18:
                                             while(true)
                                             {
                                                this.§,!o§.graphics.drawRect(0,0,-this.§,!o§.width,-this.§,!o§.height);
                                                addr217:
                                                loop19:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop17;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   this.§,!o§.graphics.endFill();
                                                   loop20:
                                                   while(true)
                                                   {
                                                      addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                                                      loop21:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop20;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr178);
                                                         addr116:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ || this))
                                                            {
                                                               continue loop21;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§#!j§.§[E§);
                                                            loop25:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§%8§);
                                                               addr101:
                                                               while(true)
                                                               {
                                                                  §§push(§!"8§.§4]§);
                                                                  addr103:
                                                                  while(true)
                                                                  {
                                                                     §§pop().addEventListener(§§pop(),this.onPhysicsEnabled);
                                                                     addr106:
                                                                     while(_loc3_)
                                                                     {
                                                                        continue loop25;
                                                                     }
                                                                     continue loop23;
                                                                  }
                                                               }
                                                            }
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               return;
                                                            }
                                                         }
                                                         addr317:
                                                         addr337:
                                                         while(!(_loc4_ && this))
                                                         {
                                                            this.§'!2§.text = "!";
                                                            break loop19;
                                                         }
                                                         while(true)
                                                         {
                                                            this.§'!2§.autoSize = "center";
                                                            §§goto(addr317);
                                                         }
                                                      }
                                                      continue loop18;
                                                   }
                                                }
                                                addr304:
                                                while(_loc3_ || _loc2_)
                                                {
                                                   this.§'!2§.x = (this.§>",§.width - this.§'!2§.width) / 2 + this.§>",§.x;
                                                   while(_loc3_ || param1)
                                                   {
                                                      this.§'!2§.y = (this.§>",§.height - this.§'!2§.height) / 2 + this.§>",§.y;
                                                      continue loop15;
                                                   }
                                                   while(true)
                                                   {
                                                      addChild(this.§,!o§);
                                                      addr372:
                                                      while(true)
                                                      {
                                                         addChild(this.§;!7§);
                                                         break loop23;
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                   addr291:
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      this.§'!2§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",128,10873088);
                                                      break loop15;
                                                   }
                                                   break;
                                                   §§goto(addr304);
                                                }
                                                §§goto(addr372);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§;!7§ = new Sprite();
                                          §§goto(addr378);
                                       }
                                       addr384:
                                    }
                                    break;
                                 }
                                 §§goto(addr291);
                              }
                              while(true)
                              {
                                 this.§'!2§.filters = [new GlowFilter(4530696,1,3,3,10)];
                                 §§goto(addr337);
                              }
                           }
                           §§goto(addr217);
                        }
                        while(true)
                        {
                           this.§'!2§ = new TextField();
                           §§goto(addr304);
                           §§goto(addr144);
                        }
                     }
                  }
               }
            }
            §§goto(addr384);
         }
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§-!u§();
         }
      }
      
      private function §@<§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§!!%§();
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§-!u§();
            while(true)
            {
               this.§>!n§();
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(!_loc2_)
            {
               if(_loc3_ || param1)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §8!_§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§>!M§)
            {
               while(true)
               {
                  this.§>!M§.stop();
                  addr95:
                  while(true)
                  {
                  }
                  addr68:
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  addr87:
                  this.§,!c§.stop();
                  while(true)
                  {
                     §§goto(addr23);
                  }
                  addr88:
               }
            }
            while(true)
            {
               §§push(this.§,!c§);
               if(_loc2_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        if(_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr88);
                  }
                  addr23:
                  §§goto(addr37);
               }
               break;
            }
            §§goto(addr87);
         }
         addr37:
         while(true)
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(_loc2_ || _loc2_)
            {
               break;
            }
            continue loop4;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§&!4§);
            if(_loc4_ || param1)
            {
               if(!§§pop().§@Z§())
               {
                  do
                  {
                     visible = true;
                  }
                  while(!(_loc4_ || _loc3_));
                  
                  if(_loc4_ || this)
                  {
                     addr43:
                     if(true)
                     {
                        §§goto(addr77);
                     }
                  }
                  else
                  {
                     addr74:
                  }
                  return;
               }
               if(_loc4_)
               {
                  visible = false;
               }
               §§goto(addr74);
            }
            addr77:
            var _loc2_:Point = this.§&!4§.§!3§();
            if(_loc4_ || param1)
            {
               x = _loc2_.x;
            }
            do
            {
               y = _loc2_.y;
            }
            while(_loc3_);
            
            return;
         }
         §§goto(addr43);
      }
      
      private function §>!n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§>!M§ = new Timer(§8O§,1);
            while(true)
            {
               this.§>!M§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§!!%§);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§>!M§.start();
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      private function §!!%§(param1:Event = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!this.§ !7§)
            {
               loop0:
               while(true)
               {
                  if(this.§>!M§)
                  {
                     while(true)
                     {
                        this.§>!M§.stop();
                        addr86:
                        while(!_loc4_)
                        {
                        }
                        continue loop0;
                     }
                     addr83:
                  }
                  while(true)
                  {
                     §§push(this.§,!c§);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           for(; _loc3_; if(_loc4_ && _loc2_)
                           {
                              continue;
                           },if(false)
                           {
                              §§goto(addr40);
                           },§§push(§@!4§),if(_loc3_)
                           {
                              §§push(§§pop() / this.§,!o§.scaleX);
                              if(_loc3_)
                              {
                                 addr103:
                                 §§push(Number(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              if(!_loc4_)
                              {
                                 this.§,!c§ = §7I§.§[E§.§ ";§(this,{
                                    "scaleX":_loc2_,
                                    "scaleY":_loc2_
                                 },{
                                    "scaleX":scaleX,
                                    "scaleY":scaleY
                                 },0.3,§7I§.§7L§);
                                 this.§,!c§.play();
                                 addr148:
                                 if(!_loc3_)
                                 {
                                    §§goto(addr148);
                                 }
                              }
                              return;
                           },§§goto(addr103))
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(this.§,!c§);
                                 while(true)
                                 {
                                    §§pop().stop();
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          while(true)
                                          {
                                             addr40:
                                             §§goto(addr92);
                                          }
                                          addr78:
                                       }
                                       §§goto(addr92);
                                    }
                                 }
                                 addr75:
                              }
                              else
                              {
                                 §§goto(addr83);
                              }
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr40);
                     }
                     §§goto(addr75);
                  }
               }
            }
            addr92:
            while(true)
            {
               this.§;!7§.visible = false;
               while(true)
               {
                  if(_loc3_)
                  {
                     this.§'!2§.visible = true;
                     if(_loc3_ || param1)
                     {
                        continue loop4;
                     }
                     continue;
                  }
                  continue loop8;
               }
               continue loop8;
            }
            addr92:
            return;
         }
         §§goto(addr78);
      }
      
      private function §-!u§(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§ !7§)
            {
               loop0:
               while(true)
               {
                  if(this.§>!M§)
                  {
                     while(true)
                     {
                        this.§>!M§.stop();
                        addr138:
                        while(true)
                        {
                        }
                     }
                     addr135:
                  }
                  while(true)
                  {
                     §§push(this.§,!c§);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc3_)
                           {
                              §§push(this.§,!c§);
                              while(true)
                              {
                                 §§pop().stop();
                              }
                              addr119:
                           }
                           while(true)
                           {
                           }
                           addr120:
                        }
                        loop5:
                        while(true)
                        {
                           this.§;!7§.visible = true;
                           loop6:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    return;
                                 }
                                 addr142:
                                 this.§'!2§.visible = false;
                                 while(!(_loc3_ && param1))
                                 {
                                    if(_loc3_)
                                    {
                                       break loop6;
                                    }
                                    this.§,!c§ = §7I§.§[E§.§ ";§(this,{
                                       "scaleX":1,
                                       "scaleY":1
                                    },{
                                       "scaleX":scaleX,
                                       "scaleY":scaleY
                                    },0.3,§7I§.§7L§);
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr138);
                                    }
                                 }
                                 continue loop5;
                              }
                              continue loop0;
                           }
                           §§goto(addr135);
                        }
                     }
                     §§goto(addr119);
                  }
               }
            }
         }
         §§goto(addr142);
      }
      
      public function §,!D§(param1:String, param2:Boolean) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc7_:§"!-§ = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         if(!(_loc11_ && param1))
         {
            this.§+!8§.push(new §"!-§(param1,param2));
         }
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < this.§+!8§.length)
         {
            _loc7_ = this.§+!8§[_loc3_];
            if(!_loc11_)
            {
               §§push(0);
               while(true)
               {
                  _loc8_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     loop3:
                     while(true)
                     {
                        _loc9_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc12_ || this)
                           {
                              loop5:
                              while(true)
                              {
                                 var _loc10_:* = §§pop();
                                 if(!_loc11_)
                                 {
                                    §§push(1);
                                    if(_loc12_ || param1)
                                    {
                                       §§push(_loc10_);
                                       if(_loc12_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc12_)
                                             {
                                                addr383:
                                                §§push(0);
                                                if(_loc12_)
                                                {
                                                   addr436:
                                                   loop6:
                                                   while(true)
                                                   {
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            addr344:
                                                            _loc8_ = int(_loc7_.width / 2 + this.§+!8§[0].width / 2);
                                                            addr342:
                                                            if(_loc12_)
                                                            {
                                                               addr315:
                                                               addr317:
                                                               addr314:
                                                               §§push(_loc7_.height / 2);
                                                               §§push(§0!c§ / 2);
                                                               if(!(_loc12_ || param1))
                                                               {
                                                                  §§goto(addr342);
                                                               }
                                                               addr326:
                                                               _loc9_ = int(§§pop() + §§pop());
                                                               break;
                                                               addr325:
                                                               addr327:
                                                            }
                                                            break loop6;
                                                         case 1:
                                                            addr297:
                                                            _loc8_ = 0;
                                                            addr282:
                                                            §§push(_loc7_.height / 2);
                                                            if(!(_loc11_ && this))
                                                            {
                                                               addr281:
                                                               §§push(§§pop() + this.§+!8§[0].height / 2);
                                                            }
                                                            §§push(§0!c§);
                                                            if(!_loc11_)
                                                            {
                                                               addr286:
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc11_)
                                                               {
                                                                  addr289:
                                                                  _loc9_ = int(§§pop());
                                                                  addr290:
                                                                  if(!_loc11_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               §§goto(addr342);
                                                            }
                                                            §§goto(addr315);
                                                            addr298:
                                                         case 2:
                                                            addr233:
                                                            §§push(this.§+!8§[0].width / 2);
                                                            if(_loc12_)
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  §§push(int(§§pop() + this.§+!8§[1].width + _loc7_.width / 2));
                                                                  if(!_loc11_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  continue;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr286);
                                                            }
                                                            §§goto(addr325);
                                                         case 3:
                                                            §§push(this.§+!8§[0].width / 2);
                                                            while(true)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  if(!(_loc11_ && _loc3_))
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(int(§§pop() + this.§+!8§[1].width + _loc7_.width / 2));
                                                                        if(_loc11_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        if(_loc12_ || param2)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(!(_loc11_ && param2))
                                                                           {
                                                                              if(!(_loc11_ && param1))
                                                                              {
                                                                                 if(!(_loc11_ && param2))
                                                                                 {
                                                                                    if(_loc11_ && param2)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(_loc7_.height / 2);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    if(_loc12_ || param1)
                                                                                    {
                                                                                       §§push(this.§+!8§[0].height / 2);
                                                                                       if(!(_loc11_ && param1))
                                                                                       {
                                                                                          if(!(_loc11_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc12_ || _loc3_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          §§goto(addr317);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr281);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr314);
                                                                                 }
                                                                                 §§goto(addr327);
                                                                              }
                                                                              §§goto(addr290);
                                                                           }
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              addr449:
                                                                              while(true)
                                                                              {
                                                                                 this.§;!7§.addChild(_loc7_);
                                                                                 do
                                                                                 {
                                                                                    _loc3_++;
                                                                                 }
                                                                                 while(!_loc12_);
                                                                                 
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    break loop6;
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           addr466:
                                                                        }
                                                                        §§goto(addr289);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr342);
                                                                     }
                                                                  }
                                                                  §§goto(addr282);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr233);
                                                               }
                                                            }
                                                            continue loop4;
                                                      }
                                                      addr467:
                                                      _loc7_.x = _loc8_;
                                                      §§goto(addr470);
                                                   }
                                                   if(true)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr449);
                                                   addr386:
                                                   addr437:
                                                }
                                                else
                                                {
                                                   addr390:
                                                   §§push(_loc10_);
                                                   if(_loc12_ || this)
                                                   {
                                                      addr398:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            §§push(1);
                                                            if(_loc11_)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr436);
                                                      }
                                                      else
                                                      {
                                                         §§push(3);
                                                         if(!(_loc11_ && this))
                                                         {
                                                            §§push(_loc10_);
                                                            if(!_loc11_)
                                                            {
                                                               addr416:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     addr419:
                                                                     §§push(2);
                                                                     if(_loc12_)
                                                                     {
                                                                        §§goto(addr436);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr426:
                                                                        §§push(_loc10_);
                                                                     }
                                                                     §§goto(addr436);
                                                                  }
                                                                  addr428:
                                                                  §§push(3);
                                                                  if(_loc11_)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(4);
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§goto(addr426);
                                                                  }
                                                               }
                                                               §§goto(addr436);
                                                            }
                                                            if(§§pop() === §§pop())
                                                            {
                                                               §§goto(addr428);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr436);
                                                               §§push(4);
                                                            }
                                                            §§goto(addr436);
                                                         }
                                                         §§goto(addr426);
                                                      }
                                                   }
                                                   §§goto(addr416);
                                                }
                                                §§goto(addr436);
                                             }
                                             §§goto(addr419);
                                          }
                                          else
                                          {
                                             §§push(2);
                                             if(!_loc11_)
                                             {
                                                §§goto(addr390);
                                             }
                                          }
                                          §§goto(addr436);
                                       }
                                       §§goto(addr398);
                                    }
                                    §§goto(addr386);
                                 }
                                 §§goto(addr383);
                              }
                           }
                           §§goto(addr437);
                        }
                     }
                  }
               }
            }
            §§goto(addr466);
         }
         if(_loc12_)
         {
            this.§,!o§.scaleX = this.§,!o§.scaleY = 1;
         }
         §§push(this.§;!7§.width / this.§>",§.width);
         if(!(_loc11_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§;!7§.height / this.§>",§.height);
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Number = Math.max(0.4,Math.max(_loc4_,_loc5_));
         if(_loc12_ || param2)
         {
            this.§,!o§.scaleY = _loc6_;
            loop12:
            while(true)
            {
               this.§,!o§.scaleX = _loc6_;
               while(true)
               {
                  this.§;!7§.x = (this.§>",§.width * _loc6_ - this.§;!7§.width) / 2 + this.§>",§.x * _loc6_;
                  continue loop12;
                  addr565:
                  if(!(_loc11_ && param2))
                  {
                     return;
                     addr572:
                  }
               }
            }
         }
         §§goto(addr601);
      }
      
      public function update(param1:Vector.<§7a§>) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:§"!-§ = null;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         §§push(this.§ !7§);
         if(_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = true;
         loop0:
         for each(_loc4_ in this.§+!8§)
         {
            §§push(_loc4_.§^8§);
            if(!_loc10_)
            {
               §§push(Boolean(§§pop()));
               if(_loc9_)
               {
                  _loc5_ = §§pop();
                  if(!_loc10_)
                  {
                     §§push(_loc4_);
                     §§push(_loc4_.§"">§);
                     if(_loc9_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§2!T§(§§pop());
                     loop1:
                     while(true)
                     {
                        §§push(int(param1.length - 1));
                        loop2:
                        while(true)
                        {
                           _loc6_ = §§pop();
                           loop3:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 if(!_loc10_)
                                 {
                                    if(!_loc10_)
                                    {
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                       if(§§pop() >= 0)
                                       {
                                          if(param1[_loc6_].getName() != _loc4_.§#!+§)
                                          {
                                             addr134:
                                             _loc6_--;
                                             addr133:
                                             continue;
                                          }
                                          while(true)
                                          {
                                             _loc4_.§2!T§(_loc4_.§"">§);
                                             while(true)
                                             {
                                                param1.splice(_loc6_,1);
                                                addr141:
                                                while(!_loc10_)
                                                {
                                                }
                                             }
                                          }
                                          addr164:
                                       }
                                       while(true)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc4_.§^8§);
                                             loop7:
                                             while(true)
                                             {
                                                if(§§pop() != _loc5_)
                                                {
                                                   loop8:
                                                   while(_loc9_)
                                                   {
                                                      this.§-!u§();
                                                      loop9:
                                                      while(_loc9_)
                                                      {
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            loop10:
                                                            while(true)
                                                            {
                                                               this.§>!n§();
                                                               loop11:
                                                               while(_loc9_)
                                                               {
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.§^8§);
                                                                     if(!(_loc10_ && _loc3_))
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              break loop12;
                                                                           }
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(!(_loc9_ || param1))
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§push(false);
                                                                              while(true)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(_loc9_ || _loc2_)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          break loop12;
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr80);
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr164);
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr141);
                                                }
                                                §§goto(addr55);
                                             }
                                          }
                                          §§goto(addr143);
                                       }
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr134);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr164);
               }
            }
            §§goto(addr67);
         }
         if(_loc9_)
         {
            this.§ !7§ = _loc3_;
            loop19:
            while(true)
            {
               §§push(this.§ !7§);
               if(_loc9_ || this)
               {
                  if(§§pop() != _loc2_)
                  {
                     if(_loc9_)
                     {
                        addr305:
                        if(!this.§ !7§)
                        {
                           this.§-!u§();
                           loop22:
                           for(; _loc9_ || _loc3_; this.§>!n§(),if(_loc10_)
                           {
                              continue;
                           },if(!_loc10_)
                           {
                              if(_loc9_ || this)
                              {
                                 break loop19;
                              }
                              loop23:
                              while(true)
                              {
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       §§push(this.§,!c§);
                                       if(!_loc10_)
                                       {
                                          if(_loc9_ || param1)
                                          {
                                             §§pop().play();
                                             break loop19;
                                             addr238:
                                          }
                                          loop27:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr309:
                                                while(true)
                                                {
                                                   §§push(this.§,!c§);
                                                   addr321:
                                                   while(true)
                                                   {
                                                      §§pop().stop();
                                                      addr322:
                                                      while(!_loc10_)
                                                      {
                                                      }
                                                      continue loop19;
                                                   }
                                                }
                                                addr309:
                                             }
                                             while(true)
                                             {
                                                if(this.§>!M§)
                                                {
                                                   §§goto(addr278);
                                                }
                                                addr239:
                                                while(true)
                                                {
                                                   this.§,!c§ = §7I§.§[E§.§ ";§(this,{
                                                      "scaleX":0,
                                                      "scaleY":0
                                                   },{
                                                      "scaleX":scaleX,
                                                      "scaleY":scaleY
                                                   },0.3,§7I§.§7L§);
                                                   continue loop23;
                                                }
                                                continue loop27;
                                             }
                                             §§goto(addr309);
                                          }
                                          addr308:
                                       }
                                       §§goto(addr321);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr306:
                                    }
                                    §§goto(addr308);
                                 }
                                 §§goto(addr309);
                              }
                           },§§goto(addr238))
                           {
                              if(_loc9_)
                              {
                                 continue;
                              }
                              addr278:
                              while(true)
                              {
                                 this.§>!M§.stop();
                                 break loop22;
                              }
                           }
                           while(true)
                           {
                              if(_loc9_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    §§goto(addr239);
                                 }
                                 addr288:
                              }
                              §§goto(addr322);
                           }
                        }
                        §§goto(addr306);
                     }
                     §§goto(addr322);
                  }
                  break;
               }
               §§goto(addr305);
            }
            return;
         }
         §§goto(addr288);
      }
   }
}
