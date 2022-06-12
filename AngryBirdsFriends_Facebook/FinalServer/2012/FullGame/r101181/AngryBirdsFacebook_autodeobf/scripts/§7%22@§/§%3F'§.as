package §7"@§
{
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §4!e§.§08§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §]!A§.;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §?'§ extends §1-§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      private static const §-!9§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            STATE_NAME = "ChapterSelectionState";
            do
            {
               §-!9§ = 0.5;
            }
            while(_loc1_);
            
         }
      }
      
      private var §1!R§:Sprite;
      
      private var §]!d§:§08§;
      
      private var §1!O§:Array;
      
      private var §#o§:Array;
      
      private var §-a§:int = 0;
      
      private var §>y§:Number = 0;
      
      private var §^"7§:Number = 0;
      
      private var §&!8§:Dictionary;
      
      private var §<!&§:Dictionary;
      
      private var §@"0§:§"m§ = null;
      
      private var §3R§:Boolean = false;
      
      private var §^"%§:Number = 0;
      
      public function §?'§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
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
            while(true)
            {
               §6w§ = new §7!A§(this);
               loop1:
               while(!(_loc1_ && _loc1_))
               {
                  while(true)
                  {
                     §6w§.init(§ "A§.§4[§.Views.View_ChapterSelection[0]);
                     do
                     {
                        this.§?4§();
                     }
                     while(_loc1_ && this);
                     
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:§>x§ = null;
         if(_loc7_ || this)
         {
            super.activate();
            if(!(_loc6_ && _loc1_))
            {
               addr39:
               §#6§.§6!z§.§3H§(false);
            }
            var _loc1_:int = 0;
            loop0:
            for each(_loc2_ in this.§1!O§)
            {
               _loc3_ = LevelManager.§;X§(_loc1_);
               if(!_loc6_)
               {
                  if(_loc2_.Textfield_ME_Score != null)
                  {
                     while(true)
                     {
                        _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§7L§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§,!b§(_loc3_);
                        addr171:
                        while(true)
                        {
                        }
                     }
                     addr156:
                  }
                  while(true)
                  {
                     if(_loc2_.Textfield_CollectedStars != null)
                     {
                        while(_loc7_ || _loc3_)
                        {
                           if(!_loc6_)
                           {
                              _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§9o§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§`!g§(_loc3_);
                              while(true)
                              {
                              }
                              addr151:
                           }
                           else
                           {
                              §§goto(addr156);
                           }
                        }
                        continue;
                        addr117:
                     }
                     loop6:
                     while(true)
                     {
                        if(_loc2_.Textfield_Score != null)
                        {
                           loop7:
                           while(!_loc6_)
                           {
                              _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§1!%§(_loc3_);
                              loop8:
                              while(true)
                              {
                                 addr66:
                                 while(true)
                                 {
                                    _loc1_++;
                                    if(!(_loc7_ || this))
                                    {
                                       continue loop8;
                                    }
                                    if(_loc6_ && _loc1_)
                                    {
                                       continue loop7;
                                    }
                                    if(!_loc6_)
                                    {
                                       while(false)
                                       {
                                          continue loop6;
                                       }
                                       continue loop0;
                                       addr94:
                                    }
                                    §§goto(addr117);
                                 }
                              }
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr66);
                     }
                  }
               }
               §§goto(addr94);
            }
            return;
         }
         §§goto(addr39);
      }
      
      private function §?4§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§>x§ = null;
         var _loc4_:String = null;
         if(!(_loc5_ && _loc3_))
         {
            this.§]!d§ = §6w§.getItemByName("Container_ChapterSelection") as §08§;
            loop0:
            while(true)
            {
               addr46:
               while(true)
               {
                  this.§1!O§ = [];
                  continue loop0;
               }
            }
            addr58:
         }
         while(true)
         {
            this.§#o§ = [];
            if(!_loc6_)
            {
               continue;
            }
            if(_loc6_ || this)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr58);
            }
            §§goto(addr46);
         }
         var _loc1_:* = Number(0);
         if(!_loc5_)
         {
            this.§1!R§ = new Sprite();
            while(true)
            {
               this.§1!R§.y = AngryBirdsFP11.§^!7§ / 2;
               addr133:
               while(true)
               {
                  this.§>y§ = AngryBirdsFP11.§=!u§ / 2;
               }
            }
            addr138:
         }
         while(true)
         {
            this.§1!R§.x = this.§>y§;
            loop6:
            while(true)
            {
               if(_loc6_)
               {
                  while(true)
                  {
                     this.§]!d§.mClip.addChild(this.§1!R§);
                     while(!_loc5_)
                     {
                        this.§<!&§ = new Dictionary();
                        if(_loc6_)
                        {
                           continue loop6;
                        }
                     }
                  }
                  continue;
                  addr88:
               }
               §§goto(addr138);
               §§goto(addr133);
            }
            if(!(_loc6_ || _loc1_))
            {
               continue;
            }
            if(false)
            {
               §§goto(addr88);
            }
            var _loc2_:int = 0;
            addr194:
            if(_loc2_ < LevelManager.§@!N§())
            {
               _loc3_ = LevelManager.§;X§(_loc2_);
               if(_loc6_ || _loc2_)
               {
                  §§push("MovieClip_");
                  if(!_loc5_)
                  {
                     §§push(§§pop() + _loc3_.menuImage);
                  }
                  _loc4_ = §§pop();
                  addr167:
                  §§push(this.§&!A§(_loc4_,_loc1_,_loc2_));
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc1_ = §§pop();
                  if(_loc6_)
                  {
                     _loc2_++;
                     if(!(_loc5_ && _loc1_))
                     {
                        addr165:
                        if(false)
                        {
                           §§goto(addr167);
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr167);
                  }
                  addr193:
                  §§goto(addr193);
               }
               §§goto(addr165);
            }
            if(!_loc5_)
            {
               §§push(this.§&!A§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_));
               if(_loc6_ || this)
               {
                  §§push(Number(§§pop()));
                  if(_loc6_ || _loc3_)
                  {
                     _loc1_ = §§pop();
                     addr266:
                     if(_loc6_)
                     {
                        _loc2_++;
                        §§push(this.§&!A§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_));
                        if(!_loc5_)
                        {
                           §§push(Number(§§pop()));
                        }
                        addr268:
                     }
                     this.§^h§();
                     if(_loc6_ || this)
                     {
                        if(!(_loc6_ || this))
                        {
                           §§goto(addr268);
                        }
                        return;
                     }
                     §§goto(addr266);
                  }
               }
               _loc1_ = §§pop();
            }
            §§goto(addr266);
         }
      }
      
      private function §^h§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = Number(0);
         if(!(_loc6_ && _loc2_))
         {
            this.§&!8§ = new Dictionary();
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.§1!O§.length)
         {
            _loc1_ = §8B§.§6"C§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc5_ || _loc3_)
            {
               if(_loc4_ != this.§-a§)
               {
                  _loc2_.gotoAndStop("UnSelected");
                  while(true)
                  {
                     while(true)
                     {
                        _loc2_.x = AngryBirdsFP11.§=!u§ / 2 + _loc3_ - this.§1!O§.length * _loc2_.width / 2;
                        while(true)
                        {
                           _loc2_.y = (§6w§.getItemByName("Button_Next") as §^!D§).y - _loc2_.height / 2;
                           loop4:
                           while(true)
                           {
                              this.§]!d§.mClip.addChild(_loc2_);
                              while(true)
                              {
                                 _loc2_.buttonMode = true;
                                 addr144:
                                 while(_loc5_ || _loc1_)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     if(!(_loc5_ || _loc2_))
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        §§goto(addr82);
                     }
                     §§goto(addr224);
                  }
               }
               §§goto(addr221);
            }
            §§goto(addr130);
         }
         if(_loc5_)
         {
            §§push(this.§1!O§.length * _loc2_.width);
            if(!_loc6_)
            {
               §§push(§§pop() / 2);
               if(_loc5_)
               {
                  addr244:
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(!(_loc6_ && this))
                  {
                     addr256:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  if(_loc5_ || _loc2_)
                  {
                     (§6w§.getItemByName("Button_Next") as §^!D§).x = AngryBirdsFP11.§=!u§ / 2;
                     loop15:
                     while(true)
                     {
                        (§6w§.getItemByName("Button_Prev") as §^!D§).x = AngryBirdsFP11.§=!u§ / 2;
                        addr338:
                        while(true)
                        {
                           (§6w§.getItemByName("Button_Next") as §^!D§).x = (§6w§.getItemByName("Button_Next") as §^!D§).x + (_loc3_ + 10);
                           continue loop15;
                        }
                     }
                  }
                  §§goto(addr291);
               }
               §§goto(addr256);
            }
            §§goto(addr244);
         }
         §§goto(addr326);
      }
      
      private function §&!A§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§>x§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(_loc8_ || param1)
         {
            if(§8B§.§"5§(param1))
            {
               addr37:
               _loc4_ = LevelManager.§;X§(param3);
               (_loc6_ = new (_loc5_ = §8B§.§6"C§(param1))()).x = param2;
               if(!(_loc7_ && param3))
               {
                  this.§1!R§.addChild(_loc6_);
                  while(true)
                  {
                     this.§1!O§.push(_loc6_);
                     loop1:
                     while(true)
                     {
                        §§push(param2);
                        if(_loc8_)
                        {
                           §§push(§§pop() + _loc6_.width * 1.55);
                           if(_loc8_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        param2 = §§pop();
                        addr204:
                        while(true)
                        {
                           this.§<!&§[_loc6_] = param3;
                           continue loop1;
                        }
                     }
                     if(_loc7_ && param3)
                     {
                        continue;
                     }
                     _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§7L§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§,!b§(_loc4_);
                     §§goto(addr105);
                  }
               }
               §§goto(addr109);
            }
            §§goto(addr216);
         }
         §§goto(addr37);
      }
      
      private function §null §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!this.§3R§)
            {
               if(_loc3_ || this)
               {
                  addr44:
                  this.§@!b§(this.§&!8§[param1.target]);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      private function §"6§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(_loc4_)
         {
            §§push(this.§3R§);
            if(_loc4_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     addr38:
                     if(!(param1.currentTarget is MovieClip))
                     {
                        return;
                     }
                     if(_loc4_)
                     {
                        _loc2_ = MovieClip(param1.currentTarget);
                        if(!(_loc3_ && _loc2_))
                        {
                           addr66:
                           if(this.§-a§ != this.§<!&§[_loc2_])
                           {
                              if(_loc4_)
                              {
                                 this.§@!b§(this.§<!&§[_loc2_]);
                                 if(_loc4_ || this)
                                 {
                                 }
                              }
                              else
                              {
                                 addr126:
                                 mNextState = §8"D§.STATE_NAME;
                              }
                           }
                           else if(this.§<!&§[_loc2_] < LevelManager.§@!N§())
                           {
                              if(_loc4_ || param1)
                              {
                                 LevelManager.§2?§ = this.§<!&§[_loc2_];
                                 if(_loc4_ || this)
                                 {
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr126);
                           }
                        }
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr66);
               }
               addr130:
               return;
            }
            §§goto(addr38);
         }
         §§goto(addr66);
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
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() == §1-§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     this.§-"7§();
                     loop1:
                     while(true)
                     {
                        this.§0c§();
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 if(mNextState.length <= 0)
                                 {
                                    break;
                                 }
                                 if(_loc3_ || param1)
                                 {
                                    if(!_loc4_)
                                    {
                                       return §1-§.STATE_STATUS_COMPLETED;
                                    }
                                    addr90:
                                    return _loc2_;
                                 }
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        return §1-§.STATE_STATUS_RUNNING;
                     }
                  }
               }
            }
            §§goto(addr90);
         }
         §§goto(addr92);
      }
      
      private function §0c§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() >= this.§1!O§.length)
               {
                  if(!(_loc3_ && this))
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§1!O§);
                           while(true)
                           {
                              §§push(_loc1_);
                              while(true)
                              {
                                 §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                                 while(true)
                                 {
                                    §§push(this.§1!O§);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       addr159:
                                       while(true)
                                       {
                                          §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                          addr166:
                                          while(_loc4_ || _loc1_)
                                          {
                                             §§push(this.§1!O§);
                                             continue loop6;
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             §§push(Number(Math.abs(_loc2_)));
                                             addr240:
                                             addr265:
                                             loop17:
                                             for(; !(_loc3_ && this); if(_loc4_ || _loc1_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop16;
                                             })
                                             {
                                                _loc2_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * 0.55);
                                                      loop20:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     if(§§pop() > 1000)
                                                                     {
                                                                        while(_loc4_)
                                                                        {
                                                                           §§push(1000);
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        continue;
                                                                        addr196:
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               while(!(_loc3_ && _loc3_))
                                                               {
                                                                  continue loop17;
                                                               }
                                                               continue loop20;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                continue loop16;
                                                §§goto(addr240);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        _loc2_ = §§pop();
                     }
                  }
                  §§goto(addr54);
               }
               else
               {
                  §§push(this.§1!R§.x + this.§1!O§[_loc1_].x - AngryBirdsFP11.§=!u§ / 2);
               }
               §§goto(addr265);
            }
            §§goto(addr199);
         }
      }
      
      private function §-"7§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_ || this)
            {
               §§push(this.§#o§);
               if(_loc4_ || _loc3_)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     if(_loc4_ || this)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           if(_loc4_ || _loc2_)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 this.§^"%§ = this.§1!R§.x;
                                 addr79:
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc4_)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       loop33:
                                       while(true)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             loop4:
                                             while(true)
                                             {
                                                §§push(this.§#o§);
                                                loop5:
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop().length)
                                                   {
                                                      §§push(this.§#o§);
                                                      break;
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(this.§#o§);
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§pop()[§§pop()].gotoAndStop("Selected");
                                                            loop9:
                                                            while(true)
                                                            {
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(-this.§1!R§.x);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(800);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           loop13:
                                                                           for(; !_loc3_; if(_loc3_)
                                                                           {
                                                                              continue;
                                                                           },§§goto(addr194),§§push(-§§pop()))
                                                                           {
                                                                              §§push(this.§1!O§);
                                                                              loop14:
                                                                              for(; _loc4_ || _loc1_; §§push(this.§1!O§),if(!(_loc4_ || _loc2_))
                                                                              {
                                                                                 continue;
                                                                              },if(_loc4_)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                       if(_loc4_ || _loc1_)
                                                                                       {
                                                                                          §§goto(addr222);
                                                                                       }
                                                                                       §§goto(addr303);
                                                                                    }
                                                                                    §§goto(addr342);
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              },§§goto(addr386))
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                    if(!(_loc3_ && _loc1_))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             loop16:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop17:
                                                                                                   while(!_loc3_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      loop18:
                                                                                                      while(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         addr241:
                                                                                                         if(_loc4_ || _loc1_)
                                                                                                         {
                                                                                                            _loc2_ = §§pop();
                                                                                                            loop19:
                                                                                                            while(!(_loc3_ && _loc2_))
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               loop20:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  addr98:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     §§push(this.§#o§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc4_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        if(§§pop() >= §§pop().length)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§#o§);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(_loc1_);
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc3_ && _loc1_)
                                                                                                                                    {
                                                                                                                                       continue loop8;
                                                                                                                                    }
                                                                                                                                    if(_loc4_ || this)
                                                                                                                                    {
                                                                                                                                       §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             break loop16;
                                                                                                                                          }
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       addr135:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                       }
                                                                                                                                       addr329:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                       addr166:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ || _loc2_))
                                                                                                                                          {
                                                                                                                                             continue loop17;
                                                                                                                                          }
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             _loc2_++;
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop20;
                                                                                                                                                }
                                                                                                                                                continue loop6;
                                                                                                                                             }
                                                                                                                                             addr140:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr163:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc2_++;
                                                                                                                                    continue loop3;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc3_ && _loc1_)
                                                                                                                                    {
                                                                                                                                       continue loop7;
                                                                                                                                    }
                                                                                                                                    if(!(_loc4_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       break loop5;
                                                                                                                                    }
                                                                                                                                    §§push(_loc2_);
                                                                                                                                 }
                                                                                                                                 addr148:
                                                                                                                              }
                                                                                                                              §§goto(addr163);
                                                                                                                           }
                                                                                                                           addr111:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(this.§#o§);
                                                                                                                        }
                                                                                                                        §§goto(addr148);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         addr374:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc2_ = §§pop();
                                                                                                            continue loop33;
                                                                                                            §§goto(addr241);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   §§goto(addr306);
                                                                                                }
                                                                                                break;
                                                                                                addr222:
                                                                                                if(_loc4_ || _loc1_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr392);
                                                                                             }
                                                                                             _loc1_++;
                                                                                             continue loop0;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr305:
                                                                                                §§pop();
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§^"%§);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   addr194:
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   addr384:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§1!O§);
                                                                                                      break loop21;
                                                                                                   }
                                                                                                   §§goto(addr305);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc1_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                      addr390:
                                                                                                      while(§§pop())
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§^"%§);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               break loop13;
                                                                                                            }
                                                                                                            break loop13;
                                                                                                         }
                                                                                                      }
                                                                                                      addr369:
                                                                                                      addr342:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         break loop10;
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                      if(_loc3_ && _loc2_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                      if(!(_loc3_ && this))
                                                                                                      {
                                                                                                         §§goto(addr369);
                                                                                                      }
                                                                                                      §§goto(addr390);
                                                                                                   }
                                                                                                }
                                                                                                addr306:
                                                                                                addr386:
                                                                                             }
                                                                                             §§goto(addr352);
                                                                                          }
                                                                                          addr303:
                                                                                          §§goto(addr305);
                                                                                       }
                                                                                       §§goto(addr391);
                                                                                    }
                                                                                    §§goto(addr303);
                                                                                 }
                                                                              }
                                                                              §§goto(addr342);
                                                                              §§push(_loc1_);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr341);
                                                                           }
                                                                           addr277:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr383:
                                                                        }
                                                                        §§goto(addr384);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr382:
                                                                     }
                                                                     §§goto(addr383);
                                                                  }
                                                                  §§goto(addr277);
                                                               }
                                                               addr371:
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(0);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr393);
                                                                  }
                                                                  §§goto(addr374);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr329);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr371);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr79);
                  }
                  else
                  {
                     §§push(-this.§1!R§.x);
                  }
                  §§goto(addr382);
               }
               §§goto(addr102);
            }
            §§goto(addr98);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.deActivate();
            while(true)
            {
               §#6§.§6!z§.clearLevel();
               while(!(_loc2_ && _loc2_))
               {
                  (§6w§.getItemByName("Button_Back") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr64:
               }
            }
         }
         §§goto(addr64);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc7_ || param2)
         {
            §§push("BACK");
            if(_loc7_)
            {
               §§push(_loc4_);
               if(!(_loc6_ && param3))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(_loc6_ && param1)
                        {
                           addr290:
                        }
                     }
                     else
                     {
                        addr275:
                        §§push(2);
                        if(_loc7_ || param2)
                        {
                           addr283:
                        }
                     }
                  }
                  else
                  {
                     §§push("PREV");
                     if(!(_loc6_ && param1))
                     {
                        §§push(_loc4_);
                        if(_loc7_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc7_ || param1)
                              {
                                 addr237:
                                 §§push(1);
                                 if(!(_loc7_ || param2))
                                 {
                                    §§goto(addr283);
                                 }
                              }
                              else
                              {
                                 §§goto(addr275);
                              }
                           }
                           else
                           {
                              §§push("NEXT");
                              if(!(_loc6_ && param1))
                              {
                                 addr254:
                                 §§push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          §§goto(addr275);
                                       }
                                    }
                                    else
                                    {
                                       addr286:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr295:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §>!E§.§7N§("Menu_Back");
                                                if(_loc7_ || this)
                                                {
                                                   addr33:
                                                   mNextState = §#;§.STATE_NAME;
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      break;
                                                   }
                                                }
                                                addr121:
                                                §§push((_loc4_ = this).§-a§);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                var _loc5_:* = §§pop();
                                                if(_loc7_)
                                                {
                                                   _loc4_.§-a§ = _loc5_;
                                                }
                                                if(_loc7_)
                                                {
                                                   this.§@!b§(this.§-a§);
                                                   addr148:
                                                }
                                                else
                                                {
                                                   AngryBirdsFP11.§@<§.§'!+§();
                                                   addr177:
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr182:
                                                      }
                                                      addr165:
                                                      break;
                                                   }
                                                   break;
                                                   addr177:
                                                }
                                                §§goto(addr182);
                                             case 1:
                                                §>!E§.§7N§("Menu_Confirm");
                                                if(!(_loc6_ && this))
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr33);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§3R§);
                                                      if(_loc7_ || param1)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc7_ || param2)
                                                            {
                                                               §§push((_loc4_ = this).§-a§);
                                                               if(_loc7_ || this)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                               }
                                                               _loc5_ = §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  _loc4_.§-a§ = _loc5_;
                                                               }
                                                               if(!(_loc6_ && param3))
                                                               {
                                                                  this.§@!b§(this.§-a§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr109:
                                                                     break;
                                                                  }
                                                                  §§goto(addr121);
                                                               }
                                                               §§goto(addr177);
                                                            }
                                                            §§goto(addr121);
                                                         }
                                                         §§goto(addr109);
                                                      }
                                                      else
                                                      {
                                                         addr118:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr121);
                                                            }
                                                            break;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr148);
                                             case 2:
                                                §>!E§.§7N§("Menu_Confirm");
                                                if(_loc7_)
                                                {
                                                   §§goto(addr118);
                                                   §§push(this.§3R§);
                                                }
                                                §§goto(addr177);
                                             case 3:
                                                §>!E§.§7N§("Menu_Confirm");
                                                if(_loc7_ || param3)
                                                {
                                                   §§goto(addr177);
                                                }
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr295);
                                    §§goto(addr295);
                                 }
                              }
                              §§goto(addr286);
                           }
                        }
                        §§goto(addr286);
                     }
                     §§goto(addr254);
                  }
                  §§goto(addr295);
               }
               §§goto(addr286);
            }
            §§goto(addr254);
         }
         §§goto(addr237);
      }
      
      private function §@!b§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§3R§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               for(; §§pop() <= this.§1!O§.length - 1; if(!(_loc6_ || _loc3_))
               {
                  continue;
               },if(§§pop() < 0)
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§goto(addr75);
                     §§push(0);
                  }
                  §§goto(addr76);
               },§§goto(addr20))
               {
                  §§push(param1);
                  if(!(_loc5_ && this))
                  {
                     if(_loc6_ || _loc2_)
                     {
                        continue;
                     }
                     addr112:
                     while(true)
                     {
                        param1 = §§pop();
                        addr113:
                        while(true)
                        {
                           addr40:
                           while(true)
                           {
                              addr20:
                              while(true)
                              {
                                 this.§-a§ = param1;
                                 if(!(_loc6_ || param1))
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     addr75:
                     param1 = §§pop();
                  }
                  while(true)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        if(_loc5_)
                        {
                           break loop1;
                        }
                        continue;
                     }
                     §§goto(addr113);
                  }
                  §§push(-§§pop()[param1].x);
                  if(_loc6_)
                  {
                     addr132:
                     §§push(§§pop() + this.§>y§);
                     if(_loc6_)
                     {
                        addr131:
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(this.§1!R§.x - _loc2_);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     var _loc4_:*;
                     §§push(_loc4_ = Number(Math.abs(_loc3_)));
                     if(_loc6_ || _loc2_)
                     {
                        §§push(400);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(§§pop() / §§pop());
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                              if(!_loc5_)
                              {
                                 §§push(§§pop());
                                 if(_loc6_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc5_)
                                    {
                                       §§push(§-!9§);
                                       if(_loc6_)
                                       {
                                          addr198:
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_)
                                          {
                                             addr229:
                                             §§push(Number(§§pop()));
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                addr209:
                                                §§push(§§pop());
                                             }
                                             _loc4_ = §§pop();
                                             if(_loc6_ || this)
                                             {
                                                addr312:
                                                §§push(this.§@"0§);
                                                if(!_loc5_)
                                                {
                                                   if(§§pop() != null)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§@"0§);
                                                         addr320:
                                                         while(true)
                                                         {
                                                            §§pop().stop();
                                                            addr321:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr271:
                                                         if(!(_loc6_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         return;
                                                         addr278:
                                                      }
                                                   }
                                                   loop9:
                                                   while(true)
                                                   {
                                                      this.§@"0§ = §>!+§.§;"§.§^!K§(this.§1!R§,{"x":_loc2_},null,_loc4_,§>!+§.§;U§);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(this.§@"0§);
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§pop().onComplete = this.§8"+§;
                                                            addr295:
                                                            while(true)
                                                            {
                                                               §§push(this.§@"0§);
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(!_loc5_)
                                                               {
                                                                  §§pop().play();
                                                                  if(_loc5_ && _loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                               §§goto(addr320);
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr320);
                                             }
                                             §§goto(addr295);
                                          }
                                          §§goto(addr209);
                                       }
                                       _loc4_ = §§pop();
                                       if(!(_loc5_ && this))
                                       {
                                          addr218:
                                          if(§§pop() > 1)
                                          {
                                             if(_loc6_ || this)
                                             {
                                                §§goto(addr229);
                                                §§push(Number(1));
                                             }
                                             §§goto(addr278);
                                          }
                                          §§goto(addr312);
                                       }
                                    }
                                    §§goto(addr229);
                                 }
                                 §§goto(addr198);
                              }
                              §§goto(addr218);
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr229);
                  }
                  §§goto(addr131);
               }
            }
         }
         while(true)
         {
            §§push(this.§1!O§);
            if(_loc6_ || param1)
            {
               §§push(§§pop().length - 1);
               if(!(_loc5_ && param1))
               {
                  §§goto(addr112);
                  §§push(int(§§pop()));
               }
               §§goto(addr132);
            }
            §§goto(addr120);
         }
      }
      
      private function §8"+§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() >= this.§#o§.length)
               {
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           this.§3R§ = false;
                           addr50:
                           if(_loc2_)
                           {
                              break;
                           }
                           addr96:
                           this.§#o§[_loc1_].gotoAndStop("Selected");
                           addr93:
                        }
                        addr53:
                        loop1:
                        while(true)
                        {
                           _loc1_++;
                           addr86:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                        addr53:
                     }
                     while(_loc3_ && _loc3_)
                     {
                        §§goto(addr86);
                        §§goto(addr53);
                     }
                     continue;
                  }
                  §§goto(addr50);
               }
               else
               {
                  addr90:
                  if(_loc1_ == this.§-a§)
                  {
                     §§goto(addr93);
                  }
                  else
                  {
                     §§push(this.§#o§);
                     if(!_loc3_)
                     {
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr86);
                        }
                        else
                        {
                           §§goto(addr96);
                        }
                     }
                     else
                     {
                        §§goto(addr96);
                     }
                     §§goto(addr96);
                  }
               }
               §§goto(addr96);
            }
            §§goto(addr90);
         }
      }
   }
}
