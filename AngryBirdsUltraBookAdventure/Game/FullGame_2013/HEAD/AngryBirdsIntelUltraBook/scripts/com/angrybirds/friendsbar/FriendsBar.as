package com.angrybirds.friendsbar
{
   import §!!0§.SoundEngine;
   import §"!i§.§5>§;
   import §"!i§.FriendListItemVO;
   import §"!i§.InviteVO;
   import §#_§.CachedFacebookFriends;
   import §#_§.HighScoreListManager;
   import §5!]§.FriendItemRenderer;
   import §5!]§.HighScoreScroller;
   import §5=§.§9F§;
   import §<u§.Log;
   import §=!i§.§>Z§;
   import §=!i§.CachedDataEvent;
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
       
      
      private var §9![§:HighScoreScroller;
      
      private var §[!M§:Array;
      
      private var §-!#§:FriendsBarAsset;
      
      private var § l§:String;
      
      private var §"w§:HighScoreListManager;
      
      private var §18§:String = "";
      
      private var §8!2§:CachedFacebookFriends;
      
      private var §`I§:String;
      
      private var §!!a§:Boolean;
      
      public function FriendsBar(highScoreListManager:HighScoreListManager, serverRoot:String, userId:String)
      {
         super();
         FriendItemRenderer.sUserId = userId;
         this.§`I§ = userId;
         this.§"w§ = highScoreListManager;
         this.§ l§ = serverRoot;
         this.init();
      }
      
      public function §8K§(title:String) : void
      {
         this.§-!#§.§?&§.text = title;
      }
      
      private function init() : void
      {
         this.§-!#§ = new FriendsBarAsset();
         addChild(this.§-!#§);
         this.§8K§("Total scores");
         this.§8w§();
         MovieClip(this.§-!#§.§9!#§.soundsOff).mouseEnabled = false;
         MovieClip(this.§-!#§.§9!#§.soundsOff).mouseChildren = false;
         this.§9![§ = new HighScoreScroller(250,250,[],FriendItemRenderer,2,15);
         addChild(this.§9![§.scrollerSprite);
         this.§9![§.scrollerSprite.rotation = 90;
         this.§9![§.scrollerSprite.x = 180 + 10;
         this.§9![§.scrollerSprite.y = 150;
         this.§-!#§.§%>§.addEventListener(MouseEvent.CLICK,this.§2!W§);
         this.§-!#§.§`Q§.addEventListener(MouseEvent.CLICK,this.§^!6§);
         this.§-!#§.§`Q§.visible = false;
         this.§-!#§.§%>§.visible = false;
         this.§-!#§.§9!#§.btnInvite.addEventListener(MouseEvent.CLICK,this.§4e§);
         this.§-!#§.§9!#§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§-!;§);
         this.§-!#§.§9!#§.btnSound.addEventListener(MouseEvent.CLICK,this.§var §);
         this.§-!#§.§9!#§.btnInfo.addEventListener(MouseEvent.CLICK,this.§-"§);
         this.§-!#§.§9!#§.btnTutorial.addEventListener(MouseEvent.CLICK,this.§`!h§);
         this.§-!#§.§[!@§.addEventListener(MouseEvent.CLICK,this.§8X§);
         this.§9![§.scrollerSprite.addEventListener(§>Z§.INVITE_FRIENDS_REQUESTED,this.§#!-§);
         this.§"w§.§^!F§().addEventListener(CachedDataEvent.DATA_LOADED,this.§1!+§);
         if(!this.§"w§.§^!F§().§#]§)
         {
            this.§1!+§(null);
         }
      }
      
      public function §5!;§(currentState:String = "SidebarButtonStateInfo") : void
      {
         Log.log("Changing state");
         if(currentState == SIDEBAR_BUTTON_STATE_INFO)
         {
            Log.log("Info state");
            SimpleButton(this.§-!#§.§9!#§.btnInfo).visible = true;
            SimpleButton(this.§-!#§.§9!#§.btnTutorial).visible = false;
            SimpleButton(this.§-!#§.§9!#§.btnFullscreen).visible = true;
         }
         else if(currentState == SIDEBAR_BUTTON_STATE_NONE)
         {
            Log.log("None state");
            SimpleButton(this.§-!#§.§9!#§.btnInfo).visible = false;
            SimpleButton(this.§-!#§.§9!#§.btnTutorial).visible = true;
         }
         else if(currentState == SIDEBAR_BUTTON_STATE_PLAY)
         {
            Log.log("Play state");
            SimpleButton(this.§-!#§.§9!#§.btnInfo).visible = false;
            SimpleButton(this.§-!#§.§9!#§.btnTutorial).visible = true;
         }
         SimpleButton(this.§-!#§.§9!#§.btnTutorial).alpha = currentState == SIDEBAR_BUTTON_STATE_NONE ? Number(0.5) : Number(1);
         SimpleButton(this.§-!#§.§9!#§.btnTutorial).mouseEnabled = currentState == SIDEBAR_BUTTON_STATE_NONE ? Boolean(false) : Boolean(true);
      }
      
      public function §8w§() : void
      {
         if(SoundEngine.§'5§())
         {
            MovieClip(this.§-!#§.§9!#§.soundsOff).visible = false;
         }
         else
         {
            MovieClip(this.§-!#§.§9!#§.soundsOff).visible = true;
         }
      }
      
      private function §4e§(e:MouseEvent) : void
      {
         dispatchEvent(new §>Z§(§>Z§.INVITE_FRIENDS_REQUESTED));
      }
      
      private function §#!-§(e:§>Z§) : void
      {
         var inviteVO:InviteVO = e.data as InviteVO;
         CachedFacebookFriends.invitedIDs.push(inviteVO.userId);
         if(this.§"w§.§^!F§().data.indexOf(inviteVO) != -1)
         {
            this.§"w§.§^!F§().data.splice(this.§"w§.§^!F§().data.indexOf(inviteVO),1);
         }
         if(this.§8!2§ && this.§8!2§.data.indexOf(inviteVO) != -1)
         {
            this.§8!2§.data.splice(this.§8!2§.data.indexOf(inviteVO),1);
         }
         this.§<!%§();
         this.§+6§();
         dispatchEvent(new §>Z§(§>Z§.INVITE_FRIENDS_REQUESTED,inviteVO));
      }
      
      private function §-!;§(e:MouseEvent) : void
      {
         dispatchEvent(new §>Z§(§>Z§.FULLSCREEN_TOGGLE_REQUESTED));
      }
      
      private function §var §(e:MouseEvent) : void
      {
         dispatchEvent(new §>Z§(§>Z§.MUTE_TOGGLE_REQUESTED));
         this.§8w§();
      }
      
      private function §-"§(e:MouseEvent) : void
      {
         Log.log(§>Z§.INFO_REQUESTED);
         dispatchEvent(new §>Z§(§>Z§.INFO_REQUESTED));
      }
      
      private function §`!h§(e:MouseEvent) : void
      {
         Log.log(§>Z§.TUTORIAL_REQUESTED);
         dispatchEvent(new §>Z§(§>Z§.TUTORIAL_REQUESTED));
      }
      
      private function §2!W§(e:MouseEvent) : void
      {
         this.scroll(-this.§9![§.§!0§);
      }
      
      private function §^!6§(e:MouseEvent) : void
      {
         this.scroll(this.§9![§.§!0§);
      }
      
      private function §8X§(e:MouseEvent) : void
      {
         §9F§.§+3§("http://www.facebook.com/Intel");
         AngryBirdsUltraBook.sSingleton.§?]§();
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
         this.§-!#§.§>X§.height = targetStageHeight - this.§-!#§.§3!0§.height - this.§-!#§.§+?§.height + 5;
         this.§-!#§.§+?§.y = this.§-!#§.§>X§.y + this.§-!#§.§>X§.height;
         this.§-!#§.§9!#§.y = this.§-!#§.§+?§.y + 55;
         this.§-!#§.§`Q§.y = this.§-!#§.§+?§.y + 45;
         var scrollerHeight:Number = targetStageHeight - (this.§-!#§.§+?§.height - 30 + this.§-!#§.§3!0§.height - 30);
         this.§9![§.§ m§(scrollerHeight);
         this.§+6§();
      }
      
      public function §^!;§(episode:String, level:String, scores:CachedFacebookFriends = null, isTournament:Boolean = false) : void
      {
         if(this.§18§ == level && !this.§!!a§)
         {
            return;
         }
         this.§!!a§ = false;
         if(this.§8!2§ && this.§18§ != level)
         {
            this.§8!2§.removeEventListener(CachedDataEvent.DATA_LOADED,this.§%!k§);
            this.§8!2§ = null;
         }
         if(level)
         {
            FriendItemRenderer.isShowingLevelScores = true;
            this.§8K§("Level scores");
            if(scores == null)
            {
               this.§8!2§ = this.§"w§.§[4§(episode,level,isTournament);
            }
            else
            {
               this.§8!2§ = scores;
            }
            isTournament = false;
            if(!isTournament)
            {
               this.§8!2§.addEventListener(CachedDataEvent.DATA_LOADED,this.§%!k§);
            }
            FriendItemRenderer.isShowingLevelScores = true;
            this.§9![§.data = [];
            this.§+6§();
            if(!this.§8!2§.§#]§)
            {
               this.§8!2§.§ !i§(0,0);
            }
            this.§5!;§(SIDEBAR_BUTTON_STATE_PLAY);
         }
         else
         {
            this.§8K§("Total scores");
            FriendItemRenderer.isShowingLevelScores = false;
            this.§[!M§ = this.§"w§.§^!F§().data;
            this.§<!%§();
            this.§!!_§(this.§"w§.§^!F§().userIndex);
            this.§+6§();
            this.§"w§.§^!F§().§ !i§(0,0);
            this.§5!;§(SIDEBAR_BUTTON_STATE_INFO);
         }
         this.§18§ = level;
      }
      
      private function §1!+§(e:CachedDataEvent) : void
      {
         if(this.§8!2§)
         {
            return;
         }
         if(this.§9![§.data != this.§"w§.§^!F§().data)
         {
            this.§[!M§ = this.§"w§.§^!F§().data;
            this.§<!%§();
         }
         else
         {
            this.§9![§.§,Z§();
         }
         this.§!!_§(this.§"w§.§^!F§().userIndex);
         this.§+6§();
      }
      
      private function §%!k§(e:CachedDataEvent) : void
      {
         FriendItemRenderer.isShowingLevelScores = true;
         this.§[!M§ = this.§8!2§.data;
         this.§<!%§();
         this.§!!_§(this.§8!2§.userIndex);
         this.§+6§();
      }
      
      public function §8N§(data:Array) : void
      {
         this.§!!a§ = true;
         FriendItemRenderer.isShowingLevelScores = false;
         this.§[!M§ = data;
         this.§<!%§();
         this.§+6§();
      }
      
      public function §!!_§(userIndex:int, animate:Boolean = false) : void
      {
         var currentOffset:int = 0;
         var halfway:int = 0;
         var newOffset:int = 0;
         if(userIndex != -1)
         {
            currentOffset = this.§9![§.offset;
            halfway = Math.floor(this.§9![§.§!0§ / 2);
            newOffset = userIndex - halfway - currentOffset;
            this.§9![§.scroll(newOffset,!animate);
         }
      }
      
      private function scroll(offset:int) : void
      {
         if(offset != 0)
         {
            this.§9![§.scroll(offset);
            this.§+6§();
         }
      }
      
      private function §+6§() : void
      {
         var canGoLeft:Boolean = this.§9![§.offset != 0;
         var canGoRight:Boolean = this.§9![§.offset != this.§9![§.data.length - this.§9![§.§!0§;
         this.§-!#§.§%>§.visible = canGoLeft;
         this.§-!#§.§`Q§.visible = canGoRight;
      }
      
      public function get §3s§() : CachedFacebookFriends
      {
         return this.§8!2§;
      }
      
      public function §[!Y§(level:String, score:int, stars:int, eagle:int, beatenUsers:Array, isTournament:Boolean = false) : int
      {
         var userBeaten:Object = null;
         if(!this.§8!2§ || this.§18§ != level)
         {
            return 0;
         }
         var out_usersBeaten:Array = [];
         var prevOffset:int = this.§9![§.offset;
         var rankAfterUpdate:int = this.§8!2§.§[!Y§(score,stars,eagle,out_usersBeaten);
         this.§[!M§ = this.§8!2§.data;
         this.§<!%§();
         this.§!!_§(rankAfterUpdate - 1,true);
         for each(userBeaten in out_usersBeaten)
         {
            beatenUsers.push(userBeaten);
         }
         this.§+6§();
         return rankAfterUpdate;
      }
      
      public function §6!b§(count:int) : void
      {
         var text:String = null;
         var counterBackground:MovieClip = null;
         var oldWidth:int = 0;
         if(count == 0)
         {
            this.§-!#§.§9!#§.txtInboxItemCount.visible = false;
            this.§-!#§.§9!#§.mcItemCountBg.visible = false;
         }
         else
         {
            this.§-!#§.§9!#§.txtInboxItemCount.visible = true;
            this.§-!#§.§9!#§.mcItemCountBg.visible = true;
            text = this.§`?§(count);
            this.§-!#§.§9!#§.txtInboxItemCount.text.text = text;
            counterBackground = this.§-!#§.§9!#§.mcItemCountBg;
            oldWidth = counterBackground.width;
            counterBackground.scaleX = 1 + (text.length - 1) / 7;
            counterBackground.x = this.§-!#§.§9!#§.txtInboxItemCount.x + this.§-!#§.§9!#§.txtInboxItemCount.width / 2 - counterBackground.width / 2;
         }
      }
      
      private function §<!%§() : void
      {
         var userVO:FriendListItemVO = null;
         var userBlocked:String = null;
         var blockedList:Array = §5>§.§7!E§.§'!X§();
         var newList:Array = this.§[!M§.concat();
         for(var i:int = this.§[!M§.length - 1; i >= 0; i--)
         {
            userVO = this.§[!M§[i];
            for each(userBlocked in blockedList)
            {
               if(userBlocked == userVO.userId)
               {
                  newList.splice(i,1);
               }
            }
         }
         this.§9![§.data = newList;
      }
      
      private function §`?§(amt:Number) : String
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
