package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §6J§.§?S§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import §class§.§3C§;
   import §class§.§?q§;
   import com.rovio.assets.§'!H§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §^q§ extends §#!,§
   {
      
      public static const §?x§:String = "ChapterSelectionState";
      
      private static const §?!=§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §^q§))
         {
            §?x§ = "ChapterSelectionState";
            if(!_loc1_)
            {
               addr29:
               §?!=§ = 0.5;
            }
            return;
         }
         §§goto(addr29);
      }
      
      private var §?Q§:Sprite;
      
      private var §6!1§:§3C§;
      
      private var §#w§:Array;
      
      private var §9]§:Array;
      
      private var §&F§:int = 0;
      
      private var §<!A§:Number = 0;
      
      private var §&&§:Number = 0;
      
      private var §9x§:Dictionary;
      
      private var §=!=§:Dictionary;
      
      private var §^!H§:§?!3§ = null;
      
      private var §%!8§:Boolean = false;
      
      private var §5!H§:Number = 0;
      
      public function §^q§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            if(!(_loc1_ && this))
            {
               §[=§ = new §^3§(this);
               if(!(_loc1_ && this))
               {
                  §[=§.init(§!I§.§7y§.Views.View_ChapterSelection[0]);
                  if(_loc2_ || this)
                  {
                     addr75:
                     this.§[j§();
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:§?S§ = null;
         if(_loc6_ || _loc1_)
         {
            super.activate();
            if(_loc6_ || _loc1_)
            {
               addr38:
               §[k§.§&@§.§`!G§(false);
            }
            var _loc1_:int = 0;
            for each(_loc2_ in this.§#w§)
            {
               _loc3_ = §5j§.§^!E§(_loc1_);
               if(_loc6_)
               {
                  if(_loc2_.Textfield_ME_Score != null)
                  {
                     addr78:
                     _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]k§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§,$§(_loc3_);
                     if(_loc6_ || _loc3_)
                     {
                        addr100:
                        if(_loc2_.Textfield_CollectedStars != null)
                        {
                           _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§<!;§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§1'§(_loc3_);
                        }
                        if(_loc2_.Textfield_Score != null)
                        {
                           addr133:
                           _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§8h§(_loc3_);
                           if(!(_loc6_ || _loc1_))
                           {
                              continue;
                           }
                        }
                        _loc1_++;
                        continue;
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr100);
               }
               §§goto(addr78);
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function §[j§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§?S§ = null;
         var _loc4_:String = null;
         if(!_loc5_)
         {
            this.§6!1§ = §[=§.getItemByName("Container_ChapterSelection") as §3C§;
            if(_loc6_)
            {
               this.§#w§ = [];
               if(!(_loc5_ && _loc3_))
               {
                  this.§9]§ = [];
               }
            }
         }
         var _loc1_:* = Number(0);
         if(_loc6_)
         {
            this.§?Q§ = new Sprite();
            if(_loc6_)
            {
               this.§?Q§.y = AngryBirdsFP11.screenHeight / 2;
               addr65:
               this.§<!A§ = AngryBirdsFP11.screenWidth / 2;
               this.§?Q§.x = this.§<!A§;
               this.§6!1§.mClip.addChild(this.§?Q§);
            }
            this.§=!=§ = new Dictionary();
            var _loc2_:int = 0;
            while(_loc2_ < §5j§.§,5§())
            {
               _loc3_ = §5j§.§^!E§(_loc2_);
               if(_loc6_ || _loc3_)
               {
                  §§push("MovieClip_");
                  if(!(_loc5_ && _loc1_))
                  {
                     §§push(§§pop() + _loc3_.menuImage);
                  }
                  _loc4_ = §§pop();
                  if(!(_loc5_ && _loc1_))
                  {
                     §§push(this.§<7§(_loc4_,_loc1_,_loc2_));
                     if(!_loc5_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc1_ = §§pop();
                     if(_loc5_)
                     {
                        continue;
                     }
                  }
                  _loc2_++;
               }
            }
            if(_loc6_)
            {
               §§push(this.§<7§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_));
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc5_ && _loc2_))
                  {
                     _loc1_ = §§pop();
                     if(!(_loc5_ && _loc2_))
                     {
                        addr183:
                        _loc2_++;
                        if(_loc6_)
                        {
                           §§push(this.§<7§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_));
                           if(!_loc5_)
                           {
                              addr193:
                              §§push(Number(§§pop()));
                           }
                           _loc1_ = §§pop();
                           if(!_loc6_)
                           {
                           }
                           §§goto(addr199);
                        }
                        this.§]§();
                     }
                     addr199:
                     return;
                  }
               }
               §§goto(addr193);
            }
            §§goto(addr183);
         }
         §§goto(addr65);
      }
      
      private function §]§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = Number(0);
         if(_loc6_)
         {
            this.§9x§ = new Dictionary();
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.§#w§.length)
         {
            _loc1_ = §'!H§.§&!G§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc6_ || _loc1_)
            {
               if(_loc4_ == this.§&F§)
               {
                  if(_loc6_ || _loc3_)
                  {
                     addr63:
                     _loc2_.gotoAndStop("Selected");
                     addr70:
                     _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§#w§.length * _loc2_.width / 2;
                     if(!_loc5_)
                     {
                        _loc2_.y = (§[=§.getItemByName("Button_Next") as §?q§).y - _loc2_.height / 2;
                        if(!(_loc5_ && _loc2_))
                        {
                           addr109:
                           this.§6!1§.mClip.addChild(_loc2_);
                           if(!(_loc5_ && this))
                           {
                              _loc2_.buttonMode = true;
                              addr134:
                              this.§9x§[_loc2_] = _loc4_;
                              this.§9]§.push(_loc2_);
                           }
                        }
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           §§push(Number(§§pop() + _loc2_.width));
                        }
                        _loc3_ = §§pop();
                        _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!@§);
                        if(_loc6_)
                        {
                           _loc4_++;
                        }
                        continue;
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr134);
               }
               else
               {
                  _loc2_.gotoAndStop("UnSelected");
               }
               §§goto(addr70);
            }
            §§goto(addr63);
         }
         if(_loc6_)
         {
            §§push(this.§#w§.length * _loc2_.width);
            if(_loc6_ || _loc1_)
            {
               §§push(§§pop() / 2);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(_loc6_ || _loc1_)
                  {
                     addr201:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  if(_loc6_)
                  {
                     (§[=§.getItemByName("Button_Next") as §?q§).x = AngryBirdsFP11.screenWidth / 2;
                     if(!_loc5_)
                     {
                        (§[=§.getItemByName("Button_Prev") as §?q§).x = AngryBirdsFP11.screenWidth / 2;
                        if(_loc6_)
                        {
                           (§[=§.getItemByName("Button_Next") as §?q§).x = (§[=§.getItemByName("Button_Next") as §?q§).x + (_loc3_ + 10);
                           addr229:
                           if(_loc6_)
                           {
                              addr257:
                              (§[=§.getItemByName("Button_Prev") as §?q§).x = (§[=§.getItemByName("Button_Prev") as §?q§).x - (_loc3_ + 10);
                           }
                        }
                        return;
                     }
                     §§goto(addr257);
                  }
                  §§goto(addr229);
               }
            }
            §§goto(addr201);
         }
         §§goto(addr229);
      }
      
      private function §<7§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§?S§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(!(_loc8_ && param3))
         {
            if(§'!H§.§>o§(param1))
            {
               addr36:
               _loc4_ = §5j§.§^!E§(param3);
               (_loc6_ = new (_loc5_ = §'!H§.§&!G§(param1))()).x = param2;
               if(!_loc8_)
               {
                  this.§?Q§.addChild(_loc6_);
                  this.§#w§.push(_loc6_);
                  if(!_loc8_)
                  {
                     §§push(param2);
                     if(!_loc8_)
                     {
                        §§push(§§pop() + _loc6_.width * 1.55);
                        if(_loc7_ || param3)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     param2 = §§pop();
                     if(!_loc8_)
                     {
                        this.§=!=§[_loc6_] = param3;
                        if(_loc7_ || param2)
                        {
                           _loc6_.addEventListener(MouseEvent.CLICK,this.§7b§);
                           if(_loc7_ || param2)
                           {
                              _loc6_.buttonMode = true;
                              if(_loc7_ || this)
                              {
                                 if(_loc6_.Textfield_CollectedStars != null)
                                 {
                                    if(_loc7_)
                                    {
                                       addr135:
                                       _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§<!;§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§1'§(_loc4_);
                                    }
                                    §§goto(addr205);
                                 }
                                 if(_loc6_.Textfield_Score != null)
                                 {
                                    if(_loc8_ && param3)
                                    {
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr186);
                              }
                           }
                        }
                        _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§8h§(_loc4_);
                        if(_loc7_ || param2)
                        {
                           §§goto(addr186);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr135);
                  }
               }
               addr186:
               if(_loc6_.Textfield_ME_Score != null)
               {
                  addr190:
                  _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]k§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§,$§(_loc4_);
               }
               §§goto(addr205);
            }
            addr205:
            return param2;
         }
         §§goto(addr36);
      }
      
      private function §1!@§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§%!8§)
            {
               if(!_loc2_)
               {
                  this.§=r§(this.§9x§[param1.target]);
               }
            }
         }
      }
      
      private function §7b§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(!(_loc3_ && param1))
         {
            §§push(this.§%!8§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr43:
                     if(!(param1.currentTarget is MovieClip))
                     {
                        return;
                     }
                     if(_loc4_)
                     {
                        _loc2_ = MovieClip(param1.currentTarget);
                        addr46:
                        if(_loc4_ || _loc3_)
                        {
                           addr71:
                           if(this.§&F§ != this.§=!=§[_loc2_])
                           {
                              if(!(_loc3_ && param1))
                              {
                                 this.§=r§(this.§=!=§[_loc2_]);
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr130:
                                    return;
                                    addr108:
                                 }
                                 §§goto(addr130);
                              }
                              addr126:
                              mNextState = §5O§.§?x§;
                           }
                           else if(this.§=!=§[_loc2_] < §5j§.§,5§())
                           {
                              if(!_loc3_)
                              {
                                 §5j§.§0P§ = this.§=!=§[_loc2_];
                                 if(_loc4_)
                                 {
                                    §§goto(addr126);
                                 }
                              }
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr46);
               }
               §§goto(addr130);
            }
         }
         §§goto(addr43);
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
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() != §#!,§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc3_ && param1))
                  {
                     §§goto(addr65);
                  }
               }
               else
               {
                  this.§+y§();
               }
               this.§82§();
               addr77:
               if(mNextState.length > 0)
               {
                  return §#!,§.STATE_STATUS_COMPLETED;
               }
               return §#!,§.STATE_STATUS_RUNNING;
            }
            addr65:
            return _loc2_;
         }
         §§goto(addr77);
      }
      
      private function §82§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(§§pop() < this.§#w§.length)
            {
               _loc2_ = Number(this.§?Q§.x + this.§#w§[_loc1_].x - AngryBirdsFP11.screenWidth / 2);
               _loc2_ = Number(Math.abs(_loc2_));
               if(_loc4_ || this)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(§§pop() * 0.55);
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc2_ = §§pop();
                     addr65:
                     §§push(_loc2_);
                  }
                  if(§§pop() > 1000)
                  {
                     §§push(1000);
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                     _loc2_ = Number(§§pop());
                  }
                  §§push(this.§#w§);
                  if(_loc4_)
                  {
                     §§push(_loc1_);
                     if(!_loc3_)
                     {
                        §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                        if(!_loc3_)
                        {
                           §§push(this.§#w§);
                           if(!_loc3_)
                           {
                              §§push(_loc1_);
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr116:
                                 §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(this.§#w§);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr139:
                                       §§push(_loc1_);
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                          if(!_loc4_)
                                          {
                                          }
                                          break;
                                       }
                                       addr171:
                                       §§pop()[§§pop()].y = _loc2_ / 1000 * -200;
                                       if(_loc4_)
                                       {
                                          _loc1_++;
                                          if(_loc3_ && _loc2_)
                                          {
                                             break;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    addr170:
                                    §§goto(addr171);
                                    §§push(_loc1_);
                                 }
                                 §§goto(addr170);
                                 §§push(this.§#w§);
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr139);
                        }
                        break;
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr170);
               }
               §§goto(addr65);
            }
            return;
         }
      }
      
      private function §+y§() : void
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
               §§push(this.§9]§);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop().length)
                  {
                     §§push(-this.§?Q§.x);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(800);
                        if(_loc3_ || this)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc4_)
                           {
                              §§push(this.§#w§);
                              if(!_loc4_)
                              {
                                 §§push(_loc1_);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() >= §§pop()[§§pop()].x);
                                    if(_loc3_ || this)
                                    {
                                       §§push(§§pop());
                                       if(!_loc4_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                addr67:
                                                §§pop();
                                                if(_loc3_)
                                                {
                                                   §§push(-this.§5!H§);
                                                   §§push(this.§#w§);
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      addr82:
                                                      §§push(_loc1_);
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         addr90:
                                                         §§push(§§pop() < §§pop()[§§pop()].x);
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            addr100:
                                                            if(§§pop())
                                                            {
                                                               §§push(0);
                                                               if(!(_loc3_ || _loc1_))
                                                               {
                                                                  continue loop1;
                                                               }
                                                               _loc2_ = §§pop();
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(this.§9]§);
                                                                     if(_loc4_ && this)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     if(§§pop() >= §§pop().length)
                                                                     {
                                                                        §§push(this.§9]§);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              addr166:
                                                                              §§pop()[§§pop()].gotoAndStop("Selected");
                                                                              if(_loc3_ || _loc1_)
                                                                              {
                                                                                 addr176:
                                                                                 §§push(-this.§?Q§.x);
                                                                                 if(_loc3_ || _loc1_)
                                                                                 {
                                                                                    addr188:
                                                                                    §§push(§§pop() + 800);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(this.§#w§);
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          addr200:
                                                                                          §§push(_loc1_);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr208:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      addr217:
                                                                                                      §§pop();
                                                                                                      addr224:
                                                                                                      §§push(-this.§5!H§ > this.§#w§[_loc1_].x);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc3_ || _loc1_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                loop6:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   §§push(this.§9]§);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   if(§§pop() >= §§pop().length)
                                                                                                   {
                                                                                                      addr279:
                                                                                                      this.§9]§[_loc1_].gotoAndStop("Selected");
                                                                                                      §§goto(addr278);
                                                                                                   }
                                                                                                   §§push(this.§9]§);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         if(!(_loc4_ && this))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                               _loc2_++;
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            addr278:
                                                                                                            if(!(_loc4_ && _loc1_))
                                                                                                            {
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            addr307:
                                                                                                            addr302:
                                                                                                            addr302:
                                                                                                            this.§5!H§ = this.§?Q§.x;
                                                                                                            return;
                                                                                                            addr253:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr279);
                                                                                                         }
                                                                                                         §§goto(addr279);
                                                                                                      }
                                                                                                      addr245:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr279);
                                                                                                   }
                                                                                                   §§goto(addr279);
                                                                                                   §§goto(addr279);
                                                                                                }
                                                                                                addr257:
                                                                                             }
                                                                                             break loop2;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr224);
                                                                              }
                                                                              §§goto(addr302);
                                                                           }
                                                                           §§goto(addr253);
                                                                        }
                                                                        §§goto(addr279);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.§9]§);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr166);
                                                                        }
                                                                     }
                                                                     §§goto(addr245);
                                                                  }
                                                                  break;
                                                               }
                                                               _loc2_ = §§pop();
                                                               §§goto(addr257);
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                         §§goto(addr208);
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr200);
                                                }
                                                break;
                                             }
                                             §§goto(addr217);
                                          }
                                          §§goto(addr100);
                                       }
                                       §§goto(addr208);
                                    }
                                    §§goto(addr67);
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr82);
                           }
                           §§goto(addr217);
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr302);
               }
               _loc1_++;
               if(_loc3_ || this)
               {
                  continue loop0;
               }
               §§goto(addr307);
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            if(!_loc1_)
            {
               §§goto(addr33);
            }
            §§goto(addr38);
         }
         addr33:
         §[k§.§&@§.clearLevel();
         if(!_loc1_)
         {
            addr38:
            (§[=§.getItemByName("Button_Back") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc7_ && this))
         {
            §§push("BACK");
            if(_loc6_)
            {
               §§push(_loc4_);
               if(_loc6_ || param1)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || this)
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                           addr230:
                        }
                     }
                     else
                     {
                        addr227:
                        §§push(3);
                        if(!_loc7_)
                        {
                           §§goto(addr230);
                        }
                     }
                     §§goto(addr235);
                  }
                  else
                  {
                     §§push("PREV");
                     if(!(_loc7_ && param3))
                     {
                        §§push(_loc4_);
                        if(!_loc7_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc7_ && param2))
                              {
                                 §§push(1);
                                 if(_loc6_ || this)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr227);
                              }
                              §§goto(addr235);
                           }
                           else
                           {
                              §§push("NEXT");
                              if(!_loc7_)
                              {
                                 §§push(_loc4_);
                                 if(_loc6_)
                                 {
                                    addr212:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(2);
                                          if(!(_loc6_ || param3))
                                          {
                                             §§goto(addr230);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr227);
                                       }
                                       §§goto(addr235);
                                    }
                                    else
                                    {
                                       addr225:
                                       §§push("FULLSCREEN_BUTTON");
                                       §§push(_loc4_);
                                    }
                                    §§goto(addr227);
                                 }
                              }
                              §§goto(addr225);
                           }
                        }
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr227);
                        }
                        else
                        {
                           §§push(4);
                        }
                        addr235:
                        switch(§§pop())
                        {
                           case 0:
                              §6I§.§ ;§("Menu_Back");
                              if(!_loc7_)
                              {
                                 mNextState = §!!=§.§?x§;
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 break;
                              }
                              addr133:
                              break;
                           case 1:
                              §6I§.§ ;§("Menu_Confirm");
                              if(_loc6_)
                              {
                                 §§push(this.§%!8§);
                                 if(_loc6_ || this)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push((_loc4_ = this).§&F§);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc6_)
                                       {
                                          _loc4_.§&F§ = _loc5_;
                                       }
                                       if(!(_loc6_ || param3))
                                       {
                                          addr123:
                                          AngryBirdsFP11.§,s§.§8!1§();
                                          if(!(_loc7_ && param3))
                                          {
                                             §§goto(addr133);
                                          }
                                          break;
                                       }
                                       this.§=r§(this.§&F§);
                                    }
                                    break;
                                 }
                                 addr79:
                                 if(!§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       §§push((_loc4_ = this).§&F§);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       _loc5_ = §§pop();
                                       if(!(_loc7_ && this))
                                       {
                                          _loc4_.§&F§ = _loc5_;
                                       }
                                       this.§=r§(this.§&F§);
                                       if(!_loc6_)
                                       {
                                       }
                                       break;
                                    }
                                    §§goto(addr123);
                                 }
                                 break;
                                 §§goto(addr123);
                              }
                              else
                              {
                                 addr77:
                                 §§push(this.§%!8§);
                              }
                              §§goto(addr79);
                           case 2:
                              §6I§.§ ;§("Menu_Confirm");
                              §§goto(addr77);
                           case 3:
                              §6I§.§ ;§("Menu_Confirm");
                              §§goto(addr123);
                        }
                        return;
                     }
                     §§goto(addr225);
                  }
               }
               §§goto(addr212);
            }
            §§goto(addr225);
         }
         §§goto(addr227);
      }
      
      private function §=r§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         this.§%!8§ = true;
         if(_loc5_ || param1)
         {
            §§push(param1);
            if(!(_loc6_ && param1))
            {
               if(§§pop() > this.§#w§.length - 1)
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§push(this.§#w§);
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§pop().length - 1);
                        if(_loc5_)
                        {
                           §§push(int(§§pop()));
                           if(_loc5_ || _loc3_)
                           {
                              param1 = §§pop();
                              if(!_loc5_)
                              {
                              }
                           }
                           else
                           {
                              addr82:
                              param1 = §§pop();
                           }
                           addr83:
                           this.§&F§ = param1;
                           addr88:
                           §§push(-this.§#w§[param1].x);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + this.§<!A§);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                        }
                        var _loc2_:* = §§pop();
                        §§push(this.§?Q§.x - _loc2_);
                        if(!_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        var _loc4_:*;
                        §§push(_loc4_ = Number(Math.abs(_loc3_)));
                        if(!(_loc6_ && param1))
                        {
                           §§push(400);
                           if(!_loc6_)
                           {
                              §§push(Number(§§pop() / §§pop()));
                              §§push(Number(§§pop() / §§pop()));
                              if(!(_loc6_ && this))
                              {
                                 _loc4_ = §§pop();
                                 if(_loc5_)
                                 {
                                    addr160:
                                    §§push(§?!=§);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() * §§pop());
                                    }
                                    _loc4_ = §§pop();
                                    if(§§pop() > 1)
                                    {
                                       if(_loc5_)
                                       {
                                          addr167:
                                          _loc4_ = Number(1);
                                          if(_loc5_ || _loc2_)
                                          {
                                             addr175:
                                             §§push(this.§^!H§);
                                             if(!_loc6_)
                                             {
                                                if(§§pop() != null)
                                                {
                                                   §§push(this.§^!H§);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§pop().stop();
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         addr208:
                                                         this.§^!H§ = §,B§.§^n§.§2E§(this.§?Q§,{"x":_loc2_},null,_loc4_,§,B§.§[!F§);
                                                         §§push(this.§^!H§);
                                                         if(_loc5_ || this)
                                                         {
                                                         }
                                                         §§goto(addr236);
                                                      }
                                                      addr234:
                                                      addr236:
                                                      §§pop().play();
                                                      return;
                                                      §§push(this.§^!H§);
                                                   }
                                                   §§pop().onComplete = this.§-T§;
                                                   §§goto(addr234);
                                                }
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr234);
                                       }
                                       §§goto(addr208);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§push(Number(§§pop()));
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr88);
                  }
                  else
                  {
                     addr81:
                     §§push(0);
                  }
               }
               else
               {
                  §§push(param1);
                  if(!(_loc6_ && _loc3_))
                  {
                     addr79:
                     if(§§pop() < 0)
                     {
                        §§goto(addr81);
                     }
                     §§goto(addr83);
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr79);
         }
         §§goto(addr83);
      }
      
      private function §-T§() : void
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
               if(§§pop() >= this.§9]§.length)
               {
                  if(_loc3_ || _loc3_)
                  {
                     break;
                  }
                  §§goto(addr108);
               }
               §§push(_loc1_);
               if(!_loc3_)
               {
                  continue;
               }
               if(§§pop() == this.§&F§)
               {
                  if(!(_loc3_ || _loc3_))
                  {
                     break;
                  }
                  §§push(this.§9]§);
                  if(_loc3_)
                  {
                     §§push(_loc1_);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop()[§§pop()].gotoAndStop("Selected");
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  else
                  {
                     addr64:
                     §§push(_loc1_);
                  }
                  §§pop()[§§pop()].gotoAndStop("UnSelected");
                  if(_loc2_ && this)
                  {
                     break;
                  }
                  continue loop0;
               }
               §§push(this.§9]§);
               §§goto(addr64);
            }
            addr105:
            this.§%!8§ = false;
            addr108:
            return;
         }
      }
   }
}
