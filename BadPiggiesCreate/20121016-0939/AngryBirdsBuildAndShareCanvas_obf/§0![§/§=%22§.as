package §0![§
{
   import §"v§.§"! §;
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§="#§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §="§ extends §5y§
   {
      
      public static const §'=§:String = "ChapterSelectionState";
      
      private static const §;w§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'=§ = "ChapterSelectionState";
            do
            {
               §;w§ = 0.5;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private var §&v§:Sprite;
      
      private var §`R§:§`!T§;
      
      private var §[!I§:Array;
      
      private var §+[§:Array;
      
      private var §[!s§:int = 0;
      
      private var §9!Q§:Number = 0;
      
      private var §?J§:Number = 0;
      
      private var §1"+§:Dictionary;
      
      private var §]S§:Dictionary;
      
      private var §4i§:§3^§ = null;
      
      private var §"!0§:Boolean = false;
      
      private var §1"?§:Number = 0;
      
      public function §="§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §?E§ = new §'s§(this);
               while(true)
               {
                  §?E§.init(§`7§.§>"?§.Views.View_ChapterSelection[0]);
                  while(_loc1_)
                  {
                     continue loop0;
                     this.§#!3§();
                     if(_loc1_)
                     {
                        return;
                        addr28:
                     }
                  }
               }
            }
         }
         §§goto(addr28);
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:§"! § = null;
         if(!(_loc7_ && this))
         {
            super.activate();
            if(!_loc7_)
            {
               addr33:
               §=!X§.§!'§.§;p§(false);
            }
            var _loc1_:int = 0;
            loop0:
            for each(_loc2_ in this.§[!I§)
            {
               _loc3_ = §3!w§.§2I§(_loc1_);
               if(_loc6_ || _loc2_)
               {
                  if(_loc2_.Textfield_ME_Score != null)
                  {
                     while(true)
                     {
                        _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§>" §.§4w§(_loc3_) + "/" + AngryBirdsFP11.§>" §.§%Y§(_loc3_);
                        addr165:
                        while(true)
                        {
                        }
                     }
                     addr140:
                  }
                  while(true)
                  {
                     if(_loc2_.Textfield_CollectedStars != null)
                     {
                        while(_loc6_)
                        {
                           _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§>" §.§var §(_loc3_) + "/" + AngryBirdsFP11.§>" §.§08§(_loc3_);
                           while(_loc6_)
                           {
                              while(true)
                              {
                              }
                           }
                           §§goto(addr140);
                           addr69:
                           if(_loc6_ || _loc2_)
                           {
                              addr86:
                              if(false)
                              {
                                 while(true)
                                 {
                                    if(_loc2_.Textfield_Score != null)
                                    {
                                       if(_loc6_ || _loc2_)
                                       {
                                          _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§>" §.§3"=§(_loc3_);
                                       }
                                       while(_loc6_)
                                       {
                                       }
                                       §§goto(addr133);
                                       addr108:
                                    }
                                    while(true)
                                    {
                                       _loc1_++;
                                       if(!_loc7_)
                                       {
                                          §§goto(addr69);
                                       }
                                       else
                                       {
                                          §§goto(addr108);
                                       }
                                    }
                                    §§goto(addr86);
                                 }
                                 addr88:
                              }
                              continue loop0;
                           }
                        }
                        continue;
                     }
                     §§goto(addr88);
                  }
               }
               §§goto(addr135);
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function §#!3§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§"! § = null;
         var _loc4_:String = null;
         if(!_loc6_)
         {
            this.§`R§ = §?E§.getItemByName("Container_ChapterSelection") as §`!T§;
            loop0:
            while(true)
            {
               addr35:
               while(true)
               {
                  this.§[!I§ = [];
                  continue loop0;
               }
            }
            addr47:
         }
         while(true)
         {
            this.§+[§ = [];
            if(_loc6_)
            {
               continue;
            }
            if(!_loc6_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr47);
            }
            §§goto(addr35);
         }
         var _loc1_:* = Number(0);
         if(_loc5_ || _loc2_)
         {
            this.§&v§ = new Sprite();
            while(true)
            {
               this.§&v§.y = AngryBirdsFP11.§>Y§ / 2;
               addr112:
               while(true)
               {
                  this.§9!Q§ = AngryBirdsFP11.§>!U§ / 2;
               }
            }
            addr127:
         }
         loop5:
         while(true)
         {
            this.§&v§.x = this.§9!Q§;
            loop6:
            while(_loc5_)
            {
               do
               {
                  this.§`R§.mClip.addChild(this.§&v§);
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        continue loop5;
                     }
                     continue loop6;
                  }
                  continue loop5;
               }
               while(false);
               
               var _loc2_:int = 0;
               while(_loc2_ < §3!w§.§!K§())
               {
                  _loc3_ = §3!w§.§2I§(_loc2_);
                  if(!(_loc6_ && _loc1_))
                  {
                     _loc4_ = "MovieClip_" + _loc3_.menuImage;
                     loop10:
                     while(true)
                     {
                        addr151:
                        while(true)
                        {
                           §§push(this.§;!;§(_loc4_,_loc1_,_loc2_));
                           if(_loc5_ || _loc1_)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc1_ = §§pop();
                           continue loop10;
                        }
                     }
                  }
                  while(false)
                  {
                     §§goto(addr151);
                  }
               }
               if(!_loc6_)
               {
                  §§push(this.§;!;§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_));
                  if(_loc5_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc6_ && _loc1_))
                     {
                        _loc1_ = §§pop();
                        if(_loc5_ || this)
                        {
                           _loc2_++;
                           loop18:
                           while(true)
                           {
                              §§push(this.§;!;§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_));
                              if(_loc5_)
                              {
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr245:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       addr246:
                                       while(!_loc5_)
                                       {
                                          continue loop18;
                                       }
                                    }
                                 }
                                 addr244:
                              }
                              §§goto(addr245);
                           }
                           addr215:
                        }
                        while(true)
                        {
                           this.§!!r§();
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§goto(addr246);
                        }
                        return;
                     }
                     §§goto(addr245);
                  }
                  §§goto(addr244);
               }
               §§goto(addr215);
            }
            §§goto(addr112);
         }
      }
      
      private function §!!r§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = Number(0);
         if(!_loc5_)
         {
            this.§1"+§ = new Dictionary();
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < this.§[!I§.length)
         {
            _loc1_ = §>!]§.§1!8§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc6_ || _loc2_)
            {
               if(_loc4_ != this.§[!s§)
               {
                  _loc2_.gotoAndStop("UnSelected");
                  loop1:
                  while(true)
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        loop2:
                        while(true)
                        {
                           _loc2_.x = AngryBirdsFP11.§>!U§ / 2 + _loc3_ - this.§[!I§.length * _loc2_.width / 2;
                           loop3:
                           while(true)
                           {
                              _loc2_.y = (§?E§.getItemByName("Button_Next") as §="#§).y - _loc2_.height / 2;
                              loop4:
                              while(true)
                              {
                                 this.§`R§.mClip.addChild(_loc2_);
                                 while(true)
                                 {
                                    _loc2_.buttonMode = true;
                                    addr127:
                                    while(true)
                                    {
                                       this.§1"+§[_loc2_] = _loc4_;
                                       addr122:
                                       while(true)
                                       {
                                          this.§+[§.push(_loc2_);
                                          addr115:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(_loc6_ || _loc2_)
                                             {
                                                §§push(Number(§§pop() + _loc2_.width));
                                             }
                                             _loc3_ = §§pop();
                                             continue loop3;
                                          }
                                       }
                                    }
                                    addr57:
                                    if(_loc5_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(true)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§%"6§);
                                       loop11:
                                       while(!_loc5_)
                                       {
                                          if(_loc6_)
                                          {
                                             if(_loc6_)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc4_++;
                                                               if(_loc5_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr57);
                                                            }
                                                            continue loop0;
                                                            addr87:
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr127);
                                             }
                                             §§goto(addr122);
                                          }
                                          §§goto(addr115);
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                        addr150:
                     }
                     else
                     {
                        while(true)
                        {
                           _loc2_.gotoAndStop("Selected");
                        }
                        addr197:
                     }
                     while(true)
                     {
                        §§goto(addr150);
                     }
                  }
               }
               §§goto(addr197);
            }
            §§goto(addr87);
         }
         if(!(_loc5_ && this))
         {
            §§push(this.§[!I§.length * _loc2_.width);
            if(_loc6_)
            {
               §§push(§§pop() / 2);
               if(_loc6_ || this)
               {
                  §§goto(addr230);
               }
               §§goto(addr242);
            }
            addr230:
            §§push(§§pop() + _loc2_.width * 1.5);
            if(!(_loc5_ && this))
            {
               addr242:
               §§push(Number(§§pop()));
            }
            _loc3_ = §§pop();
            if(_loc6_ || _loc3_)
            {
               (§?E§.getItemByName("Button_Next") as §="#§).x = AngryBirdsFP11.§>!U§ / 2;
               loop15:
               do
               {
                  (§?E§.getItemByName("Button_Prev") as §="#§).x = AngryBirdsFP11.§>!U§ / 2;
                  while(true)
                  {
                     (§?E§.getItemByName("Button_Next") as §="#§).x = (§?E§.getItemByName("Button_Next") as §="#§).x + (_loc3_ + 10);
                     while(!_loc5_)
                     {
                        (§?E§.getItemByName("Button_Prev") as §="#§).x = (§?E§.getItemByName("Button_Prev") as §="#§).x - (_loc3_ + 10);
                        if(_loc6_ || _loc1_)
                        {
                           continue loop15;
                        }
                     }
                  }
               }
               while(_loc5_);
               
               addr251:
            }
            return;
         }
         §§goto(addr251);
      }
      
      private function §;!;§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§"! § = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(!(_loc8_ && param1))
         {
            if(§>!]§.§6!J§(param1))
            {
               addr36:
               _loc4_ = §3!w§.§2I§(param3);
               (_loc6_ = new (_loc5_ = §>!]§.§1!8§(param1))()).x = param2;
               if(!(_loc8_ && param3))
               {
                  this.§&v§.addChild(_loc6_);
               }
               while(true)
               {
                  this.§[!I§.push(_loc6_);
                  loop1:
                  while(_loc7_ || param2)
                  {
                     §§push(param2);
                     if(_loc7_)
                     {
                        §§push(§§pop() + _loc6_.width * 1.55);
                        if(!_loc8_)
                        {
                           addr194:
                           §§push(Number(§§pop()));
                        }
                        param2 = §§pop();
                        loop2:
                        while(true)
                        {
                           this.§]S§[_loc6_] = param3;
                           loop3:
                           while(true)
                           {
                              _loc6_.addEventListener(MouseEvent.CLICK,this.§9,§);
                              loop4:
                              while(true)
                              {
                                 _loc6_.buttonMode = true;
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    if(_loc6_.Textfield_CollectedStars != null)
                                    {
                                       if(_loc7_)
                                       {
                                          _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§>" §.§var §(_loc4_) + "/" + AngryBirdsFP11.§>" §.§08§(_loc4_);
                                       }
                                       while(true)
                                       {
                                          addr118:
                                          if(!(_loc7_ || param3))
                                          {
                                             continue;
                                          }
                                          _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§>" §.§3"=§(_loc4_);
                                          loop9:
                                          while(!_loc8_)
                                          {
                                             while(_loc6_.Textfield_ME_Score != null)
                                             {
                                                if(!(_loc8_ && param2))
                                                {
                                                   _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§>" §.§4w§(_loc4_) + "/" + AngryBirdsFP11.§>" §.§%Y§(_loc4_);
                                                }
                                                if(_loc7_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop9;
                                             }
                                             return param2;
                                          }
                                          continue loop5;
                                          addr133:
                                       }
                                       addr158:
                                    }
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(_loc6_.Textfield_Score != null)
                                          {
                                             if(!_loc8_)
                                             {
                                                §§goto(addr118);
                                             }
                                             §§goto(addr133);
                                          }
                                          §§goto(addr61);
                                          addr101:
                                       }
                                       continue loop4;
                                       §§goto(addr158);
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     §§goto(addr194);
                  }
               }
            }
            §§goto(addr225);
         }
         §§goto(addr36);
      }
      
      private function §%"6§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§"!0§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§8!$§(this.§1"+§[param1.target]);
               }
            }
         }
      }
      
      private function §9,§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = null;
         if(!_loc4_)
         {
            §§push(this.§"!0§);
            if(!(_loc4_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     addr37:
                     if(!(param1.currentTarget is MovieClip))
                     {
                        return;
                     }
                     if(_loc3_)
                     {
                        addr40:
                        _loc2_ = MovieClip(param1.currentTarget);
                        if(!(_loc4_ && _loc2_))
                        {
                           addr65:
                           if(this.§[!s§ != this.§]S§[_loc2_])
                           {
                              if(_loc3_)
                              {
                                 this.§8!$§(this.§]S§[_loc2_]);
                                 if(_loc3_)
                                 {
                                    addr124:
                                    return;
                                    addr82:
                                 }
                                 §§goto(addr124);
                              }
                              addr120:
                              mNextState = §7B§.§'=§;
                           }
                           else if(this.§]S§[_loc2_] < §3!w§.§!K§())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §3!w§.§&"&§ = this.§]S§[_loc2_];
                                 if(!(_loc4_ && this))
                                 {
                                    §§goto(addr120);
                                 }
                              }
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr40);
               }
               §§goto(addr124);
            }
            §§goto(addr37);
         }
         §§goto(addr40);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() == §5y§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     this.§'!h§();
                     loop1:
                     while(_loc4_)
                     {
                        loop2:
                        while(true)
                        {
                           this.§&"8§();
                           while(mNextState.length > 0)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop2;
                                 }
                                 continue loop1;
                              }
                           }
                           return §5y§.STATE_STATUS_RUNNING;
                        }
                        if(!(_loc3_ && _loc2_))
                        {
                           return §5y§.STATE_STATUS_COMPLETED;
                        }
                     }
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr79);
      }
      
      private function §&"8§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() >= this.§[!I§.length)
               {
                  if(!_loc3_)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           if(_loc4_ || this)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop2:
                              while(true)
                              {
                                 §§push(§§pop() * 0.55);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop4:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop4;
                                          }
                                          if(_loc3_ && _loc2_)
                                          {
                                             continue loop3;
                                          }
                                          if(_loc3_ && _loc3_)
                                          {
                                             break;
                                          }
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                if(§§pop() <= 1000)
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(this.§[!I§);
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                                                            loop10:
                                                            while(_loc4_)
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(this.§[!I§);
                                                                     while(_loc4_)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        while(true)
                                                                        {
                                                                           §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                                                           addr125:
                                                                           while(_loc4_)
                                                                           {
                                                                              §§push(this.§[!I§);
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 addr85:
                                                                                 while(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                                                                    continue loop14;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        if(_loc3_ && _loc2_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(_loc1_);
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §§pop()[§§pop()].y = _loc2_ / 1000 * -200;
                                                                              while(true)
                                                                              {
                                                                                 _loc1_++;
                                                                                 addr53:
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    §§goto(addr125);
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              addr80:
                                                                           }
                                                                           §§goto(addr118);
                                                                        }
                                                                        §§goto(addr85);
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  addr232:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(Math.abs(_loc2_)));
                                                                     break loop5;
                                                                  }
                                                               }
                                                            }
                                                            addr187:
                                                            while(!_loc3_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(1000);
                                                   addr178:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      continue loop2;
                                                   }
                                                   §§goto(addr141);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr231:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                   }
                                                }
                                                addr230:
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr231);
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr53);
               }
               else
               {
                  §§push(this.§&v§.x + this.§[!I§[_loc1_].x - AngryBirdsFP11.§>!U§ / 2);
               }
               §§goto(addr230);
            }
            §§goto(addr178);
         }
      }
      
      private function §'!h§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc1_))
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(this.§+[§);
                  if(!_loc4_)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc3_ || _loc1_)
                           {
                              if(!_loc4_)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    this.§1"?§ = this.§&v§.x;
                                    addr75:
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       loop32:
                                       while(true)
                                       {
                                          §§push(this.§+[§);
                                          loop29:
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             loop26:
                                             while(true)
                                             {
                                                §§pop()[§§pop()].gotoAndStop("Selected");
                                                addr321:
                                                while(true)
                                                {
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      loop2:
                                                      do
                                                      {
                                                         §§push(-this.§&v§.x);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§push(800);
                                                               if(_loc3_ || this)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop7:
                                                                  for(; !_loc4_; §§push(this.§1"?§),if(_loc3_)
                                                                  {
                                                                     §§push(-§§pop());
                                                                  },if(_loc4_ && _loc2_)
                                                                  {
                                                                     continue;
                                                                  },if(_loc3_ || _loc2_)
                                                                  {
                                                                     §§goto(addr192);
                                                                  },§§goto(addr345))
                                                                  {
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(this.§[!I§);
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           addr287:
                                                                           loop9:
                                                                           while(!_loc4_)
                                                                           {
                                                                              §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(_loc3_)
                                                                                       {
                                                                                          §§pop();
                                                                                          while(_loc3_ || _loc2_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             addr309:
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                addr331:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                             }
                                                                                             continue loop32;
                                                                                          }
                                                                                          §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                          if(!(_loc3_ || _loc1_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop11:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      addr236:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc3_ || this)
                                                                                                         {
                                                                                                            _loc2_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  loop19:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     addr94:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§push(this.§+[§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc3_ || this)
                                                                                                                              {
                                                                                                                                 if(§§pop() >= §§pop().length)
                                                                                                                                 {
                                                                                                                                    loop22:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       if(!(_loc4_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(this.§+[§);
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc1_);
                                                                                                                                             if(_loc3_ || this)
                                                                                                                                             {
                                                                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr145:
                                                                                                                                                         break loop22;
                                                                                                                                                      }
                                                                                                                                                      addr169:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            _loc2_++;
                                                                                                                                                            continue loop19;
                                                                                                                                                         }
                                                                                                                                                         continue loop11;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr138:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                   addr341:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc2_++;
                                                                                                                                                      §§goto(addr331);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr338:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc3_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop26;
                                                                                                                                                   }
                                                                                                                                                   §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                }
                                                                                                                                                addr159:
                                                                                                                                             }
                                                                                                                                             §§goto(addr169);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   continue loop29;
                                                                                                                                                }
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr159);
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr154:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr338);
                                                                                                                                          }
                                                                                                                                          addr337:
                                                                                                                                       }
                                                                                                                                       §§goto(addr341);
                                                                                                                                    }
                                                                                                                                    loop12:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc1_++;
                                                                                                                                       addr82:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ && this))
                                                                                                                                          {
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr331);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr107);
                                                                                                                                          }
                                                                                                                                          continue loop12;
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    addr107:
                                                                                                                                    addr80:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(this.§+[§);
                                                                                                                                 }
                                                                                                                                 §§goto(addr154);
                                                                                                                              }
                                                                                                                              addr313:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() >= §§pop().length)
                                                                                                                                 {
                                                                                                                                    continue loop32;
                                                                                                                                 }
                                                                                                                                 §§goto(addr337);
                                                                                                                                 §§push(this.§+[§);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr98:
                                                                                                                        }
                                                                                                                        addr311:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr313);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr301);
                                                                                                               }
                                                                                                               §§goto(addr309);
                                                                                                            }
                                                                                                            addr244:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                            }
                                                                                                            addr373:
                                                                                                         }
                                                                                                         §§goto(addr374);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr80);
                                                                                             }
                                                                                             addr233:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr401:
                                                                                             §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§1"?§);
                                                                                                addr345:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   addr346:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr348:
                                                                                                      §§push(this.§[!I§);
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(_loc1_);
                                                                                                         break loop9;
                                                                                                      }
                                                                                                      addr395:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc1_);
                                                                                                         addr396:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                            addr399:
                                                                                                            while(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr401);
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         §§goto(addr348);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr402:
                                                                                          }
                                                                                       }
                                                                                       addr361:
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§goto(addr399);
                                                                                       addr298:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr233);
                                                                                    }
                                                                                    §§goto(addr311);
                                                                                 }
                                                                                 §§goto(addr400);
                                                                              }
                                                                              §§goto(addr298);
                                                                           }
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§goto(addr361);
                                                                              §§push(§§pop() < §§pop()[§§pop()].x);
                                                                           }
                                                                           addr192:
                                                                           §§goto(addr396);
                                                                           §§push(this.§[!I§);
                                                                           if(_loc4_ && _loc1_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              §§push(_loc1_);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§goto(addr221);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr287);
                                                                              }
                                                                           }
                                                                           §§goto(addr348);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(800);
                                                                           addr382:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              break loop7;
                                                                           }
                                                                        }
                                                                        addr381:
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr395);
                                                                  }
                                                                  addr275:
                                                               }
                                                               §§goto(addr382);
                                                            }
                                                            §§goto(addr346);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      while(!§§pop());
                                                      
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§goto(addr373);
                                                         §§push(0);
                                                      }
                                                      §§goto(addr374);
                                                   }
                                                   §§goto(addr402);
                                                   continue loop26;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr321);
                              }
                              §§goto(addr244);
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr75);
                     }
                     else
                     {
                        §§push(-this.§&v§.x);
                     }
                     §§goto(addr381);
                  }
                  §§goto(addr98);
               }
               §§goto(addr236);
            }
            §§goto(addr94);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.deActivate();
            do
            {
               §=!X§.§!'§.clearLevel();
               do
               {
                  (§?E§.getItemByName("Button_Back") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc7_)
         {
            if("BACK" === _loc4_)
            {
               if(_loc6_)
               {
                  §§push(0);
                  if(_loc7_ && param3)
                  {
                     addr262:
                  }
               }
               else
               {
                  addr244:
                  §§push(3);
                  if(!(_loc7_ && param3))
                  {
                     §§goto(addr262);
                  }
               }
               §§goto(addr267);
            }
            else if("PREV" === _loc4_)
            {
               if(_loc6_ || param2)
               {
                  §§push(1);
                  if(_loc7_ && param3)
                  {
                     §§goto(addr262);
                  }
               }
               else
               {
                  §§goto(addr244);
               }
               §§goto(addr267);
            }
            else
            {
               if("NEXT" !== _loc4_)
               {
                  if("FULLSCREEN_BUTTON" === _loc4_)
                  {
                     §§goto(addr244);
                  }
                  else
                  {
                     §§push(4);
                  }
                  addr267:
                  loop2:
                  switch(§§pop())
                  {
                     case 0:
                        §5!U§.playSound("Menu_Back");
                        if(_loc7_)
                        {
                           loop0:
                           while(true)
                           {
                              AngryBirdsFP11.§%d§.§9+§();
                              if(!(_loc6_ || param3))
                              {
                                 break loop2;
                              }
                              if(_loc6_ || param2)
                              {
                                 if(false)
                                 {
                                    addr174:
                                    break loop2;
                                    addr173:
                                 }
                                 break loop2;
                              }
                              addr179:
                              while(!(_loc7_ && this))
                              {
                                 continue loop0;
                              }
                              §§goto(addr173);
                           }
                           break;
                        }
                        addr32:
                        mNextState = §]x§.§'=§;
                        if(_loc6_)
                        {
                           break;
                        }
                        addr82:
                        this.§8!$§(this.§[!s§);
                        if(_loc6_ || param1)
                        {
                           addr93:
                           break;
                        }
                        this.§8!$§(this.§[!s§);
                        addr152:
                        §§goto(addr191);
                     case 1:
                        §5!U§.playSound("Menu_Confirm");
                        if(!(_loc7_ && this))
                        {
                           if(false)
                           {
                              §§goto(addr32);
                           }
                           else
                           {
                              §§push(this.§"!0§);
                              if(_loc6_ || param1)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc7_ && this)
                                    {
                                       addr110:
                                       §§push((_loc4_ = this).§[!s§);
                                       if(_loc6_ || this)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(!(_loc7_ && this))
                                       {
                                          _loc4_.§[!s§ = _loc5_;
                                       }
                                       if(_loc6_ || param1)
                                       {
                                       }
                                       break;
                                    }
                                    addr65:
                                    §§push((_loc4_ = this).§[!s§);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc5_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       _loc4_.§[!s§ = _loc5_;
                                    }
                                    if(_loc6_)
                                    {
                                       §§goto(addr82);
                                    }
                                    §§goto(addr93);
                                    §§goto(addr152);
                                 }
                                 §§goto(addr93);
                              }
                              else
                              {
                                 addr107:
                                 if(!§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       §§goto(addr110);
                                    }
                                    §§goto(addr191);
                                 }
                              }
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr65);
                     case 2:
                        §5!U§.playSound("Menu_Confirm");
                        if(!(_loc7_ && this))
                        {
                           §§goto(addr107);
                           §§push(this.§"!0§);
                        }
                        §§goto(addr110);
                     case 3:
                        §5!U§.playSound("Menu_Confirm");
                        §§goto(addr179);
                  }
                  return;
               }
               if(!_loc7_)
               {
                  addr237:
                  §§push(2);
                  if(_loc7_)
                  {
                     §§goto(addr262);
                  }
               }
               else
               {
                  §§goto(addr244);
               }
               §§goto(addr267);
            }
            §§goto(addr244);
         }
         §§goto(addr237);
      }
      
      private function §8!$§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§"!0§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(§§pop() <= this.§[!I§.length - 1)
               {
                  §§push(param1);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop() < 0)
                     {
                        if(_loc6_ || _loc2_)
                        {
                           if(!_loc5_)
                           {
                              if(!_loc6_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(0);
                                 addr60:
                                 while(true)
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop1;
                                       }
                                       param1 = §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          addr20:
                                          while(true)
                                          {
                                             this.§[!s§ = param1;
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             continue loop4;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          param1 = §§pop();
                                       }
                                       addr87:
                                    }
                                    §§goto(addr20);
                                 }
                              }
                           }
                           while(true)
                           {
                              addr35:
                              while(true)
                              {
                                 §§goto(addr20);
                                 continue loop0;
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr20);
                  }
                  §§goto(addr60);
               }
               §§push(this.§[!I§);
               if(_loc5_)
               {
                  break;
               }
               §§push(§§pop().length - 1);
               if(_loc6_)
               {
                  §§goto(addr87);
                  §§push(int(§§pop()));
               }
               else
               {
                  addr101:
                  §§push(§§pop() + this.§9!Q§);
                  if(!_loc5_)
                  {
                     addr106:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(this.§&v§.x - _loc2_);
                  if(!(_loc5_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  var _loc4_:*;
                  §§push(_loc4_ = Number(Math.abs(_loc3_)));
                  if(_loc6_)
                  {
                     §§push(400);
                     if(_loc6_)
                     {
                        §§push(§§pop() / §§pop());
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc5_ && this))
                           {
                              §§push(§§pop());
                              if(_loc6_ || param1)
                              {
                                 _loc4_ = §§pop();
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(§;w§);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc6_)
                                       {
                                       }
                                       addr190:
                                       §§push(_loc4_ = §§pop());
                                       if(_loc6_)
                                       {
                                          addr193:
                                          if(§§pop() > 1)
                                          {
                                             if(_loc6_)
                                             {
                                                addr199:
                                                _loc4_ = Number(1);
                                                if(_loc6_ || _loc2_)
                                                {
                                                   addr279:
                                                   §§push(this.§4i§);
                                                   while(true)
                                                   {
                                                      if(§§pop() != null)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§4i§);
                                                            addr285:
                                                            while(true)
                                                            {
                                                               §§pop().stop();
                                                               addr286:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         addr283:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§4i§ = §7!E§.§2=§.§<!C§(this.§&v§,{"x":_loc2_},null,_loc4_,§7!E§.§5!+§);
                                                      }
                                                   }
                                                   addr281:
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(this.§4i§);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§pop().onComplete = this.§ ""§;
                                                      addr243:
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr286);
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr190);
                                 }
                                 §§push(Number(§§pop()));
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§goto(addr190);
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr199);
               }
            }
            §§push(-§§pop()[param1].x);
            if(_loc6_)
            {
               §§goto(addr101);
            }
            §§goto(addr106);
         }
         §§goto(addr59);
      }
      
      private function § ""§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               if(§§pop() >= this.§+[§.length)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§"!0§ = false;
                  }
                  if(_loc2_ || _loc2_)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                     addr111:
                     this.§+[§[_loc1_].gotoAndStop("Selected");
                     addr108:
                     while(true)
                     {
                        addr66:
                        while(true)
                        {
                           _loc1_++;
                        }
                     }
                     addr114:
                  }
                  loop1:
                  for(; !(_loc2_ || _loc1_); §§goto(addr66))
                  {
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                        §§goto(addr114);
                     }
                  }
                  continue;
               }
               addr95:
               if(_loc1_ == this.§[!s§)
               {
                  §§goto(addr108);
               }
               else
               {
                  §§push(this.§+[§);
                  if(!_loc3_)
                  {
                     §§push(_loc1_);
                     if(!_loc3_)
                     {
                        §§pop()[§§pop()].gotoAndStop("UnSelected");
                        §§goto(addr89);
                     }
                     else
                     {
                        §§goto(addr111);
                     }
                  }
                  else
                  {
                     §§goto(addr111);
                  }
                  §§goto(addr111);
               }
               §§goto(addr111);
            }
            §§goto(addr95);
         }
      }
   }
}
