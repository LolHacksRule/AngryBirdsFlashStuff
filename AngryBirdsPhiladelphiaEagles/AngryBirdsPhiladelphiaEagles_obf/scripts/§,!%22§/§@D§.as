package §,!"§
{
   import §"U§.§[Q§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§7!K§;
   import §^]§.§`!K§;
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §@D§ extends §'!#§
   {
      
      public static const §-A§:String = "ChapterSelectionState";
      
      private static const §3!J§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §-A§ = "ChapterSelectionState";
         }
         do
         {
            §3!J§ = 0.5;
         }
         while(_loc1_);
         
      }
      
      private var §8!6§:Sprite;
      
      private var §+q§:§[Q§;
      
      private var §#c§:Array;
      
      private var §'`§:Array;
      
      private var §=!2§:int = 0;
      
      private var §"<§:Number = 0;
      
      private var §;!G§:Number = 0;
      
      private var §&y§:Dictionary;
      
      private var §"z§:Dictionary;
      
      private var §;;§:§[!9§ = null;
      
      private var §%`§:Boolean = false;
      
      private var §">§:Number = 0;
      
      public function §@D§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
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
            while(true)
            {
               §0q§ = new §`o§(this);
               loop1:
               while(!(_loc2_ && _loc1_))
               {
                  §0q§.init(§`Z§.§5c§.Views.View_ChapterSelection[0]);
                  while(true)
                  {
                     this.§'!-§();
                     if(_loc1_ || this)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr65);
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:§7!K§ = null;
         if(_loc6_ || _loc2_)
         {
            super.activate();
            if(!(_loc7_ && this))
            {
               addr38:
               §#! §.§`'§.§^!6§(false);
            }
            var _loc1_:int = 0;
            loop0:
            for each(_loc2_ in this.§#c§)
            {
               _loc3_ = §`!K§.§5!<§(_loc1_);
               if(!_loc7_)
               {
                  if(_loc2_.Textfield_ME_Score != null)
                  {
                     loop1:
                     while(true)
                     {
                        _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§`I§.§1R§(_loc3_) + "/" + AngryBirdsFP11.§`I§.§&!%§(_loc3_);
                        addr168:
                        while(true)
                        {
                        }
                        loop7:
                        while(true)
                        {
                           if(_loc7_ && _loc1_)
                           {
                              continue loop1;
                           }
                           _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§`I§.§;'§(_loc3_);
                           if(_loc6_ || _loc3_)
                           {
                              if(!_loc7_)
                              {
                                 while(true)
                                 {
                                    _loc1_++;
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    continue loop7;
                                 }
                                 while(false)
                                 {
                                 }
                                 continue loop0;
                                 addr65:
                                 addr69:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§`I§.§7!;§(_loc3_) + "/" + AngryBirdsFP11.§`I§.§;!3§(_loc3_);
                                    addr131:
                                    while(!(_loc7_ && _loc3_))
                                    {
                                    }
                                    §§goto(addr168);
                                 }
                                 addr116:
                              }
                              while(true)
                              {
                                 if(_loc2_.Textfield_Score != null)
                                 {
                                    continue loop7;
                                 }
                                 §§goto(addr65);
                              }
                              addr71:
                           }
                           §§goto(addr131);
                        }
                     }
                  }
                  while(true)
                  {
                     if(_loc2_.Textfield_CollectedStars != null)
                     {
                        §§goto(addr116);
                     }
                     §§goto(addr71);
                     §§goto(addr168);
                  }
               }
               §§goto(addr69);
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function §'!-§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§7!K§ = null;
         var _loc4_:String = null;
         if(!(_loc6_ && _loc1_))
         {
            this.§+q§ = §0q§.getItemByName("Container_ChapterSelection") as §[Q§;
            loop0:
            while(true)
            {
               addr50:
               while(true)
               {
                  this.§#c§ = [];
                  continue loop0;
               }
            }
            addr62:
         }
         while(true)
         {
            this.§'`§ = [];
            if(_loc6_ && _loc3_)
            {
               continue;
            }
            if(_loc5_ || _loc3_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr62);
            }
            §§goto(addr50);
         }
         var _loc1_:* = Number(0);
         this.§8!6§ = new Sprite();
         while(true)
         {
            this.§8!6§.y = AngryBirdsFP11.§8!4§ / 2;
            this.§"<§ = AngryBirdsFP11.§3!<§ / 2;
            while(true)
            {
               this.§8!6§.x = this.§"<§;
               if(!(_loc5_ || _loc3_))
               {
                  break;
               }
               while(true)
               {
                  this.§+q§.mClip.addChild(this.§8!6§);
                  this.§"z§ = new Dictionary();
                  if(!(_loc5_ || _loc3_))
                  {
                     break;
                  }
                  if(false)
                  {
                     continue;
                  }
                  var _loc2_:int = 0;
                  loop6:
                  while(_loc2_ < §`!K§.§<u§())
                  {
                     _loc3_ = §`!K§.§5!<§(_loc2_);
                     if(!_loc6_)
                     {
                        §§push("MovieClip_");
                        if(!_loc6_)
                        {
                           §§push(§§pop() + _loc3_.menuImage);
                        }
                        _loc4_ = §§pop();
                     }
                     loop7:
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(this.§8!M§(_loc4_,_loc1_,_loc2_));
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc1_ = §§pop();
                           while(!_loc6_)
                           {
                              _loc2_++;
                              if(_loc5_ || _loc3_)
                              {
                                 if(true)
                                 {
                                    break loop8;
                                 }
                                 continue loop8;
                              }
                           }
                           continue loop7;
                        }
                        continue loop6;
                     }
                  }
                  if(!_loc6_)
                  {
                     §§push(this.§8!M§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_));
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_)
                        {
                           _loc1_ = §§pop();
                           if(!(_loc6_ && this))
                           {
                              _loc2_++;
                              while(true)
                              {
                                 §§push(this.§8!M§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_));
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr251:
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                    }
                                    addr251:
                                 }
                                 §§goto(addr251);
                              }
                              addr254:
                              addr209:
                           }
                           while(true)
                           {
                              this.§"§();
                              if(!(_loc5_ || _loc1_))
                              {
                                 continue;
                              }
                              if(_loc5_)
                              {
                                 break;
                              }
                              §§goto(addr254);
                           }
                           return;
                        }
                     }
                     §§goto(addr251);
                  }
                  §§goto(addr209);
               }
            }
         }
      }
      
      private function §"§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = Number(0);
         if(_loc6_)
         {
            this.§&y§ = new Dictionary();
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.§#c§.length)
         {
            _loc1_ = §[!D§.§8!N§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ != this.§=!2§)
            {
               _loc2_.gotoAndStop("UnSelected");
               loop1:
               while(true)
               {
                  addr137:
                  while(true)
                  {
                     _loc2_.x = AngryBirdsFP11.§3!<§ / 2 + _loc3_ - this.§#c§.length * _loc2_.width / 2;
                     continue loop1;
                  }
               }
            }
            while(true)
            {
               _loc2_.gotoAndStop("Selected");
               §§goto(addr137);
            }
         }
         if(!_loc5_)
         {
            §§push(this.§#c§.length * _loc2_.width);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() / 2);
               if(!_loc5_)
               {
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(_loc6_ || _loc3_)
                  {
                  }
                  §§goto(addr225);
               }
               §§push(Number(§§pop()));
            }
            addr225:
            _loc3_ = §§pop();
            if(!_loc5_)
            {
               (§0q§.getItemByName("Button_Next") as §^'§).x = AngryBirdsFP11.§3!<§ / 2;
               loop14:
               while(true)
               {
                  (§0q§.getItemByName("Button_Prev") as §^'§).x = AngryBirdsFP11.§3!<§ / 2;
                  addr306:
                  while(true)
                  {
                     (§0q§.getItemByName("Button_Next") as §^'§).x = (§0q§.getItemByName("Button_Next") as §^'§).x + (_loc3_ + 10);
                     addr292:
                     while(_loc5_)
                     {
                        continue loop14;
                     }
                     continue loop14;
                  }
               }
               addr228:
            }
            while(true)
            {
               (§0q§.getItemByName("Button_Prev") as §^'§).x = (§0q§.getItemByName("Button_Prev") as §^'§).x - (_loc3_ + 10);
               if(_loc6_ || _loc1_)
               {
                  if(!(_loc5_ && this))
                  {
                     break;
                  }
                  §§goto(addr306);
               }
               §§goto(addr292);
            }
            return;
         }
         §§goto(addr228);
      }
      
      private function §8!M§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§7!K§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(!_loc7_)
         {
            if(§[!D§.§@1§(param1))
            {
               addr32:
               _loc4_ = §`!K§.§5!<§(param3);
               (_loc6_ = new (_loc5_ = §[!D§.§8!N§(param1))()).x = param2;
               if(_loc8_)
               {
                  this.§8!6§.addChild(_loc6_);
                  this.§#c§.push(_loc6_);
                  loop0:
                  while(true)
                  {
                     §§push(param2);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + _loc6_.width * 1.55);
                        if(!(_loc7_ && param3))
                        {
                           addr187:
                           §§push(Number(§§pop()));
                        }
                        param2 = §§pop();
                        loop1:
                        while(true)
                        {
                           this.§"z§[_loc6_] = param3;
                           _loc6_.addEventListener(MouseEvent.CLICK,this.§%!$§);
                           _loc6_.buttonMode = true;
                           while(!_loc7_)
                           {
                              if(_loc6_.Textfield_CollectedStars != null)
                              {
                                 _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§`I§.§7!;§(_loc4_) + "/" + AngryBirdsFP11.§`I§.§;!3§(_loc4_);
                                 while(true)
                                 {
                                 }
                                 addr138:
                              }
                              loop4:
                              while(true)
                              {
                                 if(_loc6_.Textfield_Score != null)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§`I§.§;'§(_loc4_);
                                          addr117:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr138);
                                    }
                                 }
                                 while(_loc6_.Textfield_ME_Score != null)
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       continue loop1;
                                    }
                                    addr96:
                                    if(_loc8_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr117);
                                 }
                                 §§goto(addr201);
                              }
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr187);
                  }
               }
               §§goto(addr109);
            }
            addr201:
            return param2;
         }
         §§goto(addr32);
      }
      
      private function §4s§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(!this.§%`§)
            {
               if(_loc3_)
               {
                  this.§?y§(this.§&y§[param1.target]);
               }
            }
         }
      }
      
      private function §%!$§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§%`§);
            if(!(_loc3_ && _loc3_))
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
                     if(_loc4_)
                     {
                        _loc2_ = MovieClip(param1.currentTarget);
                        §§goto(addr46);
                     }
                     §§goto(addr66);
                  }
                  addr46:
                  if(!_loc3_)
                  {
                     addr66:
                     if(this.§=!2§ != this.§"z§[_loc2_])
                     {
                        if(_loc3_ && _loc2_)
                        {
                        }
                     }
                     else if(this.§"z§[_loc2_] < §`!K§.§<u§())
                     {
                        if(_loc4_ || this)
                        {
                           §`!K§.§%;§ = this.§"z§[_loc2_];
                           if(_loc3_ && this)
                           {
                           }
                           §§goto(addr130);
                        }
                        mNextState = §0!5§.§-A§;
                     }
                     §§goto(addr130);
                  }
                  this.§?y§(this.§"z§[_loc2_]);
                  if(_loc3_)
                  {
                  }
                  §§goto(addr130);
               }
               addr130:
               return;
            }
            §§goto(addr43);
         }
         §§goto(addr46);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc3_)
         {
            if(§§pop() == §'!#§.STATE_STATUS_RUNNING)
            {
               this.§-S§();
               this.§7!P§();
               if(mNextState.length <= 0)
               {
                  return §'!#§.STATE_STATUS_RUNNING;
               }
               if(!(_loc3_ && _loc2_))
               {
                  return §'!#§.STATE_STATUS_COMPLETED;
               }
            }
            return _loc2_;
         }
      }
      
      private function §7!P§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() >= this.§#c§.length)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     break;
                  }
               }
               else
               {
                  §§push(this.§8!6§.x + this.§#c§[_loc1_].x - AngryBirdsFP11.§3!<§ / 2);
                  do
                  {
                     _loc2_ = Number(§§pop());
                     §§push(Number(Math.abs(_loc2_)));
                     do
                     {
                        _loc2_ = §§pop();
                        §§push(Number(_loc2_ * 0.55));
                     }
                     while(_loc4_ && _loc2_);
                     
                  }
                  while(_loc4_ && _loc2_);
                  
                  _loc2_ = §§pop();
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc3_)
                     {
                        if(§§pop() > 1000)
                        {
                           §§push(1000);
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr146:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                           }
                           addr145:
                        }
                        while(true)
                        {
                           §§push(this.§#c§);
                           loop9:
                           while(true)
                           {
                              §§push(_loc1_);
                              loop10:
                              while(true)
                              {
                                 §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                                 addr137:
                                 while(true)
                                 {
                                    §§push(this.§#c§);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       addr118:
                                       while(true)
                                       {
                                          §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                          §§push(this.§#c§);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             addr104:
                                             while(true)
                                             {
                                                §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                                §§push(this.§#c§);
                                                if(_loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop6;
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                    continue loop10;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr146);
                  }
               }
               §§goto(addr137);
            }
            §§goto(addr145);
         }
      }
      
      private function §-S§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc2_))
            {
               §§push(this.§'`§);
               if(_loc4_ || _loc2_)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           if(!(_loc3_ && _loc1_))
                           {
                              this.§">§ = this.§8!6§.x;
                              addr67:
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue;
                           }
                           loop1:
                           while(true)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr75:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          §§push(this.§'`§);
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(§§pop() >= §§pop().length)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(this.§'`§);
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§pop()[§§pop()].gotoAndStop("Selected");
                                                               addr121:
                                                            }
                                                            else
                                                            {
                                                               addr131:
                                                               if(_loc4_ || this)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                     continue loop1;
                                                                  }
                                                                  loop30:
                                                                  while(true)
                                                                  {
                                                                     §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                     _loc2_++;
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        addr272:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           addr252:
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§'`§);
                                                                              addr254:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() < §§pop().length)
                                                                                 {
                                                                                    §§push(this.§'`§);
                                                                                    break;
                                                                                 }
                                                                                 §§push(this.§'`§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    addr259:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(-this.§8!6§.x);
                                                                                          §§push(800);
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(this.§#c§);
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc1_);
                                                                                                      addr223:
                                                                                                      addr300:
                                                                                                      while(_loc4_)
                                                                                                      {
                                                                                                         §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                         if(_loc4_ || this)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr241:
                                                                                                                     loop26:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_ || _loc2_)
                                                                                                                        {
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        addr306:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                           continue loop26;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc1_);
                                                                                                                        addr321:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                                           addr324:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              addr325:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       §§push(-this.§">§);
                                                                                                                                       break loop23;
                                                                                                                                    }
                                                                                                                                    addr326:
                                                                                                                                 }
                                                                                                                                 addr305:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr306);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr241:
                                                                                                                     addr320:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr193:
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        addr70:
                                                                                                                        _loc1_++;
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     §§push(0);
                                                                                                                     loop27:
                                                                                                                     while(!_loc3_)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        addr307:
                                                                                                                        addr307:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           break loop27;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        addr309:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr307);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr325);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr326);
                                                                                                         }
                                                                                                         §§goto(addr241);
                                                                                                      }
                                                                                                      while(_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr305);
                                                                                                         §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                      }
                                                                                                      §§goto(addr321);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(800);
                                                                                                      addr317:
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   addr316:
                                                                                                }
                                                                                                §§goto(addr241);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr317);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr299);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr278:
                                                                              while(true)
                                                                              {
                                                                                 continue loop30;
                                                                              }
                                                                           }
                                                                           §§goto(addr272);
                                                                        }
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            §§goto(addr70);
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   else
                                                   {
                                                      addr130:
                                                      §§push(_loc2_);
                                                   }
                                                   §§goto(addr131);
                                                }
                                                else
                                                {
                                                   §§push(this.§'`§);
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr254);
                                          }
                                          addr86:
                                       }
                                       §§goto(addr252);
                                    }
                                    §§goto(addr196);
                                 }
                              }
                           }
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr67);
                  }
                  else
                  {
                     §§push(-this.§8!6§.x);
                  }
                  §§goto(addr316);
               }
               §§goto(addr86);
            }
            §§goto(addr75);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            do
            {
               §#! §.§`'§.clearLevel();
               do
               {
                  (§0q§.getItemByName("Button_Back") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               while(!_loc1_);
               
            }
            while(_loc2_);
            
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc6_ || param3)
         {
            §§push("BACK");
            if(!(_loc7_ && param1))
            {
               §§push(_loc4_);
               if(!_loc7_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc7_ && param2))
                     {
                        addr189:
                        §§push(0);
                        if(_loc7_)
                        {
                        }
                        §§goto(addr250);
                     }
                     else
                     {
                        §§goto(addr212);
                     }
                  }
                  else
                  {
                     §§push("PREV");
                     if(_loc6_ || param3)
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           addr204:
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_ || this)
                              {
                                 addr212:
                                 §§push(1);
                                 if(_loc7_)
                                 {
                                 }
                              }
                              §§goto(addr250);
                           }
                           else
                           {
                              §§push("NEXT");
                              if(_loc6_)
                              {
                                 addr229:
                                 §§push(_loc4_);
                                 if(!_loc7_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(2);
                                          if(!_loc7_)
                                          {
                                             §§goto(addr250);
                                          }
                                          else
                                          {
                                             §§goto(addr245);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr241:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr250:
                                          loop1:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §[!7§.playSound("Menu_Back");
                                                if(_loc6_)
                                                {
                                                   addr25:
                                                   mNextState = §8j§.§-A§;
                                                   break;
                                                }
                                                this.§?y§(this.§=!2§);
                                                addr147:
                                                break;
                                                addr146:
                                                addr123:
                                                addr157:
                                                break;
                                             case 1:
                                                §[!7§.playSound("Menu_Confirm");
                                                if(false)
                                                {
                                                   §§goto(addr25);
                                                }
                                                else
                                                {
                                                   §§push(this.§%`§);
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§push((_loc4_ = this).§=!2§);
                                                         if(_loc6_ || this)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         var _loc5_:* = §§pop();
                                                         if(_loc6_ || param2)
                                                         {
                                                            _loc4_.§=!2§ = _loc5_;
                                                         }
                                                         this.§?y§(this.§=!2§);
                                                         if(_loc7_)
                                                         {
                                                            addr144:
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr146);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   addr87:
                                                   if(!§§pop())
                                                   {
                                                      §§push((_loc4_ = this).§=!2§);
                                                      if(!(_loc7_ && param3))
                                                      {
                                                         §§push(§§pop() + 1);
                                                      }
                                                      _loc5_ = §§pop();
                                                      if(_loc6_ || param1)
                                                      {
                                                         _loc4_.§=!2§ = _loc5_;
                                                      }
                                                      §§goto(addr123);
                                                   }
                                                   §§goto(addr147);
                                                }
                                             case 2:
                                                §[!7§.playSound("Menu_Confirm");
                                                §§goto(addr87);
                                             case 3:
                                                §[!7§.playSound("Menu_Confirm");
                                                §§push(this.§%`§);
                                                while(true)
                                                {
                                                   AngryBirdsFP11.§`y§.§,,§();
                                                   if(_loc6_ || param3)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§goto(addr144);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr157);
                                                      }
                                                   }
                                                   break loop1;
                                                }
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr250);
                                 }
                              }
                              §§goto(addr241);
                           }
                           §§goto(addr250);
                        }
                        §§goto(addr241);
                     }
                     §§goto(addr229);
                  }
                  §§goto(addr250);
               }
               §§goto(addr204);
            }
            §§goto(addr241);
         }
         §§goto(addr189);
      }
      
      private function §?y§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         this.§%`§ = true;
         loop0:
         while(true)
         {
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() <= this.§#c§.length - 1)
               {
                  §§push(param1);
                  if(!(_loc6_ && _loc3_))
                  {
                     if(§§pop() < 0)
                     {
                        while(true)
                        {
                           §§push(0);
                           addr60:
                           while(true)
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 param1 = §§pop();
                                 while(true)
                                 {
                                 }
                                 addr68:
                              }
                              else
                              {
                                 addr92:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    addr46:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr92:
                              }
                           }
                           addr23:
                           if(_loc6_ && _loc2_)
                           {
                              continue;
                           }
                           if(!(_loc6_ && _loc2_))
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              §§push(this.§#c§);
                              if(!(_loc6_ && _loc2_))
                              {
                                 addr127:
                                 §§push(§§pop().length - 1);
                                 if(_loc5_)
                                 {
                                    §§goto(addr92);
                                    §§push(int(§§pop()));
                                 }
                                 else
                                 {
                                    addr116:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc2_:* = §§pop();
                                 §§push(this.§8!6§.x - _loc2_);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc4_:*;
                                 §§push(_loc4_ = Number(Math.abs(_loc3_)));
                                 §§push(400);
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                       §§push(Number(§§pop()));
                                       if(_loc5_ || _loc2_)
                                       {
                                          _loc4_ = §§pop();
                                          §§push(§3!J§);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc6_ && this))
                                             {
                                                addr185:
                                                §§push(Number(§§pop()));
                                                if(_loc5_)
                                                {
                                                   addr189:
                                                   §§push(_loc4_ = §§pop());
                                                   if(!(_loc6_ && this))
                                                   {
                                                      addr198:
                                                      if(§§pop() > 1)
                                                      {
                                                         addr201:
                                                         _loc4_ = Number(1);
                                                      }
                                                      addr257:
                                                      if(this.§;;§ != null)
                                                      {
                                                         addr261:
                                                         this.§;;§.stop();
                                                      }
                                                      this.§;;§ = §3C§.§>o§.§<t§(this.§8!6§,{"x":_loc2_},null,_loc4_,§3C§.§,k§);
                                                      addr221:
                                                      addr254:
                                                      §§push(this.§;;§);
                                                      if(_loc5_)
                                                      {
                                                         §§pop().onComplete = this.§<Z§;
                                                         addr236:
                                                         if(_loc5_)
                                                         {
                                                            §§push(this.§;;§);
                                                            if(!_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§pop().play();
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr236);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            §§goto(addr221);
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                      §§goto(addr257);
                                                   }
                                                }
                                             }
                                             §§goto(addr201);
                                          }
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr198);
                              }
                              else
                              {
                                 addr100:
                                 §§push(-§§pop()[param1].x);
                                 §§push(_loc6_ && this);
                              }
                              if(!§§pop())
                              {
                                 §§push(§§pop() + this.§"<§);
                                 if(_loc5_)
                                 {
                                    §§goto(addr116);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr116);
                           }
                           addr78:
                        }
                     }
                     while(true)
                     {
                        this.§=!2§ = param1;
                        if(_loc5_)
                        {
                           §§goto(addr23);
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr60);
               }
               §§goto(addr78);
            }
            §§goto(addr92);
         }
      }
      
      private function §<Z§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() >= this.§'`§.length)
               {
                  if(_loc3_ || _loc2_)
                  {
                     this.§%`§ = false;
                  }
                  if(_loc3_ || _loc1_)
                  {
                     if(!(_loc2_ && this))
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        addr125:
                     }
                     else
                     {
                        addr105:
                     }
                     addr74:
                     _loc1_++;
                  }
                  continue;
               }
               addr109:
               if(_loc1_ == this.§=!2§)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(this.§'`§);
                  }
                  §§goto(addr125);
               }
               else
               {
                  §§push(this.§'`§);
                  if(!(_loc2_ && this))
                  {
                     §§push(_loc1_);
                     if(_loc3_)
                     {
                        §§pop()[§§pop()].gotoAndStop("UnSelected");
                        §§goto(addr105);
                     }
                     else
                     {
                        addr122:
                        §§pop()[§§pop()].gotoAndStop("Selected");
                        §§goto(addr125);
                     }
                  }
                  else
                  {
                     addr121:
                     §§push(_loc1_);
                  }
                  §§goto(addr122);
               }
               §§goto(addr125);
            }
            §§goto(addr109);
         }
      }
   }
}
