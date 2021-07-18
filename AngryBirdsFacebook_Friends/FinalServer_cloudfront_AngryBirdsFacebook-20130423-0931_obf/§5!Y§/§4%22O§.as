package §5!Y§
{
   import §,l§.§4"7§;
   import §2"4§.§&k§;
   import §2"4§.§@"E§;
   import §30§.§'"+§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §4"O§ extends § Q§
   {
       
      
      private var §#0§:Dictionary;
      
      private var §<"?§:Dictionary;
      
      private var §7"I§:Array;
      
      public function §4"O§(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(§ "<§.§%I§.Views.PopupCustomGifting[0],param1);
            loop0:
            while(true)
            {
               mClip.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§0A§);
               addr88:
               while(true)
               {
                  mClip.btnSendMoreGifts.addEventListener(MouseEvent.CLICK,this.§6x§);
                  addr77:
                  while(!_loc4_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         loop3:
         while(true)
         {
            mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§if §);
            while(_loc3_)
            {
               mClip.friendsCounterBar.gotoAndStop(0);
               if(_loc4_ && _loc3_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  break loop3;
               }
               §§goto(addr88);
            }
            §§goto(addr77);
         }
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7"I§ = param1;
         }
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§7"I§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            mClip.friendsCounter.text = param1 + "/" + param2;
            do
            {
               mClip.friendsSelectedText.text = §4$§;
            }
            while(_loc4_ && this);
            
         }
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            mClip.friendsCounter.text = param1 + "/" + param2;
            if(_loc5_)
            {
               mClip.friendsSelectedText.text = §<§;
               addr29:
            }
            var _loc3_:int = Math.floor(param1 / param2 * 100);
            if(_loc5_ || param1)
            {
               if(isNaN(_loc3_))
               {
                  if(_loc5_)
                  {
                     _loc3_ = 0;
                     addr90:
                     while(true)
                     {
                     }
                     addr90:
                  }
                  §§goto(addr90);
               }
               while(true)
               {
                  mClip.friendsCounterBar.gotoAndStop(_loc3_);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr90);
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr29);
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§@"E§ = null;
         var _loc1_:Dictionary = §&k§.§]v§();
         var _loc2_:Array = [];
         for each(_loc3_ in _loc1_)
         {
            if(_loc6_ || _loc1_)
            {
               _loc2_.push({
                  "selected":false,
                  "id":_loc3_.§5!0§,
                  "name":_loc3_.name
               });
            }
         }
         if(!(_loc7_ && _loc2_))
         {
            §#I§(_loc2_);
         }
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(param1 == false)
            {
               if(_loc2_ || _loc3_)
               {
                  mClip.btnSendMoreGifts.visible = false;
               }
               mClip.btnSendGifts.visible = false;
               addr132:
               addr117:
            }
            else
            {
               if(!mClip.btnSendMoreGifts.visible)
               {
                  mClip.btnSendMoreGifts.visible = false;
                  for(; !(_loc3_ && this); mClip.btnSendGifts.visible = true,if(_loc3_ && _loc3_)
                  {
                     continue;
                  },if(_loc2_)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr24);
                     }
                     else
                     {
                        §§goto(addr132);
                     }
                  },§§goto(addr117))
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           continue;
                        }
                        addr107:
                        mClip.btnSendMoreGifts.visible = true;
                        mClip.btnSendGifts.visible = false;
                        break;
                        addr111:
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr24);
               }
               §§goto(addr107);
            }
            addr24:
            return;
         }
         §§goto(addr107);
      }
      
      override protected function checkIfBatchInProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(§0^§ <= 0)
            {
               mClip.btnSendMoreGifts.visible = false;
               do
               {
                  if(_loc1_)
                  {
                     continue;
                  }
               }
               while(mClip.btnSendGifts.visible = true, !_loc1_);
               
               addr24:
               return;
            }
            if(_loc1_ || _loc2_)
            {
               mClip.btnSendMoreGifts.visible = true;
            }
            loop1:
            while(true)
            {
               mClip.btnSendGifts.visible = false;
               addr71:
               addr78:
               while(!(_loc1_ || _loc1_))
               {
                  continue loop1;
               }
               §§goto(addr24);
            }
            §§goto(addr71);
         }
         §§goto(addr78);
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§#0§ = §4"7§.§&"5§.§9"T§();
            while(true)
            {
               this.§<"?§ = §4"7§.§&"5§.§4!h§();
            }
            addr99:
         }
         loop1:
         while(true)
         {
            this.finalPlayerList = param1.filter(this.§8!b§);
            loop2:
            while(_loc2_)
            {
               this.finalPlayerList.sort(§&"#§);
               loop3:
               do
               {
                  this.§#0§ = null;
                  while(!_loc3_)
                  {
                     continue loop1;
                     this.§<"?§ = null;
                     if(!_loc3_)
                     {
                        continue loop3;
                     }
                  }
                  continue loop2;
               }
               while(_loc3_);
               
               return;
            }
            §§goto(addr99);
         }
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return mClip.cantFindGiftFriend;
      }
      
      private function §8!b§(param1:*, param2:int, param3:Array) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            §§push(this.§#0§[param1.id] == null);
            if(!_loc4_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        addr138:
                        while(true)
                        {
                           §§push(this.§<"?§[param1.id] == null);
                           continue loop8;
                        }
                     }
                     addr137:
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     continue loop0;
                  }
               }
            }
            §§goto(addr137);
         }
         §§goto(addr88);
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.close();
         }
      }
      
      private function §6x§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§?!V§();
         }
      }
      
      private function §0A§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §;f§ = 0;
         }
         do
         {
            this.§?!V§();
         }
         while(!_loc2_);
         
      }
      
      private function §?!V§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(_loc7_ || this)
         {
            AngryBirdsFP11.§>m§.§^X§();
         }
         var _loc1_:Array = [];
         var _loc2_:int = §;f§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(!(_loc8_ && _loc1_))
            {
               if(_loc2_ >= §@!o§ + §;f§)
               {
                  if(_loc7_)
                  {
                     break;
                  }
                  continue;
               }
               if(!_loc3_.selected)
               {
                  continue;
               }
               if(_loc7_ || _loc2_)
               {
                  _loc1_.push(_loc3_.id);
                  if(_loc8_)
                  {
                     continue;
                  }
               }
            }
            _loc2_++;
         }
         if(_loc7_)
         {
            _loc4_ = JSON.stringify(_loc1_);
            while(true)
            {
               §'"+§.§'!#§("flashSendGiftToFriends",(AngryBirdsFP11.sUserProgress as §#!$§).userName,_loc4_);
               §§goto(addr135);
            }
         }
         addr135:
         while(true)
         {
            §'"+§.addCallback("giftsSentToUsers",this.§,N§);
            if(_loc7_)
            {
               if(!_loc8_)
               {
                  break;
               }
               continue loop1;
            }
         }
      }
      
      private function §,N§(param1:Object) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         if(_loc8_ || _loc2_)
         {
            §'"+§.§"!6§("giftsSentToUsers",this.§,N§);
            loop0:
            do
            {
               if(param1 == null)
               {
                  continue;
               }
               mClip.CheckAnimation.gotoAndPlay(1);
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(int(§;f§));
                     if(_loc8_ || param1)
                     {
                        _loc2_ = §§pop();
                        loop3:
                        while(true)
                        {
                           if(_loc7_ && _loc3_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              §§push(int(§;f§));
                              if(_loc7_)
                              {
                                 break loop2;
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr231);
                     }
                     break;
                  }
                  loop5:
                  for each(_loc4_ in this.finalPlayerList)
                  {
                     if(_loc8_ || this)
                     {
                        if(_loc3_ >= §@!o§ + §;f§)
                        {
                           if(_loc8_)
                           {
                              §;f§ = _loc3_;
                           }
                        }
                        else
                        {
                           if(!_loc4_.selected)
                           {
                              continue;
                           }
                           loop6:
                           while(true)
                           {
                              _loc4_.selected = false;
                              addr163:
                              while(true)
                              {
                                 addr135:
                                 while(true)
                                 {
                                    _loc4_.sent = true;
                                    continue loop6;
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                     break;
                  }
                  if(!(_loc7_ && _loc2_))
                  {
                     §'r§ += _loc3_ - _loc2_;
                     while(true)
                     {
                        loop11:
                        while(true)
                        {
                           this.checkIfBatchInProgress();
                           do
                           {
                              §#I§(this.finalPlayerList,false);
                           }
                           while(_loc7_ && _loc3_);
                           
                           if(!(_loc8_ || _loc3_))
                           {
                              break;
                           }
                           while(true)
                           {
                              if(false)
                              {
                                 continue loop11;
                              }
                              §§goto(addr231);
                           }
                        }
                     }
                  }
                  §§goto(addr217);
               }
            }
            while(!_loc8_);
            
            addr231:
            return;
         }
         §§goto(addr67);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.close();
         }
         do
         {
            §9"6§.§8+§(true,false);
         }
         while(_loc2_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
            do
            {
               preClose();
            }
            while(!_loc1_);
            
         }
      }
   }
}
