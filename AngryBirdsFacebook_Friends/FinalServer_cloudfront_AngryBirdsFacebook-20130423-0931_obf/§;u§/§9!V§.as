package §;u§
{
   import §%i§.§0!Y§;
   import §%i§.§7"0§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §9!V§ extends §+d§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      private static const § !p§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            STATE_NAME = "ChapterSelectionState";
         }
         do
         {
            § !p§ = 0.5;
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      private var §0"X§:Sprite;
      
      private var §4W§:§0!Y§;
      
      private var §#"H§:Array;
      
      private var § "9§:Array;
      
      private var § u§:int = 0;
      
      private var § §:Number = 0;
      
      private var §%"0§:Number = 0;
      
      private var §[C§:Dictionary;
      
      private var §;"&§:Dictionary;
      
      private var §&!i§:§6!K§ = null;
      
      private var §<"0§:Boolean = false;
      
      private var §-^§:Number = 0;
      
      public function §9!V§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            loop0:
            while(true)
            {
               §2"@§ = new §`_§(this);
               while(true)
               {
                  §2"@§.init(§ "<§.§%I§.Views.View_ChapterSelection[0]);
                  while(!(_loc1_ && _loc1_))
                  {
                     if(_loc2_)
                     {
                        this.§>"9§();
                        if(!_loc1_)
                        {
                           return;
                           addr54:
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:§3-§ = null;
         if(!_loc7_)
         {
            super.activate();
            if(!_loc7_)
            {
               addr28:
               §?l§.§'h§.§#"[§(false);
            }
            var _loc1_:int = 0;
            loop0:
            for each(_loc2_ in this.§#"H§)
            {
               _loc3_ = LevelManager.§1!m§(_loc1_);
               if(_loc6_)
               {
                  if(_loc2_.Textfield_ME_Score != null)
                  {
                     while(true)
                     {
                        _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]L§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§="'§(_loc3_);
                        addr170:
                        while(true)
                        {
                        }
                     }
                     addr155:
                  }
                  loop3:
                  while(true)
                  {
                     if(_loc2_.Textfield_CollectedStars != null)
                     {
                        addr118:
                        while(true)
                        {
                           _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§[!a§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§3W§(_loc3_);
                           addr133:
                           while(true)
                           {
                              if(_loc7_ && _loc1_)
                              {
                                 continue loop3;
                              }
                           }
                        }
                        addr118:
                     }
                     loop4:
                     while(true)
                     {
                        if(_loc2_.Textfield_Score != null)
                        {
                           loop5:
                           while(_loc6_ || this)
                           {
                              _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§0!P§(_loc3_);
                              loop6:
                              while(true)
                              {
                                 addr55:
                                 while(true)
                                 {
                                    _loc1_++;
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue loop6;
                                    }
                                    if(!(_loc6_ || _loc2_))
                                    {
                                       continue loop5;
                                    }
                                    if(_loc6_ || this)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(false)
                                          {
                                             continue loop4;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr155);
                                    }
                                    else
                                    {
                                       §§goto(addr118);
                                    }
                                 }
                              }
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr55);
                     }
                  }
               }
               §§goto(addr118);
            }
            return;
         }
         §§goto(addr28);
      }
      
      private function §>"9§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§3-§ = null;
         var _loc4_:String = null;
         if(!_loc6_)
         {
            this.§4W§ = §2"@§.getItemByName("Container_ChapterSelection") as §0!Y§;
            loop0:
            while(true)
            {
               addr38:
               while(true)
               {
                  this.§#"H§ = [];
                  addr42:
                  while(!_loc6_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§ "9§ = [];
            if(!(_loc6_ && _loc1_))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr38);
            }
            §§goto(addr42);
         }
         var _loc1_:* = Number(0);
         if(_loc5_)
         {
            this.§0"X§ = new Sprite();
            loop4:
            while(true)
            {
               this.§0"X§.y = AngryBirdsFP11.§?s§ / 2;
               while(true)
               {
                  this.§ § = AngryBirdsFP11.§'!m§ / 2;
                  loop6:
                  while(!_loc6_)
                  {
                     if(!_loc5_)
                     {
                        continue loop4;
                     }
                     this.§0"X§.x = this.§ §;
                     loop7:
                     while(true)
                     {
                        addr68:
                        while(true)
                        {
                           this.§4W§.mClip.addChild(this.§0"X§);
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    this.§;"&§ = new Dictionary();
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop6;
                              }
                              continue loop7;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr68);
         }
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§0"5§())
         {
            _loc3_ = LevelManager.§1!m§(_loc2_);
            if(!(_loc6_ && this))
            {
               §§push("MovieClip_");
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() + _loc3_.menuImage);
               }
               _loc4_ = §§pop();
               loop12:
               while(true)
               {
                  addr148:
                  while(true)
                  {
                     §§push(this.§^!z§(_loc4_,_loc1_,_loc2_));
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc1_ = §§pop();
                     continue loop12;
                  }
               }
               addr172:
            }
            while(true)
            {
               _loc2_++;
               if(_loc6_)
               {
                  continue;
               }
               if(_loc5_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr172);
               }
               §§goto(addr148);
            }
         }
         if(!(_loc6_ && _loc1_))
         {
            §§push(this.§^!z§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_));
            if(_loc5_)
            {
               §§push(Number(§§pop()));
               if(!_loc6_)
               {
                  addr194:
                  _loc1_ = §§pop();
                  if(!_loc6_)
                  {
                     _loc2_++;
                     addr207:
                  }
                  loop18:
                  while(true)
                  {
                     §§push(this.§^!z§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_));
                     if(!_loc6_)
                     {
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           continue loop18;
                        }
                        addr231:
                     }
                     while(true)
                     {
                        _loc1_ = §§pop();
                        while(true)
                        {
                           if(_loc5_)
                           {
                              this.§^!D§();
                              if(_loc5_ || _loc1_)
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
               }
               §§goto(addr231);
            }
            §§goto(addr194);
         }
         §§goto(addr207);
      }
      
      private function §^!D§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = Number(0);
         if(_loc5_)
         {
            this.§[C§ = new Dictionary();
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.§#"H§.length)
         {
            _loc1_ = §?q§.§ q§("Button_Dot");
            _loc2_ = new _loc1_();
            if(!(_loc6_ && this))
            {
               if(_loc4_ != this.§ u§)
               {
                  _loc2_.gotoAndStop("UnSelected");
                  loop1:
                  while(true)
                  {
                     addr171:
                     while(true)
                     {
                        _loc2_.x = AngryBirdsFP11.§'!m§ / 2 + _loc3_ - this.§#"H§.length * _loc2_.width / 2;
                        loop3:
                        while(true)
                        {
                           _loc2_.y = (§2"@§.getItemByName("Button_Next") as §7"0§).y - _loc2_.height / 2;
                           loop4:
                           while(true)
                           {
                              this.§4W§.mClip.addChild(_loc2_);
                              loop5:
                              while(_loc5_)
                              {
                                 _loc2_.buttonMode = true;
                                 while(true)
                                 {
                                    this.§[C§[_loc2_] = _loc4_;
                                    loop7:
                                    while(!_loc6_)
                                    {
                                       this.§ "9§.push(_loc2_);
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(_loc5_)
                                          {
                                             §§push(Number(§§pop() + _loc2_.width));
                                          }
                                          _loc3_ = §§pop();
                                          addr105:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             continue loop7;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     loop11:
                     while(true)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           if(_loc5_ || _loc1_)
                           {
                              if(_loc5_ || this)
                              {
                                 _loc4_++;
                                 if(_loc6_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 if(!_loc6_)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§goto(addr65);
                                    }
                                    else
                                    {
                                       §§goto(addr122);
                                    }
                                 }
                                 §§goto(addr105);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc2_.gotoAndStop("Selected");
                                    break loop11;
                                 }
                                 addr201:
                              }
                           }
                           break;
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        §§goto(addr171);
                     }
                  }
               }
            }
            §§goto(addr201);
         }
         if(!_loc6_)
         {
            §§push(this.§#"H§.length * _loc2_.width);
            if(!(_loc6_ && _loc1_))
            {
               §§push(§§pop() / 2);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(!_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            _loc3_ = §§pop();
            if(_loc5_)
            {
               (§2"@§.getItemByName("Button_Next") as §7"0§).x = AngryBirdsFP11.§'!m§ / 2;
               loop14:
               while(true)
               {
                  (§2"@§.getItemByName("Button_Prev") as §7"0§).x = AngryBirdsFP11.§'!m§ / 2;
                  addr323:
                  loop15:
                  while(true)
                  {
                     (§2"@§.getItemByName("Button_Next") as §7"0§).x = (§2"@§.getItemByName("Button_Next") as §7"0§).x + (_loc3_ + 10);
                     while(!(_loc6_ && _loc3_))
                     {
                        (§2"@§.getItemByName("Button_Prev") as §7"0§).x = (§2"@§.getItemByName("Button_Prev") as §7"0§).x - (_loc3_ + 10);
                        if(_loc5_ || _loc3_)
                        {
                           if(!_loc6_)
                           {
                              break loop15;
                           }
                           continue loop14;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr323);
      }
      
      private function §^!z§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§3-§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(_loc7_)
         {
            if(§?q§.§?!`§(param1))
            {
               addr31:
               _loc4_ = LevelManager.§1!m§(param3);
               (_loc6_ = new (_loc5_ = §?q§.§ q§(param1))()).x = param2;
               if(!_loc8_)
               {
                  this.§0"X§.addChild(_loc6_);
                  loop0:
                  while(true)
                  {
                     this.§#"H§.push(_loc6_);
                     while(true)
                     {
                        §§push(param2);
                        if(_loc7_ || param2)
                        {
                           §§push(§§pop() + _loc6_.width * 1.55);
                           if(!(_loc8_ && param2))
                           {
                              addr219:
                              §§push(Number(§§pop()));
                           }
                           param2 = §§pop();
                           continue;
                        }
                        §§goto(addr219);
                     }
                     loop9:
                     while(true)
                     {
                        if(!(_loc7_ || param1))
                        {
                           continue loop0;
                        }
                        _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§0!P§(_loc4_);
                        loop10:
                        while(!(_loc8_ && this))
                        {
                           if(!_loc8_)
                           {
                              loop11:
                              while(_loc6_.Textfield_ME_Score != null)
                              {
                                 if(!(_loc8_ && param2))
                                 {
                                    if(!(_loc7_ || param3))
                                    {
                                       continue loop9;
                                    }
                                    addr70:
                                    if(!(_loc8_ && param2))
                                    {
                                       _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]L§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§="'§(_loc4_);
                                       addr92:
                                       if(_loc8_)
                                       {
                                          continue loop10;
                                       }
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          _loc6_.buttonMode = true;
                                          addr165:
                                          addr187:
                                          while(_loc7_ || this)
                                          {
                                             if(_loc6_.Textfield_CollectedStars != null)
                                             {
                                                while(!_loc8_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§[!a§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§3W§(_loc4_);
                                                      break loop10;
                                                   }
                                                   §§goto(addr221);
                                                }
                                                continue;
                                                addr141:
                                             }
                                             while(true)
                                             {
                                                if(_loc6_.Textfield_Score != null)
                                                {
                                                   continue loop9;
                                                }
                                                continue loop11;
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc6_.addEventListener(MouseEvent.CLICK,this.§"!H§);
                                             continue loop4;
                                             §§goto(addr165);
                                          }
                                       }
                                    }
                                    §§goto(addr96);
                                 }
                                 §§goto(addr92);
                              }
                              §§goto(addr240);
                           }
                           §§goto(addr141);
                        }
                        while(true)
                        {
                           §§goto(addr96);
                           §§goto(addr126);
                        }
                        addr126:
                     }
                  }
               }
               §§goto(addr187);
            }
            addr240:
            return param2;
         }
         §§goto(addr31);
      }
      
      private function §<!e§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.§<"0§)
            {
               if(!_loc3_)
               {
                  this.§2" §(this.§[C§[param1.target]);
               }
            }
         }
      }
      
      private function §"!H§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(_loc4_)
         {
            §§push(this.§<"0§);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr38:
                     if(!(param1.currentTarget is MovieClip))
                     {
                        return;
                     }
                     if(!_loc3_)
                     {
                        _loc2_ = MovieClip(param1.currentTarget);
                        addr41:
                        if(!(_loc3_ && this))
                        {
                           addr66:
                           if(this.§ u§ != this.§;"&§[_loc2_])
                           {
                              if(_loc4_)
                              {
                                 this.§2" §(this.§;"&§[_loc2_]);
                                 if(_loc3_)
                                 {
                                    addr111:
                                    mNextState = §9"@§.STATE_NAME;
                                 }
                              }
                              §§goto(addr115);
                           }
                           else
                           {
                              if(this.§;"&§[_loc2_] < LevelManager.§0"5§())
                              {
                                 if(_loc4_)
                                 {
                                    LevelManager.§,m§ = this.§;"&§[_loc2_];
                                    if(!_loc4_)
                                    {
                                    }
                                    addr115:
                                    return;
                                 }
                              }
                              §§goto(addr111);
                           }
                        }
                        §§goto(addr111);
                     }
                  }
                  §§goto(addr66);
               }
               §§goto(addr111);
            }
            §§goto(addr38);
         }
         §§goto(addr41);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() != §+d§.STATE_STATUS_RUNNING)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr102);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr103:
                  }
               }
               loop1:
               while(true)
               {
                  this.§5!>§();
                  loop2:
                  while(true)
                  {
                     this.§&b§();
                     while(mNextState.length > 0)
                     {
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                        if(_loc4_)
                        {
                           continue loop2;
                        }
                     }
                     addr47:
                     return §+d§.STATE_STATUS_RUNNING;
                  }
               }
               return §+d§.STATE_STATUS_COMPLETED;
            }
            §§goto(addr102);
         }
         addr102:
         return _loc2_;
      }
      
      private function §&b§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() >= this.§#"H§.length)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(this.§#"H§);
                              addr136:
                              loop2:
                              while(!_loc4_)
                              {
                                 §§push(_loc1_);
                                 while(true)
                                 {
                                    §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                    §§push(_loc1_);
                                    addr84:
                                    continue loop2;
                                    if(_loc4_ && this)
                                    {
                                       continue;
                                    }
                                    if(_loc4_ && this)
                                    {
                                       continue loop1;
                                    }
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§pop()[§§pop()].y = _loc2_ / 1000 * -200;
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc3_ || _loc2_)
                                             {
                                                _loc1_++;
                                                while(true)
                                                {
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         break;
                                                      }
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(1000);
                                                         addr194:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop24:
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  addr197:
                                                                  _loc2_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     addr161:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§#"H§);
                                                                        break loop2;
                                                                     }
                                                                  }
                                                                  addr198:
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  addr216:
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!(_loc3_ || _loc1_))
                                                                     {
                                                                        continue loop24;
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        if(§§pop() > 1000)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        §§goto(addr161);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr197);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr198);
                                                }
                                                continue loop0;
                                                addr57:
                                             }
                                             §§goto(addr216);
                                          }
                                          addr172:
                                          while(true)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(this.§#"H§);
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   continue loop1;
                                                }
                                                addr179:
                                                addr152:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(§§pop() * 0.55);
                                                            break;
                                                         }
                                                         addr259:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr260:
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               addr261:
                                                               while(true)
                                                               {
                                                                  §§push(Number(Math.abs(_loc2_)));
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(!_loc3_)
                                                      {
                                                         §§goto(addr260);
                                                         §§goto(addr261);
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr261);
                                                }
                                                §§goto(addr214);
                                             }
                                          }
                                       }
                                       addr113:
                                    }
                                    while(true)
                                    {
                                       §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                                       §§goto(addr172);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr165);
                                 §§goto(addr161);
                              }
                              §§goto(addr179);
                           }
                        }
                        while(true)
                        {
                           §§push(this.§#"H§);
                           if(_loc3_ || _loc2_)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr84);
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr136);
                           §§goto(addr139);
                        }
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr57);
               }
               else
               {
                  §§push(this.§0"X§.x + this.§#"H§[_loc1_].x - AngryBirdsFP11.§'!m§ / 2);
               }
               §§goto(addr259);
            }
            §§goto(addr194);
         }
      }
      
      private function §5!>§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc3_))
            {
               if(_loc3_ || _loc2_)
               {
                  if(!_loc4_)
                  {
                     §§push(this.§ "9§);
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(§§pop() >= §§pop().length)
                           {
                              if(_loc3_ || this)
                              {
                                 this.§-^§ = this.§0"X§.x;
                              }
                              if(!_loc4_)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          break;
                                       }
                                       loop1:
                                       while(true)
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             §§push(-this.§0"X§.x);
                                             if(_loc3_)
                                             {
                                                §§push(800);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   loop5:
                                                   while(!_loc4_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§push(this.§#"H§);
                                                         loop6:
                                                         for(; !_loc4_; §§push(this.§#"H§),if(_loc4_ && _loc1_)
                                                         {
                                                            continue;
                                                         },§§goto(addr229))
                                                         {
                                                            §§push(_loc1_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() <= §§pop()[§§pop()].x);
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr292:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                           }
                                                                           addr292:
                                                                        }
                                                                        else
                                                                        {
                                                                           loop8:
                                                                           while(§§pop())
                                                                           {
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       loop12:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          addr94:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             §§push(this.§ "9§);
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() >= §§pop().length)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§push(this.§ "9§);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§push(_loc1_);
                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                         {
                                                                                                            §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                            addr117:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(!(_loc4_ && _loc1_))
                                                                                                                  {
                                                                                                                     break loop8;
                                                                                                                  }
                                                                                                                  addr362:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr294:
                                                                                                                     loop22:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        addr296:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§ "9§);
                                                                                                                           addr298:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() >= §§pop().length)
                                                                                                                              {
                                                                                                                                 if(_loc4_ && _loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 §§push(this.§ "9§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_);
                                                                                                                                    addr310:
                                                                                                                                    while(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(this.§ "9§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc2_);
                                                                                                                                 }
                                                                                                                                 addr324:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                 addr328:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc2_++;
                                                                                                                                    continue loop22;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     if(_loc3_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(_loc3_ || this)
                                                                                                                           {
                                                                                                                              _loc2_++;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    continue loop12;
                                                                                                                                 }
                                                                                                                                 addr387:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§-^§);
                                                                                                                                    addr332:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       break loop5;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr129:
                                                                                                                           }
                                                                                                                           break loop2;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr294);
                                                                                                                        }
                                                                                                                        addr318:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr293:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§-^§);
                                                                                                                           if(_loc3_ || _loc1_)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              §§push(-§§pop());
                                                                                                                           }
                                                                                                                           if(!(_loc4_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(_loc3_ || this)
                                                                                                                              {
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              addr369:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(800);
                                                                                                                                 addr370:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    addr371:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§#"H§);
                                                                                                                                       addr373:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc1_);
                                                                                                                                          addr374:
                                                                                                                                          addr359:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                                                             if(_loc3_ || this)
                                                                                                                                             {
                                                                                                                                                addr385:
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                addr386:
                                                                                                                                                §§pop();
                                                                                                                                                §§goto(addr387);
                                                                                                                                             }
                                                                                                                                             §§goto(addr386);
                                                                                                                                          }
                                                                                                                                          addr359:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             break loop2;
                                                                                                                                          }
                                                                                                                                          continue loop2;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           §§goto(addr292);
                                                                                                                        }
                                                                                                                        addr293:
                                                                                                                     }
                                                                                                                     §§goto(addr332);
                                                                                                                  }
                                                                                                                  addr159:
                                                                                                               }
                                                                                                               §§goto(addr318);
                                                                                                            }
                                                                                                            addr117:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr149:
                                                                                                            if(_loc3_ || _loc2_)
                                                                                                            {
                                                                                                               §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                               §§goto(addr159);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr310);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr139:
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               §§goto(addr149);
                                                                                                               §§push(_loc2_);
                                                                                                            }
                                                                                                            §§goto(addr324);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr309);
                                                                                                   }
                                                                                                   §§goto(addr117);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(this.§ "9§);
                                                                                                }
                                                                                                §§goto(addr139);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc1_++;
                                                                              addr89:
                                                                              while(_loc4_)
                                                                              {
                                                                                 §§goto(addr328);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           addr246:
                                                                        }
                                                                        §§goto(addr293);
                                                                     }
                                                                     §§goto(addr385);
                                                                  }
                                                                  §§goto(addr386);
                                                               }
                                                               §§goto(addr292);
                                                               addr229:
                                                               §§push(_loc1_);
                                                               if(_loc4_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop() > §§pop()[§§pop()].x);
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr246);
                                                                     }
                                                                     §§goto(addr359);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr292);
                                                                  }
                                                               }
                                                               if(!(_loc3_ || this))
                                                               {
                                                                  §§goto(addr374);
                                                               }
                                                               §§goto(addr359);
                                                               §§push(§§pop() < §§pop()[§§pop()].x);
                                                            }
                                                         }
                                                         addr335:
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr338);
                                                            §§push(_loc1_);
                                                         }
                                                         §§goto(addr373);
                                                      }
                                                      §§goto(addr371);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr335);
                                                   }
                                                   addr262:
                                                }
                                                §§goto(addr370);
                                             }
                                             §§goto(addr262);
                                          }
                                          while(true)
                                          {
                                             §§push(0);
                                             addr361:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                §§goto(addr362);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr129);
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr89);
                           }
                           else
                           {
                              §§push(-this.§0"X§.x);
                           }
                           §§goto(addr369);
                        }
                        §§goto(addr298);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr361);
               }
               §§goto(addr296);
            }
            §§goto(addr94);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.deActivate();
         }
         while(true)
         {
            §?l§.§'h§.clearLevel();
            while(!_loc2_)
            {
               (§2"@§.getItemByName("Button_Back") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            §§push("BACK");
            if(!_loc7_)
            {
               §§push(_loc4_);
               if(!(_loc7_ && param3))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc7_)
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                        }
                        §§goto(addr284);
                     }
                     else
                     {
                        §§goto(addr221);
                     }
                  }
                  else
                  {
                     §§push("PREV");
                     if(_loc6_)
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc7_ && this))
                              {
                                 addr221:
                                 §§push(1);
                                 if(_loc6_ || param1)
                                 {
                                 }
                                 §§goto(addr284);
                              }
                              else
                              {
                                 §§goto(addr259);
                              }
                           }
                           else
                           {
                              §§push("NEXT");
                              if(!(_loc7_ && this))
                              {
                                 §§push(_loc4_);
                                 if(_loc6_ || param3)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          addr259:
                                          §§push(2);
                                          if(!(_loc6_ || param3))
                                          {
                                             addr279:
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr270:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr284:
                                          loop1:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §@"M§.§3"C§("Menu_Back");
                                                if(!(_loc7_ && param1))
                                                {
                                                   addr27:
                                                   mNextState = §5!+§.STATE_NAME;
                                                   if(_loc6_ || param3)
                                                   {
                                                      break;
                                                   }
                                                   addr103:
                                                   break;
                                                }
                                                addr169:
                                                while(true)
                                                {
                                                   AngryBirdsFP11.§>m§.§=-§();
                                                   if(!_loc6_)
                                                   {
                                                      break loop1;
                                                   }
                                                   if(!(_loc6_ || param3))
                                                   {
                                                      continue;
                                                   }
                                                   addr161:
                                                   if(true)
                                                   {
                                                      break loop1;
                                                   }
                                                   addr163:
                                                   break loop1;
                                                   addr163:
                                                }
                                                break;
                                                addr169:
                                                break;
                                             case 1:
                                                §@"M§.§3"C§("Menu_Confirm");
                                                if(_loc6_)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr27);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§<"0§);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§push((_loc4_ = this).§ u§);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                               }
                                                               var _loc5_:* = §§pop();
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  _loc4_.§ u§ = _loc5_;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  this.§2" §(this.§ u§);
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§goto(addr103);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr161);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr181:
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                            §§goto(addr181);
                                                         }
                                                         §§goto(addr103);
                                                      }
                                                      else
                                                      {
                                                         addr112:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               §§push((_loc4_ = this).§ u§);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               _loc5_ = §§pop();
                                                               if(_loc6_)
                                                               {
                                                                  _loc4_.§ u§ = _loc5_;
                                                               }
                                                               if(!_loc7_)
                                                               {
                                                                  this.§2" §(this.§ u§);
                                                                  if(_loc6_ || param3)
                                                                  {
                                                                     §§goto(addr181);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr169);
                                                               §§goto(addr163);
                                                            }
                                                            §§goto(addr181);
                                                         }
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                }
                                                break;
                                             case 2:
                                                §@"M§.§3"C§("Menu_Confirm");
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr112);
                                                   §§push(this.§<"0§);
                                                }
                                                §§goto(addr161);
                                             case 3:
                                                §@"M§.§3"C§("Menu_Confirm");
                                                §§goto(addr169);
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr284);
                                    if(_loc6_ || this)
                                    {
                                       §§goto(addr279);
                                    }
                                 }
                              }
                              §§goto(addr270);
                           }
                        }
                     }
                     §§goto(addr270);
                  }
                  §§goto(addr284);
               }
            }
            §§goto(addr270);
         }
         §§goto(addr259);
      }
      
      private function §2" §(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§<"0§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc5_)
               {
                  if(§§pop() > this.§#"H§.length - 1)
                  {
                     continue;
                  }
                  §§push(param1);
                  if(_loc5_)
                  {
                     if(§§pop() < 0)
                     {
                        if(_loc5_)
                        {
                           addr43:
                           §§push(0);
                           if(_loc5_)
                           {
                              param1 = §§pop();
                              loop1:
                              while(true)
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    if(!(_loc5_ || this))
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                              addr99:
                              §§push(-§§pop()[param1].x);
                              if(_loc5_ || _loc2_)
                              {
                                 addr116:
                                 §§push(§§pop() + this.§ §);
                                 if(_loc5_)
                                 {
                                    addr115:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc2_:* = §§pop();
                                 §§push(this.§0"X§.x - _loc2_);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc4_:*;
                                 §§push(_loc4_ = Number(Math.abs(_loc3_)));
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(400);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             addr173:
                                             §§push(§§pop());
                                             if(_loc5_)
                                             {
                                                _loc4_ = §§pop();
                                                if(_loc5_)
                                                {
                                                   §§push(§ !p§);
                                                   if(!_loc6_)
                                                   {
                                                      addr182:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         addr190:
                                                         §§push(Number(§§pop()));
                                                         if(!_loc6_)
                                                         {
                                                            addr193:
                                                            addr194:
                                                            §§push(_loc4_ = §§pop());
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                            }
                                                            addr213:
                                                            _loc4_ = §§pop();
                                                            if(!_loc6_)
                                                            {
                                                               addr290:
                                                               addr288:
                                                               if(this.§&!i§ != null)
                                                               {
                                                                  addr294:
                                                                  this.§&!i§.stop();
                                                                  addr295:
                                                                  addr292:
                                                               }
                                                               this.§&!i§ = §0W§.§&"5§.§]!r§(this.§0"X§,{"x":_loc2_},null,_loc4_,§0W§.§'I§);
                                                               addr251:
                                                               this.§&!i§.onComplete = this.§5!=§;
                                                               addr287:
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§push(this.§&!i§);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§pop().play();
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!(_loc6_ && _loc2_))
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§goto(addr295);
                                                                                 }
                                                                                 return;
                                                                                 addr247:
                                                                              }
                                                                           }
                                                                           §§goto(addr287);
                                                                        }
                                                                        §§goto(addr290);
                                                                     }
                                                                     §§goto(addr294);
                                                                  }
                                                                  §§goto(addr251);
                                                                  addr271:
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                            §§goto(addr271);
                                                         }
                                                         if(§§pop() > 1)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§goto(addr213);
                                                               §§push(Number(1));
                                                            }
                                                            §§goto(addr247);
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                      §§goto(addr193);
                                                   }
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr190);
                                             }
                                             §§goto(addr182);
                                          }
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr115);
                              addr46:
                           }
                           else
                           {
                              addr91:
                              while(true)
                              {
                                 param1 = §§pop();
                              }
                              addr91:
                           }
                           while(true)
                           {
                              §§goto(addr32);
                           }
                        }
                        §§goto(addr46);
                     }
                     §§goto(addr19);
                  }
                  §§goto(addr43);
               }
               §§goto(addr91);
            }
         }
         §§goto(addr60);
      }
      
      private function §5!=§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() >= this.§ "9§.length)
               {
                  if(!(_loc3_ && this))
                  {
                     if(!(_loc2_ || _loc3_))
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        addr94:
                        if(!_loc2_)
                        {
                           addr109:
                        }
                        _loc1_++;
                        continue;
                     }
                     if(!_loc3_)
                     {
                        this.§<"0§ = false;
                        break;
                     }
                     addr106:
                     this.§ "9§[_loc1_].gotoAndStop("Selected");
                     addr103:
                     §§goto(addr109);
                  }
                  break;
               }
               addr100:
               if(_loc1_ == this.§ u§)
               {
                  §§goto(addr103);
               }
               else
               {
                  §§push(this.§ "9§);
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(_loc1_);
                     if(_loc2_)
                     {
                        §§pop()[§§pop()].gotoAndStop("UnSelected");
                        §§goto(addr94);
                     }
                     else
                     {
                        §§goto(addr106);
                     }
                  }
                  else
                  {
                     §§goto(addr106);
                  }
                  §§goto(addr106);
               }
               §§goto(addr106);
            }
            §§goto(addr100);
         }
      }
   }
}
