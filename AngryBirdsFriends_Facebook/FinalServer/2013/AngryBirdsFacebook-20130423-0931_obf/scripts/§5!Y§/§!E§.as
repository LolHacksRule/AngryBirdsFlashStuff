package §5!Y§
{
   import §,l§.§4"7§;
   import §2!o§.§[N§;
   import §2"4§.§&k§;
   import §2"4§.§@"E§;
   import §30§.§'"+§;
   import §;!d§.§6"L§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §!E§ extends § Q§
   {
       
      
      private var §]"$§:Dictionary;
      
      private var §<"?§:Dictionary;
      
      private var §40§:Array;
      
      private var §`L§:§[N§;
      
      public function §!E§(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super(§ "<§.§%I§.Views.PopupCustomInvite[0],param1);
         }
         while(true)
         {
            mClip.btnInvite.addEventListener(MouseEvent.CLICK,this.§""4§);
            loop1:
            while(!_loc3_)
            {
               mClip.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§-!p§);
               while(true)
               {
                  mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§if §);
                  while(!_loc3_)
                  {
                     mClip.friendsCounterBar.gotoAndStop(0);
                     if(_loc4_ || this)
                     {
                        if(!_loc3_)
                        {
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§40§ = param1;
         }
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§40§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            mClip.friendsCounter.text = param1 + "/" + param2;
         }
         do
         {
            mClip.friendsSelectedText.text = §4$§;
         }
         while(_loc3_ && this);
         
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            mClip.friendsCounter.text = param1 + "/" + param2;
            if(!_loc5_)
            {
               mClip.friendsSelectedText.text = §<§;
            }
         }
         var _loc3_:int = Math.floor(param1 / param2 * 100);
         if(_loc4_)
         {
            if(isNaN(_loc3_))
            {
               while(true)
               {
                  _loc3_ = 0;
                  while(true)
                  {
                  }
               }
               addr92:
            }
            do
            {
               mClip.friendsCounterBar.gotoAndStop(_loc3_);
               if(!(_loc4_ || this))
               {
                  continue;
               }
            }
            while(_loc5_ && _loc3_);
            
            return;
         }
         §§goto(addr92);
      }
      
      override protected function get facebookGraphCall() : String
      {
         return "https://graph.facebook.com/me/friends/";
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§@"E§ = null;
         var _loc2_:Dictionary = §&k§.§]v§();
         if(_loc7_)
         {
            this.§]"$§ = new Dictionary();
         }
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc6_ && this))
            {
               this.§]"$§[_loc3_.§5!0§] = _loc3_;
            }
         }
         if(!_loc6_)
         {
            this.§<"?§ = §4"7§.§&"5§.§4!h§();
            while(true)
            {
               this.finalPlayerList = param1.filter(this.§?-§);
               loop2:
               while(_loc7_ || _loc2_)
               {
                  while(true)
                  {
                     this.finalPlayerList.sort(§&"#§);
                     if(_loc7_)
                     {
                        break;
                     }
                     continue loop2;
                  }
                  return;
               }
            }
         }
         §§goto(addr108);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return mClip.cantFindInviteFriend;
      }
      
      private function §?-§(param1:Object, param2:int, param3:Array) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§]"$§[param1.id] == null);
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
                        loop3:
                        while(true)
                        {
                           §§push(this.§<"?§[param1.id] == null);
                           if(!(_loc4_ && param3))
                           {
                              if(_loc4_ && param3)
                              {
                                 break;
                              }
                              if(!_loc4_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§pop();
                                          if(_loc4_ && param3)
                                          {
                                             break;
                                          }
                                          addr92:
                                          while(true)
                                          {
                                             §§push(!param1.sent);
                                             if(!(_loc4_ && param1))
                                             {
                                                §§goto(addr31);
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop3;
                                       addr84:
                                    }
                                    addr31:
                                    return §§pop();
                                 }
                                 continue loop1;
                                 addr79:
                              }
                              continue loop0;
                           }
                           §§goto(addr84);
                        }
                     }
                  }
                  §§goto(addr79);
               }
            }
         }
         §§goto(addr92);
      }
      
      private function §-!p§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`"2§();
         }
      }
      
      private function §""4§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §;f§ = 0;
         }
         do
         {
            this.§`"2§();
         }
         while(_loc2_);
         
      }
      
      private function §`"2§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:int = §;f§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc7_ || _loc1_)
            {
               if(_loc2_ >= §@!o§ + §;f§)
               {
                  if(!(_loc8_ && _loc2_))
                  {
                     addr70:
                     break;
                  }
               }
               else
               {
                  if(!_loc3_.selected)
                  {
                     continue;
                  }
                  if(!(_loc7_ || _loc3_))
                  {
                     continue;
                  }
                  _loc1_.push(_loc3_.id);
                  if(_loc8_ && _loc2_)
                  {
                     continue;
                  }
               }
               _loc2_++;
               continue;
            }
            §§goto(addr70);
         }
         if(_loc7_)
         {
            _loc4_ = JSON.stringify(_loc1_);
            while(true)
            {
               §[w§.dispatchEvent(new §6"L§(§6"L§.§ !1§,{"userId":_loc4_},true));
               while(_loc7_ || _loc3_)
               {
                  §'"+§.addCallback("invitationBatchSent",this.§'!Y§);
                  if(_loc8_)
                  {
                     continue;
                  }
                  return;
                  addr122:
               }
            }
         }
         §§goto(addr122);
      }
      
      private function §'!Y§(param1:Object) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Object = null;
         if(!(_loc8_ && param1))
         {
            §'"+§.§"!6§("invitationBatchSent",this.§'!Y§);
         }
         while(true)
         {
            if(param1 != null)
            {
               mClip.CheckAnimation.gotoAndPlay(1);
            }
            if(!(_loc7_ || this))
            {
               break;
            }
            if(!(_loc7_ || param1))
            {
               continue;
            }
            §§goto(addr215);
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               §§push(int(§;f§));
               loop3:
               while(true)
               {
                  _loc2_ = §§pop();
                  while(true)
                  {
                     §§push(int(§;f§));
                     if(_loc8_)
                     {
                        break;
                     }
                     if(!(_loc8_ && _loc2_))
                     {
                        _loc3_ = §§pop();
                        if(!(_loc8_ && this))
                        {
                           if(!_loc8_)
                           {
                              if(true)
                              {
                                 §§push(0);
                              }
                              continue loop2;
                              break;
                           }
                           continue loop1;
                        }
                        continue;
                     }
                     continue loop3;
                  }
                  var _loc5_:* = §§pop();
                  var _loc6_:* = this.finalPlayerList;
                  addr164:
                  for each(_loc4_ in _loc6_)
                  {
                     if(!_loc8_)
                     {
                        if(_loc3_ < §@!o§ + §;f§)
                        {
                           if(_loc4_.selected)
                           {
                              addr149:
                              _loc4_.selected = false;
                              if(_loc7_)
                              {
                                 addr136:
                                 _loc4_.sent = true;
                                 if(_loc7_)
                                 {
                                    _loc3_++;
                                    if(_loc7_)
                                    {
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          if(_loc7_ || param1)
                                          {
                                             addr134:
                                             if(false)
                                             {
                                                §§goto(addr136);
                                             }
                                             §§goto(addr164);
                                          }
                                          addr166:
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             §'r§ += _loc3_ - _loc2_;
                                             addr201:
                                             checkIfBatchInProgress();
                                             if(!_loc8_)
                                             {
                                                §#I§(this.finalPlayerList,false);
                                                if(_loc7_ || param1)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr201);
                                                   }
                                                   addr215:
                                                   return;
                                                }
                                                §§goto(addr201);
                                                addr206:
                                             }
                                             addr214:
                                             §§goto(addr214);
                                          }
                                          §§goto(addr206);
                                          addr163:
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr149);
                              }
                              addr160:
                              §;f§ = _loc3_;
                              §§goto(addr163);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr166);
               }
            }
         }
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1 != false)
            {
               if(mClip.btnInviteMore.visible)
               {
                  addr94:
                  mClip.btnInviteMore.visible = true;
               }
               else
               {
                  mClip.btnInviteMore.visible = false;
                  while(!_loc2_)
                  {
                     mClip.btnInvite.visible = true;
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr25);
                        }
                        else
                        {
                           §§goto(addr94);
                        }
                     }
                     addr25:
                     return;
                     addr76:
                  }
               }
               if(!(_loc2_ && _loc3_))
               {
                  if(_loc3_)
                  {
                     mClip.btnInvite.visible = false;
                     §§goto(addr76);
                  }
                  else
                  {
                     loop3:
                     while(true)
                     {
                        mClip.btnInvite.visible = false;
                        addr113:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              mClip.btnInviteMore.visible = false;
                              continue loop3;
                           }
                           continue loop3;
                        }
                     }
                     addr123:
                  }
                  §§goto(addr25);
               }
               §§goto(addr113);
            }
            §§goto(addr119);
         }
         §§goto(addr123);
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            close();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            do
            {
               preClose();
            }
            while(_loc1_);
            
         }
      }
   }
}
