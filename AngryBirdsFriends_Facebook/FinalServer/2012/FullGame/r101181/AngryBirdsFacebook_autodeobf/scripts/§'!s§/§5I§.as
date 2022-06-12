package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §&G§.§1z§;
   import §&G§.§@!5§;
   import §+N§.§@!]§;
   import §,"2§.§;6§;
   import §-!+§.§!a§;
   import §]!>§.§0!!§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §5I§ extends §+!4§
   {
       
      
      private var §'!t§:Dictionary;
      
      private var §5T§:Dictionary;
      
      private var §]!9§:Array;
      
      private var §"8§:§!a§;
      
      public function §5I§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(§ "A§.§4[§.Views.PopupCustomInvite[0],param1);
            while(true)
            {
               mClip.btnInvite.addEventListener(MouseEvent.CLICK,this.§#!0§);
               addr68:
               if(_loc4_)
               {
                  continue;
               }
               mClip.friendsCounterBar.gotoAndStop(0);
               addr80:
               if(_loc3_ || this)
               {
                  addr50:
                  if(!(_loc3_ || param1))
                  {
                     loop2:
                     while(true)
                     {
                        mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!a§);
                        addr66:
                        addr98:
                        while(!_loc4_)
                        {
                           §§goto(addr68);
                           §§goto(addr80);
                        }
                        while(true)
                        {
                           mClip.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§#0§);
                           continue loop2;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr66);
            }
         }
         §§goto(addr98);
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]!9§ = param1;
         }
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§]!9§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            mClip.friendsCounter.text = param1 + "/" + param2;
            do
            {
               mClip.friendsSelectedText.text = § ",§;
            }
            while(_loc4_);
            
         }
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            mClip.friendsCounter.text = param1 + "/" + param2;
            if(_loc5_ || param2)
            {
               mClip.friendsSelectedText.text = §2^§;
            }
         }
         var _loc3_:int = Math.floor(param1 / param2 * 100);
         if(!_loc4_)
         {
            if(isNaN(_loc3_))
            {
               if(_loc5_ || _loc3_)
               {
                  _loc3_ = 0;
                  addr100:
                  while(true)
                  {
                  }
                  addr100:
               }
               §§goto(addr100);
            }
            while(true)
            {
               mClip.friendsCounterBar.gotoAndStop(_loc3_);
               if(_loc5_)
               {
                  break;
               }
               §§goto(addr100);
            }
            return;
         }
         §§goto(addr100);
      }
      
      override protected function get facebookGraphCall() : String
      {
         return "https://graph.facebook.com/me/friends/";
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§@!5§ = null;
         var _loc2_:Dictionary = §1z§.§^"4§();
         if(!_loc6_)
         {
            this.§'!t§ = new Dictionary();
         }
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc6_ && this))
            {
               this.§'!t§[_loc3_.§4v§] = _loc3_;
            }
         }
         if(!(_loc6_ && _loc2_))
         {
            this.§5T§ = §0!!§.§;"§.§4!Z§();
            while(true)
            {
               this.finalPlayerList = param1.filter(this.§"o§);
               while(_loc7_ || _loc2_)
               {
                  this.finalPlayerList.sort(§?s§);
                  if(!_loc7_)
                  {
                     continue;
                  }
                  return;
                  addr98:
               }
            }
         }
         §§goto(addr98);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return mClip.cantFindInviteFriend;
      }
      
      private function §"o§(param1:Object, param2:int, param3:Array) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §§push(this.§'!t§[param1.id] == null);
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
                        addr103:
                        while(true)
                        {
                           §§push(this.§5T§[param1.id] == null);
                        }
                     }
                     addr102:
                  }
                  while(true)
                  {
                     addr63:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc4_ && param1)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           return §§pop();
                        }
                        addr50:
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §§push(!param1.sent);
            if(_loc5_)
            {
               if(_loc5_)
               {
                  if(_loc4_ && this)
                  {
                     §§goto(addr102);
                  }
                  §§goto(addr50);
               }
               §§goto(addr63);
            }
            §§goto(addr82);
         }
      }
      
      private function §#0§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§else §();
         }
      }
      
      private function §#!0§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §"n§ = 0;
            do
            {
               this.§else §();
            }
            while(_loc2_);
            
         }
      }
      
      private function §else §() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:int = §"n§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc7_)
            {
               if(_loc2_ >= §%@§ + §"n§)
               {
                  if(!_loc8_)
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
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
               _loc1_.push(_loc3_.id);
               if(!(_loc7_ || _loc2_))
               {
                  continue;
               }
            }
            _loc2_++;
         }
         if(_loc7_ || _loc3_)
         {
            _loc4_ = JSON.stringify(_loc1_);
         }
         while(true)
         {
            §]"3§.dispatchEvent(new §;6§(§;6§.§;"E§,{"userId":_loc4_},true));
            while(!(_loc8_ && this))
            {
               §@!]§.addCallback("invitationBatchSent",this.§4!A§);
               if(_loc7_)
               {
                  return;
               }
            }
         }
      }
      
      private function §4!A§(param1:Object) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         if(_loc8_)
         {
            §@!]§.§[">§("invitationBatchSent",this.§4!A§);
            while(true)
            {
               if(param1 != null)
               {
                  mClip.CheckAnimation.gotoAndPlay(1);
                  break;
               }
               if(!(_loc8_ || param1))
               {
                  break;
               }
               if(!_loc8_)
               {
                  continue;
               }
               §§goto(addr211);
            }
            while(true)
            {
               addr47:
               §§goto(addr102);
            }
         }
         while(true)
         {
            §§push(int(§"n§));
            if(!(_loc7_ && this))
            {
               §§goto(addr37);
            }
            addr102:
            while(true)
            {
               §§push(int(§"n§));
               if(!(_loc8_ || param1))
               {
                  break;
               }
               _loc2_ = §§pop();
               continue loop1;
            }
            loop5:
            for each(_loc4_ in this.finalPlayerList)
            {
               if(_loc8_ || param1)
               {
                  if(_loc3_ < §%@§ + §"n§)
                  {
                     if(_loc4_.selected)
                     {
                        if(!_loc7_)
                        {
                           _loc4_.selected = false;
                        }
                        loop6:
                        while(_loc8_)
                        {
                           if(!_loc8_)
                           {
                              addr161:
                              §"n§ = _loc3_;
                              break;
                           }
                           loop7:
                           while(true)
                           {
                              _loc4_.sent = true;
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    _loc3_++;
                                    if(_loc8_ || this)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop6;
                              }
                              addr131:
                              while(false)
                              {
                                 continue loop7;
                              }
                              continue loop5;
                           }
                        }
                        break;
                     }
                     continue;
                  }
                  §§goto(addr161);
               }
               §§goto(addr131);
            }
            if(!_loc7_)
            {
               §;L§ += _loc3_ - _loc2_;
               loop10:
               while(true)
               {
                  addr197:
                  while(true)
                  {
                     checkIfBatchInProgress();
                     while(true)
                     {
                        if(_loc8_)
                        {
                           §%!,§(this.finalPlayerList,false);
                           if(!(_loc7_ && _loc3_))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop10;
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr197);
            }
            addr211:
            return;
         }
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1 != false)
            {
               if(!mClip.btnInviteMore.visible)
               {
                  mClip.btnInviteMore.visible = false;
                  while(!(_loc3_ && this))
                  {
                     if(!(_loc3_ && this))
                     {
                        if(_loc2_ || this)
                        {
                           mClip.btnInvite.visible = true;
                           if(!_loc2_)
                           {
                              continue;
                           }
                           if(!(_loc3_ && param1))
                           {
                              if(_loc3_)
                              {
                                 addr123:
                                 mClip.btnInviteMore.visible = false;
                                 mClip.btnInvite.visible = false;
                                 addr127:
                                 addr119:
                              }
                              §§goto(addr24);
                           }
                           §§goto(addr127);
                           continue;
                        }
                        addr109:
                        mClip.btnInviteMore.visible = true;
                     }
                     mClip.btnInvite.visible = false;
                     break;
                  }
                  if(!_loc2_)
                  {
                     §§goto(addr119);
                  }
                  addr24:
                  return;
               }
               §§goto(addr109);
            }
         }
         §§goto(addr123);
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            close();
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
               preClose();
            }
            while(!_loc1_);
            
         }
      }
   }
}
