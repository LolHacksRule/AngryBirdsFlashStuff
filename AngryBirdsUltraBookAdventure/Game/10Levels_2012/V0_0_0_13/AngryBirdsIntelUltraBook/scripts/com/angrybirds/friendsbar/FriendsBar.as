package com.angrybirds.friendsbar
{
   import §+p§.§&!>§;
   import §+p§.CachedDataEvent;
   import §5,§.FriendItemRenderer;
   import §5,§.HighScoreScroller;
   import §6b§.Log;
   import §7p§.§+!N§;
   import §9R§.CachedFacebookFriends;
   import §9R§.HighScoreListManager;
   import §=?§.SoundEngine;
   import §@!`§.§&!D§;
   import §@!`§.FriendListItemVO;
   import §@!`§.InviteVO;
   import com.AngryBirds.friendsbar.FriendsBarAsset;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class FriendsBar extends Sprite
   {
      
      public static const SIDEBAR_BUTTON_STATE_INFO:String = "SidebarButtonStateInfo";
      
      public static const SIDEBAR_BUTTON_STATE_PLAY:String = "SidebarButtonStatePlay";
      
      public static const SIDEBAR_BUTTON_STATE_NONE:String = "SidebarButtonStateNone";
       
      
      private var §@c§:HighScoreScroller;
      
      private var §for§:Array;
      
      private var §^5§:FriendsBarAsset;
      
      private var §9<§:String;
      
      private var §'U§:HighScoreListManager;
      
      private var §0!U§:String = "";
      
      private var §+1§:CachedFacebookFriends;
      
      private var §^+§:String;
      
      private var §-!'§:Boolean;
      
      public function FriendsBar(highScoreListManager:HighScoreListManager, serverRoot:String, userId:String)
      {
         super();
         FriendItemRenderer.sUserId = userId;
         this.§^+§ = userId;
         this.§'U§ = highScoreListManager;
         this.§9<§ = serverRoot;
         this.init();
      }
      
      public function §&,§(title:String) : void
      {
         this.§^5§.§`!D§.text = title;
      }
      
      private function init() : void
      {
         this.§^5§ = new FriendsBarAsset();
         addChild(this.§^5§);
         this.§&,§("Total scores");
         this.§>!E§();
         MovieClip(this.§^5§.§!5§.soundsOff).mouseEnabled = false;
         MovieClip(this.§^5§.§!5§.soundsOff).mouseChildren = false;
         this.§@c§ = new HighScoreScroller(250,250,[],FriendItemRenderer,2,15);
         addChild(this.§@c§.scrollerSprite);
         this.§@c§.scrollerSprite.rotation = 90;
         this.§@c§.scrollerSprite.x = 180 + 10;
         this.§@c§.scrollerSprite.y = 150;
         this.§^5§.§#K§.addEventListener(MouseEvent.CLICK,this.§9!#§);
         this.§^5§.§2e§.addEventListener(MouseEvent.CLICK,this.§+!5§);
         this.§^5§.§2e§.visible = false;
         this.§^5§.§#K§.visible = false;
         this.§^5§.§!5§.btnInvite.addEventListener(MouseEvent.CLICK,this.§3!S§);
         this.§^5§.§!5§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§catch§);
         this.§^5§.§!5§.btnSound.addEventListener(MouseEvent.CLICK,this.§0!B§);
         this.§^5§.§!5§.btnInfo.addEventListener(MouseEvent.CLICK,this.§9V§);
         this.§^5§.§!5§.btnTutorial.addEventListener(MouseEvent.CLICK,this.§^!X§);
         this.§^5§.§"!c§.addEventListener(MouseEvent.CLICK,this.§!w§);
         this.§@c§.scrollerSprite.addEventListener(§&!>§.INVITE_FRIENDS_REQUESTED,this.§07§);
         this.§'U§.§-!V§().addEventListener(CachedDataEvent.DATA_LOADED,this.§=F§);
         if(!this.§'U§.§-!V§().§5!W§)
         {
            this.§=F§(null);
         }
      }
      
      public function §+x§(currentState:String = "SidebarButtonStateInfo") : void
      {
         Log.log("Changing state");
         if(currentState == SIDEBAR_BUTTON_STATE_INFO)
         {
            Log.log("Info state");
            SimpleButton(this.§^5§.§!5§.btnInfo).visible = true;
            SimpleButton(this.§^5§.§!5§.btnTutorial).visible = false;
            SimpleButton(this.§^5§.§!5§.btnFullscreen).visible = true;
         }
         else if(currentState == SIDEBAR_BUTTON_STATE_NONE)
         {
            Log.log("None state");
            SimpleButton(this.§^5§.§!5§.btnInfo).visible = false;
            SimpleButton(this.§^5§.§!5§.btnTutorial).visible = true;
         }
         else if(currentState == SIDEBAR_BUTTON_STATE_PLAY)
         {
            Log.log("Play state");
            SimpleButton(this.§^5§.§!5§.btnInfo).visible = false;
            SimpleButton(this.§^5§.§!5§.btnTutorial).visible = true;
         }
         SimpleButton(this.§^5§.§!5§.btnTutorial).alpha = currentState == SIDEBAR_BUTTON_STATE_NONE ? Number(0.5) : Number(1);
         SimpleButton(this.§^5§.§!5§.btnTutorial).mouseEnabled = currentState == SIDEBAR_BUTTON_STATE_NONE ? Boolean(false) : Boolean(true);
      }
      
      public function §>!E§() : void
      {
         if(SoundEngine.§4!7§())
         {
            MovieClip(this.§^5§.§!5§.soundsOff).visible = false;
         }
         else
         {
            MovieClip(this.§^5§.§!5§.soundsOff).visible = true;
         }
      }
      
      private function §3!S§(e:MouseEvent) : void
      {
         dispatchEvent(new §&!>§(§&!>§.INVITE_FRIENDS_REQUESTED));
      }
      
      private function §07§(e:§&!>§) : void
      {
         var inviteVO:InviteVO = e.data as InviteVO;
         CachedFacebookFriends.invitedIDs.push(inviteVO.userId);
         if(this.§'U§.§-!V§().data.indexOf(inviteVO) != -1)
         {
            this.§'U§.§-!V§().data.splice(this.§'U§.§-!V§().data.indexOf(inviteVO),1);
         }
         if(this.§+1§ && this.§+1§.data.indexOf(inviteVO) != -1)
         {
            this.§+1§.data.splice(this.§+1§.data.indexOf(inviteVO),1);
         }
         this.§60§();
         this.§"E§();
         dispatchEvent(new §&!>§(§&!>§.INVITE_FRIENDS_REQUESTED,inviteVO));
      }
      
      private function §catch§(e:MouseEvent) : void
      {
         dispatchEvent(new §&!>§(§&!>§.FULLSCREEN_TOGGLE_REQUESTED));
      }
      
      private function §0!B§(e:MouseEvent) : void
      {
         dispatchEvent(new §&!>§(§&!>§.MUTE_TOGGLE_REQUESTED));
         this.§>!E§();
      }
      
      private function §9V§(e:MouseEvent) : void
      {
         Log.log(§&!>§.INFO_REQUESTED);
         dispatchEvent(new §&!>§(§&!>§.INFO_REQUESTED));
      }
      
      private function §^!X§(e:MouseEvent) : void
      {
         Log.log(§&!>§.TUTORIAL_REQUESTED);
         dispatchEvent(new §&!>§(§&!>§.TUTORIAL_REQUESTED));
      }
      
      private function §9!#§(e:MouseEvent) : void
      {
         this.scroll(-this.§@c§.§ ?§);
      }
      
      private function §+!5§(e:MouseEvent) : void
      {
         this.scroll(this.§@c§.§ ?§);
      }
      
      private function §!w§(e:MouseEvent) : void
      {
         §+!N§.§;7§("http://www.facebook.com/Intel");
         AngryBirdsUltraBook.sSingleton.§"§();
         var urlReq:URLRequest = new URLRequest("http://www.facebook.com/Intel");
         navigateToURL(urlReq,"_blank");
      }
      
      override public function set height(value:Number) : void
      {
         this.resize(value);
      }
      
      private function resize(setHeight:Number) : void
      {
         var targetStageHeight:Number = Math.max(setHeight,330);
         this.§^5§.§,!W§.height = targetStageHeight - this.§^5§.§ e§.height - this.§^5§.§6l§.height + 5;
         this.§^5§.§6l§.y = this.§^5§.§,!W§.y + this.§^5§.§,!W§.height;
         this.§^5§.§!5§.y = this.§^5§.§6l§.y + 55;
         this.§^5§.§2e§.y = this.§^5§.§6l§.y + 45;
         var scrollerHeight:Number = targetStageHeight - (this.§^5§.§6l§.height - 30 + this.§^5§.§ e§.height - 30);
         this.§@c§.§3u§(scrollerHeight);
         this.§"E§();
      }
      
      public function §]! §(episode:String, level:String, scores:CachedFacebookFriends = null, isTournament:Boolean = false) : void
      {
         if(this.§0!U§ == level && !this.§-!'§)
         {
            return;
         }
         this.§-!'§ = false;
         if(this.§+1§ && this.§0!U§ != level)
         {
            this.§+1§.removeEventListener(CachedDataEvent.DATA_LOADED,this.§;]§);
            this.§+1§ = null;
         }
         if(level)
         {
            FriendItemRenderer.isShowingLevelScores = true;
            this.§&,§("Level scores");
            if(scores == null)
            {
               this.§+1§ = this.§'U§.§>3§(episode,level,isTournament);
            }
            else
            {
               this.§+1§ = scores;
            }
            isTournament = false;
            if(!isTournament)
            {
               this.§+1§.addEventListener(CachedDataEvent.DATA_LOADED,this.§;]§);
            }
            FriendItemRenderer.isShowingLevelScores = true;
            this.§@c§.data = [];
            this.§"E§();
            if(!this.§+1§.§5!W§)
            {
               this.§+1§.§&N§(0,0);
            }
            this.§+x§(SIDEBAR_BUTTON_STATE_PLAY);
         }
         else
         {
            this.§&,§("Total scores");
            FriendItemRenderer.isShowingLevelScores = false;
            this.§for§ = this.§'U§.§-!V§().data;
            this.§60§();
            this.§=-§(this.§'U§.§-!V§().userIndex);
            this.§"E§();
            this.§'U§.§-!V§().§&N§(0,0);
            this.§+x§(SIDEBAR_BUTTON_STATE_INFO);
         }
         this.§0!U§ = level;
      }
      
      private function §=F§(e:CachedDataEvent) : void
      {
         if(this.§+1§)
         {
            return;
         }
         if(this.§@c§.data != this.§'U§.§-!V§().data)
         {
            this.§for§ = this.§'U§.§-!V§().data;
            this.§60§();
         }
         else
         {
            this.§@c§.§3!b§();
         }
         this.§=-§(this.§'U§.§-!V§().userIndex);
         this.§"E§();
      }
      
      private function §;]§(e:CachedDataEvent) : void
      {
         FriendItemRenderer.isShowingLevelScores = true;
         this.§for§ = this.§+1§.data;
         this.§60§();
         this.§=-§(this.§+1§.userIndex);
         this.§"E§();
      }
      
      public function §&m§(data:Array) : void
      {
         this.§-!'§ = true;
         FriendItemRenderer.isShowingLevelScores = false;
         this.§for§ = data;
         this.§60§();
         this.§"E§();
      }
      
      public function §=-§(userIndex:int, animate:Boolean = false) : void
      {
         var currentOffset:int = 0;
         var halfway:int = 0;
         var newOffset:int = 0;
         if(userIndex != -1)
         {
            currentOffset = this.§@c§.offset;
            halfway = Math.floor(this.§@c§.§ ?§ / 2);
            newOffset = userIndex - halfway - currentOffset;
            this.§@c§.scroll(newOffset,!animate);
         }
      }
      
      private function scroll(offset:int) : void
      {
         if(offset != 0)
         {
            this.§@c§.scroll(offset);
            this.§"E§();
         }
      }
      
      private function §"E§() : void
      {
         var canGoLeft:Boolean = this.§@c§.offset != 0;
         var canGoRight:Boolean = this.§@c§.offset != this.§@c§.data.length - this.§@c§.§ ?§;
         this.§^5§.§#K§.visible = canGoLeft;
         this.§^5§.§2e§.visible = canGoRight;
      }
      
      public function get §?!-§() : CachedFacebookFriends
      {
         return this.§+1§;
      }
      
      public function §-!E§(level:String, score:int, stars:int, eagle:int, beatenUsers:Array, isTournament:Boolean = false) : int
      {
         var userBeaten:Object = null;
         if(!this.§+1§ || this.§0!U§ != level)
         {
            return 0;
         }
         var out_usersBeaten:Array = [];
         var prevOffset:int = this.§@c§.offset;
         var rankAfterUpdate:int = this.§+1§.§-!E§(score,stars,eagle,out_usersBeaten);
         this.§for§ = this.§+1§.data;
         this.§60§();
         this.§=-§(rankAfterUpdate - 1,true);
         for each(userBeaten in out_usersBeaten)
         {
            beatenUsers.push(userBeaten);
         }
         this.§"E§();
         return rankAfterUpdate;
      }
      
      public function §8z§(count:int) : void
      {
         var text:String = null;
         var counterBackground:MovieClip = null;
         var oldWidth:int = 0;
         if(count == 0)
         {
            this.§^5§.§!5§.txtInboxItemCount.visible = false;
            this.§^5§.§!5§.mcItemCountBg.visible = false;
         }
         else
         {
            this.§^5§.§!5§.txtInboxItemCount.visible = true;
            this.§^5§.§!5§.mcItemCountBg.visible = true;
            text = this.§#^§(count);
            this.§^5§.§!5§.txtInboxItemCount.text.text = text;
            counterBackground = this.§^5§.§!5§.mcItemCountBg;
            oldWidth = counterBackground.width;
            counterBackground.scaleX = 1 + (text.length - 1) / 7;
            counterBackground.x = this.§^5§.§!5§.txtInboxItemCount.x + this.§^5§.§!5§.txtInboxItemCount.width / 2 - counterBackground.width / 2;
         }
      }
      
      private function §60§() : void
      {
         var userVO:FriendListItemVO = null;
         var userBlocked:String = null;
         var blockedList:Array = §&!D§.§8!X§.§]L§();
         var newList:Array = this.§for§.concat();
         for(var i:int = this.§for§.length - 1; i >= 0; i--)
         {
            userVO = this.§for§[i];
            for each(userBlocked in blockedList)
            {
               if(userBlocked == userVO.userId)
               {
                  newList.splice(i,1);
               }
            }
         }
         this.§@c§.data = newList;
      }
      
      private function §#^§(amt:Number) : String
      {
         var text:String = null;
         amt = Math.min(amt,99000000);
         if(amt >= 100000)
         {
            amt /= 1000000;
            text = amt.toPrecision(2).slice(0,3) + "M";
         }
         else if(amt >= 1000)
         {
            amt /= 1000;
            text = amt.toPrecision(2) + "k";
         }
         else
         {
            text = amt.toString();
         }
         return text;
      }
   }
}
