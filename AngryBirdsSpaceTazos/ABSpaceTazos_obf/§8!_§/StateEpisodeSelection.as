package §8!_§
{
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§ ",§;
   import §77§.§@_§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §]!K§.§,!H§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§3,§;
   import §`!j§.§9"!§;
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §5!&§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      protected static const §?0§:Number = 0.5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            STATE_NAME = "ChapterSelectionState";
            do
            {
               §?0§ = 0.5;
            }
            while(!_loc1_);
            
         }
      }
      
      protected var §3G§:Sprite;
      
      protected var §5!B§:§ ",§;
      
      protected var §,<§:Array;
      
      protected var §03§:Array;
      
      protected var §`_§:int = 0;
      
      protected var §9!D§:Number = 0;
      
      protected var §!"§:Number = 0;
      
      protected var §8!t§:§5!9§ = null;
      
      protected var §+!4§:Boolean = false;
      
      protected var §8"9§:Number = 0;
      
      public function StateEpisodeSelection(param1:§9"!§, param2:§3!'§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.init();
            while(true)
            {
               §8!A§ = new §1"F§(this);
               loop1:
               while(!(_loc2_ && this))
               {
                  §8!A§.init(§-G§.§4+§.Views.View_ChapterSelection[0]);
                  while(true)
                  {
                     this.initChapterLayer();
                     if(!(_loc2_ && this))
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
         §§goto(addr60);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.activate(param1);
            while(true)
            {
               §9q§.§>!L§.§0!M§(false);
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            this.updateEpisodeButtons();
            if(_loc3_)
            {
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function updateEpisodeButtons() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:§3,§ = null;
         var _loc1_:int = 0;
         loop0:
         for each(_loc2_ in this.§,<§)
         {
            _loc3_ = §6u§.getEpisode(_loc1_);
            if(_loc7_)
            {
               if(_loc2_.Textfield_ME_Score != null)
               {
                  addr122:
                  while(true)
                  {
                     _loc2_.Textfield_ME_Score.text.text = § !g§.§;!'§.§&!`§.userProgress.§7%§(_loc3_) + "/" + § !g§.§;!'§.§&!`§.userProgress.§?N§(_loc3_);
                     addr151:
                     while(true)
                     {
                     }
                  }
                  addr122:
               }
               loop1:
               while(true)
               {
                  if(_loc2_.Textfield_CollectedStars != null)
                  {
                     if(!_loc6_)
                     {
                        if(_loc7_)
                        {
                           _loc2_.Textfield_CollectedStars.text.text = § !g§.§;!'§.§&!`§.userProgress.§5;§(_loc3_) + "/" + § !g§.§;!'§.§&!`§.userProgress.§4"4§(_loc3_);
                        }
                        else
                        {
                           §§goto(addr122);
                        }
                     }
                     while(true)
                     {
                     }
                     addr117:
                  }
                  while(true)
                  {
                     if(_loc2_.Textfield_Score != null)
                     {
                        while(true)
                        {
                           _loc2_.Textfield_Score.text.text = § !g§.§;!'§.§&!`§.userProgress.§<!y§(_loc3_);
                           addr86:
                           while(_loc7_)
                           {
                           }
                           continue loop1;
                        }
                        addr66:
                     }
                     while(true)
                     {
                        _loc1_++;
                        if(_loc7_)
                        {
                           if(!(_loc6_ && _loc1_))
                           {
                              break;
                           }
                           §§goto(addr66);
                        }
                        §§goto(addr86);
                     }
                     if(!_loc6_)
                     {
                        if(true)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr117);
                  }
                  continue loop0;
               }
            }
            §§goto(addr122);
         }
      }
      
      protected function initChapterLayer() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3,§ = null;
         if(!(_loc4_ && _loc3_))
         {
            this.§5!B§ = §8!A§.getItemByName("Container_ChapterSelection") as § ",§;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§,<§ = [];
                  do
                  {
                     this.§03§ = [];
                  }
                  while(_loc4_);
                  
                  if(_loc4_ && _loc1_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc1_:Number = 0;
                  if(!(_loc4_ && _loc2_))
                  {
                     this.§3G§ = new Sprite();
                     while(true)
                     {
                        this.§3G§.y = § !g§.screenHeight / 2;
                        while(!_loc4_)
                        {
                           this.§9!D§ = § !g§.screenWidth / 2;
                           loop6:
                           while(true)
                           {
                              addr90:
                              while(true)
                              {
                                 this.§3G§.x = this.§9!D§;
                                 continue loop6;
                              }
                           }
                           if(_loc4_ && this)
                           {
                              continue;
                           }
                           if(false)
                           {
                              §§goto(addr90);
                           }
                           §§goto(addr138);
                        }
                     }
                  }
                  §§goto(addr113);
               }
            }
         }
         §§goto(addr41);
      }
      
      protected function addExtraButtons(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.addEpisode("MovieClip_Chapter_Selection_More_Coming",param1));
            while(true)
            {
               §§push(Number(§§pop()));
               addr79:
               while(true)
               {
                  param1 = §§pop();
               }
            }
            addr78:
         }
         while(true)
         {
            §§push(this.addEpisode("MovieClip_Chapter_Selection_Shop",param1));
            if(_loc2_ || param1)
            {
               if(_loc2_ || this)
               {
                  addr58:
                  §§push(Number(§§pop()));
                  if(!_loc3_)
                  {
                     param1 = §§pop();
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr78);
               }
               §§goto(addr79);
            }
            §§goto(addr58);
         }
      }
      
      protected function configureChapterButtons() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MovieClip = null;
         var _loc1_:* = Number(0);
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§,<§.length)
         {
            _loc3_ = new § !h§.§["3§("Button_Dot")();
            if(_loc4_ || _loc2_)
            {
               if(_loc2_ != this.§`_§)
               {
                  _loc3_.gotoAndStop("UnSelected");
                  loop12:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        _loc3_.x = § !g§.screenWidth / 2 + _loc1_ - this.§,<§.length * _loc3_.width / 2;
                        loop4:
                        while(true)
                        {
                           _loc3_.y = (§8!A§.getItemByName("Button_Next") as §@_§).y - _loc3_.height / 2;
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 this.§5!B§.mClip.addChild(_loc3_);
                                 loop6:
                                 for(; !_loc5_; if(_loc4_ || _loc3_)
                                 {
                                    continue loop4;
                                 })
                                 {
                                    _loc3_.buttonMode = true;
                                    loop7:
                                    while(true)
                                    {
                                       this.§03§.push(_loc3_);
                                       while(true)
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             continue loop6;
                                          }
                                          continue loop7;
                                          addr84:
                                          loop9:
                                          while(_loc4_ || _loc2_)
                                          {
                                             do
                                             {
                                                _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§-!j§);
                                                while(!(_loc5_ && this))
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         _loc2_++;
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr49);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            _loc3_.gotoAndStop("Selected");
                                                         }
                                                         addr190:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop9;
                                             }
                                             while(false);
                                             
                                             continue loop0;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 continue;
                              }
                              continue loop12;
                           }
                           continue loop12;
                        }
                     }
                  }
                  addr185:
               }
               §§goto(addr190);
            }
            §§goto(addr185);
         }
         if(_loc4_)
         {
            §§push(this.§,<§.length * _loc3_.width);
            if(_loc4_)
            {
               §§push(§§pop() / 2);
               if(!(_loc5_ && _loc2_))
               {
                  addr218:
                  §§push(§§pop() + _loc3_.width * 1.5);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc1_ = §§pop();
               if(!_loc5_)
               {
                  (§8!A§.getItemByName("Button_Next") as §@_§).x = § !g§.screenWidth / 2;
                  addr323:
                  loop13:
                  while(true)
                  {
                     (§8!A§.getItemByName("Button_Prev") as §@_§).x = § !g§.screenWidth / 2;
                     loop14:
                     do
                     {
                        (§8!A§.getItemByName("Button_Next") as §@_§).x = (§8!A§.getItemByName("Button_Next") as §@_§).x + (_loc1_ + 10);
                        while(!_loc5_)
                        {
                           (§8!A§.getItemByName("Button_Prev") as §@_§).x = (§8!A§.getItemByName("Button_Prev") as §@_§).x - (_loc1_ + 10);
                           if(!(_loc5_ && _loc1_))
                           {
                              continue loop14;
                           }
                        }
                        continue loop13;
                     }
                     while(!(_loc4_ || _loc1_));
                     
                     return;
                  }
                  addr323:
               }
               §§goto(addr323);
            }
            §§goto(addr218);
         }
         §§goto(addr323);
      }
      
      protected function addEpisode(param1:String, param2:Number, param3:§3,§ = null) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:MovieClip;
         (_loc4_ = new § !h§.§["3§(param1)()).x = param2;
         if(!_loc6_)
         {
            this.§3G§.addChild(_loc4_);
            loop0:
            while(true)
            {
               this.§,<§.push(_loc4_);
               addr207:
               while(true)
               {
                  §§push(param2);
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() + _loc4_.width * 1.55);
                     while(true)
                     {
                        §§push(Number(§§pop()));
                     }
                     addr182:
                  }
                  addr183:
                  while(true)
                  {
                     param2 = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr154);
      }
      
      private function §-!j§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!this.§+!4§)
            {
               if(_loc2_)
               {
                  this.moveToChapter(this.§03§.indexOf(param1.target));
               }
            }
         }
      }
      
      protected function onChapterClick(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_)
         {
            if(!this.§+!4§)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§,<§.indexOf(param1.currentTarget)));
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§`_§);
                        while(§§pop() == _loc2_)
                        {
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              continue;
                           }
                           if(_loc4_)
                           {
                              break loop2;
                           }
                           if(§§pop() < §6u§.getEpisodeCount())
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 §6u§.selectEpisode(_loc2_);
                              }
                              do
                              {
                                 §8!^§(§]J§.STATE_NAME);
                              }
                              while(_loc4_ && _loc3_);
                              
                              if(!(_loc3_ || this))
                              {
                                 break loop1;
                              }
                              if(_loc4_ && _loc2_)
                              {
                                 break;
                              }
                              if(_loc3_ || param1)
                              {
                                 §§goto(addr21);
                              }
                              continue loop2;
                           }
                           §§goto(addr21);
                        }
                        if(!_loc4_)
                        {
                           addr98:
                           this.moveToChapter(_loc2_);
                           break loop1;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            addr21:
            return;
         }
         §§goto(addr98);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.checkIfPagePassed();
            do
            {
               this.coverFlowScale();
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      protected function coverFlowScale() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() >= this.§,<§.length)
               {
                  if(!(_loc4_ && this))
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        §§push(Number(Math.abs(_loc2_)));
                        loop2:
                        while(!_loc4_)
                        {
                           _loc2_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() * 0.55);
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    _loc2_ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          break;
                                       }
                                       continue loop4;
                                       addr178:
                                       if(!(_loc3_ || _loc1_))
                                       {
                                          continue;
                                       }
                                       §§push(1000);
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          break loop6;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          break loop5;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 _loc2_ = §§pop();
                                 addr195:
                                 loop18:
                                 while(true)
                                 {
                                    addr141:
                                    while(true)
                                    {
                                       §§push(this.§,<§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          loop9:
                                          while(true)
                                          {
                                             §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                                             loop10:
                                             while(true)
                                             {
                                                §§push(this.§,<§);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   loop12:
                                                   while(_loc3_ || this)
                                                   {
                                                      §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                                      loop13:
                                                      while(!_loc4_)
                                                      {
                                                         §§push(this.§,<§);
                                                         loop14:
                                                         for(; !_loc4_; §§push(this.§,<§),if(_loc4_ && _loc1_)
                                                         {
                                                            continue;
                                                         },§§goto(addr56))
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§push(_loc1_);
                                                            while(true)
                                                            {
                                                               §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                                               addr100:
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  continue loop18;
                                                               }
                                                               addr56:
                                                               §§push(_loc1_);
                                                               continue loop3;
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     §§pop()[§§pop()].y = _loc2_ / 1000 * -200;
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              break;
                                                                              addr43:
                                                                           }
                                                                           _loc1_++;
                                                                           while(_loc4_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr100);
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                          }
                                       }
                                       continue loop18;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              break loop2;
                           }
                        }
                        while(true)
                        {
                           _loc2_ = §§pop();
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr43);
               }
               else
               {
                  §§push(this.§3G§.x + this.§,<§[_loc1_].x - § !g§.screenWidth / 2);
               }
               §§goto(addr244);
            }
            §§goto(addr186);
         }
      }
      
      protected function checkIfPagePassed() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               if(_loc4_)
               {
                  if(!_loc3_)
                  {
                     §§push(this.§03§);
                     if(_loc4_ || _loc2_)
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           if(§§pop() >= §§pop().length)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       this.§8"9§ = this.§3G§.x;
                                       addr68:
                                       if(_loc4_ || this)
                                       {
                                          break;
                                       }
                                       loop46:
                                       while(true)
                                       {
                                          _loc2_++;
                                          loop43:
                                          while(true)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr311:
                                                while(true)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(this.§03§);
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop().length)
                                                         {
                                                            loop44:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(this.§03§);
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     loop37:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§pop()[§§pop()].gotoAndStop("Selected");
                                                                           loop32:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(-this.§3G§.x);
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(800);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§,<§);
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(_loc1_);
                                                                                                   loop28:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                         loop25:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop26:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           addr300:
                                                                                                                           §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ || _loc1_))
                                                                                                                              {
                                                                                                                                 continue loop32;
                                                                                                                              }
                                                                                                                              §§push(this.§8"9§);
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 if(_loc3_ && _loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop18;
                                                                                                                                 }
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc3_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr178:
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(_loc4_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(this.§,<§);
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop30;
                                                                                                                                          }
                                                                                                                                          if(!(_loc3_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             §§push(_loc1_);
                                                                                                                                             if(_loc3_ && this)
                                                                                                                                             {
                                                                                                                                                continue loop28;
                                                                                                                                             }
                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   continue loop26;
                                                                                                                                                }
                                                                                                                                                if(!(_loc4_ || _loc1_))
                                                                                                                                                {
                                                                                                                                                   continue loop25;
                                                                                                                                                }
                                                                                                                                                if(!(_loc3_ && this))
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         break loop19;
                                                                                                                                                      }
                                                                                                                                                      loop20:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc1_++;
                                                                                                                                                         addr78:
                                                                                                                                                         loop33:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  loop34:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     loop35:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc2_);
                                                                                                                                                                        addr92:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§03§);
                                                                                                                                                                           addr94:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() >= §§pop().length)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§03§);
                                                                                                                                                                                    if(!(_loc3_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc4_ || this))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop21;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc3_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc1_);
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc3_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop20;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop43;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop44;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop35;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop33;
                                                                                                                                                                                                addr132:
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop37;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc2_);
                                                                                                                                                                                             addr342:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                                                continue loop46;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr341:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc2_);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr149:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                                       continue loop34;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr96:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§03§);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr149);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr96);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr132);
                                                                                                                                                         }
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr240:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      addr386:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               addr388:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§8"9§);
                                                                                                                                                                  addr349:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                     addr350:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§,<§);
                                                                                                                                                                        addr352:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc1_);
                                                                                                                                                                           addr353:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr387:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr357:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  continue loop18;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  addr359:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc2_ = §§pop();
                                                                                                                                                                     addr360:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop5;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop26;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr385:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr353);
                                                                                                                                          }
                                                                                                                                          §§goto(addr352);
                                                                                                                                       }
                                                                                                                                       §§goto(addr350);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(800);
                                                                                                                                          addr368:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr369:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§,<§);
                                                                                                                                                addr381:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                   addr382:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr367:
                                                                                                                                    }
                                                                                                                                    §§goto(addr385);
                                                                                                                                 }
                                                                                                                                 §§goto(addr349);
                                                                                                                              }
                                                                                                                              §§goto(addr178);
                                                                                                                              §§goto(addr300);
                                                                                                                           }
                                                                                                                           addr301:
                                                                                                                        }
                                                                                                                        §§goto(addr387);
                                                                                                                     }
                                                                                                                     §§goto(addr357);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr240);
                                                                                                            }
                                                                                                            §§goto(addr386);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr382);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr381);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         §§goto(addr260);
                                                                                                      }
                                                                                                      addr259:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr358);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr360);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr301);
                                                                                             }
                                                                                          }
                                                                                          addr242:
                                                                                       }
                                                                                       §§goto(addr368);
                                                                                    }
                                                                                    §§goto(addr369);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr342);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr388);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(this.§03§);
                                                         }
                                                         §§goto(addr341);
                                                      }
                                                      addr320:
                                                   }
                                                   §§goto(addr359);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr242);
                                 }
                                 §§goto(addr78);
                              }
                              §§goto(addr68);
                           }
                           else
                           {
                              §§push(-this.§3G§.x);
                           }
                           §§goto(addr367);
                        }
                        §§goto(addr320);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr311);
               }
               §§goto(addr259);
            }
            §§goto(addr92);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.deActivate();
            while(true)
            {
               §9q§.§>!L§.clearLevel();
               while(!_loc1_)
               {
                  this.resetButtons();
                  if(_loc2_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      protected function resetButtons() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§8!A§.getItemByName("Button_Back") as §@_§).setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            if("BACK" === _loc4_)
            {
               if(_loc6_)
               {
                  §§push(0);
                  if(_loc7_)
                  {
                  }
                  §§goto(addr247);
               }
               else
               {
                  §§goto(addr217);
               }
            }
            else
            {
               if("PREV" === _loc4_)
               {
                  if(_loc6_ || param3)
                  {
                     §§push(1);
                     if(!_loc6_)
                     {
                     }
                  }
                  else
                  {
                     addr224:
                     §§push(3);
                     if(!(_loc7_ && param1))
                     {
                        §§goto(addr242);
                     }
                  }
               }
               else
               {
                  if("NEXT" === _loc4_)
                  {
                     if(!(_loc7_ && param2))
                     {
                        addr217:
                        §§push(2);
                        if(_loc7_)
                        {
                        }
                        §§goto(addr247);
                     }
                     else
                     {
                        §§goto(addr224);
                     }
                  }
                  else if("FULLSCREEN_BUTTON" === _loc4_)
                  {
                     §§goto(addr224);
                  }
                  else
                  {
                     §§push(4);
                  }
                  §§goto(addr224);
               }
               §§goto(addr224);
            }
            addr247:
            loop2:
            switch(§§pop())
            {
               case 0:
                  §<!O§.playSound("Menu_Back");
                  if(!(_loc7_ && param2))
                  {
                     addr32:
                     §8!^§(§0!q§.STATE_NAME);
                     if(_loc6_ || param3)
                     {
                        break;
                     }
                     addr112:
                     addr110:
                     if(!this.§+!4§)
                     {
                        if(!(_loc7_ && param2))
                        {
                           addr130:
                           §§push((_loc4_ = this).§`_§);
                           if(_loc6_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(!_loc7_)
                           {
                              _loc4_.§`_§ = _loc5_;
                           }
                           if(!_loc7_)
                           {
                              this.moveToChapter(this.§`_§);
                              addr176:
                              addr147:
                           }
                           break;
                        }
                        §§goto(addr176);
                     }
                     break;
                  }
                  while(true)
                  {
                     § !g§.§;!'§.§%!N§();
                     if(_loc6_)
                     {
                        if(_loc7_)
                        {
                           continue;
                        }
                        if(true)
                        {
                           break loop2;
                        }
                        §§goto(addr176);
                     }
                     break loop2;
                  }
                  break;
                  §§goto(addr176);
               case 1:
                  §<!O§.playSound("Menu_Confirm");
                  if(_loc6_ || this)
                  {
                     if(false)
                     {
                        §§goto(addr32);
                     }
                     else
                     {
                        §§push(this.§+!4§);
                        if(!_loc7_)
                        {
                           if(!§§pop())
                           {
                              if(!(_loc7_ && this))
                              {
                                 §§push((_loc4_ = this).§`_§);
                                 if(!(_loc7_ && param2))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc5_ = §§pop();
                                 if(_loc6_)
                                 {
                                    _loc4_.§`_§ = _loc5_;
                                 }
                                 if(!_loc7_)
                                 {
                                    this.moveToChapter(this.§`_§);
                                    if(!(_loc7_ && param1))
                                    {
                                       addr103:
                                       break;
                                    }
                                    §§goto(addr130);
                                 }
                                 break;
                              }
                              §§goto(addr156);
                              §§goto(addr176);
                           }
                           §§goto(addr103);
                        }
                        else
                        {
                           §§goto(addr112);
                        }
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr156);
               case 2:
                  §<!O§.playSound("Menu_Confirm");
                  if(!_loc7_)
                  {
                     §§goto(addr110);
                  }
                  §§goto(addr147);
               case 3:
                  §<!O§.playSound("Menu_Confirm");
                  §§goto(addr164);
            }
            return;
         }
         §§goto(addr224);
      }
      
      protected function moveToChapter(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            this.§+!4§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               for(; §§pop() <= this.§,<§.length - 1; if(!(_loc6_ || this))
               {
                  continue;
               },param1 = §§pop(),§§goto(addr56))
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     if(§§pop() < 0)
                     {
                        if(!_loc5_)
                        {
                           addr46:
                           §§push(0);
                           if(!_loc5_)
                           {
                              continue;
                           }
                           addr82:
                           while(true)
                           {
                              param1 = §§pop();
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    addr25:
                                    while(true)
                                    {
                                       this.§`_§ = param1;
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop5;
                                       }
                                       if(false)
                                       {
                                          continue loop6;
                                       }
                                       addr90:
                                       addr90:
                                       §§push(-this.§,<§[param1].x);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() + this.§9!D§);
                                          if(!(_loc5_ && param1))
                                          {
                                             addr106:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc2_:* = §§pop();
                                          §§push(this.§3G§.x - _loc2_);
                                          if(_loc6_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc3_:* = §§pop();
                                          var _loc4_:*;
                                          §§push(_loc4_ = Number(Math.abs(_loc3_)));
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(400);
                                             if(_loc6_ || param1)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc5_)
                                                   {
                                                      addr164:
                                                      §§push(§§pop());
                                                      if(_loc6_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(_loc6_)
                                                         {
                                                            addr170:
                                                            §§push(§?0§);
                                                            if(_loc6_)
                                                            {
                                                               addr173:
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc6_)
                                                                  {
                                                                     addr180:
                                                                     §§push(_loc4_ = §§pop());
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        addr188:
                                                                        if(§§pop() > 1)
                                                                        {
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              addr199:
                                                                              _loc4_ = Number(1);
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr269:
                                                                                 §§push(this.§8!t§);
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() != null)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§8!t§);
                                                                                          addr275:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().stop();
                                                                                             addr276:
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr273:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§8!t§ = §!D§.§[!1§.§1"<§(this.§3G§,{"x":_loc2_},null,_loc4_,§,!H§.easeOut);
                                                                                       loop13:
                                                                                       do
                                                                                       {
                                                                                          §§push(this.§8!t§);
                                                                                          loop14:
                                                                                          for(; !_loc5_; §§push(this.§8!t§),if(!(_loc6_ || _loc3_))
                                                                                          {
                                                                                             continue;
                                                                                          },if(_loc6_)
                                                                                          {
                                                                                             §§goto(addr219);
                                                                                          },§§goto(addr275))
                                                                                          {
                                                                                             §§pop().onComplete = this.onChapterTweenComplete;
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   §§goto(addr273);
                                                                                                }
                                                                                                break;
                                                                                                addr219:
                                                                                                §§pop().play();
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr276);
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                       while(_loc5_);
                                                                                       
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr269);
                                                                     }
                                                                  }
                                                                  §§goto(addr199);
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                         }
                                                         §§goto(addr180);
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                }
                                                §§goto(addr170);
                                             }
                                             §§goto(addr188);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr106);
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc5_)
                           {
                              break loop1;
                           }
                           continue loop0;
                        }
                        §§goto(addr90);
                        addr56:
                     }
                     §§goto(addr25);
                  }
                  §§goto(addr46);
               }
            }
         }
         while(true)
         {
            §§push(this.§,<§);
            if(_loc6_)
            {
               §§push(§§pop().length - 1);
               if(!_loc5_)
               {
                  §§goto(addr82);
                  §§push(int(§§pop()));
               }
               §§goto(addr106);
            }
            §§goto(addr90);
         }
      }
      
      protected function onChapterTweenComplete() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() >= this.§03§.length)
               {
                  if(_loc3_ || _loc3_)
                  {
                     if(_loc3_)
                     {
                        this.§+!4§ = false;
                        addr59:
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        while(true)
                        {
                           addr67:
                           while(true)
                           {
                              _loc1_++;
                           }
                        }
                        addr115:
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           addr109:
                           while(true)
                           {
                              §§push(this.§03§);
                              addr111:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 addr112:
                                 while(true)
                                 {
                                    §§pop()[§§pop()].gotoAndStop("Selected");
                                    §§goto(addr115);
                                 }
                              }
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              continue loop1;
                           }
                           addr92:
                        }
                     }
                     continue;
                  }
                  §§goto(addr59);
               }
               else
               {
                  addr96:
                  if(_loc1_ != this.§`_§)
                  {
                     §§push(this.§03§);
                     if(!_loc2_)
                     {
                        §§push(_loc1_);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr92);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr109);
            }
            §§goto(addr96);
         }
      }
   }
}
