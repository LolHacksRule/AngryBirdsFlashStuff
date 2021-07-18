package §1!F§
{
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §1?§.§+!§;
   import §1j§.§=q§;
   import §2!s§.§>!D§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §?!4§.§=Y§;
   import §@!X§.§7j§;
   import §]!q§.§=;§;
   import §^g§.§8!p§;
   import com.rovio.assets.§1F§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §-G§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionStateBS";
      
      private static const §%!V§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            STATE_NAME = "ChapterSelectionStateBS";
            if(!(_loc1_ && §-G§))
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
      
      private var § j§:Array = null;
      
      private var §7!Z§:§=Y§ = null;
      
      private var §=!D§:Boolean = false;
      
      private var §"!'§:Number = 0;
      
      public function §-G§(param1:Boolean, param2:String = "ChapterSelectionStateBS")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            if(_loc1_ || this)
            {
               §+!$§ = new §2U§(this);
               if(!(_loc2_ && this))
               {
                  addr59:
                  §+!$§.init(§=!Z§.§;K§.Views.View_ChapterSelectionBS[0]);
                  if(_loc1_)
                  {
                     addr69:
                     this.§9;§();
                  }
               }
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr69);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.activate();
            if(_loc1_)
            {
               §'!V§.§1!2§.§-I§(false);
               if(_loc2_ && _loc2_)
               {
               }
               §§goto(addr52);
            }
            §7j§.§&t§.§=!A§ = true;
         }
         addr52:
      }
      
      private function §9;§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§+Q§ = §+!$§.getItemByName("Container_ChapterSelection") as §[!s§;
            if(!_loc3_)
            {
               this.§%q§ = [];
               if(_loc3_)
               {
               }
               addr36:
               var _loc1_:* = Number(0);
               if(_loc4_)
               {
                  this.§`!S§ = new Sprite();
                  this.§`!S§.y = AngryBirdsFP11.screenHeight / 2;
                  if(!_loc3_)
                  {
                     this.§5!M§ = AngryBirdsFP11.screenWidth / 2;
                     if(!_loc3_)
                     {
                        this.§`!S§.x = this.§5!M§;
                     }
                     addr79:
                     this.§ j§ = new Array();
                     var _loc2_:* = 0;
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(this);
                        §§push("MovieClip_BS_PigForADay");
                        §§push(_loc1_);
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           §§push(§§pop());
                           if(!_loc3_)
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc2_ = §§pop();
                        }
                        _loc1_ = Number(§§pop().§0!f§(§§pop(),§§pop(),§§pop(),"levelOfDay"));
                        §§push(this);
                        §§push("MovieClip_BS_WhatsHot");
                        §§push(_loc1_);
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           if(_loc4_ || _loc1_)
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc2_ = §§pop();
                        }
                        §§push(Number(§§pop().§0!f§(§§pop(),§§pop(),§§pop(),"hot")));
                        if(!_loc3_)
                        {
                           _loc1_ = §§pop();
                           §§push(this);
                           §§push("MovieClip_BS_WhatsNew");
                           §§push(_loc1_);
                           §§push(_loc2_);
                           if(_loc4_ || _loc1_)
                           {
                              §§push(§§pop());
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              _loc2_ = §§pop();
                           }
                           §§push(§§pop().§0!f§(§§pop(),§§pop(),§§pop(),"latest"));
                           if(_loc4_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc4_ || _loc3_)
                              {
                                 _loc1_ = §§pop();
                                 if(_loc4_)
                                 {
                                    addr175:
                                    §§push(this);
                                    §§push("MovieClip_BS_RandomLevel");
                                    §§push(_loc1_);
                                    §§push(_loc2_);
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(§§pop());
                                       if(_loc4_ || _loc1_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       _loc2_ = §§pop();
                                    }
                                    §§push(§§pop().§0!f§(§§pop(),§§pop(),§§pop(),"random"));
                                    if(_loc4_)
                                    {
                                       addr211:
                                       _loc1_ = Number(§§pop());
                                       §§push(this);
                                       §§push("MovieClip_BS_BuildLevel");
                                       §§push(_loc1_);
                                       §§push(_loc2_);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          _loc2_ = §§pop();
                                       }
                                       §§push(Number(§§pop().§0!f§(§§pop(),§§pop(),§§pop(),"build")));
                                    }
                                    _loc1_ = §§pop();
                                    this.§;!?§();
                                 }
                                 return;
                              }
                              §§goto(addr211);
                           }
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr175);
                  }
                  this.§+Q§.mClip.addChild(this.§`!S§);
                  if(!_loc3_)
                  {
                     this.§5!Q§ = new Dictionary();
                  }
               }
               §§goto(addr79);
            }
            this.§<!^§ = [];
         }
         §§goto(addr36);
      }
      
      private function §;!?§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = Number(0);
         if(!_loc6_)
         {
            this.§"!A§ = new Dictionary();
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.§%q§.length)
         {
            _loc1_ = §1F§.§"!_§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§9!Q§)
            {
               if(_loc5_ || this)
               {
                  _loc2_.gotoAndStop("Selected");
               }
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§%q§.length * _loc2_.width / 2;
            _loc2_.y = (§+!$§.getItemByName("Button_Next") as §#!'§).y - _loc2_.height / 2;
            if(_loc5_ || _loc2_)
            {
               this.§+Q§.mClip.addChild(_loc2_);
               if(!(_loc6_ && _loc2_))
               {
                  _loc2_.buttonMode = true;
                  this.§"!A§[_loc2_] = _loc4_;
                  if(!(_loc5_ || this))
                  {
                     continue;
                  }
               }
               this.§<!^§.push(_loc2_);
            }
            §§push(_loc3_);
            if(!_loc6_)
            {
               §§push(Number(§§pop() + _loc2_.width));
            }
            _loc3_ = §§pop();
            if(_loc5_ || _loc2_)
            {
               _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!M§);
            }
            _loc4_++;
         }
         if(_loc5_)
         {
            §§push(this.§%q§.length * _loc2_.width);
            if(_loc5_)
            {
               §§push(§§pop() / 2);
               if(_loc5_ || _loc2_)
               {
                  addr186:
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
               if(_loc5_ || _loc2_)
               {
                  (§+!$§.getItemByName("Button_Next") as §#!'§).x = AngryBirdsFP11.screenWidth / 2;
                  if(!(_loc6_ && _loc2_))
                  {
                     (§+!$§.getItemByName("Button_Prev") as §#!'§).x = AngryBirdsFP11.screenWidth / 2;
                     if(!_loc6_)
                     {
                        (§+!$§.getItemByName("Button_Next") as §#!'§).x = (§+!$§.getItemByName("Button_Next") as §#!'§).x + (_loc3_ + 10);
                        if(_loc5_ || _loc3_)
                        {
                        }
                     }
                     §§goto(addr280);
                  }
                  (§+!$§.getItemByName("Button_Prev") as §#!'§).x = (§+!$§.getItemByName("Button_Prev") as §#!'§).x - (_loc3_ + 10);
               }
               §§goto(addr280);
            }
            §§goto(addr186);
         }
         addr280:
      }
      
      private function §0!f§(param1:String, param2:Number, param3:int, param4:String) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Class = null;
         var _loc6_:DisplayObject = null;
         if(!(_loc7_ && this))
         {
            if(§1F§.§"!6§(param1))
            {
               (_loc6_ = new (_loc5_ = §1F§.§"!_§(param1))()).x = param2;
               this.§`!S§.addChild(_loc6_);
               addr34:
               if(!(_loc7_ && this))
               {
                  §§push(this.§%q§);
                  if(_loc8_)
                  {
                     §§pop().push(_loc6_);
                     addr73:
                     §§push(param2);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + _loc6_.width * 1.55);
                        if(_loc8_)
                        {
                           addr93:
                           §§push(Number(§§pop()));
                        }
                        param2 = §§pop();
                        if(!_loc7_)
                        {
                           this.§5!Q§[_loc6_] = param3;
                           if(_loc7_)
                           {
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr93);
                  }
                  addr106:
                  this.§ j§[param3] = param4;
                  _loc6_.addEventListener(MouseEvent.CLICK,this.§9!&§);
                  §§goto(addr115);
               }
               §§goto(addr73);
            }
            addr115:
            return param2;
         }
         §§goto(addr34);
      }
      
      private function §3!M§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<M§(this.§"!A§[param1.currentTarget]);
         }
      }
      
      private function §9!&§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:* = null;
         if(!_loc5_)
         {
            §§push(this.§=!D§);
            if(_loc4_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     addr45:
                     if(!(param1.currentTarget is MovieClip))
                     {
                        return;
                     }
                     if(_loc5_ && _loc2_)
                     {
                     }
                     §§goto(addr68);
                  }
                  _loc2_ = MovieClip(param1.currentTarget);
                  if(!(_loc5_ && param1))
                  {
                     addr68:
                     if(this.§9!Q§ != this.§5!Q§[_loc2_])
                     {
                        if(!(_loc5_ && this))
                        {
                           this.§<M§(this.§5!Q§[_loc2_]);
                        }
                        else
                        {
                           addr144:
                        }
                        §§goto(addr170);
                     }
                     else
                     {
                        §§push(this.§ j§[this.§5!Q§[_loc2_]]);
                        if(!(_loc5_ && this))
                        {
                           _loc3_ = §§pop();
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              §§push("build");
                              if(_loc4_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §-!D§.§?5§("onOpenEditorSelected");
                                       if(_loc4_ || this)
                                       {
                                          §§goto(addr144);
                                       }
                                    }
                                    else
                                    {
                                       addr152:
                                    }
                                    §§goto(addr170);
                                 }
                                 else
                                 {
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       §§push("search");
                                       if(_loc4_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             §§goto(addr152);
                                          }
                                          else
                                          {
                                             addr155:
                                             if(_loc3_ == "playerOfWeek")
                                             {
                                                §§goto(addr170);
                                             }
                                             else
                                             {
                                                §=q§.§<!@§ = this.§ j§[this.§5!Q§[_loc2_]];
                                             }
                                             §§goto(addr170);
                                          }
                                       }
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr155);
                           }
                        }
                        §§goto(addr155);
                     }
                  }
                  §§goto(addr144);
               }
               addr170:
               return;
            }
            §§goto(addr45);
         }
         §§goto(addr68);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_)
         {
            if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
            {
               return _loc2_;
            }
            else
            {
               this.§7!>§();
               if(_loc4_ || _loc2_)
               {
                  this.§>u§();
               }
               if(mNextState.length > 0)
               {
                  if(_loc4_)
                  {
                     return §;!!§.STATE_STATUS_COMPLETED;
                  }
               }
               return §;!!§.STATE_STATUS_RUNNING;
            }
         }
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
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc4_)
                  {
                     _loc2_ = §§pop();
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     §§push(Number(Math.abs(_loc2_)));
                     if(!_loc4_)
                     {
                        addr50:
                        _loc2_ = §§pop();
                        if(_loc3_ || this)
                        {
                           addr59:
                           §§push(Number(_loc2_ * 0.55));
                           if(!_loc4_)
                           {
                              addr64:
                              _loc2_ = §§pop();
                              if(_loc3_)
                              {
                                 if(_loc2_ > 1000)
                                 {
                                    addr70:
                                    §§push(1000);
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    addr79:
                                    _loc2_ = Number(§§pop());
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 §§push(this.§%q§);
                                 if(_loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§pop()[§§pop()].scaleX = 1 - _loc2_ / 1000;
                                       if(_loc3_)
                                       {
                                          §§push(this.§%q§);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§push(_loc1_);
                                             if(_loc3_)
                                             {
                                                §§pop()[§§pop()].scaleY = 1 - _loc2_ / 1000;
                                                if(_loc3_ || this)
                                                {
                                                   addr139:
                                                   §§push(this.§%q§);
                                                   if(_loc3_)
                                                   {
                                                      addr143:
                                                      §§push(_loc1_);
                                                      if(_loc3_)
                                                      {
                                                         addr146:
                                                         §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                                         addr189:
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(this.§%q§);
                                                         }
                                                         _loc1_++;
                                                         continue loop0;
                                                      }
                                                      addr175:
                                                      §§pop()[§§pop()].y = _loc2_ / 1000 * -200;
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   §§goto(addr175);
                                                   §§push(_loc1_);
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr146);
                                          }
                                          §§goto(addr143);
                                       }
                                       §§goto(addr139);
                                    }
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr70);
                           }
                           §§goto(addr79);
                        }
                        break;
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr50);
               }
               §§goto(addr59);
            }
            return;
         }
      }
      
      private function §7!>§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
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
                     if(_loc3_ || _loc1_)
                     {
                        this.§"!'§ = this.§`!S§.x;
                     }
                     return;
                  }
                  §§push(-this.§`!S§.x);
                  if(!_loc4_)
                  {
                     §§push(800);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + §§pop());
                        §§push(this.§%q§);
                        if(!_loc4_)
                        {
                           §§push(_loc1_);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(§§pop() >= §§pop()[§§pop()].x);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          §§pop();
                                          §§push(-this.§"!'§);
                                          §§push(this.§%q§);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§push(_loc1_);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() < §§pop()[§§pop()].x);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   addr96:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         §§push(0);
                                                         if(_loc4_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         _loc2_ = §§pop();
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc3_)
                                                         {
                                                            §§push(this.§<!^§);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               if(§§pop() >= §§pop().length)
                                                               {
                                                                  §§push(this.§<!^§);
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§pop()[§§pop()].gotoAndStop("Selected");
                                                                        addr162:
                                                                        §§push(-this.§`!S§.x + 800);
                                                                        §§push(this.§%q§);
                                                                        if(_loc3_ || _loc1_)
                                                                        {
                                                                           addr177:
                                                                           §§push(_loc1_);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr180:
                                                                              §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr186:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr189:
                                                                                       §§pop();
                                                                                       addr206:
                                                                                       §§push(this.§"!'§);
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       if(§§pop() > this.§%q§[_loc1_].x)
                                                                                       {
                                                                                          if(_loc4_ && this)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          §§push(0);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          loop7:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§<!^§);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() >= §§pop().length)
                                                                                                {
                                                                                                   §§push(this.§<!^§);
                                                                                                   break;
                                                                                                }
                                                                                                §§push(this.§<!^§);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(_loc2_);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr253:
                                                                                                   §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                   break loop2;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                   _loc2_++;
                                                                                                   addr231:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             §§goto(addr253);
                                                                                             §§push(_loc1_);
                                                                                          }
                                                                                       }
                                                                                       break loop2;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr206);
                                                                     }
                                                                     §§goto(addr227);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§<!^§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr206);
                                                                     }
                                                                     §§goto(addr253);
                                                                  }
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                            §§goto(addr248);
                                                         }
                                                         break;
                                                      }
                                                      _loc2_ = §§pop();
                                                      §§goto(addr231);
                                                   }
                                                   §§goto(addr162);
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr96);
                                 }
                                 §§goto(addr186);
                              }
                           }
                        }
                        §§goto(addr189);
                     }
                  }
                  §§goto(addr162);
               }
               _loc1_++;
               continue loop0;
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            §§push("BACK");
            if(!_loc5_)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        addr120:
                        §§push(0);
                        if(_loc6_ || param2)
                        {
                        }
                     }
                     else
                     {
                        addr208:
                        §§push(3);
                        if(_loc6_ || this)
                        {
                        }
                     }
                     §§goto(addr221);
                  }
                  else
                  {
                     §§push("PREV");
                     if(_loc6_ || param1)
                     {
                        §§goto(addr137);
                     }
                     §§goto(addr206);
                  }
               }
               §§goto(addr145);
            }
            addr137:
            §§push(_loc4_);
            if(_loc6_ || param1)
            {
               addr145:
               if(§§pop() === §§pop())
               {
                  if(!(_loc5_ && param3))
                  {
                     §§push(1);
                     if(_loc6_ || param3)
                     {
                     }
                  }
                  else
                  {
                     §§goto(addr208);
                  }
                  §§goto(addr221);
               }
               else
               {
                  §§push("NEXT");
                  if(_loc6_ || param1)
                  {
                     §§push(_loc4_);
                     if(_loc6_ || this)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc5_ && param3))
                           {
                              §§push(2);
                              if(_loc6_ || param2)
                              {
                              }
                           }
                           else
                           {
                              §§goto(addr208);
                           }
                           §§goto(addr221);
                        }
                        else
                        {
                           addr206:
                           §§push("FULLSCREEN_BUTTON");
                           §§push(_loc4_);
                        }
                        §§goto(addr208);
                     }
                  }
                  §§goto(addr206);
               }
            }
            if(§§pop() === §§pop())
            {
               §§goto(addr208);
            }
            else
            {
               §§push(4);
            }
            addr221:
            switch(§§pop())
            {
               case 0:
                  §+!§.§4c§("Menu_Back");
                  if(_loc6_ || param1)
                  {
                     mNextState = §^z§.STATE_NAME;
                     if(_loc6_ || param2)
                     {
                        break;
                     }
                     addr64:
                     this.§<M§(this.§9!Q§ + 1);
                     if(_loc6_ || param1)
                     {
                        addr77:
                        break;
                     }
                     addr94:
                     break;
                  }
                  addr45:
                  this.§<M§(this.§9!Q§ - 1);
                  if(_loc6_ || param2)
                  {
                     break;
                  }
                  break;
               case 1:
                  §+!§.§4c§("Menu_Confirm");
                  §§goto(addr45);
               case 2:
                  §+!§.§4c§("Menu_Confirm");
                  if(_loc6_)
                  {
                     §§goto(addr64);
                  }
                  §§goto(addr77);
               case 3:
                  §+!§.§4c§("Menu_Confirm");
                  if(!(_loc5_ && param3))
                  {
                     AngryBirdsFP11.§`!d§.§!5§();
                     if(_loc5_)
                     {
                     }
                     break;
                  }
                  §§goto(addr94);
            }
            return;
         }
         §§goto(addr120);
      }
      
      private function §<M§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() > this.§%q§.length - 1)
               {
                  if(!_loc6_)
                  {
                     §§push(this.§%q§);
                     if(!_loc6_)
                     {
                        §§push(§§pop().length - 1);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(int(§§pop()));
                           if(_loc5_ || _loc3_)
                           {
                              param1 = §§pop();
                              if(_loc5_)
                              {
                                 addr79:
                                 if(this.§9!Q§ == param1)
                                 {
                                    if(!_loc6_)
                                    {
                                       this.§=!D§ = false;
                                       if(_loc5_ || _loc2_)
                                       {
                                          return;
                                       }
                                    }
                                    else
                                    {
                                       addr98:
                                       this.§=!D§ = true;
                                    }
                                    this.§9!Q§ = param1;
                                    addr106:
                                    §§push(-this.§%q§[param1].x);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       addr117:
                                       §§push(§§pop() + this.§5!M§);
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc2_:* = §§pop();
                                    §§push(this.§`!S§.x - _loc2_);
                                    if(_loc5_ || this)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc3_:* = §§pop();
                                    var _loc4_:*;
                                    §§push(_loc4_ = Number(Math.abs(_loc3_)));
                                    §§push(400);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(Number(§§pop()));
                                          §§push(Number(§§pop()));
                                          if(_loc5_ || param1)
                                          {
                                             _loc4_ = §§pop();
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(§%!V§);
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         addr213:
                                                         if((_loc4_ = §§pop()) > 1)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               addr219:
                                                               _loc4_ = Number(1);
                                                               if(_loc5_)
                                                               {
                                                                  addr222:
                                                                  §§push(this.§7!Z§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop() == null);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr242:
                                                                                 §§pop();
                                                                                 addr284:
                                                                                 addr243:
                                                                                 §§push(this.§7!Z§);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop().§6e§);
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       addr255:
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 §§pop().stop();
                                                                                 this.§7!Z§ = §>!D§.§-8§(this.§`!S§,{"x":_loc2_},null,_loc4_,§8!p§.easeOut);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(this.§7!Z§);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr316:
                                                                                       §§pop().addEventListener(§=;§.COMPLETE,this.§1q§);
                                                                                       §§goto(addr329);
                                                                                    }
                                                                                    §§goto(addr328);
                                                                                 }
                                                                                 §§goto(addr326);
                                                                              }
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 §§push(this.§7!Z§);
                                                                                 if(!(_loc6_ && _loc2_))
                                                                                 {
                                                                                    §§push(§=;§.COMPLETE);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§pop().removeEventListener(§§pop(),this.§1q§);
                                                                                       addr280:
                                                                                       §§push(this.§7!Z§);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr284);
                                                                                       }
                                                                                       §§goto(addr328);
                                                                                    }
                                                                                    §§goto(addr316);
                                                                                 }
                                                                                 addr328:
                                                                                 §§pop().play();
                                                                                 addr329:
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    addr326:
                                                                                    §§push(this.§7!Z§);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr280);
                                                                           }
                                                                           §§goto(addr284);
                                                                        }
                                                                        §§goto(addr255);
                                                                     }
                                                                  }
                                                                  §§goto(addr242);
                                                               }
                                                               §§goto(addr316);
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   §§goto(addr219);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr213);
                                 }
                                 §§goto(addr98);
                              }
                              else
                              {
                                 addr75:
                                 §§push(0);
                                 if(!_loc6_)
                                 {
                                    param1 = §§pop();
                                 }
                                 §§goto(addr79);
                              }
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr117);
                     }
                  }
                  §§goto(addr106);
               }
               else
               {
                  §§push(param1);
                  if(!(_loc6_ && param1))
                  {
                     §§push(0);
                     if(!(_loc6_ && this))
                     {
                        if(§§pop() < §§pop())
                        {
                           §§goto(addr75);
                        }
                     }
                     §§goto(addr79);
                  }
               }
            }
            §§goto(addr79);
         }
         §§goto(addr106);
      }
      
      private function §1q§(param1:§=;§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§7!Z§.removeEventListener(§=;§.COMPLETE,this.§1q§);
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(true)
            {
               if(§§pop() >= this.§<!^§.length)
               {
                  if(_loc4_ || param1)
                  {
                     break;
                  }
               }
               else
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(§§pop() == this.§9!Q§)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§push(this.§<!^§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(_loc2_);
                        if(_loc4_ || param1)
                        {
                           §§pop()[§§pop()].gotoAndStop("Selected");
                           if(_loc3_ && this)
                           {
                              §§goto(addr122);
                           }
                           else
                           {
                              addr122:
                           }
                           addr122:
                           continue loop0;
                        }
                     }
                     else
                     {
                        addr93:
                        §§push(_loc2_);
                     }
                     §§pop()[§§pop()].gotoAndStop("UnSelected");
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  §§push(this.§<!^§);
                  §§goto(addr93);
               }
               addr122:
               return;
            }
            this.§=!D§ = false;
            §§goto(addr122);
         }
      }
   }
}
