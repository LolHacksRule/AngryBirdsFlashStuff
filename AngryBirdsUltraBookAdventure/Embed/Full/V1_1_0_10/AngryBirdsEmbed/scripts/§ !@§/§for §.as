package § !@§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §%4§.§4!=§;
   import §%4§.§7-§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §1!-§.§2n§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   import com.rovio.assets.§]!>§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §for § extends §1Q§
   {
      
      public static const §>9§:String = "ChapterSelectionState";
      
      private static const §<m§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §>9§ = "ChapterSelectionState";
            if(!_loc1_)
            {
               addr29:
               §<m§ = 0.5;
            }
            return;
         }
         §§goto(addr29);
      }
      
      private var §7!$§:Sprite;
      
      private var §4=§:§4!=§;
      
      private var §6!=§:Array;
      
      private var §'N§:Array;
      
      private var §%$§:int = 0;
      
      private var §]K§:Number = 0;
      
      private var §<!!§:Number = 0;
      
      private var §2!M§:Dictionary;
      
      private var §,!!§:Dictionary;
      
      private var §8!K§:§ !=§ = null;
      
      private var §9!5§:Boolean = false;
      
      private var §,!§:Number = 0;
      
      public function §for §(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            if(_loc2_)
            {
               §]F§ = new §4!,§(this);
               if(_loc2_ || this)
               {
                  addr60:
                  §]F§.init(§5A§.§;L§.Views.View_ChapterSelection[0]);
                  if(!(_loc1_ && this))
                  {
                     addr75:
                     this.§<P§();
                  }
               }
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr75);
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:§2n§ = null;
         if(_loc7_)
         {
            super.activate();
            if(_loc7_)
            {
               addr29:
               §=w§.§ o§.§7!E§(false);
            }
            var _loc1_:int = 0;
            for each(_loc2_ in this.§6!=§)
            {
               _loc3_ = §[4§.§2A§(_loc1_);
               if(_loc7_)
               {
                  if(_loc2_.Textfield_ME_Score != null)
                  {
                     if(!(_loc6_ && _loc1_))
                     {
                        _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§=Z§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§]P§(_loc3_);
                     }
                  }
                  if(_loc2_.Textfield_CollectedStars != null)
                  {
                     _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§8!,§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§-"§(_loc3_);
                     if(_loc7_)
                     {
                        addr112:
                        if(_loc2_.Textfield_Score != null)
                        {
                           if(!(_loc7_ || _loc2_))
                           {
                              continue;
                           }
                           addr133:
                           _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§>U§(_loc3_);
                           if(_loc6_ && _loc3_)
                           {
                              continue;
                           }
                        }
                     }
                     _loc1_++;
                     continue;
                  }
                  §§goto(addr112);
               }
               §§goto(addr133);
            }
            return;
         }
         §§goto(addr29);
      }
      
      private function §<P§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§2n§ = null;
         var _loc4_:String = null;
         if(_loc6_ || this)
         {
            this.§4=§ = §]F§.getItemByName("Container_ChapterSelection") as §4!=§;
            if(_loc6_ || _loc2_)
            {
               this.§6!=§ = [];
               if(!_loc5_)
               {
                  addr49:
                  this.§'N§ = [];
               }
               var _loc1_:* = Number(0);
               this.§7!$§ = new Sprite();
               if(!_loc5_)
               {
                  this.§7!$§.y = AngryBirdsFP11.screenHeight / 2;
                  if(_loc6_ || _loc3_)
                  {
                     this.§]K§ = AngryBirdsFP11.screenWidth / 2;
                     if(_loc6_ || this)
                     {
                        addr88:
                        this.§7!$§.x = this.§]K§;
                        if(!_loc5_)
                        {
                           this.§4=§.mClip.addChild(this.§7!$§);
                           if(_loc5_ && _loc1_)
                           {
                           }
                        }
                        §§goto(addr122);
                     }
                     this.§,!!§ = new Dictionary();
                  }
                  addr122:
                  var _loc2_:int = 0;
                  while(_loc2_ < §[4§.§99§())
                  {
                     _loc3_ = §[4§.§2A§(_loc2_);
                     if(_loc6_ || _loc1_)
                     {
                        §§push("MovieClip_");
                        if(_loc6_ || _loc1_)
                        {
                           §§push(§§pop() + _loc3_.menuImage);
                        }
                        _loc4_ = §§pop();
                        if(!_loc5_)
                        {
                           §§push(this.§!m§(_loc4_,_loc1_,_loc2_));
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc1_ = §§pop();
                           if(_loc5_ && _loc3_)
                           {
                              continue;
                           }
                        }
                     }
                     _loc2_++;
                  }
                  if(_loc6_ || _loc3_)
                  {
                     §§push(this.§!m§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_));
                     if(!_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc5_)
                        {
                           _loc1_ = §§pop();
                           if(!(_loc5_ && _loc1_))
                           {
                              _loc2_++;
                           }
                           §§goto(addr233);
                        }
                        _loc1_ = §§pop();
                        if(_loc5_)
                        {
                        }
                        §§goto(addr233);
                     }
                     §§goto(addr229);
                  }
                  addr233:
                  if(_loc6_ || _loc1_)
                  {
                     §§push(this.§!m§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_));
                     if(!_loc5_)
                     {
                        addr229:
                        §§push(Number(§§pop()));
                     }
                  }
                  this.§,P§();
                  return;
               }
               §§goto(addr88);
            }
         }
         §§goto(addr49);
      }
      
      private function §,P§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = Number(0);
         if(!(_loc5_ && _loc1_))
         {
            this.§2!M§ = new Dictionary();
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.§6!=§.length)
         {
            _loc1_ = §]!>§.§8!@§("Button_Dot");
            _loc2_ = new _loc1_();
            if(!_loc5_)
            {
               if(_loc4_ == this.§%$§)
               {
                  if(!_loc5_)
                  {
                     _loc2_.gotoAndStop("Selected");
                     addr65:
                     _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§6!=§.length * _loc2_.width / 2;
                     _loc2_.y = (§]F§.getItemByName("Button_Next") as §7-§).y - _loc2_.height / 2;
                     this.§4=§.mClip.addChild(_loc2_);
                     if(_loc6_ || _loc1_)
                     {
                        _loc2_.buttonMode = true;
                        if(_loc5_)
                        {
                           continue;
                        }
                        this.§2!M§[_loc2_] = _loc4_;
                        this.§'N§.push(_loc2_);
                        if(_loc6_ || this)
                        {
                           §§push(_loc3_);
                           if(_loc6_)
                           {
                              §§push(Number(§§pop() + _loc2_.width));
                           }
                           _loc3_ = §§pop();
                           if(!(_loc6_ || _loc3_))
                           {
                              continue;
                           }
                           addr153:
                           _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§80§);
                        }
                     }
                     _loc4_++;
                     continue;
                  }
                  §§goto(addr153);
               }
               else
               {
                  _loc2_.gotoAndStop("UnSelected");
               }
            }
            §§goto(addr65);
         }
         if(_loc6_ || _loc2_)
         {
            §§push(this.§6!=§.length * _loc2_.width);
            if(_loc6_)
            {
               §§push(§§pop() / 2);
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr189);
               }
               §§goto(addr201);
            }
            addr189:
            §§push(§§pop() + _loc2_.width * 1.5);
            if(!(_loc5_ && this))
            {
               addr201:
               §§push(Number(§§pop()));
            }
            _loc3_ = §§pop();
            if(!(_loc5_ && this))
            {
               (§]F§.getItemByName("Button_Next") as §7-§).x = AngryBirdsFP11.screenWidth / 2;
               if(_loc6_)
               {
                  addr222:
                  (§]F§.getItemByName("Button_Prev") as §7-§).x = AngryBirdsFP11.screenWidth / 2;
                  if(!_loc6_)
                  {
                  }
                  §§goto(addr262);
               }
               (§]F§.getItemByName("Button_Next") as §7-§).x = (§]F§.getItemByName("Button_Next") as §7-§).x + (_loc3_ + 10);
               if(_loc5_)
               {
               }
               §§goto(addr262);
            }
            addr262:
            (§]F§.getItemByName("Button_Prev") as §7-§).x = (§]F§.getItemByName("Button_Prev") as §7-§).x - (_loc3_ + 10);
            return;
         }
         §§goto(addr222);
      }
      
      private function §!m§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§2n§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(!(_loc7_ && param1))
         {
            if(§]!>§.§ in§(param1))
            {
               addr37:
               _loc4_ = §[4§.§2A§(param3);
               (_loc6_ = new (_loc5_ = §]!>§.§8!@§(param1))()).x = param2;
               if(!_loc7_)
               {
                  this.§7!$§.addChild(_loc6_);
                  this.§6!=§.push(_loc6_);
                  §§push(param2);
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop() + _loc6_.width * 1.55);
                     if(!(_loc7_ && param1))
                     {
                        addr94:
                        §§push(Number(§§pop()));
                     }
                     param2 = §§pop();
                     this.§,!!§[_loc6_] = param3;
                     _loc6_.addEventListener(MouseEvent.CLICK,this.§'B§);
                     if(!_loc7_)
                     {
                        _loc6_.buttonMode = true;
                        if(_loc8_)
                        {
                           if(_loc6_.Textfield_CollectedStars != null)
                           {
                              if(!(_loc7_ && param3))
                              {
                                 _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§8!,§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§-"§(_loc4_);
                              }
                              §§goto(addr162);
                           }
                           if(_loc6_.Textfield_Score != null)
                           {
                           }
                           addr162:
                           if(_loc6_.Textfield_ME_Score != null)
                           {
                              if(_loc8_ || param2)
                              {
                                 _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§=Z§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§]P§(_loc4_);
                              }
                           }
                        }
                        §§goto(addr188);
                     }
                     _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§>U§(_loc4_);
                     §§goto(addr162);
                  }
                  §§goto(addr94);
               }
               §§goto(addr162);
            }
            addr188:
            return param2;
         }
         §§goto(addr37);
      }
      
      private function §80§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!this.§9!5§)
            {
               if(!(_loc3_ && this))
               {
                  addr43:
                  this.§1c§(this.§2!M§[param1.target]);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      private function §'B§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(_loc4_)
         {
            §§push(this.§9!5§);
            if(_loc4_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr53:
                     if(param1.currentTarget is MovieClip)
                     {
                        if(_loc4_)
                        {
                           addr56:
                           _loc2_ = MovieClip(param1.currentTarget);
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr115);
                        }
                        if(this.§%$§ != this.§,!!§[_loc2_])
                        {
                           if(_loc4_)
                           {
                              this.§1c§(this.§,!!§[_loc2_]);
                              if(_loc3_)
                              {
                                 addr103:
                                 §[4§.§ m§ = this.§,!!§[_loc2_];
                                 if(!_loc3_)
                                 {
                                    mNextState = §6!@§.§>9§;
                                 }
                              }
                           }
                        }
                        else if(this.§,!!§[_loc2_] < §[4§.§99§())
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr103);
                           }
                        }
                        §§goto(addr115);
                     }
                     return;
                  }
               }
               §§goto(addr56);
            }
         }
         §§goto(addr53);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() != §1Q§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr65);
                  }
                  else
                  {
                     §§goto(addr77);
                  }
               }
               else
               {
                  this.§-U§();
                  addr68:
                  this.§ !E§();
                  if(_loc4_ || param1)
                  {
                     addr77:
                     if(mNextState.length > 0)
                     {
                        if(!(_loc3_ && this))
                        {
                           §§goto(addr88);
                        }
                     }
                     return §1Q§.STATE_STATUS_RUNNING;
                  }
               }
               addr88:
               return §1Q§.STATE_STATUS_COMPLETED;
            }
            addr65:
            return _loc2_;
         }
         §§goto(addr68);
      }
      
      private function § !E§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(§§pop() < this.§6!=§.length)
            {
               _loc2_ = Number(this.§7!$§.x + this.§6!=§[_loc1_].x - AngryBirdsFP11.screenWidth / 2);
               _loc2_ = Number(Math.abs(_loc2_));
               §§push(Number(_loc2_ * 0.55));
               if(_loc3_)
               {
                  _loc2_ = §§pop();
                  if(!_loc4_)
                  {
                     addr53:
                     if(_loc2_ > 1000)
                     {
                        if(!(_loc3_ || _loc3_))
                        {
                           continue loop0;
                        }
                        §§push(1000);
                        if(_loc4_)
                        {
                           continue;
                        }
                        _loc2_ = Number(§§pop());
                     }
                     §§push(this.§6!=§);
                     if(!_loc4_)
                     {
                        §§push(_loc1_);
                        if(!_loc4_)
                        {
                           §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                           if(_loc3_)
                           {
                              §§push(this.§6!=§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(_loc1_);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr124:
                                       §§push(this.§6!=§);
                                       if(_loc3_ || _loc1_)
                                       {
                                          addr133:
                                          §§push(_loc1_);
                                          if(_loc3_ || this)
                                          {
                                             §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                             addr162:
                                             §§push(this.§6!=§);
                                             §§push(_loc1_);
                                             addr141:
                                          }
                                       }
                                    }
                                    §§goto(addr162);
                                 }
                                 §§pop()[§§pop()].y = _loc2_ / 1000 * -200;
                                 if(_loc4_ && _loc3_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr124);
               }
               §§goto(addr53);
            }
            return;
         }
      }
      
      private function §-U§() : void
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
               §§push(this.§'N§);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop().length)
                  {
                     §§push(-this.§7!$§.x);
                     §§push(800);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc4_)
                        {
                           §§push(this.§6!=§);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(_loc1_);
                              if(_loc4_)
                              {
                                 §§push(§§pop() >= §§pop()[§§pop()].x);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§pop();
                                             if(_loc4_ || _loc1_)
                                             {
                                                addr76:
                                                §§push(-this.§,!§);
                                                if(!_loc3_)
                                                {
                                                   §§push(this.§6!=§);
                                                   if(_loc4_)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         addr91:
                                                         §§push(§§pop() < §§pop()[§§pop()].x);
                                                         if(_loc4_ || this)
                                                         {
                                                            addr101:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§push(0);
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     if(_loc4_)
                                                                     {
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§'N§);
                                                                                 if(_loc3_ && this)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 if(§§pop() >= §§pop().length)
                                                                                 {
                                                                                    if(_loc4_ || _loc1_)
                                                                                    {
                                                                                       §§push(this.§'N§);
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                             if(_loc3_ && _loc3_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§push(-this.§7!$§.x);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr212:
                                                                                                §§push(§§pop() + 800);
                                                                                             }
                                                                                             §§push(this.§6!=§);
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                addr222:
                                                                                                §§push(_loc1_);
                                                                                                if(!(_loc3_ && this))
                                                                                                {
                                                                                                   addr230:
                                                                                                   §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr236:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc3_ && _loc1_)
                                                                                                         {
                                                                                                         }
                                                                                                         addr254:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr255:
                                                                                                            §§push(0);
                                                                                                            if(!(_loc3_ && _loc1_))
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                               {
                                                                                                                  addr293:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        break loop5;
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                                  addr293:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr350:
                                                                                                                  this.§,!§ = this.§7!$§.x;
                                                                                                                  §§goto(addr355);
                                                                                                               }
                                                                                                            }
                                                                                                            break loop5;
                                                                                                         }
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      §§goto(addr254);
                                                                                                   }
                                                                                                   §§pop();
                                                                                                   addr250:
                                                                                                   §§push(-this.§,!§);
                                                                                                   §§push(this.§6!=§);
                                                                                                   §§push(_loc1_);
                                                                                                }
                                                                                                §§goto(addr254);
                                                                                                §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                             }
                                                                                             §§goto(addr250);
                                                                                          }
                                                                                          §§goto(addr332);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr293);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this.§'N§);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             break loop2;
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       addr285:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             _loc2_++;
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr293);
                                                                                          }
                                                                                          addr329:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr332:
                                                                                 §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    break loop2;
                                                                                 }
                                                                                 addr355:
                                                                                 return;
                                                                                 §§push(_loc1_);
                                                                              }
                                                                              addr150:
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§'N§);
                                                                           if(_loc3_ && _loc2_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           if(§§pop() < §§pop().length)
                                                                           {
                                                                              §§push(this.§'N§);
                                                                              if(_loc4_ || _loc1_)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§goto(addr285);
                                                                                 }
                                                                                 §§goto(addr332);
                                                                              }
                                                                              break;
                                                                           }
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§goto(addr329);
                                                                           }
                                                                           §§goto(addr355);
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                     §§goto(addr293);
                                                                  }
                                                                  §§goto(addr150);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                   }
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr255);
                                          }
                                          §§goto(addr254);
                                       }
                                       §§goto(addr101);
                                    }
                                 }
                                 §§goto(addr236);
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr222);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr212);
                  }
                  §§goto(addr350);
               }
               _loc1_++;
               if(!_loc3_)
               {
                  continue loop0;
               }
               §§goto(addr350);
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.deActivate();
            if(!(_loc1_ && _loc2_))
            {
               addr43:
               §=w§.§ o§.clearLevel();
               if(_loc2_)
               {
                  (§]F§.getItemByName("Button_Back") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc6_ || param2)
         {
            §§push("BACK");
            if(!_loc7_)
            {
               §§push(_loc4_);
               if(_loc6_ || param3)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_)
                     {
                        §§push(0);
                        if(_loc7_ && this)
                        {
                           addr226:
                        }
                     }
                     else
                     {
                        addr230:
                        §§push(3);
                        if(_loc6_ || param1)
                        {
                           addr238:
                        }
                     }
                     §§goto(addr243);
                  }
                  else
                  {
                     §§push("PREV");
                     if(!_loc7_)
                     {
                        addr179:
                        §§push(_loc4_);
                        if(!_loc7_)
                        {
                           addr182:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§push(1);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr238);
                                 }
                              }
                              else
                              {
                                 §§goto(addr230);
                              }
                              §§goto(addr243);
                           }
                           else
                           {
                              §§push("NEXT");
                              if(_loc6_ || param3)
                              {
                                 §§goto(addr197);
                              }
                              §§goto(addr228);
                           }
                        }
                        §§goto(addr205);
                     }
                     addr197:
                     §§push(_loc4_);
                     if(!(_loc7_ && param2))
                     {
                        addr205:
                        if(§§pop() === §§pop())
                        {
                           if(_loc6_ || param1)
                           {
                              §§push(2);
                              if(_loc6_)
                              {
                                 §§goto(addr226);
                              }
                              else
                              {
                                 §§goto(addr238);
                              }
                           }
                           else
                           {
                              §§goto(addr230);
                           }
                           §§goto(addr243);
                        }
                        else
                        {
                           addr228:
                           §§push("FULLSCREEN_BUTTON");
                           §§push(_loc4_);
                        }
                        §§goto(addr230);
                     }
                     if(§§pop() === §§pop())
                     {
                        §§goto(addr230);
                     }
                     else
                     {
                        §§push(4);
                     }
                     addr243:
                     switch(§§pop())
                     {
                        case 0:
                           §,!F§.§;v§("Menu_Back");
                           mNextState = §5!#§.§>9§;
                           if(!(_loc7_ && param3))
                           {
                              break;
                           }
                           break;
                        case 1:
                           §,!F§.§;v§("Menu_Confirm");
                           §§push(this.§9!5§);
                           if(_loc6_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc6_ || param2)
                                 {
                                    §§push((_loc4_ = this).§%$§);
                                    if(_loc6_ || this)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(!_loc7_)
                                    {
                                       _loc4_.§%$§ = _loc5_;
                                    }
                                    this.§1c§(this.§%$§);
                                 }
                              }
                              break;
                           }
                           addr80:
                           if(!§§pop())
                           {
                              if(!(_loc7_ && param2))
                              {
                                 §§push((_loc4_ = this).§%$§);
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 _loc5_ = §§pop();
                                 if(_loc6_)
                                 {
                                    _loc4_.§%$§ = _loc5_;
                                 }
                                 this.§1c§(this.§%$§);
                                 if(_loc7_)
                                 {
                                 }
                                 break;
                              }
                           }
                           break;
                        case 2:
                           §,!F§.§;v§("Menu_Confirm");
                           §§goto(addr80);
                        case 3:
                           §,!F§.§;v§("Menu_Confirm");
                           §§push(this.§9!5§);
                           if(_loc6_ || param3)
                           {
                              AngryBirdsFP11.§ y§.§-!$§();
                              if(_loc7_)
                              {
                              }
                              break;
                           }
                     }
                     return;
                  }
                  §§goto(addr230);
               }
               §§goto(addr182);
            }
            §§goto(addr179);
         }
         §§goto(addr230);
      }
      
      private function §1c§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§9!5§ = true;
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() > this.§6!=§.length - 1)
               {
                  addr34:
                  §§push(this.§6!=§);
                  if(_loc5_)
                  {
                     §§push(§§pop().length - 1);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(int(§§pop()));
                        if(_loc5_)
                        {
                           addr50:
                           param1 = §§pop();
                        }
                        else
                        {
                           addr55:
                           if(§§pop() < 0)
                           {
                              addr58:
                              param1 = 0;
                           }
                        }
                        this.§%$§ = param1;
                        addr64:
                        §§push(-this.§6!=§[param1].x);
                        if(_loc5_)
                        {
                           §§push(§§pop() + this.§]K§);
                           if(!_loc5_)
                           {
                           }
                           addr76:
                           var _loc2_:* = §§pop();
                           §§push(this.§7!$§.x - _loc2_);
                           if(!_loc6_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:*;
                           §§push(_loc4_ = Number(Math.abs(_loc3_)));
                           if(!(_loc6_ && this))
                           {
                              §§push(400);
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(Number(§§pop() / §§pop()));
                                 if(_loc5_)
                                 {
                                    §§push(§§pop());
                                    if(_loc5_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc5_ || _loc2_)
                                       {
                                          addr132:
                                          §§push(§<m§);
                                          if(!_loc6_)
                                          {
                                             addr135:
                                             addr136:
                                             addr147:
                                             §§push(Number(§§pop() * §§pop()));
                                             if(_loc5_ || this)
                                             {
                                                addr145:
                                                §§push(_loc4_ = §§pop());
                                             }
                                             if(§§pop() > 1)
                                             {
                                                addr150:
                                                _loc4_ = Number(1);
                                             }
                                             §§push(this.§8!K§);
                                             if(!_loc6_)
                                             {
                                                if(§§pop() != null)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(this.§8!K§);
                                                      if(!_loc6_)
                                                      {
                                                         §§pop().stop();
                                                         addr174:
                                                         this.§8!K§ = §@7§.§@6§.§3!%§(this.§7!$§,{"x":_loc2_},null,_loc4_,§@7§.§[^§);
                                                         §§push(this.§8!K§);
                                                         if(_loc5_)
                                                         {
                                                            §§pop().onComplete = this.§]I§;
                                                            if(_loc5_)
                                                            {
                                                               addr199:
                                                               this.§8!K§.play();
                                                            }
                                                            return;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr199);
                                                }
                                                §§goto(addr174);
                                             }
                                             §§goto(addr199);
                                          }
                                          §§goto(addr145);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr132);
                        }
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr64);
               }
               else
               {
                  §§push(param1);
                  if(!_loc6_)
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr58);
            }
            §§goto(addr50);
         }
         §§goto(addr34);
      }
      
      private function §]I§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(true)
            {
               if(§§pop() >= this.§'N§.length)
               {
                  if(_loc2_)
                  {
                     addr94:
                     this.§9!5§ = false;
                     break;
                  }
                  break;
               }
               §§push(_loc1_);
               if(_loc3_ && _loc1_)
               {
                  continue;
               }
               if(§§pop() == this.§%$§)
               {
                  if(_loc2_ || this)
                  {
                     §§push(this.§'N§);
                     if(_loc2_)
                     {
                        §§push(_loc1_);
                        if(_loc2_)
                        {
                           §§pop()[§§pop()].gotoAndStop("Selected");
                           if(_loc2_ || _loc1_)
                           {
                           }
                        }
                        else
                        {
                           addr79:
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                        }
                        _loc1_++;
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     addr78:
                     §§push(_loc1_);
                     §§goto(addr79);
                  }
                  else
                  {
                     §§goto(addr94);
                  }
               }
               else
               {
                  §§push(this.§'N§);
               }
               §§goto(addr78);
               §§goto(addr94);
            }
            return;
         }
      }
   }
}
