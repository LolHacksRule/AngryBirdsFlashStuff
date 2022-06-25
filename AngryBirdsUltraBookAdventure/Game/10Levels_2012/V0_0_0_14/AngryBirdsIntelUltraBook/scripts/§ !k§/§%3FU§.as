package § !k§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §!!§.§@+§;
   import §!!§.LevelManager;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§,c§;
   import §`M§.§9!#§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §?U§ extends §+_§
   {
      
      public static const §3F§:String = "ChapterSelectionState";
      
      private static const §-,§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3F§ = "ChapterSelectionState";
         }
         do
         {
            §-,§ = 0.5;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      private var §?T§:Sprite;
      
      private var §;=§:§9!#§;
      
      private var §,![§:Array;
      
      private var §]!o§:Array;
      
      private var §7!r§:int = 0;
      
      private var §'!5§:Number = 0;
      
      private var §-_§:Number = 0;
      
      private var §6!!§:Dictionary;
      
      private var §&C§:Dictionary;
      
      private var §,P§:§4F§ = null;
      
      private var §5!!§:Boolean = false;
      
      private var §8!+§:Number = 0;
      
      public function §?U§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
            while(true)
            {
               §`-§ = new § C§(this);
               while(_loc2_ || _loc2_)
               {
                  §`-§.init(dynamic.§[6§.Views.View_ChapterSelection[0]);
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        this.§9!]§();
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:§@+§ = null;
         if(!_loc6_)
         {
            super.activate();
            if(_loc7_ || _loc1_)
            {
               addr34:
               §4!]§.§8C§.§1B§(false);
            }
            var _loc1_:int = 0;
            loop0:
            for each(_loc2_ in this.§,![§)
            {
               _loc3_ = LevelManager.§'v§(_loc1_);
               if(_loc7_)
               {
                  if(_loc2_.Textfield_ME_Score != null)
                  {
                     while(true)
                     {
                        _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§<!=§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§%!u§(_loc3_);
                        addr171:
                        while(true)
                        {
                        }
                        addr111:
                        if(!(_loc7_ || this))
                        {
                           continue;
                        }
                        loop7:
                        while(true)
                        {
                           _loc1_++;
                           if(_loc7_ || _loc1_)
                           {
                              break;
                           }
                           loop6:
                           while(true)
                           {
                              if(_loc7_ || _loc1_)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§goto(addr111);
                              }
                              addr151:
                              while(true)
                              {
                                 addr72:
                                 while(true)
                                 {
                                    if(_loc2_.Textfield_Score != null)
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§9!C§(_loc3_);
                                       }
                                       continue loop6;
                                    }
                                    continue loop7;
                                 }
                                 continue loop6;
                              }
                           }
                           §§goto(addr171);
                        }
                        while(false)
                        {
                           §§goto(addr72);
                        }
                        continue loop0;
                        addr70:
                     }
                  }
                  while(true)
                  {
                     if(_loc2_.Textfield_CollectedStars != null)
                     {
                        if(_loc7_)
                        {
                           _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§^!E§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§[y§(_loc3_);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr72);
                     §§goto(addr171);
                  }
               }
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function §9!]§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§@+§ = null;
         var _loc4_:String = null;
         if(!(_loc6_ && _loc1_))
         {
            this.§;=§ = §`-§.getItemByName("Container_ChapterSelection") as §9!#§;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§,![§ = [];
                  do
                  {
                     this.§]!o§ = [];
                  }
                  while(!_loc5_);
                  
                  if(_loc6_ && _loc2_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc1_:* = Number(0);
                  if(_loc5_)
                  {
                     this.§?T§ = new Sprite();
                     while(true)
                     {
                        this.§?T§.y = AngryBirdsFP11.§7P§ / 2;
                        loop5:
                        for(; _loc5_ || _loc2_; while(_loc5_ || this)
                        {
                           loop8:
                           while(true)
                           {
                              this.§;=§.mClip.addChild(this.§?T§);
                              while(_loc5_)
                              {
                                 this.§&C§ = new Dictionary();
                                 if(!(_loc6_ && this))
                                 {
                                    if(!_loc5_)
                                    {
                                       break loop8;
                                    }
                                    while(false)
                                    {
                                       continue loop8;
                                    }
                                    var _loc2_:int = 0;
                                    while(_loc2_ < LevelManager.§`!v§())
                                    {
                                       _loc3_ = LevelManager.§'v§(_loc2_);
                                       if(_loc5_)
                                       {
                                          §§push("MovieClip_");
                                          if(_loc5_ || this)
                                          {
                                             §§push(§§pop() + _loc3_.menuImage);
                                          }
                                          _loc4_ = §§pop();
                                          loop12:
                                          while(true)
                                          {
                                             addr166:
                                             while(true)
                                             {
                                                §§push(this.§+!=§(_loc4_,_loc1_,_loc2_));
                                                if(_loc5_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc1_ = §§pop();
                                                continue loop12;
                                             }
                                          }
                                       }
                                       §§goto(addr183);
                                    }
                                 }
                                 continue;
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(this.§+!=§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_));
                                    if(_loc5_ || this)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§goto(addr229);
                                       }
                                       §§goto(addr271);
                                    }
                                    addr229:
                                    _loc1_ = §§pop();
                                    if(!(_loc6_ && this))
                                    {
                                       _loc2_++;
                                       loop19:
                                       while(true)
                                       {
                                          §§push(this.§+!=§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_));
                                          if(!_loc6_)
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                continue loop19;
                                             }
                                             addr271:
                                          }
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                             while(true)
                                             {
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   this.§1]§();
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop19;
                                             }
                                             §§goto(addr262);
                                          }
                                       }
                                    }
                                    §§goto(addr262);
                                 }
                                 addr262:
                                 return;
                              }
                              §§goto(addr111);
                           }
                        })
                        {
                           this.§'!5§ = AngryBirdsFP11.§;!Z§ / 2;
                           while(true)
                           {
                              this.§?T§.x = this.§'!5§;
                              continue loop5;
                           }
                        }
                     }
                  }
                  §§goto(addr78);
               }
            }
         }
         §§goto(addr43);
      }
      
      private function §1]§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = Number(0);
         if(_loc5_ || _loc1_)
         {
            this.§6!!§ = new Dictionary();
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < this.§,![§.length)
         {
            _loc1_ = §9!N§.§0!k§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc5_ || this)
            {
               if(_loc4_ != this.§7!r§)
               {
                  _loc2_.gotoAndStop("UnSelected");
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        _loc2_.x = AngryBirdsFP11.§;!Z§ / 2 + _loc3_ - this.§,![§.length * _loc2_.width / 2;
                        while(true)
                        {
                           _loc2_.y = (§`-§.getItemByName("Button_Next") as §,c§).y - _loc2_.height / 2;
                           loop4:
                           while(!_loc6_)
                           {
                              this.§;=§.mClip.addChild(_loc2_);
                              while(true)
                              {
                                 _loc2_.buttonMode = true;
                                 while(true)
                                 {
                                    this.§6!!§[_loc2_] = _loc4_;
                                    loop7:
                                    while(_loc5_)
                                    {
                                       this.§]!o§.push(_loc2_);
                                       loop8:
                                       while(_loc5_)
                                       {
                                          continue loop1;
                                          loop9:
                                          while(true)
                                          {
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                do
                                                {
                                                   _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§#p§);
                                                   continue loop9;
                                                }
                                                while(false);
                                                
                                                continue loop0;
                                             }
                                             continue loop8;
                                          }
                                          continue loop7;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 if(_loc6_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc5_ || this)
                                 {
                                    §§goto(addr75);
                                 }
                                 while(true)
                                 {
                                    _loc2_.gotoAndStop("Selected");
                                    break loop4;
                                 }
                              }
                           }
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr216);
         }
         if(!_loc6_)
         {
            §§push(this.§,![§.length * _loc2_.width);
            if(!(_loc6_ && _loc1_))
            {
               §§push(§§pop() / 2);
               if(!_loc6_)
               {
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(!(_loc6_ && _loc2_))
                  {
                     addr256:
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
               if(_loc5_ || _loc2_)
               {
                  (§`-§.getItemByName("Button_Next") as §,c§).x = AngryBirdsFP11.§;!Z§ / 2;
                  while(true)
                  {
                     (§`-§.getItemByName("Button_Prev") as §,c§).x = AngryBirdsFP11.§;!Z§ / 2;
                  }
                  addr349:
               }
               loop15:
               do
               {
                  (§`-§.getItemByName("Button_Next") as §,c§).x = (§`-§.getItemByName("Button_Next") as §,c§).x + (_loc3_ + 10);
                  while(!_loc6_)
                  {
                     (§`-§.getItemByName("Button_Prev") as §,c§).x = (§`-§.getItemByName("Button_Prev") as §,c§).x - (_loc3_ + 10);
                     if(_loc5_ || _loc3_)
                     {
                        continue loop15;
                     }
                  }
                  §§goto(addr349);
               }
               while(_loc6_);
               
               return;
               addr296:
            }
            §§goto(addr256);
         }
         §§goto(addr296);
      }
      
      private function §+!=§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§@+§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(!(_loc7_ && param2))
         {
            if(§9!N§.§!K§(param1))
            {
               addr37:
               _loc4_ = LevelManager.§'v§(param3);
               (_loc6_ = new (_loc5_ = §9!N§.§0!k§(param1))()).x = param2;
               if(_loc8_)
               {
                  this.§?T§.addChild(_loc6_);
                  loop0:
                  while(true)
                  {
                     this.§,![§.push(_loc6_);
                     while(true)
                     {
                        §§push(param2);
                        if(!(_loc7_ && param2))
                        {
                           §§push(§§pop() + _loc6_.width * 1.55);
                           if(!(_loc7_ && param3))
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        param2 = §§pop();
                        loop5:
                        for(; _loc8_ || param3; if(_loc7_ && param3)
                        {
                           continue;
                        },if(_loc8_)
                        {
                           §§goto(addr57);
                        },§§goto(addr181))
                        {
                           if(_loc6_.Textfield_CollectedStars == null)
                           {
                              loop8:
                              while(true)
                              {
                                 if(_loc6_.Textfield_Score == null)
                                 {
                                    while(_loc6_.Textfield_ME_Score != null)
                                    {
                                       if(_loc8_)
                                       {
                                          if(!_loc7_)
                                          {
                                             if(!(_loc8_ || this))
                                             {
                                                continue loop0;
                                             }
                                             _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§<!=§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§%!u§(_loc4_);
                                             addr88:
                                             if(_loc8_ || param2)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop8;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   break loop8;
                                                }
                                                _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§9!C§(_loc4_);
                                             }
                                             addr102:
                                          }
                                          loop10:
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                continue loop5;
                                             }
                                             addr139:
                                             while(true)
                                             {
                                                _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§^!E§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§[y§(_loc4_);
                                                break loop10;
                                             }
                                             §§goto(addr88);
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr88);
                                    }
                                    addr241:
                                    return param2;
                                    addr57:
                                 }
                                 §§goto(addr102);
                              }
                              while(true)
                              {
                                 this.§&C§[_loc6_] = param3;
                                 while(true)
                                 {
                                    _loc6_.addEventListener(MouseEvent.CLICK,this.§4!>§);
                                    addr181:
                                    while(!(_loc7_ && param2))
                                    {
                                       _loc6_.buttonMode = true;
                                       continue loop5;
                                    }
                                 }
                              }
                              addr97:
                              addr229:
                           }
                           §§goto(addr139);
                        }
                     }
                  }
               }
               §§goto(addr229);
            }
            §§goto(addr241);
         }
         §§goto(addr37);
      }
      
      private function §#p§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§5!!§)
            {
               if(_loc3_ || _loc3_)
               {
                  addr39:
                  this.§,U§(this.§6!!§[param1.target]);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      private function §4!>§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(!(_loc3_ && this))
         {
            §§push(this.§5!!§);
            if(_loc4_ || param1)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     addr43:
                     if(!(param1.currentTarget is MovieClip))
                     {
                        return;
                     }
                     if(!_loc4_)
                     {
                     }
                     addr71:
                     if(this.§7!r§ != this.§&C§[_loc2_])
                     {
                        if(!_loc3_)
                        {
                           this.§,U§(this.§&C§[_loc2_]);
                           if(_loc4_ || _loc3_)
                           {
                              addr135:
                              return;
                              addr93:
                           }
                           §§goto(addr135);
                        }
                        addr118:
                        LevelManager.§;`§ = this.§&C§[_loc2_];
                        if(_loc4_ || _loc2_)
                        {
                           mNextState = §6!U§.§3F§;
                        }
                     }
                     else if(this.§&C§[_loc2_] < LevelManager.§`!v§())
                     {
                        if(_loc4_ || _loc2_)
                        {
                           §§goto(addr118);
                        }
                     }
                     §§goto(addr135);
                  }
                  _loc2_ = MovieClip(param1.currentTarget);
                  if(_loc4_ || this)
                  {
                     §§goto(addr71);
                  }
                  §§goto(addr93);
               }
               §§goto(addr135);
            }
            §§goto(addr43);
         }
         §§goto(addr71);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() == §+_§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     this.§?Y§();
                     loop1:
                     while(!(_loc4_ && _loc3_))
                     {
                        while(true)
                        {
                           this.§2!,§();
                           while(true)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(mNextState.length > 0)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       if(_loc3_)
                                       {
                                          return §+_§.STATE_STATUS_COMPLETED;
                                       }
                                       continue;
                                    }
                                    if(_loc4_ && param1)
                                    {
                                       break;
                                    }
                                 }
                                 return §+_§.STATE_STATUS_RUNNING;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr98);
      }
      
      private function §2!,§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               if(§§pop() >= this.§,![§.length)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     if(_loc4_)
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(Number(Math.abs(_loc2_)));
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       if(!(_loc4_ || _loc1_))
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() * 0.55);
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr199:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc4_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             addr180:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr144);
                        }
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr53);
               }
               else
               {
                  §§push(this.§?T§.x + this.§,![§[_loc1_].x - AngryBirdsFP11.§;!Z§ / 2);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr241);
            }
            §§goto(addr179);
         }
      }
      
      private function §?Y§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               if(_loc3_ || _loc2_)
               {
                  §§push(this.§]!o§);
                  if(_loc3_)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        if(!_loc4_)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              if(!_loc4_)
                              {
                                 this.§8!+§ = this.§?T§.x;
                                 addr58:
                                 if(_loc3_)
                                 {
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          loop36:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(this.§]!o§);
                                                loop12:
                                                while(true)
                                                {
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      §§push(_loc1_);
                                                      while(true)
                                                      {
                                                         §§pop()[§§pop()].gotoAndStop("Selected");
                                                         addr324:
                                                         addr139:
                                                         while(true)
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(-this.§?T§.x);
                                                               loop34:
                                                               while(_loc3_ || _loc2_)
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§push(800);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(this.§,![§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 addr281:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                      {
                                                                                                         addr379:
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            break loop19;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            addr380:
                                                                                                            while(!§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr361:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        addr363:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc2_ = §§pop();
                                                                                                                           addr364:
                                                                                                                           loop8:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              loop9:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 addr305:
                                                                                                                                 addr327:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§]!o§);
                                                                                                                                    addr307:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop() < §§pop().length)
                                                                                                                                       {
                                                                                                                                          §§push(this.§]!o§);
                                                                                                                                          §§push(_loc2_);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr333:
                                                                                                                                       }
                                                                                                                                       continue loop36;
                                                                                                                                    }
                                                                                                                                    continue loop8;
                                                                                                                                 }
                                                                                                                                 addr327:
                                                                                                                                 while(true)
                                                                                                                                 {
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
                                                                                                         addr379:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr382:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§8!+§);
                                                                                                            break loop15;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr361);
                                                                                                }
                                                                                                addr290:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc4_ && this))
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               loop44:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop24:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     addr86:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(this.§]!o§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ && _loc1_))
                                                                                                                              {
                                                                                                                                 if(§§pop() >= §§pop().length)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc4_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             continue loop44;
                                                                                                                                          }
                                                                                                                                          if(!(_loc4_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(this.§]!o§);
                                                                                                                                             if(_loc3_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop12;
                                                                                                                                             }
                                                                                                                                             addr167:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                addr168:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                   addr171:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         _loc2_++;
                                                                                                                                                         addr161:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop24;
                                                                                                                                                            §§goto(addr173);
                                                                                                                                                         }
                                                                                                                                                         addr173:
                                                                                                                                                         addr161:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr362);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc2_++;
                                                                                                                                             §§goto(addr327);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr171);
                                                                                                                                    }
                                                                                                                                    addr104:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(this.§]!o§);
                                                                                                                                 }
                                                                                                                                 §§goto(addr167);
                                                                                                                              }
                                                                                                                              §§goto(addr307);
                                                                                                                           }
                                                                                                                           addr95:
                                                                                                                        }
                                                                                                                        §§goto(addr363);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr305);
                                                                                                         }
                                                                                                         addr244:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr382);
                                                                                                      }
                                                                                                   }
                                                                                                   addr241:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc1_++;
                                                                                                      addr74:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr327);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr161);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                      addr158:
                                                                                                   }
                                                                                                   §§goto(addr363);
                                                                                                }
                                                                                                §§goto(addr161);
                                                                                             }
                                                                                             addr239:
                                                                                          }
                                                                                          §§goto(addr380);
                                                                                       }
                                                                                       addr286:
                                                                                    }
                                                                                    addr355:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr376:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr379);
                                                                                          }
                                                                                          addr376:
                                                                                       }
                                                                                       §§goto(addr360);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr280:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§,![§);
                                                                                 addr375:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              addr373:
                                                                           }
                                                                           §§goto(addr376);
                                                                        }
                                                                        addr301:
                                                                        §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§8!+§);
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr204:
                                                                                    §§push(-§§pop());
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop34;
                                                                                    }
                                                                                    §§push(this.§,![§);
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr286);
                                                                                                   }
                                                                                                   §§goto(addr239);
                                                                                                }
                                                                                                §§goto(addr290);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr281);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr375);
                                                                                          }
                                                                                          §§goto(addr376);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                       addr354:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr280);
                                                                                    }
                                                                                    §§goto(addr281);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr354);
                                                                                    §§push(this.§,![§);
                                                                                    break loop15;
                                                                                 }
                                                                                 addr342:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr276);
                                                                              }
                                                                              §§goto(addr375);
                                                                           }
                                                                           §§goto(addr204);
                                                                           §§goto(addr301);
                                                                        }
                                                                        addr276:
                                                                        addr302:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr372:
                                                                     }
                                                                     §§goto(addr373);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr371:
                                                                  }
                                                                  §§goto(addr372);
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr342);
                                                            }
                                                         }
                                                         if(_loc3_ || this)
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§pop()[§§pop()].gotoAndStop("Selected");
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr158);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr324);
                                                                  }
                                                               }
                                                               addr156:
                                                            }
                                                            break loop12;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr333);
                                                }
                                                while(true)
                                                {
                                                   §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                   §§goto(addr337);
                                                }
                                             }
                                             §§goto(addr364);
                                          }
                                       }
                                       §§goto(addr241);
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr74);
                              }
                              §§goto(addr302);
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr58);
                     }
                     else
                     {
                        §§push(-this.§?T§.x);
                     }
                     §§goto(addr371);
                  }
                  §§goto(addr95);
               }
               §§goto(addr244);
            }
            §§goto(addr86);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
         while(true)
         {
            §4!]§.§8C§.clearLevel();
            while(!_loc2_)
            {
               (§`-§.getItemByName("Button_Back") as §,c§).setComponentVisualState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc6_ || param3)
         {
            §§push("BACK");
            if(!(_loc7_ && this))
            {
               §§push(_loc4_);
               if(!(_loc7_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc7_)
                     {
                        addr248:
                        §§push(0);
                        if(!(_loc6_ || param3))
                        {
                           addr284:
                        }
                     }
                     else
                     {
                        addr321:
                        §§push(3);
                        if(_loc6_ || param3)
                        {
                           addr329:
                        }
                     }
                     §§goto(addr334);
                  }
                  else
                  {
                     §§push("PREV");
                     if(!(_loc7_ && param2))
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_ || this)
                              {
                                 §§push(1);
                                 if(_loc6_ || param2)
                                 {
                                    §§goto(addr284);
                                 }
                                 §§goto(addr334);
                              }
                              else
                              {
                                 §§goto(addr309);
                              }
                           }
                           else
                           {
                              §§push("NEXT");
                              if(!_loc7_)
                              {
                                 §§push(_loc4_);
                                 if(_loc6_)
                                 {
                                    addr291:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          addr309:
                                          §§push(2);
                                          if(_loc7_ && param1)
                                          {
                                          }
                                          §§goto(addr334);
                                       }
                                       else
                                       {
                                          §§goto(addr321);
                                       }
                                    }
                                    else
                                    {
                                       addr319:
                                       §§push("FULLSCREEN_BUTTON");
                                       §§push(_loc4_);
                                    }
                                    §§goto(addr321);
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr321);
                                 }
                                 else
                                 {
                                    §§push(4);
                                 }
                              }
                              §§goto(addr319);
                           }
                           addr334:
                           loop1:
                           switch(§§pop())
                           {
                              case 0:
                                 §6!H§.playSound("Menu_Back");
                                 if(!(_loc7_ && param2))
                                 {
                                    addr32:
                                    mNextState = §4A§.§3F§;
                                    if(!(_loc7_ && param3))
                                    {
                                       break;
                                    }
                                    addr140:
                                    §§push((_loc4_ = this).§7!r§);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(_loc6_ || this)
                                    {
                                       _loc4_.§7!r§ = _loc5_;
                                    }
                                    if(!(_loc7_ && this))
                                    {
                                       this.§,U§(this.§7!r§);
                                       addr177:
                                    }
                                    else
                                    {
                                       addr196:
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    break;
                                    addr198:
                                 }
                                 §§goto(addr177);
                              case 1:
                                 §6!H§.playSound("Menu_Confirm");
                                 if(_loc6_ || param1)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr32);
                                    }
                                    else
                                    {
                                       §§push(this.§5!!§);
                                       if(!(_loc7_ && param2))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc7_ && param2))
                                             {
                                                §§push((_loc4_ = this).§7!r§);
                                                if(_loc6_ || this)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc5_ = §§pop();
                                                if(!(_loc7_ && this))
                                                {
                                                   _loc4_.§7!r§ = _loc5_;
                                                }
                                                if(_loc6_ || param1)
                                                {
                                                   this.§,U§(this.§7!r§);
                                                   if(_loc6_ || param2)
                                                   {
                                                      addr118:
                                                      break;
                                                   }
                                                   break;
                                                }
                                                addr132:
                                                if(!this.§5!!§)
                                                {
                                                   if(_loc6_ || param3)
                                                   {
                                                      §§goto(addr140);
                                                   }
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr140);
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr118);
                                       }
                                       §§goto(addr132);
                                    }
                                 }
                                 §§goto(addr132);
                              case 2:
                                 §6!H§.playSound("Menu_Confirm");
                                 if(_loc6_ || param2)
                                 {
                                    §§goto(addr132);
                                 }
                                 §§goto(addr177);
                              case 3:
                                 §6!H§.playSound("Menu_Confirm");
                                 while(true)
                                 {
                                    if(_loc6_ || param3)
                                    {
                                       AngryBirdsFP11.§`!c§.§catch§();
                                       if(_loc7_ && param1)
                                       {
                                          break loop1;
                                       }
                                       continue;
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr198);
                           }
                           return;
                        }
                        §§goto(addr291);
                     }
                     §§goto(addr319);
                  }
               }
               §§goto(addr291);
            }
            §§goto(addr319);
         }
         §§goto(addr248);
      }
      
      private function §,U§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§5!!§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               for(; §§pop() <= this.§,![§.length - 1; if(!(_loc5_ || _loc3_))
               {
                  continue;
               },if(§§pop() < 0)
               {
                  §§goto(addr56);
               },§§goto(addr19))
               {
                  §§push(param1);
                  if(!_loc6_)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        continue;
                     }
                     addr84:
                     while(true)
                     {
                        param1 = §§pop();
                        continue loop0;
                     }
                  }
                  else
                  {
                     loop2:
                     while(true)
                     {
                        param1 = §§pop();
                        loop3:
                        while(true)
                        {
                           addr19:
                           addr99:
                           loop4:
                           while(true)
                           {
                              this.§7!r§ = param1;
                              if(!(_loc5_ || _loc2_))
                              {
                                 continue loop3;
                              }
                              if(_loc5_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(!_loc5_)
                                       {
                                          break loop1;
                                       }
                                       continue loop2;
                                    }
                                    continue loop0;
                                 }
                                 addr56:
                              }
                           }
                           §§push(-this.§,![§[param1].x);
                           if(_loc5_ || this)
                           {
                              addr110:
                              §§push(§§pop() + this.§'!5§);
                              if(_loc5_ || _loc3_)
                              {
                                 addr120:
                                 §§push(Number(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              §§push(this.§?T§.x - _loc2_);
                              if(_loc5_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              var _loc4_:*;
                              §§push(_loc4_ = Number(Math.abs(_loc3_)));
                              if(_loc5_)
                              {
                                 §§push(400);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(!_loc6_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc5_ || this)
                                       {
                                          addr168:
                                          §§push(§§pop());
                                          if(_loc5_)
                                          {
                                             _loc4_ = §§pop();
                                             if(!_loc6_)
                                             {
                                                addr174:
                                                §§push(§-,§);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr182:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      addr190:
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         addr198:
                                                         §§push(_loc4_ = §§pop());
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            addr207:
                                                            if(§§pop() > 1)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  addr218:
                                                                  _loc4_ = Number(1);
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     addr305:
                                                                     addr303:
                                                                     if(this.§,P§ != null)
                                                                     {
                                                                        addr309:
                                                                        this.§,P§.stop();
                                                                        addr307:
                                                                     }
                                                                     this.§,P§ = §5+§.§^Z§.§=!a§(this.§?T§,{"x":_loc2_},null,_loc4_,§5+§.§^E§);
                                                                     addr300:
                                                                     if(_loc5_)
                                                                     {
                                                                        addr257:
                                                                        §§push(this.§,P§);
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           §§pop().onComplete = this.§8@§;
                                                                           addr267:
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              §§push(this.§,P§);
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§pop().play();
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§goto(addr300);
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr267);
                                                                                 }
                                                                                 §§goto(addr305);
                                                                              }
                                                                              §§goto(addr257);
                                                                           }
                                                                           §§goto(addr307);
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr309);
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                }
                                                §§goto(addr198);
                                             }
                                             §§goto(addr207);
                                          }
                                          §§goto(addr182);
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr120);
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§,![§);
                  if(!_loc6_)
                  {
                     §§push(§§pop().length - 1);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§goto(addr84);
                        §§push(int(§§pop()));
                     }
                     else
                     {
                        §§goto(addr110);
                     }
                  }
                  else
                  {
                     §§goto(addr99);
                  }
                  §§goto(addr120);
               }
            }
         }
         while(true)
         {
            §§goto(addr34);
         }
      }
      
      private function §8@§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               if(§§pop() >= this.§]!o§.length)
               {
                  if(!_loc2_)
                  {
                     if(_loc3_)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           this.§5!!§ = false;
                           addr56:
                           if(!(_loc2_ && this))
                           {
                              break;
                           }
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           addr66:
                        }
                        else
                        {
                           addr112:
                           this.§]!o§[_loc1_].gotoAndStop("Selected");
                           addr109:
                        }
                        while(true)
                        {
                        }
                        addr115:
                     }
                     else
                     {
                        addr102:
                     }
                     while(true)
                     {
                        _loc1_++;
                        §§goto(addr66);
                     }
                     continue;
                  }
                  §§goto(addr56);
               }
               else
               {
                  addr106:
                  if(_loc1_ == this.§7!r§)
                  {
                     §§goto(addr109);
                  }
                  else
                  {
                     §§push(this.§]!o§);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(_loc1_);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr102);
                        }
                        else
                        {
                           §§goto(addr112);
                        }
                     }
                     else
                     {
                        §§goto(addr112);
                     }
                     §§goto(addr112);
                  }
               }
               §§goto(addr112);
            }
            §§goto(addr106);
         }
      }
   }
}
