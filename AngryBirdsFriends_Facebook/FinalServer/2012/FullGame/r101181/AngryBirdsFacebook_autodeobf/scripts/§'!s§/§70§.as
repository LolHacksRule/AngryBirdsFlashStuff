package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §&G§.§1z§;
   import §&G§.§@!5§;
   import §+N§.§@!]§;
   import §]!>§.§0!!§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §70§ extends §+!4§
   {
       
      
      private var §7!8§:Dictionary;
      
      private var §5T§:Dictionary;
      
      private var §%!`§:Array;
      
      public function §70§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(§ "A§.§4[§.Views.PopupCustomGifting[0],param1);
            loop0:
            while(true)
            {
               mClip.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§-t§);
               while(true)
               {
                  mClip.btnSendMoreGifts.addEventListener(MouseEvent.CLICK,this.§`"4§);
                  continue loop0;
                  addr56:
                  loop3:
                  while(_loc3_ || this)
                  {
                     while(true)
                     {
                        mClip.friendsCounterBar.gotoAndStop(0);
                        if(!(_loc4_ && param2))
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop3;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%!`§ = param1;
         }
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§%!`§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            mClip.friendsCounter.text = param1 + "/" + param2;
         }
         do
         {
            mClip.friendsSelectedText.text = § ",§;
         }
         while(!(_loc4_ || param1));
         
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            mClip.friendsCounter.text = param1 + "/" + param2;
            if(!_loc4_)
            {
               mClip.friendsSelectedText.text = §2^§;
               addr29:
            }
            var _loc3_:int = Math.floor(param1 / param2 * 100);
            if(_loc5_ || param1)
            {
               if(isNaN(_loc3_))
               {
                  while(true)
                  {
                     _loc3_ = 0;
                     addr95:
                     while(true)
                     {
                     }
                  }
                  addr93:
               }
               while(true)
               {
                  mClip.friendsCounterBar.gotoAndStop(_loc3_);
                  if(_loc4_ && param1)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     break;
                  }
                  §§goto(addr93);
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§@!5§ = null;
         var _loc1_:Dictionary = §1z§.§^"4§();
         var _loc2_:Array = [];
         for each(_loc3_ in _loc1_)
         {
            if(_loc6_ || _loc3_)
            {
               _loc2_.push({
                  "selected":false,
                  "id":_loc3_.§4v§,
                  "name":_loc3_.name
               });
            }
         }
         if(_loc6_ || _loc3_)
         {
            §%!,§(_loc2_);
         }
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(param1 != false)
            {
               if(mClip.btnSendMoreGifts.visible)
               {
                  if(_loc2_)
                  {
                     mClip.btnSendMoreGifts.visible = true;
                  }
                  while(true)
                  {
                     mClip.btnSendGifts.visible = false;
                     §§goto(addr73);
                  }
               }
               else
               {
                  mClip.btnSendMoreGifts.visible = false;
                  while(!(_loc3_ && _loc2_))
                  {
                     mClip.btnSendGifts.visible = true;
                     if(!_loc3_)
                     {
                        if(!(_loc2_ || param1))
                        {
                           addr73:
                           while(!_loc2_)
                           {
                              continue loop2;
                           }
                           §§goto(addr24);
                        }
                        else
                        {
                           addr42:
                        }
                        addr24:
                        if(!(_loc2_ || param1))
                        {
                           addr118:
                           mClip.btnSendMoreGifts.visible = false;
                           loop4:
                           while(true)
                           {
                              mClip.btnSendGifts.visible = false;
                              addr112:
                              while(!_loc2_)
                              {
                                 continue loop4;
                              }
                           }
                        }
                        return;
                     }
                  }
               }
               §§goto(addr112);
            }
            §§goto(addr118);
         }
         §§goto(addr42);
      }
      
      override protected function checkIfBatchInProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§&v§ <= 0)
            {
               mClip.btnSendMoreGifts.visible = false;
               while(!_loc2_)
               {
                  mClip.btnSendGifts.visible = true;
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     if(_loc2_ && _loc1_)
                     {
                        addr79:
                        mClip.btnSendMoreGifts.visible = true;
                        break;
                     }
                     §§goto(addr19);
                  }
                  addr75:
                  addr19:
                  return;
                  addr75:
               }
               mClip.btnSendGifts.visible = false;
               §§goto(addr75);
            }
            §§goto(addr79);
         }
         §§goto(addr75);
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§7!8§ = §0!!§.§;"§.§'+§();
            while(true)
            {
               this.§5T§ = §0!!§.§;"§.§4!Z§();
               loop1:
               while(true)
               {
                  this.finalPlayerList = param1.filter(this.§!![§);
                  while(true)
                  {
                     this.finalPlayerList.sort(§?s§);
                     while(_loc2_ || _loc3_)
                     {
                        continue loop1;
                        loop4:
                        while(!(_loc3_ && this))
                        {
                           while(true)
                           {
                              this.§5T§ = null;
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
               if(_loc3_ && this)
               {
                  continue;
               }
               this.§7!8§ = null;
               §§goto(addr39);
            }
         }
         §§goto(addr56);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return mClip.cantFindGiftFriend;
      }
      
      private function §!![§(param1:*, param2:int, param3:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §§push(this.§7!8§[param1.id] == null);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr137:
                        while(true)
                        {
                           §§push(this.§5T§[param1.id] == null);
                        }
                     }
                     addr136:
                  }
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(§§pop());
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    break loop5;
                                 }
                                 §§pop();
                                 loop7:
                                 for(; _loc4_ || param3; §§pop(),if(_loc5_ && this)
                                 {
                                    continue;
                                 },§§goto(addr94))
                                 {
                                    §§push(!param1.sent);
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc4_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc4_ || param3))
                                                {
                                                   break;
                                                }
                                                if(!_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ || param2))
                                                         {
                                                            §§push(param1.id == (AngryBirdsFP11.sUserProgress as §[<§).§4v§);
                                                            continue loop4;
                                                            if(_loc4_ || param2)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  addr43:
                                                                  §§push(!§§pop());
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                         }
                                                         continue loop7;
                                                         addr94:
                                                      }
                                                      addr79:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr43);
                                                   }
                                                   return §§pop();
                                                }
                                                continue loop1;
                                             }
                                             continue loop5;
                                             addr67:
                                          }
                                          continue loop0;
                                       }
                                       continue loop6;
                                    }
                                    §§goto(addr79);
                                 }
                                 §§goto(addr137);
                              }
                           }
                           §§goto(addr67);
                        }
                        §§goto(addr136);
                     }
                  }
               }
            }
         }
         §§goto(addr137);
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.close();
         }
      }
      
      private function §`"4§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]!S§();
         }
      }
      
      private function §-t§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §"n§ = 0;
            do
            {
               this.§]!S§();
            }
            while(!_loc2_);
            
         }
      }
      
      private function §]!S§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(_loc8_)
         {
            AngryBirdsFP11.§@<§.§#m§();
         }
         var _loc1_:Array = [];
         var _loc2_:int = §"n§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc8_)
            {
               if(_loc2_ >= §%@§ + §"n§)
               {
                  if(_loc8_ || this)
                  {
                     break;
                  }
               }
               else
               {
                  if(!_loc3_.selected)
                  {
                     continue;
                  }
                  if(!_loc8_)
                  {
                     continue;
                  }
               }
               _loc1_.push(_loc3_.id);
               if(!_loc7_)
               {
                  _loc2_++;
               }
            }
         }
         if(!_loc7_)
         {
            _loc4_ = JSON.stringify(_loc1_);
         }
         while(true)
         {
            §@!]§.§9"'§("flashSendGiftToFriends",(AngryBirdsFP11.sUserProgress as §[<§).userName,_loc4_);
            while(_loc8_)
            {
               §@!]§.addCallback("giftsSentToUsers",this.§!"B§);
               if(!_loc7_)
               {
                  return;
               }
            }
         }
      }
      
      private function §!"B§(param1:Object) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Object = null;
         if(!(_loc8_ && _loc2_))
         {
            §@!]§.§[">§("giftsSentToUsers",this.§!"B§);
         }
         loop0:
         while(true)
         {
            if(param1 == null)
            {
               if(!(_loc8_ && _loc2_))
               {
                  break;
               }
            }
            else
            {
               mClip.CheckAnimation.gotoAndPlay(1);
            }
            loop1:
            while(true)
            {
               addr62:
               while(true)
               {
                  §§push(int(§"n§));
                  loop3:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     while(true)
                     {
                        §§push(int(§"n§));
                        if(_loc8_)
                        {
                           break;
                        }
                        if(_loc7_ || _loc3_)
                        {
                           _loc3_ = §§pop();
                           if(_loc7_ || _loc2_)
                           {
                              if(!_loc8_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     addr91:
                     var _loc5_:* = §§pop();
                     var _loc6_:* = this.finalPlayerList;
                     addr169:
                     for each(_loc4_ in _loc6_)
                     {
                        if(_loc7_)
                        {
                           if(_loc3_ < §%@§ + §"n§)
                           {
                              if(_loc4_.selected)
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    addr154:
                                    _loc4_.selected = false;
                                 }
                                 addr157:
                                 if(!_loc8_)
                                 {
                                    addr134:
                                    _loc4_.sent = true;
                                    if(_loc7_)
                                    {
                                       _loc3_++;
                                       if(_loc7_ || _loc2_)
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             if(false)
                                             {
                                                §§goto(addr134);
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr157);
                                       }
                                       §§goto(addr134);
                                    }
                                    addr171:
                                    if(_loc7_)
                                    {
                                       §;L§ += _loc3_ - _loc2_;
                                       addr208:
                                       this.checkIfBatchInProgress();
                                       §%!,§(this.finalPlayerList,false);
                                       addr219:
                                       if(_loc7_ || _loc2_)
                                       {
                                          if(_loc7_ || _loc2_)
                                          {
                                             addr206:
                                             if(false)
                                             {
                                                §§goto(addr208);
                                             }
                                             break;
                                          }
                                          §§goto(addr219);
                                       }
                                       addr211:
                                       §§goto(addr211);
                                    }
                                    §§goto(addr206);
                                    addr168:
                                 }
                                 addr165:
                                 §"n§ = _loc3_;
                                 §§goto(addr168);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr171);
                  }
               }
               continue loop0;
            }
         }
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
            §%?§.§?@§(true,false);
         }
         while(!_loc1_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.deActivate();
         }
         do
         {
            preClose();
         }
         while(_loc2_);
         
      }
   }
}
