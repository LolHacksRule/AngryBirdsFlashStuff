package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §-!0§.§1^§;
   import §-!0§.§4!N§;
   import §1?§.§+!§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §9!h§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      private static const §%!V§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            STATE_NAME = "ChapterSelectionState";
            if(_loc2_)
            {
               §%!V§ = 0.5;
            }
         }
      }
      
      private var §`!S§:Sprite;
      
      private var §+Q§:§[!s§;
      
      private var §%q§:Array;
      
      private var §<!^§:Array;
      
      private var §9!Q§:int = 0;
      
      private var §5!M§:Number = 0;
      
      private var §,!P§:Number = 0;
      
      private var §"!A§:Dictionary;
      
      private var §5!Q§:Dictionary;
      
      private var §7!Z§:§0Y§ = null;
      
      private var §=!D§:Boolean = false;
      
      private var §"!'§:Number = 0;
      
      public function §9!h§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
            if(_loc2_)
            {
               §+!$§ = new §2U§(this);
               if(!(_loc1_ && _loc1_))
               {
                  §+!$§.init(§=!Z§.§;K§.Views.View_ChapterSelection[0]);
                  if(!(_loc1_ && _loc2_))
                  {
                     addr75:
                     this.§9;§();
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:§4!N§ = null;
         if(!(_loc6_ && _loc3_))
         {
            super.activate();
            if(_loc7_)
            {
               addr34:
               §'!V§.§1!2§.§-I§(false);
            }
            var _loc1_:int = 0;
            for each(_loc2_ in this.§%q§)
            {
               _loc3_ = §1^§.§?!0§(_loc1_);
               if(_loc7_ || this)
               {
                  if(_loc2_.Textfield_ME_Score != null)
                  {
                     if(_loc7_ || _loc1_)
                     {
                        _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]!-§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§<3§(_loc3_);
                        if(_loc7_ || _loc3_)
                        {
                           addr108:
                           if(_loc2_.Textfield_CollectedStars != null)
                           {
                              _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§!k§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§null §(_loc3_);
                              addr112:
                           }
                           if(_loc2_.Textfield_Score != null)
                           {
                              addr141:
                              _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§,!6§(_loc3_);
                              if(_loc6_ && _loc3_)
                              {
                                 continue;
                              }
                           }
                           _loc1_++;
                        }
                        continue;
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr108);
               }
               §§goto(addr112);
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function §9;§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§4!N§ = null;
         var _loc4_:String = null;
         if(_loc6_)
         {
            this.§+Q§ = §+!$§.getItemByName("Container_ChapterSelection") as §[!s§;
            if(_loc6_ || _loc1_)
            {
               this.§%q§ = [];
               if(_loc6_ || this)
               {
                  this.§<!^§ = [];
               }
            }
         }
         var _loc1_:* = Number(0);
         this.§`!S§ = new Sprite();
         if(!(_loc5_ && _loc1_))
         {
            this.§`!S§.y = AngryBirdsFP11.screenHeight / 2;
            if(!(_loc5_ && _loc3_))
            {
               this.§5!M§ = AngryBirdsFP11.screenWidth / 2;
            }
         }
         this.§`!S§.x = this.§5!M§;
         this.§+Q§.mClip.addChild(this.§`!S§);
         this.§5!Q§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §1^§.§9!d§())
         {
            _loc3_ = §1^§.§?!0§(_loc2_);
            if(_loc6_ || _loc3_)
            {
               §§push("MovieClip_");
               if(!_loc5_)
               {
                  §§push(§§pop() + _loc3_.menuImage);
               }
               _loc4_ = §§pop();
               if(!_loc5_)
               {
                  addr137:
                  §§push(this.§0!f§(_loc4_,_loc1_,_loc2_));
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc1_ = §§pop();
                  if(!(_loc6_ || _loc2_))
                  {
                     continue;
                  }
               }
               _loc2_++;
               continue;
            }
            §§goto(addr137);
         }
         if(_loc6_)
         {
            §§push(this.§0!f§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_));
            if(_loc6_ || this)
            {
               §§push(Number(§§pop()));
               if(!(_loc5_ && this))
               {
                  _loc1_ = §§pop();
                  if(_loc6_ || _loc2_)
                  {
                     _loc2_++;
                     if(_loc6_ || _loc1_)
                     {
                        addr206:
                        §§push(this.§0!f§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_));
                        if(!(_loc5_ && this))
                        {
                           addr218:
                           §§push(Number(§§pop()));
                        }
                        _loc1_ = §§pop();
                        if(!_loc5_)
                        {
                           this.§;!?§();
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr218);
         }
         §§goto(addr206);
      }
      
      private function §;!?§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = Number(0);
         if(!(_loc6_ && _loc1_))
         {
            this.§"!A§ = new Dictionary();
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.§%q§.length)
         {
            _loc1_ = §1F§.§"!_§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc5_ || _loc2_)
            {
               if(_loc4_ == this.§9!Q§)
               {
                  if(!_loc6_)
                  {
                     _loc2_.gotoAndStop("Selected");
                     if(!(_loc6_ && this))
                     {
                        addr83:
                        _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§%q§.length * _loc2_.width / 2;
                        _loc2_.y = (§+!$§.getItemByName("Button_Next") as §#!'§).y - _loc2_.height / 2;
                        this.§+Q§.mClip.addChild(_loc2_);
                        _loc2_.buttonMode = true;
                        this.§"!A§[_loc2_] = _loc4_;
                        addr72:
                     }
                     this.§<!^§.push(_loc2_);
                     §§push(_loc3_);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop() + _loc2_.width));
                     }
                     _loc3_ = §§pop();
                     if(_loc5_ || this)
                     {
                        _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!M§);
                        if(_loc5_)
                        {
                           addr163:
                           _loc4_++;
                        }
                        continue;
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr72);
               }
               else
               {
                  _loc2_.gotoAndStop("UnSelected");
                  if(!(_loc5_ || _loc1_))
                  {
                     continue;
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr163);
         }
         if(_loc5_ || _loc2_)
         {
            §§push(this.§%q§.length * _loc2_.width);
            if(!(_loc6_ && _loc1_))
            {
               §§push(§§pop() / 2);
               if(_loc5_)
               {
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(_loc6_)
                  {
                  }
                  addr201:
                  _loc3_ = §§pop();
                  if(!_loc6_)
                  {
                     (§+!$§.getItemByName("Button_Next") as §#!'§).x = AngryBirdsFP11.screenWidth / 2;
                     if(_loc5_)
                     {
                        (§+!$§.getItemByName("Button_Prev") as §#!'§).x = AngryBirdsFP11.screenWidth / 2;
                        if(!(_loc6_ && _loc1_))
                        {
                           (§+!$§.getItemByName("Button_Next") as §#!'§).x = (§+!$§.getItemByName("Button_Next") as §#!'§).x + (_loc3_ + 10);
                           addr233:
                           if(_loc5_)
                           {
                              addr261:
                              (§+!$§.getItemByName("Button_Prev") as §#!'§).x = (§+!$§.getItemByName("Button_Prev") as §#!'§).x - (_loc3_ + 10);
                           }
                        }
                        §§goto(addr261);
                     }
                     return;
                  }
                  §§goto(addr261);
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr201);
         }
         §§goto(addr233);
      }
      
      private function §0!f§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§4!N§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(!_loc8_)
         {
            if(§1F§.§"!6§(param1))
            {
               addr31:
               _loc4_ = §1^§.§?!0§(param3);
               (_loc6_ = new (_loc5_ = §1F§.§"!_§(param1))()).x = param2;
               if(_loc7_)
               {
                  this.§`!S§.addChild(_loc6_);
                  if(!(_loc8_ && param2))
                  {
                     this.§%q§.push(_loc6_);
                     §§push(param2);
                     if(!_loc8_)
                     {
                        §§push(§§pop() + _loc6_.width * 1.55);
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     param2 = §§pop();
                     if(_loc7_)
                     {
                        this.§5!Q§[_loc6_] = param3;
                        _loc6_.addEventListener(MouseEvent.CLICK,this.§9!&§);
                        _loc6_.buttonMode = true;
                        if(!_loc7_)
                        {
                        }
                        addr168:
                        _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]!-§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§<3§(_loc4_);
                        §§goto(addr183);
                     }
                     if(_loc6_.Textfield_CollectedStars != null)
                     {
                        _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§!k§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§null §(_loc4_);
                        if(!_loc7_)
                        {
                        }
                        addr183:
                        return param2;
                     }
                     if(_loc6_.Textfield_Score != null)
                     {
                        if(!(_loc8_ && param3))
                        {
                           addr137:
                           _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§,!6§(_loc4_);
                           if(_loc8_ && this)
                           {
                           }
                           §§goto(addr168);
                        }
                     }
                     if(_loc6_.Textfield_ME_Score != null)
                     {
                        if(!_loc7_)
                        {
                        }
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr137);
               }
            }
            §§goto(addr168);
         }
         §§goto(addr31);
      }
      
      private function §3!M§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!this.§=!D§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr43:
                  this.§<M§(this.§"!A§[param1.target]);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      private function §9!&§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(_loc4_ || param1)
         {
            §§push(this.§=!D§);
            if(!(_loc3_ && param1))
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr48:
                     if(!(param1.currentTarget is MovieClip))
                     {
                        return;
                     }
                     if(_loc4_ || _loc3_)
                     {
                        addr66:
                        _loc2_ = MovieClip(param1.currentTarget);
                        if(_loc4_ || param1)
                        {
                        }
                        §§goto(addr130);
                     }
                  }
                  if(this.§9!Q§ != this.§5!Q§[_loc2_])
                  {
                     if(!_loc3_)
                     {
                        this.§<M§(this.§5!Q§[_loc2_]);
                        if(_loc3_)
                        {
                           addr126:
                           mNextState = §?&§.STATE_NAME;
                        }
                     }
                  }
                  else if(this.§5!Q§[_loc2_] < §1^§.§9!d§())
                  {
                     if(!_loc3_)
                     {
                        §1^§.§<J§ = this.§5!Q§[_loc2_];
                        if(!_loc3_)
                        {
                           §§goto(addr126);
                        }
                     }
                  }
               }
               addr130:
               return;
            }
            §§goto(addr48);
         }
         §§goto(addr66);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  if(!_loc3_)
                  {
                     §§push(_loc2_);
                  }
                  else
                  {
                     addr68:
                     this.§>u§();
                     if(mNextState.length > 0)
                     {
                        return §;!!§.STATE_STATUS_COMPLETED;
                     }
                     return §;!!§.STATE_STATUS_RUNNING;
                  }
               }
               else
               {
                  this.§7!>§();
                  §§goto(addr68);
               }
               §§goto(addr68);
            }
            return §§pop();
         }
         §§goto(addr68);
      }
      
      private function §>u§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(§§pop() < this.§%q§.length)
            {
               §§push(this.§`!S§.x + this.§%q§[_loc1_].x - AngryBirdsFP11.screenWidth / 2);
               if(_loc3_)
               {
                  _loc2_ = Number(§§pop());
                  if(_loc3_ || _loc3_)
                  {
                     §§push(Number(Math.abs(_loc2_)));
                     if(!(_loc4_ && this))
                     {
                        _loc2_ = §§pop();
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(Number(§§pop() * 0.55));
                           if(_loc3_)
                           {
                              addr72:
                              _loc2_ = §§pop();
                              addr74:
                              if(_loc2_ > 1000)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(1000);
                                    if(!(_loc3_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    addr97:
                                    _loc2_ = Number(§§pop());
                                 }
                                 addr124:
                                 §§push(this.§%q§);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(_loc1_);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                       §§push(this.§%q§);
                                       if(!(_loc4_ && this))
                                       {
                                          addr157:
                                          §§push(_loc1_);
                                          if(_loc3_)
                                          {
                                             §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr189:
                                                this.§%q§[_loc1_].y = _loc2_ / 1000 * -200;
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                             }
                                             _loc1_++;
                                             continue loop0;
                                          }
                                       }
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr157);
                              }
                              §§push(this.§%q§);
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§push(_loc1_);
                                 if(_loc3_ || this)
                                 {
                                    §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr189);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr124);
               }
               §§goto(addr72);
            }
            return;
         }
      }
      
      private function §7!>§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               §§push(this.§<!^§);
               loop2:
               while(true)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     §§goto(addr303);
                  }
                  §§push(-this.§`!S§.x);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(800);
                     if(_loc4_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc4_)
                        {
                           addr40:
                           §§push(this.§%q§);
                           if(!_loc3_)
                           {
                              §§push(_loc1_);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() >= §§pop()[§§pop()].x);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             addr58:
                                             §§pop();
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(this.§"!'§);
                                                if(!_loc3_)
                                                {
                                                   §§push(-§§pop());
                                                   §§push(this.§%q§);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(§§pop() < §§pop()[§§pop()].x);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr93:
                                                            if(§§pop())
                                                            {
                                                               §§push(0);
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        §§push(this.§<!^§);
                                                                        if(_loc3_ && _loc2_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        if(§§pop() >= §§pop().length)
                                                                        {
                                                                           §§push(this.§<!^§);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(_loc1_);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr159:
                                                                                 §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                 §§push(-this.§`!S§.x);
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    addr174:
                                                                                    §§push(§§pop() + 800);
                                                                                    if(!(_loc3_ && _loc1_))
                                                                                    {
                                                                                       addr182:
                                                                                       §§push(this.§%q§);
                                                                                       if(!(_loc3_ && this))
                                                                                       {
                                                                                          addr191:
                                                                                          §§push(_loc1_);
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             addr199:
                                                                                             §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                addr210:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc4_ || _loc1_)
                                                                                                   {
                                                                                                      addr218:
                                                                                                      §§pop();
                                                                                                      addr228:
                                                                                                      addr225:
                                                                                                      addr224:
                                                                                                      addr221:
                                                                                                      if(-this.§"!'§ > this.§%q§[_loc1_].x)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      _loc1_++;
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr228);
                                                                                             }
                                                                                             §§goto(addr218);
                                                                                          }
                                                                                          §§goto(addr225);
                                                                                       }
                                                                                       §§goto(addr224);
                                                                                    }
                                                                                    §§goto(addr221);
                                                                                 }
                                                                                 §§goto(addr182);
                                                                              }
                                                                              loop5:
                                                                              while(true)
                                                                              {
                                                                                 §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    _loc2_++;
                                                                                    loop3:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(_loc3_ && _loc3_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§<!^§);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          if(§§pop() >= §§pop().length)
                                                                                          {
                                                                                             break loop3;
                                                                                          }
                                                                                          §§push(this.§<!^§);
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                             }
                                                                                             addr244:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr279:
                                                                                             §§push(_loc1_);
                                                                                          }
                                                                                          §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                          §§goto(addr218);
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    addr253:
                                                                                 }
                                                                                 §§goto(addr279);
                                                                              }
                                                                           }
                                                                           §§goto(addr244);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this.§<!^§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                 _loc2_++;
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr233:
                                                                                 §§goto(addr253);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr159);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr279);
                                                                     }
                                                                     break;
                                                                  }
                                                                  _loc2_ = §§pop();
                                                                  §§goto(addr233);
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            §§goto(addr159);
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                   §§goto(addr191);
                                                }
                                                §§goto(addr218);
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr93);
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr58);
                              }
                           }
                           §§goto(addr218);
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr40);
               }
               this.§"!'§ = this.§`!S§.x;
               addr303:
               return;
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
            if(!_loc1_)
            {
               §'!V§.§1!2§.clearLevel();
               if(_loc1_ && this)
               {
               }
               §§goto(addr51);
            }
            (§+!$§.getItemByName("Button_Back") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         addr51:
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            §§push("BACK");
            if(!_loc6_)
            {
               §§push(_loc4_);
               if(_loc7_ || param1)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(_loc6_ && param2)
                        {
                        }
                     }
                     else
                     {
                        addr209:
                        §§push(2);
                        if(_loc6_ && param3)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("PREV");
                     if(_loc7_)
                     {
                        §§push(_loc4_);
                        if(!_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§push(1);
                                 if(_loc6_ && param1)
                                 {
                                 }
                                 §§goto(addr229);
                              }
                              else
                              {
                                 §§goto(addr209);
                              }
                           }
                           else
                           {
                              §§push("NEXT");
                              if(!_loc6_)
                              {
                                 §§push(_loc4_);
                                 if(_loc6_ && param3)
                                 {
                                 }
                                 addr220:
                                 if(§§pop() === §§pop())
                                 {
                                    addr221:
                                    §§push(3);
                                    if(_loc6_)
                                    {
                                    }
                                    §§goto(addr229);
                                 }
                                 else
                                 {
                                    addr229:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §+!§.§4c§("Menu_Back");
                                          if(!(_loc6_ && param2))
                                          {
                                             mNextState = §#!@§.STATE_NAME;
                                             break;
                                          }
                                          addr132:
                                          break;
                                       case 1:
                                          §+!§.§4c§("Menu_Confirm");
                                          §§push(this.§=!D§);
                                          if(_loc7_ || param3)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push((_loc4_ = this).§9!Q§);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   var _loc5_:* = §§pop();
                                                   if(_loc7_)
                                                   {
                                                      _loc4_.§9!Q§ = _loc5_;
                                                   }
                                                   this.§<M§(this.§9!Q§);
                                                   if(_loc7_)
                                                   {
                                                      addr71:
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   addr78:
                                                   if(!this.§=!D§)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push((_loc4_ = this).§9!Q§);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         _loc5_ = §§pop();
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            _loc4_.§9!Q§ = _loc5_;
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            this.§<M§(this.§9!Q§);
                                                         }
                                                         break;
                                                      }
                                                      addr129:
                                                      AngryBirdsFP11.§`!d§.§!5§();
                                                      §§goto(addr132);
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr71);
                                          }
                                          §§goto(addr78);
                                       case 2:
                                          §+!§.§4c§("Menu_Confirm");
                                          §§goto(addr78);
                                       case 3:
                                          §+!§.§4c§("Menu_Confirm");
                                          if(!(_loc6_ && this))
                                          {
                                             §§goto(addr129);
                                          }
                                    }
                                    return;
                                    §§push(4);
                                 }
                                 §§goto(addr229);
                              }
                              addr219:
                              §§goto(addr220);
                              §§push(_loc4_);
                           }
                           §§goto(addr229);
                        }
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc6_ && param2))
                           {
                              §§goto(addr209);
                           }
                           §§goto(addr229);
                        }
                        else
                        {
                           §§goto(addr219);
                           §§push("FULLSCREEN_BUTTON");
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr219);
                  }
                  §§goto(addr229);
               }
               §§goto(addr220);
            }
            §§goto(addr219);
         }
         §§goto(addr209);
      }
      
      private function §<M§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc3_))
         {
            this.§=!D§ = true;
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() > this.§%q§.length - 1)
               {
                  if(_loc5_)
                  {
                     §§push(this.§%q§);
                     if(_loc5_)
                     {
                        §§push(§§pop().length - 1);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(int(§§pop()));
                           if(_loc5_ || param1)
                           {
                              param1 = §§pop();
                              addr58:
                           }
                           else
                           {
                              addr67:
                              if(§§pop() < 0)
                              {
                                 addr70:
                                 param1 = 0;
                                 addr69:
                                 if(_loc5_)
                                 {
                                    addr73:
                                    this.§9!Q§ = param1;
                                 }
                                 addr78:
                                 §§push(-this.§%q§[param1].x);
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr89:
                                    §§push(§§pop() + this.§5!M§);
                                    if(_loc5_)
                                    {
                                       addr94:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc2_:* = §§pop();
                                    §§push(this.§`!S§.x - _loc2_);
                                    if(!_loc6_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc3_:* = §§pop();
                                    var _loc4_:*;
                                    §§push(_loc4_ = Number(Math.abs(_loc3_)));
                                    §§push(400);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc5_)
                                          {
                                             §§push(§§pop());
                                             if(_loc5_ || this)
                                             {
                                                _loc4_ = §§pop();
                                                addr155:
                                                addr156:
                                                if(_loc5_)
                                                {
                                                   §§push(§%!V§);
                                                   if(!_loc6_)
                                                   {
                                                      addr151:
                                                      §§push(Number(§§pop() * §§pop()));
                                                      §§push(Number(§§pop() * §§pop()));
                                                   }
                                                }
                                                if(§§pop() > 1)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      addr161:
                                                      _loc4_ = Number(1);
                                                   }
                                                }
                                                §§push(this.§7!Z§);
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   if(§§pop() != null)
                                                   {
                                                      §§push(this.§7!Z§);
                                                      if(!_loc6_)
                                                      {
                                                         addr177:
                                                         §§pop().stop();
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            this.§7!Z§ = §@!T§.§`!t§.§8!"§(this.§`!S§,{"x":_loc2_},null,_loc4_,§@!T§.§2,§);
                                                            addr185:
                                                            §§push(this.§7!Z§);
                                                            if(!_loc6_)
                                                            {
                                                               §§pop().onComplete = this.§1q§;
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  addr225:
                                                                  this.§7!Z§.play();
                                                               }
                                                               return;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr225);
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr177);
                                             }
                                             _loc4_ = §§pop();
                                             if(_loc5_)
                                             {
                                                §§goto(addr155);
                                             }
                                             §§goto(addr161);
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr94);
                              }
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr58);
               }
               else
               {
                  §§push(param1);
                  if(_loc5_ || param1)
                  {
                     §§goto(addr67);
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr67);
         }
         §§goto(addr69);
      }
      
      private function §1q§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(true)
            {
               if(§§pop() >= this.§<!^§.length)
               {
                  if(_loc3_ || _loc1_)
                  {
                     addr100:
                     this.§=!D§ = false;
                     break;
                  }
                  break;
               }
               §§push(_loc1_);
               if(!(_loc3_ || _loc1_))
               {
                  continue;
               }
               if(§§pop() == this.§9!Q§)
               {
                  if(_loc3_)
                  {
                     §§push(this.§<!^§);
                     if(!_loc2_)
                     {
                        §§push(_loc1_);
                        if(_loc2_ && _loc2_)
                        {
                           addr75:
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           if(!(_loc2_ && this))
                           {
                              addr85:
                              _loc1_++;
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr100);
                           }
                           break;
                        }
                        §§pop()[§§pop()].gotoAndStop("Selected");
                        if(_loc2_)
                        {
                        }
                        §§goto(addr100);
                        §§goto(addr85);
                     }
                     else
                     {
                        addr74:
                        §§push(_loc1_);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr100);
               }
               else
               {
                  §§push(this.§<!^§);
               }
               §§goto(addr74);
               §§goto(addr100);
            }
            return;
         }
      }
   }
}
