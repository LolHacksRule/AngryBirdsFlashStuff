package §[N§
{
   import §"D§.§#v§;
   import §4;§.§5n§;
   import §8!6§.§"!K§;
   import §8!6§.§&!S§;
   import §8!6§.Item;
   import §[!I§.§<-§;
   import com.rovio.assets.§`!t§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §<!b§ extends Sprite
   {
      
      public static const §,!R§:Number = 0.5;
      
      public static const §#!i§:Boolean = false;
      
      public static const §?!;§:String = "avatar_equip";
      
      public static const §<!8§:String = "avatar_character";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,!R§ = 0.5;
            while(true)
            {
               §#!i§ = false;
               loop1:
               while(!(_loc2_ && §<!b§))
               {
                  while(true)
                  {
                     §?!;§ = "avatar_equip";
                     do
                     {
                        §<!8§ = "avatar_character";
                     }
                     while(!_loc1_);
                     
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      public var §^q§:Object;
      
      private var §]f§:MovieClip;
      
      private var §<!r§:MovieClip;
      
      private var §?6§:MovieClip;
      
      private var §'!I§:Number = 0.5;
      
      private var §5u§:§&!S§ = null;
      
      public function §<!b§(param1:§&!S§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
            while(true)
            {
               this.§5u§ = param1;
               addr47:
               while(_loc6_)
               {
               }
            }
         }
         while(true)
         {
            loop3:
            do
            {
               this.§^q§ = new Object();
               while(_loc6_)
               {
                  this.§'!I§ = this.§5u§.§>N§;
                  if(!(_loc5_ && _loc2_))
                  {
                     continue loop3;
                  }
               }
               §§goto(addr47);
            }
            while(false);
            
            var _loc2_:Class = §`!t§.§=J§("BackgroundContainer");
            if(!(_loc5_ && _loc3_))
            {
               this.§<!r§ = new _loc2_();
               loop5:
               while(true)
               {
                  addr75:
                  while(true)
                  {
                     this.§<!r§.stop();
                     while(true)
                     {
                        if(_loc6_)
                        {
                           addChild(this.§<!r§);
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop5;
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr75);
            }
            var _loc3_:Class = §`!t§.§=J§(param1.§@H§ + "_Animations");
            if(_loc6_)
            {
               this.§]f§ = new _loc3_();
               loop9:
               while(true)
               {
                  this.§]f§.stop();
                  addr162:
                  while(true)
                  {
                     this.§%!h§();
                     continue loop9;
                  }
               }
            }
            loop12:
            while(true)
            {
               addr122:
               addr168:
               addr179:
               while(true)
               {
                  this.§]f§.scaleY = this.§'!I§;
                  continue loop12;
               }
               var _loc4_:Class = §`!t§.§=J§("ForegroundContainer");
               if(!(_loc5_ && _loc3_))
               {
                  this.§?6§ = new _loc4_();
               }
               while(true)
               {
                  this.§?6§.stop();
                  while(!(_loc5_ && this))
                  {
                     addChild(this.§?6§);
                     if(_loc6_ || _loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      public function §`<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§<!r§.visible = false;
         }
         do
         {
            this.§?6§.visible = false;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function §,U§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§<!r§.gotoAndStop(param1.toLowerCase());
            while(true)
            {
               this.§?6§.gotoAndStop(param1.toLowerCase());
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            this.§1!!§(§5n§.§0?§().§4!^§(param1));
            if(!(_loc2_ && _loc3_))
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §1!<§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:§"!K§ = null;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         loop0:
         for each(_loc1_ in §5n§.§0?§().§]!Q§)
         {
            if(!(_loc7_ && _loc3_))
            {
               §§push(_loc1_.name);
               if(!(_loc7_ && this))
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(!_loc7_)
                  {
                     §§push(!§§pop());
                     if(_loc6_)
                     {
                        addr62:
                        if(§§pop())
                        {
                           if(!(_loc7_ && _loc1_))
                           {
                              §§pop();
                              addr103:
                              if(!(_loc7_ && _loc3_))
                              {
                                 addr91:
                                 §§push(_loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS");
                                 if(!(_loc7_ && this))
                                 {
                                    §§push(!§§pop());
                                 }
                              }
                              _loc2_ = §5n§.§0?§().§-!h§(_loc1_.name);
                              _loc2_ = this.§9L§(_loc2_);
                              if(_loc6_)
                              {
                                 §§push(int(Math.random() * (_loc2_.length + 1)));
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                 }
                                 addr169:
                              }
                              loop2:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc7_)
                                    {
                                       if(§§pop() >= _loc2_.length)
                                       {
                                          addr153:
                                          break;
                                       }
                                       this.§1!!§(_loc2_[_loc3_]);
                                       if(!_loc7_)
                                       {
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       if(!(_loc7_ && _loc1_))
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr169);
                                 }
                                 this.§+2§(_loc1_.name);
                                 §§goto(addr153);
                              }
                              continue;
                           }
                        }
                     }
                     if(!§§pop())
                     {
                        continue;
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr62);
               }
               §§goto(addr91);
            }
            §§goto(addr103);
         }
      }
      
      private function §9L§(param1:Array) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(_loc7_)
            {
               if(!§<-§.§6,§(_loc3_.§@H§))
               {
                  continue;
               }
               if(!_loc7_)
               {
                  continue;
               }
            }
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function show(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.x = param1;
            while(true)
            {
               this.y = param2;
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            this.§+!s§(this.§^6§().§;Y§);
            do
            {
               visible = true;
            }
            while(_loc4_);
            
            if(!_loc4_)
            {
               if(!(_loc4_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            visible = false;
         }
      }
      
      public function §%!h§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:* = Number(0);
         while(_loc1_ < this.§]f§.numChildren)
         {
            _loc3_ = this.§]f§.getChildAt(_loc1_) as MovieClip;
            if(!_loc7_)
            {
               if(_loc3_)
               {
                  if(!_loc6_)
                  {
                     continue;
                  }
                  _loc3_.stop();
                  if(!_loc6_)
                  {
                     continue;
                  }
               }
               §§push(_loc1_);
               if(_loc6_ || _loc2_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc1_ = §§pop();
            }
         }
         if(!(_loc7_ && this))
         {
            var _loc4_:int = 0;
            if(_loc6_)
            {
               var _loc5_:* = §5n§.§0?§().§;!`§;
               if(_loc7_)
               {
               }
               for each(_loc2_ in _loc5_)
               {
                  if(!_loc7_)
                  {
                     this.§%K§(_loc2_);
                  }
               }
            }
         }
      }
      
      public function §%K§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = this.§]f§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc3_ || this)
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr116:
                     while(true)
                     {
                        §§push(param1.toUpperCase() == "NOHAT");
                        if(!(_loc4_ && this))
                        {
                           continue loop0;
                        }
                        addr104:
                        if(!_loc3_)
                        {
                           continue;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  do
                  {
                     _loc2_.stop();
                     do
                     {
                        _loc2_.visible = false;
                     }
                     while(_loc4_ && this);
                     
                  }
                  while(!(_loc3_ || this));
                  
                  if(!(_loc4_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr116);
               }
               return;
            }
         }
         §§goto(addr116);
      }
      
      public function §#K§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:* = Number(0);
         while(_loc1_ < §5n§.§0?§().§]!Q§.length)
         {
            _loc2_ = §5n§.§0?§().§]!Q§[_loc1_].name;
            if(!(_loc6_ || this))
            {
               break;
            }
            _loc3_ = this.§9!V§(_loc2_);
            if(!_loc6_)
            {
               continue;
            }
            if(_loc3_ == null)
            {
               if(_loc5_ && this)
               {
                  continue;
               }
            }
            else if(_loc4_ = this.§]f§.getChildByName("Items_" + _loc3_.§^!,§) as MovieClip)
            {
               if(!_loc5_)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.§@H§);
               }
            }
            §§push(_loc1_);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() + 1);
               if(!_loc5_)
               {
                  addr117:
                  §§push(Number(§§pop()));
               }
               _loc1_ = §§pop();
               continue;
            }
            §§goto(addr117);
         }
      }
      
      public function §3c§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§"!K§ = null;
         var _loc3_:* = §5n§.§0?§().§]!Q§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               continue;
            }
            §§push(_loc1_.name);
            if(!_loc5_)
            {
               §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
               if(!(_loc5_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr73:
                        §§pop();
                        if(!_loc5_)
                        {
                           addr81:
                           if(_loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
                           {
                              this.§+2§(_loc1_.name);
                              continue;
                           }
                           if(_loc5_)
                           {
                              continue;
                           }
                        }
                        continue;
                     }
                  }
                  §§goto(addr81);
               }
               §§goto(addr73);
            }
            §§goto(addr81);
         }
      }
      
      public function §+!s§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§'!I§ = param1;
            while(true)
            {
               this.§]f§.scaleX = this.§'!I§;
               §§goto(addr76);
            }
         }
         addr76:
         while(true)
         {
            this.§]f§.scaleY = this.§'!I§;
            if(_loc3_ || _loc3_)
            {
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §'c§(param1:§<!b§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Item = null;
         var _loc3_:§"!K§ = null;
         var _loc4_:* = null;
         var _loc5_:Item = null;
         loop0:
         for each(_loc3_ in §5n§.§0?§().§]!Q§)
         {
            if(!(_loc8_ && this))
            {
               §§push(_loc3_.name);
               if(!(_loc8_ && param1))
               {
                  §§push(§§pop());
               }
               _loc4_ = §§pop();
            }
            _loc2_ = this.§^q§[_loc4_.toUpperCase()];
            if(_loc5_ = param1.§^q§[_loc4_.toUpperCase()])
            {
               if(_loc9_ || _loc2_)
               {
                  this.§1!!§(_loc5_);
                  if(!_loc8_)
                  {
                     loop1:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           param1.§+2§(_loc4_);
                           if(!_loc8_)
                           {
                              if(!_loc8_)
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              addr125:
                              param1.§1!!§(_loc2_);
                           }
                           if(_loc9_ || _loc2_)
                           {
                              break;
                           }
                           addr140:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                        §§goto(addr125);
                     }
                     addr99:
                  }
                  continue;
               }
               §§goto(addr99);
            }
            else
            {
               this.§+2§(_loc4_);
            }
            §§goto(addr140);
         }
      }
      
      public function §0!m§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Item = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§^q§)
         {
            if(!(_loc5_ && _loc2_))
            {
               this.§1!!§(_loc1_);
            }
         }
      }
      
      public function §1!!§(param1:Item) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            if(param1 == null)
            {
               if(_loc4_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:Item = this.§^q§[param1.§0!R§.toUpperCase()];
            if(!_loc5_)
            {
               if(_loc2_ != param1)
               {
                  loop0:
                  while(true)
                  {
                     this.§+2§(param1.§0!R§);
                     while(true)
                     {
                        if(_loc4_)
                        {
                           this.§^q§[param1.§0!R§.toUpperCase()] = param1;
                           if(_loc4_)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              if(true)
                              {
                                 break loop0;
                              }
                              continue loop0;
                           }
                           continue;
                        }
                        if(_loc4_ || _loc3_)
                        {
                           if(!_loc4_)
                           {
                              if(§#!i§)
                              {
                                 addr79:
                                 this.§+2§(param1.§0!R§);
                                 break;
                              }
                              return;
                           }
                           addr77:
                           addr62:
                           continue loop0;
                        }
                        §§goto(addr79);
                     }
                     addr83:
                     §§goto(addr62);
                  }
                  var _loc3_:MovieClip = this.§]f§.getChildByName("Items_" + param1.§^!,§) as MovieClip;
                  if(!(_loc5_ && _loc2_))
                  {
                     if(_loc3_)
                     {
                        if(_loc4_)
                        {
                           _loc3_.visible = true;
                        }
                        loop7:
                        while(true)
                        {
                           _loc3_.gotoAndStop("Item_" + param1.§@H§);
                           addr227:
                           while(true)
                           {
                              if(_loc3_.currentLabel == "Item_" + param1.§@H§)
                              {
                                 §§push(this);
                                 §§push("Items_");
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(§§pop() + param1.§^!,§);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(§§pop() + "_Equip");
                                    }
                                 }
                                 §§pop().§;!H§(§§pop());
                                 while(true)
                                 {
                                    addr148:
                                    while(true)
                                    {
                                       §§push(param1.category);
                                    }
                                 }
                                 addr205:
                              }
                              addr214:
                              while(true)
                              {
                                 §5n§.§%!_§.§+2§(param1.§^!,§);
                                 addr219:
                                 while(true)
                                 {
                                    §§goto(addr148);
                                 }
                              }
                              continue loop7;
                           }
                        }
                        addr235:
                     }
                     else
                     {
                        §§push(param1.category);
                        if(!_loc5_)
                        {
                           if(§§pop().toUpperCase() == "CATEGORYTOP")
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(_loc4_ || this)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          this.§3z§();
                                          addr113:
                                          return;
                                          addr147:
                                       }
                                       else
                                       {
                                          §§goto(addr227);
                                       }
                                       §§goto(addr113);
                                    }
                                    while(true)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          if(!_loc5_)
                                          {
                                             this.§3p§();
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr214);
                                                }
                                                else
                                                {
                                                   §§goto(addr205);
                                                }
                                             }
                                             addr117:
                                             §§goto(addr113);
                                             addr165:
                                          }
                                          else
                                          {
                                             §§goto(addr235);
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr219);
                                    }
                                    addr154:
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr113);
                        }
                     }
                     while(true)
                     {
                        if(§§pop().toUpperCase() == "CATEGORYTOP")
                        {
                           §§goto(addr154);
                        }
                        §§goto(addr117);
                     }
                  }
                  §§goto(addr214);
               }
               §§goto(addr77);
            }
            §§goto(addr83);
         }
         addr28:
      }
      
      private function §3z§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MovieClip = this.§]f§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc3_ || _loc3_)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §3p§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MovieClip = this.§]f§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc2_ || _loc2_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §9!V§(param1:String) : Item
      {
         return this.§^q§[param1.toUpperCase()];
      }
      
      public function §%S§() : Object
      {
         return this.§^q§;
      }
      
      public function §+2§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§^q§[param1.toUpperCase()];
         if(_loc5_ || _loc3_)
         {
            if(_loc2_)
            {
               if(_loc5_ || this)
               {
                  _loc3_ = this.§]f§.getChildByName("Items_" + _loc2_.§^!,§) as MovieClip;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           _loc3_.visible = false;
                           if(!_loc4_)
                           {
                              if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
                              {
                                 if(!_loc5_)
                                 {
                                 }
                              }
                              §§goto(addr99);
                           }
                           this.§3z§();
                        }
                     }
                  }
               }
            }
            §§goto(addr99);
         }
         addr99:
         delete this.§^q§[param1.toUpperCase()];
      }
      
      public function §;!H§(param1:String) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:FrameLabel = null;
         var _loc2_:* = Number(-1);
         loop0:
         for each(_loc3_ in this.§]f§.currentLabels)
         {
            if(_loc7_)
            {
               §§push(_loc2_);
               loop1:
               while(§§pop() == -1)
               {
                  loop2:
                  while(_loc3_.name == param1)
                  {
                     if(_loc7_ || this)
                     {
                        if(!_loc7_)
                        {
                           break loop1;
                        }
                        while(true)
                        {
                           this.§]f§.gotoAndPlay(param1);
                        }
                     }
                     while(_loc7_ || param1)
                     {
                        §§push(Number(_loc3_.frame));
                        if(_loc6_)
                        {
                           return §§pop();
                        }
                        addr109:
                        if(!_loc6_)
                        {
                           _loc2_ = §§pop();
                           if(_loc7_ || param1)
                           {
                              if(true)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               §§push(_loc3_.frame - _loc2_);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop() - 1);
               }
               §§goto(addr109);
            }
            §§goto(addr82);
         }
         if(!_loc6_)
         {
            §§push(_loc2_);
            if(_loc7_ || this)
            {
               if(§§pop() != -1)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(this.§]f§.framesLoaded - _loc2_);
                     if(_loc7_ || _loc2_)
                     {
                        §§push(§§pop() - 1);
                     }
                  }
                  else
                  {
                     §§goto(addr158);
                  }
               }
               §§goto(addr158);
            }
            return §§pop();
         }
         addr158:
         return -1;
      }
      
      public function §6-§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §^6§() : §&!S§
      {
         return this.§5u§;
      }
      
      public function §6!`§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§3j§();
         §§push(§#v§.§3!9§(_loc1_));
         if(_loc5_)
         {
            return §§pop();
         }
      }
      
      public function §3j§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§^q§)
         {
            if(!(_loc5_ && this))
            {
               _loc1_.push({
                  "itemId":_loc2_.§@H§,
                  "category":_loc2_.§0!R§,
                  "sId":_loc2_.sId
               });
            }
         }
         return _loc1_;
      }
      
      public function §^!N§() : Number
      {
         return this.§'!I§;
      }
      
      public function §'!d§() : MovieClip
      {
         return this.§]f§;
      }
   }
}
