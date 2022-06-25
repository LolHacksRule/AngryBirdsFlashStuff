package §9!5§
{
   import §"R§.§ !Q§;
   import §0!N§.§4n§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§5!I§;
   import §?!7§.§8;§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import §true§.§ _§;
   
   public class §0!`§ extends §?Y§
   {
      
      public static const §?h§:String = "ChapterSelectionState";
      
      private static const §=C§:Number = 0.5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?h§ = "ChapterSelectionState";
         }
         do
         {
            §=C§ = 0.5;
         }
         while(!(_loc1_ || §0!`§));
         
      }
      
      private var §-+§:Sprite;
      
      private var §=!4§:§8;§;
      
      private var §9g§:Array;
      
      private var §%3§:Array;
      
      private var §;z§:int = 0;
      
      private var § !O§:Number = 0;
      
      private var §'p§:Number = 0;
      
      private var §,!L§:Dictionary;
      
      private var §7!p§:Dictionary;
      
      private var §8_§:§4!Z§ = null;
      
      private var §2!"§:Boolean = false;
      
      private var §0B§:Number = 0;
      
      public function §0!`§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
            while(true)
            {
               §5!P§ = new §'!^§(this);
               §§goto(addr79);
            }
         }
         addr79:
         while(true)
         {
            §5!P§.init(§[!'§.§+@§.Views.View_ChapterSelection[0]);
            do
            {
               this.§5N§();
            }
            while(!_loc1_);
            
            if(!(_loc2_ && this))
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:§4n§ = null;
         if(!(_loc7_ && _loc3_))
         {
            super.activate();
            if(!(_loc7_ && _loc3_))
            {
               addr38:
               § _§.§!6§.§2!d§(false);
            }
            var _loc1_:int = 0;
            loop0:
            for each(_loc2_ in this.§9g§)
            {
               _loc3_ = LevelManager.§`!-§(_loc1_);
               if(!(_loc7_ && _loc1_))
               {
                  if(_loc2_.Textfield_ME_Score != null)
                  {
                     while(true)
                     {
                        _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§`!8§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§'!O§(_loc3_);
                        addr180:
                        while(true)
                        {
                        }
                     }
                     addr165:
                  }
                  loop3:
                  while(true)
                  {
                     if(_loc2_.Textfield_CollectedStars != null)
                     {
                        loop4:
                        while(true)
                        {
                           _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§&!N§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§#O§(_loc3_);
                           while(true)
                           {
                              addr91:
                              if(_loc6_ || _loc1_)
                              {
                                 continue loop4;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(_loc2_.Textfield_Score != null)
                        {
                           while(_loc6_ || this)
                           {
                              if(!_loc7_)
                              {
                                 _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§7!>§(_loc3_);
                                 while(true)
                                 {
                                 }
                                 addr129:
                              }
                              else
                              {
                                 §§goto(addr165);
                              }
                           }
                           continue loop3;
                           addr112:
                        }
                        while(true)
                        {
                           _loc1_++;
                           if(!_loc7_)
                           {
                              if(_loc6_ || _loc1_)
                              {
                                 break;
                              }
                              §§goto(addr112);
                           }
                        }
                        §§goto(addr91);
                     }
                     continue loop0;
                  }
               }
               §§goto(addr129);
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function §5N§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§4n§ = null;
         var _loc4_:String = null;
         if(!_loc5_)
         {
            this.§=!4§ = §5!P§.getItemByName("Container_ChapterSelection") as §8;§;
         }
         while(true)
         {
            while(true)
            {
               this.§9g§ = [];
               do
               {
                  this.§%3§ = [];
               }
               while(!(_loc6_ || _loc1_));
               
               if(!(_loc6_ || _loc1_))
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc1_:* = Number(0);
               if(_loc6_ || this)
               {
                  this.§-+§ = new Sprite();
                  loop3:
                  while(true)
                  {
                     this.§-+§.y = AngryBirdsFP11.§@U§ / 2;
                     while(true)
                     {
                        this.§ !O§ = AngryBirdsFP11.§>!2§ / 2;
                        while(_loc6_)
                        {
                           this.§-+§.x = this.§ !O§;
                           loop6:
                           while(true)
                           {
                              addr84:
                              while(true)
                              {
                                 this.§=!4§.mClip.addChild(this.§-+§);
                                 continue loop6;
                              }
                           }
                           if(!(_loc6_ || _loc1_))
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              continue loop3;
                           }
                           while(true)
                           {
                              this.§7!p§ = new Dictionary();
                              if(_loc6_ || _loc1_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr84);
                              }
                              §§goto(addr91);
                           }
                           var _loc2_:int = 0;
                           while(_loc2_ < LevelManager.§1K§())
                           {
                              _loc3_ = LevelManager.§`!-§(_loc2_);
                              if(_loc6_)
                              {
                                 §§push("MovieClip_");
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(§§pop() + _loc3_.menuImage);
                                 }
                                 _loc4_ = §§pop();
                                 loop11:
                                 while(true)
                                 {
                                    addr172:
                                    while(true)
                                    {
                                       §§push(this.§#k§(_loc4_,_loc1_,_loc2_));
                                       if(!_loc5_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       _loc1_ = §§pop();
                                       do
                                       {
                                          if(!_loc5_)
                                          {
                                             continue;
                                          }
                                          continue loop11;
                                       }
                                       while(_loc2_++, _loc5_ && _loc2_);
                                       
                                    }
                                 }
                              }
                              while(false)
                              {
                                 §§goto(addr172);
                              }
                           }
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(this.§#k§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_));
                              if(!(_loc5_ && _loc1_))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc6_)
                                 {
                                    _loc1_ = §§pop();
                                    if(!_loc5_)
                                    {
                                       _loc2_++;
                                       addr268:
                                       loop18:
                                       while(true)
                                       {
                                          §§push(this.§#k§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_));
                                          if(_loc5_ && _loc1_)
                                          {
                                          }
                                          addr263:
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   this.§3!g§();
                                                   if(!_loc5_)
                                                   {
                                                      return;
                                                   }
                                                   continue;
                                                }
                                                continue loop18;
                                             }
                                             continue loop18;
                                          }
                                       }
                                       addr268:
                                    }
                                    §§goto(addr268);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr268);
                                 }
                              }
                              §§goto(addr263);
                           }
                           §§goto(addr268);
                        }
                     }
                  }
               }
               §§goto(addr107);
            }
         }
      }
      
      private function §3!g§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = Number(0);
         if(!(_loc6_ && this))
         {
            this.§,!L§ = new Dictionary();
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < this.§9g§.length)
         {
            _loc1_ = §%!G§.§^!B§("Button_Dot");
            _loc2_ = new _loc1_();
            if(!(_loc6_ && _loc3_))
            {
               if(_loc4_ != this.§;z§)
               {
                  _loc2_.gotoAndStop("UnSelected");
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        _loc2_.x = AngryBirdsFP11.§>!2§ / 2 + _loc3_ - this.§9g§.length * _loc2_.width / 2;
                        loop3:
                        while(!(_loc6_ && _loc2_))
                        {
                           _loc2_.y = (§5!P§.getItemByName("Button_Next") as §5!I§).y - _loc2_.height / 2;
                           loop4:
                           for(; _loc5_; if(!(_loc5_ || _loc2_))
                           {
                              continue;
                           },§§push(_loc3_),if(!_loc6_)
                           {
                              §§push(Number(§§pop() + _loc2_.width));
                           },_loc3_ = §§pop(),§§goto(addr105))
                           {
                              this.§=!4§.mClip.addChild(_loc2_);
                              loop5:
                              while(true)
                              {
                                 _loc2_.buttonMode = true;
                                 addr139:
                                 loop8:
                                 while(true)
                                 {
                                    this.§,!L§[_loc2_] = _loc4_;
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          this.§%3§.push(_loc2_);
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop4;
                                             }
                                             continue loop8;
                                             addr68:
                                             if(!(_loc6_ && _loc1_))
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(false)
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4"§);
                                                         while(!_loc6_)
                                                         {
                                                            if(_loc6_ && this)
                                                            {
                                                               continue loop3;
                                                            }
                                                            _loc4_++;
                                                            if(_loc6_)
                                                            {
                                                               continue;
                                                            }
                                                            addr61:
                                                            if(!(_loc6_ && this))
                                                            {
                                                               §§goto(addr68);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop12;
                                                                  §§goto(addr61);
                                                               }
                                                               addr105:
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop9;
                                             }
                                          }
                                          continue loop4;
                                       }
                                       addr211:
                                       while(true)
                                       {
                                          _loc2_.gotoAndStop("Selected");
                                          break loop3;
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr211);
            }
            §§goto(addr139);
         }
         if(_loc5_ || _loc3_)
         {
            §§push(this.§9g§.length * _loc2_.width);
            if(_loc5_)
            {
               §§push(§§pop() / 2);
               if(!_loc6_)
               {
                  addr239:
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(!_loc6_)
                  {
                     addr246:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  if(_loc5_ || _loc2_)
                  {
                     (§5!P§.getItemByName("Button_Next") as §5!I§).x = AngryBirdsFP11.§>!2§ / 2;
                     loop14:
                     do
                     {
                        (§5!P§.getItemByName("Button_Prev") as §5!I§).x = AngryBirdsFP11.§>!2§ / 2;
                        while(true)
                        {
                           (§5!P§.getItemByName("Button_Next") as §5!I§).x = (§5!P§.getItemByName("Button_Next") as §5!I§).x + (_loc3_ + 10);
                           while(!_loc6_)
                           {
                              (§5!P§.getItemByName("Button_Prev") as §5!I§).x = (§5!P§.getItemByName("Button_Prev") as §5!I§).x - (_loc3_ + 10);
                              if(!(_loc6_ && _loc3_))
                              {
                                 continue loop14;
                              }
                           }
                        }
                     }
                     while(!(_loc5_ || _loc2_));
                     
                     return;
                     addr344:
                  }
                  §§goto(addr344);
               }
               §§goto(addr246);
            }
            §§goto(addr239);
         }
         §§goto(addr344);
      }
      
      private function §#k§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§4n§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(!_loc7_)
         {
            if(§%!G§.§+!W§(param1))
            {
               addr32:
               _loc4_ = LevelManager.§`!-§(param3);
               (_loc6_ = new (_loc5_ = §%!G§.§^!B§(param1))()).x = param2;
               if(_loc8_ || param1)
               {
                  this.§-+§.addChild(_loc6_);
                  loop0:
                  while(true)
                  {
                     this.§9g§.push(_loc6_);
                     loop1:
                     while(true)
                     {
                        §§push(param2);
                        if(_loc8_ || param3)
                        {
                           §§push(§§pop() + _loc6_.width * 1.55);
                           if(!_loc7_)
                           {
                              addr222:
                              §§push(Number(§§pop()));
                           }
                           param2 = §§pop();
                           loop2:
                           while(true)
                           {
                              this.§7!p§[_loc6_] = param3;
                              loop3:
                              while(true)
                              {
                                 _loc6_.addEventListener(MouseEvent.CLICK,this.§'@§);
                                 while(true)
                                 {
                                    _loc6_.buttonMode = true;
                                    while(!(_loc7_ && param1))
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop1;
                                       }
                                       if(_loc6_.Textfield_CollectedStars == null)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             if(_loc6_.Textfield_Score != null)
                                             {
                                                if(_loc8_ || param2)
                                                {
                                                   _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§7!>§(_loc4_);
                                                }
                                                while(true)
                                                {
                                                }
                                                addr138:
                                             }
                                             while(_loc6_.Textfield_ME_Score != null)
                                             {
                                                if(_loc8_ || this)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(!(_loc8_ || param3))
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§`!8§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§'!O§(_loc4_);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr138);
                                                   }
                                                }
                                                if(_loc8_ || this)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      break loop6;
                                                   }
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                addr144:
                                                addr144:
                                                while(true)
                                                {
                                                   _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§&!N§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§#O§(_loc4_);
                                                   continue loop3;
                                                }
                                             }
                                             §§goto(addr236);
                                          }
                                          continue;
                                          addr118:
                                       }
                                       §§goto(addr144);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr222);
                     }
                  }
               }
               §§goto(addr144);
            }
            addr236:
            return param2;
         }
         §§goto(addr32);
      }
      
      private function §4"§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§2!"§)
            {
               if(_loc2_ || param1)
               {
                  this.§'!m§(this.§,!L§[param1.target]);
               }
            }
         }
      }
      
      private function §'@§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§2!"§);
            if(_loc4_ || this)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr48:
                     if(!(param1.currentTarget is MovieClip))
                     {
                        return;
                     }
                     if(_loc4_)
                     {
                        _loc2_ = MovieClip(param1.currentTarget);
                        if(_loc4_ || this)
                        {
                           §§goto(addr76);
                        }
                        §§goto(addr123);
                     }
                  }
                  addr76:
                  if(this.§;z§ != this.§7!p§[_loc2_])
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        this.§'!m§(this.§7!p§[_loc2_]);
                        if(_loc3_)
                        {
                        }
                        §§goto(addr140);
                     }
                  }
                  else
                  {
                     if(this.§7!p§[_loc2_] < LevelManager.§1K§())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr123:
                           LevelManager.§>!§ = this.§7!p§[_loc2_];
                           if(_loc3_ && this)
                           {
                           }
                           §§goto(addr140);
                        }
                        mNextState = § B§.§?h§;
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr140);
               }
               addr140:
               return;
            }
         }
         §§goto(addr48);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               if(§§pop() == §?Y§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     this.§1G§();
                     loop1:
                     while(_loc4_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           this.§5q§();
                           while(mNextState.length > 0)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 if(!_loc3_)
                                 {
                                    return §?Y§.STATE_STATUS_COMPLETED;
                                 }
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           return §?Y§.STATE_STATUS_RUNNING;
                        }
                     }
                     addr108:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr108);
      }
      
      private function §5q§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               if(§§pop() >= this.§9g§.length)
               {
                  if(_loc4_)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        §§push(1000);
                        addr166:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop23:
                           while(true)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       _loc2_ = §§pop();
                                       loop18:
                                       while(true)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             while(true)
                                             {
                                                §§push(this.§9g§);
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                                                      loop6:
                                                      while(!(_loc3_ && this))
                                                      {
                                                         §§push(this.§9g§);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(_loc1_);
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  §§push(this.§9g§);
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     addr88:
                                                                     addr102:
                                                                     addr121:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        §§push(this.§9g§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop16;
                                                                        }
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        if(!(_loc4_ || _loc2_))
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        §§push(_loc1_);
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr88);
                                                                        §§goto(addr102);
                                                                     }
                                                                     addr83:
                                                                     addr44:
                                                                     §§pop()[§§pop()].y = _loc2_ / 1000 * -200;
                                                                     _loc1_++;
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr121);
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr140:
                                          }
                                          else
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc3_ && this))
                                                   {
                                                      addr198:
                                                      §§push(§§pop() * 0.55);
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            while(_loc3_ && _loc1_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            _loc2_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc4_)
                                                               {
                                                                  if(§§pop() <= 1000)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop23;
                                                               §§goto(addr208);
                                                            }
                                                            addr208:
                                                            §§goto(addr140);
                                                            addr219:
                                                            addr201:
                                                         }
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                         }
                                                      }
                                                      addr198:
                                                   }
                                                   §§goto(addr198);
                                                }
                                                while(true)
                                                {
                                                   §§push(Number(Math.abs(_loc2_)));
                                                   continue loop8;
                                                }
                                             }
                                          }
                                          §§goto(addr219);
                                       }
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr198);
                              }
                              §§goto(addr201);
                           }
                        }
                     }
                  }
                  §§goto(addr44);
               }
               else
               {
                  §§push(this.§-+§.x + this.§9g§[_loc1_].x - AngryBirdsFP11.§>!2§ / 2);
               }
               §§goto(addr245);
            }
            §§goto(addr166);
         }
      }
      
      private function §1G§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               if(_loc4_ || _loc3_)
               {
                  §§push(this.§%3§);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 this.§0B§ = this.§-+§.x;
                                 addr59:
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 loop36:
                                 while(true)
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       if(_loc4_ || _loc2_)
                                       {
                                          addr78:
                                          if(!(_loc3_ && this))
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                loop37:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      §§push(this.§%3§);
                                                      loop38:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         addr316:
                                                         loop39:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§pop()[§§pop()].gotoAndStop("Selected");
                                                               loop34:
                                                               while(true)
                                                               {
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(-this.§-+§.x);
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(800);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           loop21:
                                                                           while(_loc4_ || _loc3_)
                                                                           {
                                                                              §§push(this.§9g§);
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop27:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§0B§);
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         if(_loc3_ && _loc1_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         addr195:
                                                                                                         if(_loc4_ || _loc1_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               addr205:
                                                                                                               §§push(-§§pop());
                                                                                                               §§push(this.§9g§);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(_loc4_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(_loc1_);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc3_ && this))
                                                                                                                        {
                                                                                                                           §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                           if(_loc3_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              addr240:
                                                                                                                              if(!(_loc3_ && _loc1_))
                                                                                                                              {
                                                                                                                                 addr369:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop36;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       loop7:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             _loc2_ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc3_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop34;
                                                                                                                                                }
                                                                                                                                                if(!(_loc3_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   loop5:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                      addr92:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            continue loop7;
                                                                                                                                                         }
                                                                                                                                                         §§push(this.§%3§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc3_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() >= §§pop().length)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§%3§);
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc1_);
                                                                                                                                                                        if(_loc4_ || _loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop26;
                                                                                                                                                                              }
                                                                                                                                                                              addr122:
                                                                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              addr329:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_ && _loc2_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr336:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc2_);
                                                                                                                                                                                          addr302:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§%3§);
                                                                                                                                                                                             addr304:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() >= §§pop().length)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop37;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(this.§%3§);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr336);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr300:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§0B§);
                                                                                                                                                                                          addr350:
                                                                                                                                                                                          addr392:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                break loop21;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr382:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(800);
                                                                                                                                                                                                addr383:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   addr384:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§9g§);
                                                                                                                                                                                                      addr386:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                                                                         break loop26;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr195);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr392:
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr122);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop36;
                                                                                                                                                                           addr120:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc4_ || _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop39;
                                                                                                                                                                           }
                                                                                                                                                                           addr155:
                                                                                                                                                                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc4_ || _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop7;
                                                                                                                                                                              }
                                                                                                                                                                              _loc2_++;
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop5;
                                                                                                                                                                                 §§goto(addr78);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr155);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr148:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop38;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc4_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr148);
                                                                                                                                                                              §§push(_loc2_);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr138:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc2_);
                                                                                                                                                                        addr343:
                                                                                                                                                                        loop40:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                           addr346:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc2_++;
                                                                                                                                                                              §§goto(addr329);
                                                                                                                                                                              continue loop40;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr105:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§%3§);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr138);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr304);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr346);
                                                                                                                                             }
                                                                                                                                             addr253:
                                                                                                                                          }
                                                                                                                                          addr374:
                                                                                                                                          loop35:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc2_ = §§pop();
                                                                                                                                             addr375:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr300);
                                                                                                                                                continue loop35;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr240);
                                                                                                                                 }
                                                                                                                                 while(!_loc3_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr374);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr392);
                                                                                                                                 addr369:
                                                                                                                                 addr247:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 break loop23;
                                                                                                                              }
                                                                                                                              addr390:
                                                                                                                           }
                                                                                                                           §§goto(addr369);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  §§goto(addr386);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc1_);
                                                                                                                  addr366:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr369);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr384);
                                                                                                         }
                                                                                                         §§goto(addr350);
                                                                                                      }
                                                                                                      §§goto(addr205);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr390);
                                                                                                   }
                                                                                                }
                                                                                                addr298:
                                                                                             }
                                                                                             §§goto(addr247);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr298);
                                                                                    }
                                                                                    §§goto(addr366);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr392);
                                                                                    }
                                                                                    §§goto(addr371);
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr365);
                                                                              §§goto(addr277);
                                                                           }
                                                                           addr277:
                                                                        }
                                                                        §§goto(addr383);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr343);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr373);
                                                }
                                             }
                                             §§goto(addr253);
                                          }
                                          §§goto(addr132);
                                       }
                                       §§goto(addr105);
                                    }
                                    §§goto(addr120);
                                 }
                                 continue;
                              }
                              §§goto(addr375);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr59);
                     }
                     else
                     {
                        §§push(-this.§-+§.x);
                     }
                     §§goto(addr382);
                  }
                  §§goto(addr96);
               }
               §§goto(addr302);
            }
            §§goto(addr92);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            while(true)
            {
               § _§.§!6§.clearLevel();
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            (§5!P§.getItemByName("Button_Back") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(!_loc2_)
            {
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc6_ && param2))
         {
            §§push("BACK");
            if(!(_loc6_ && param2))
            {
               §§push(_loc4_);
               if(_loc7_ || param2)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                        }
                        §§goto(addr315);
                     }
                     else
                     {
                        §§goto(addr257);
                     }
                  }
                  else
                  {
                     §§push("PREV");
                     if(_loc7_ || param2)
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && this))
                        {
                           addr254:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 addr257:
                                 §§push(1);
                                 if(_loc6_ && this)
                                 {
                                 }
                              }
                              §§goto(addr315);
                           }
                           else
                           {
                              §§push("NEXT");
                              if(_loc7_ || param1)
                              {
                                 §§push(_loc4_);
                                 if(_loc7_ || this)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          addr295:
                                          §§push(2);
                                          if(!(_loc6_ && param3))
                                          {
                                             §§goto(addr315);
                                          }
                                          else
                                          {
                                             §§goto(addr310);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr306:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr315:
                                          loop1:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                § !Q§.playSound("Menu_Back");
                                                if(!_loc6_)
                                                {
                                                   addr33:
                                                   mNextState = §!i§.§?h§;
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      break;
                                                   }
                                                }
                                                addr109:
                                                break;
                                             case 1:
                                                § !Q§.playSound("Menu_Confirm");
                                                if(!(_loc6_ && param3))
                                                {
                                                   if(true)
                                                   {
                                                      §§push(this.§2!"§);
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(!(_loc6_ && this))
                                                            {
                                                               §§push((_loc4_ = this).§;z§);
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§push(§§pop() - 1);
                                                               }
                                                               var _loc5_:* = §§pop();
                                                               if(!(_loc6_ && param3))
                                                               {
                                                                  _loc4_.§;z§ = _loc5_;
                                                               }
                                                               if(_loc7_)
                                                               {
                                                                  this.§'!m§(this.§;z§);
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     §§goto(addr109);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr189:
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  this.§'!m§(this.§;z§);
                                                                  addr163:
                                                               }
                                                               addr191:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr109);
                                                      }
                                                      else
                                                      {
                                                         addr123:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§push((_loc4_ = this).§;z§);
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               _loc5_ = §§pop();
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  _loc4_.§;z§ = _loc5_;
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr163);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr189);
                                                               }
                                                            }
                                                            §§goto(addr163);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr33);
                                                   §§goto(addr109);
                                                }
                                                §§goto(addr163);
                                             case 2:
                                                § !Q§.playSound("Menu_Confirm");
                                                if(_loc7_ || this)
                                                {
                                                   §§goto(addr123);
                                                   §§push(this.§2!"§);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      AngryBirdsFP11.§3!a§.§8!d§();
                                                      if(_loc6_ && param1)
                                                      {
                                                         break loop1;
                                                      }
                                                      if(!(_loc7_ || param3))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc7_ || param2)
                                                      {
                                                         §§goto(addr189);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr163);
                                                      }
                                                   }
                                                   break;
                                                   addr197:
                                                }
                                                §§goto(addr163);
                                             case 3:
                                                § !Q§.playSound("Menu_Confirm");
                                                §§goto(addr197);
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr315);
                                 }
                              }
                              §§goto(addr306);
                           }
                           §§goto(addr315);
                        }
                     }
                     §§goto(addr306);
                  }
                  §§goto(addr315);
               }
               §§goto(addr254);
            }
            §§goto(addr306);
         }
         §§goto(addr295);
      }
      
      private function §'!m§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§2!"§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               while(true)
               {
                  if(§§pop() > this.§9g§.length - 1)
                  {
                     addr73:
                     if(!_loc5_)
                     {
                        §§push(this.§9g§);
                        if(!_loc5_)
                        {
                           addr101:
                           §§push(§§pop().length - 1);
                           if(_loc6_)
                           {
                              §§push(int(§§pop()));
                              break;
                           }
                           var _loc2_:Number = §§pop();
                           §§push(this.§-+§.x - _loc2_);
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:*;
                           §§push(_loc4_ = Number(Math.abs(_loc3_)));
                           if(!_loc5_)
                           {
                              §§push(400);
                              if(_loc6_)
                              {
                                 §§push(§§pop() / §§pop());
                                 if(_loc6_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ || _loc2_)
                                       {
                                          _loc4_ = §§pop();
                                          if(!_loc5_)
                                          {
                                             §§push(§=C§);
                                             if(!(_loc5_ && this))
                                             {
                                                addr158:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   addr166:
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc5_ && this))
                                                   {
                                                      addr175:
                                                      §§push(_loc4_ = §§pop());
                                                      if(!(_loc5_ && this))
                                                      {
                                                         addr183:
                                                         if(§§pop() > 1)
                                                         {
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               addr194:
                                                               _loc4_ = Number(1);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  addr265:
                                                                  §§push(this.§8_§);
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     if(§§pop() != null)
                                                                     {
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           addr285:
                                                                           §§push(this.§8_§);
                                                                           while(true)
                                                                           {
                                                                              §§pop().stop();
                                                                              addr286:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           addr285:
                                                                        }
                                                                        §§goto(addr286);
                                                                     }
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        this.§8_§ = §,!b§.§<d§.§>a§(this.§-+§,{"x":_loc2_},null,_loc4_,§,!b§.§4t§);
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§8_§);
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              §§pop().onComplete = this.§3!L§;
                                                                              addr238:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§8_§);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§pop().play();
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             return;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr285);
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                               §§goto(addr286);
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                         §§goto(addr265);
                                                      }
                                                   }
                                                }
                                                §§goto(addr194);
                                             }
                                          }
                                          §§goto(addr175);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr166);
                                 }
                              }
                           }
                           §§goto(addr183);
                        }
                        break loop0;
                     }
                     while(true)
                     {
                        addr32:
                        while(true)
                        {
                        }
                     }
                     addr73:
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     if(§§pop() < 0)
                     {
                        if(_loc6_)
                        {
                           continue;
                        }
                        addr53:
                        while(true)
                        {
                        }
                     }
                  }
                  do
                  {
                     this.§;z§ = param1;
                  }
                  while(!_loc6_);
                  
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        if(false)
                        {
                           §§goto(addr32);
                        }
                        §§push(this.§9g§);
                        break loop0;
                     }
                     continue loop0;
                  }
                  §§goto(addr73);
               }
               param1 = §§pop();
               §§goto(addr73);
            }
            §§push(-§§pop()[param1].x);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() + this.§ !O§);
               if(_loc6_ || param1)
               {
                  §§goto(addr101);
               }
            }
            §§goto(addr101);
         }
         §§goto(addr53);
      }
      
      private function §3!L§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() >= this.§%3§.length)
               {
                  if(_loc3_)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           this.§2!"§ = false;
                           addr61:
                           if(!(_loc2_ && _loc1_))
                           {
                              break;
                           }
                           addr120:
                           while(true)
                           {
                           }
                           addr120:
                        }
                        else
                        {
                           addr107:
                        }
                        while(true)
                        {
                           _loc1_++;
                           §§goto(addr120);
                        }
                        addr69:
                     }
                     while(!(_loc3_ || this))
                     {
                        while(true)
                        {
                           §§push(this.§%3§);
                           addr116:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr117:
                              while(true)
                              {
                                 §§pop()[§§pop()].gotoAndStop("Selected");
                                 §§goto(addr120);
                              }
                           }
                        }
                        §§goto(addr69);
                     }
                     continue;
                  }
                  §§goto(addr61);
               }
               else
               {
                  addr111:
                  if(_loc1_ != this.§;z§)
                  {
                     §§push(this.§%3§);
                     if(!(_loc2_ && this))
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr107);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr116);
                  }
               }
               §§goto(addr114);
            }
            §§goto(addr111);
         }
      }
   }
}
