package com.angrybirds.friendsbar
{
   import §#r§.FriendItemRenderer;
   import §#r§.HighScoreScroller;
   import §'!%§.CachedFacebookFriends;
   import §'!%§.HighScoreListManager;
   import §'N§.Log;
   import §2S§.§<!U§;
   import §2S§.CachedDataEvent;
   import §3!j§.SoundEngine;
   import §9!!§.§85§;
   import §<!=§.§@a§;
   import §<!=§.FriendListItemVO;
   import §<!=§.InviteVO;
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
       
      
      private var §1W§:HighScoreScroller;
      
      private var §>h§:Array;
      
      private var §#Z§:FriendsBarAsset;
      
      private var §6![§:String;
      
      private var § !;§:HighScoreListManager;
      
      private var §7!2§:String = "";
      
      private var §4,§:CachedFacebookFriends;
      
      private var §^Q§:String;
      
      private var §;P§:Boolean;
      
      public function FriendsBar(highScoreListManager:HighScoreListManager, serverRoot:String, userId:String)
      {
         super();
         FriendItemRenderer.sUserId = userId;
         this.§^Q§ = userId;
         this.§ !;§ = highScoreListManager;
         this.§6![§ = serverRoot;
         this.init();
      }
      
      public function §]R§(title:String) : void
      {
         this.§#Z§.§'F§.text = title;
      }
      
      private function init() : void
      {
         this.§#Z§ = new FriendsBarAsset();
         addChild(this.§#Z§);
         this.§]R§("Total scores");
         this.§7V§();
         MovieClip(this.§#Z§.§[!;§.soundsOff).mouseEnabled = false;
         MovieClip(this.§#Z§.§[!;§.soundsOff).mouseChildren = false;
         this.§1W§ = new HighScoreScroller(250,250,[],FriendItemRenderer,2,15);
         addChild(this.§1W§.scrollerSprite);
         this.§1W§.scrollerSprite.rotation = 90;
         this.§1W§.scrollerSprite.x = 180 + 10;
         this.§1W§.scrollerSprite.y = 150;
         this.§#Z§.§,<§.addEventListener(MouseEvent.CLICK,this.§5C§);
         this.§#Z§.§3v§.addEventListener(MouseEvent.CLICK,this.§&N§);
         this.§#Z§.§3v§.visible = false;
         this.§#Z§.§,<§.visible = false;
         this.§#Z§.§[!;§.btnInvite.addEventListener(MouseEvent.CLICK,this.§4!L§);
         this.§#Z§.§[!;§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§-`§);
         this.§#Z§.§[!;§.btnSound.addEventListener(MouseEvent.CLICK,this.§[t§);
         this.§#Z§.§[!;§.btnInfo.addEventListener(MouseEvent.CLICK,this.§0!G§);
         this.§#Z§.§[!;§.btnTutorial.addEventListener(MouseEvent.CLICK,this.§<!P§);
         this.§#Z§.§`!G§.addEventListener(MouseEvent.CLICK,this.§54§);
         this.§1W§.scrollerSprite.addEventListener(§<!U§.INVITE_FRIENDS_REQUESTED,this.§^o§);
         this.§ !;§.§1!_§().addEventListener(CachedDataEvent.DATA_LOADED,this.§=!>§);
         if(!this.§ !;§.§1!_§().§?,§)
         {
            this.§=!>§(null);
         }
      }
      
      public function §]!§(currentState:String = "SidebarButtonStateInfo") : void
      {
         Log.log("Changing state");
         if(currentState == SIDEBAR_BUTTON_STATE_INFO)
         {
            Log.log("Info state");
            SimpleButton(this.§#Z§.§[!;§.btnInfo).visible = true;
            SimpleButton(this.§#Z§.§[!;§.btnTutorial).visible = false;
            SimpleButton(this.§#Z§.§[!;§.btnFullscreen).visible = true;
         }
         else if(currentState == SIDEBAR_BUTTON_STATE_NONE)
         {
            Log.log("None state");
            SimpleButton(this.§#Z§.§[!;§.btnInfo).visible = false;
            SimpleButton(this.§#Z§.§[!;§.btnTutorial).visible = true;
         }
         else if(currentState == SIDEBAR_BUTTON_STATE_PLAY)
         {
            Log.log("Play state");
            SimpleButton(this.§#Z§.§[!;§.btnInfo).visible = false;
            SimpleButton(this.§#Z§.§[!;§.btnTutorial).visible = true;
         }
         SimpleButton(this.§#Z§.§[!;§.btnTutorial).alpha = currentState == SIDEBAR_BUTTON_STATE_NONE ? Number(0.5) : Number(1);
         SimpleButton(this.§#Z§.§[!;§.btnTutorial).mouseEnabled = currentState == SIDEBAR_BUTTON_STATE_NONE ? Boolean(false) : Boolean(true);
      }
      
      public function §7V§() : void
      {
         if(SoundEngine.§=U§())
         {
            MovieClip(this.§#Z§.§[!;§.soundsOff).visible = false;
         }
         else
         {
            MovieClip(this.§#Z§.§[!;§.soundsOff).visible = true;
         }
      }
      
      private function §4!L§(e:MouseEvent) : void
      {
         dispatchEvent(new §<!U§(§<!U§.INVITE_FRIENDS_REQUESTED));
      }
      
      private function §^o§(e:§<!U§) : void
      {
         var inviteVO:InviteVO = e.data as InviteVO;
         CachedFacebookFriends.invitedIDs.push(inviteVO.userId);
         if(this.§ !;§.§1!_§().data.indexOf(inviteVO) != -1)
         {
            this.§ !;§.§1!_§().data.splice(this.§ !;§.§1!_§().data.indexOf(inviteVO),1);
         }
         if(this.§4,§ && this.§4,§.data.indexOf(inviteVO) != -1)
         {
            this.§4,§.data.splice(this.§4,§.data.indexOf(inviteVO),1);
         }
         this.§,0§();
         this.§;&§();
         dispatchEvent(new §<!U§(§<!U§.INVITE_FRIENDS_REQUESTED,inviteVO));
      }
      
      private function §-`§(e:MouseEvent) : void
      {
         dispatchEvent(new §<!U§(§<!U§.FULLSCREEN_TOGGLE_REQUESTED));
      }
      
      private function §[t§(e:MouseEvent) : void
      {
         dispatchEvent(new §<!U§(§<!U§.MUTE_TOGGLE_REQUESTED));
         this.§7V§();
      }
      
      private function §0!G§(e:MouseEvent) : void
      {
         Log.log(§<!U§.INFO_REQUESTED);
         dispatchEvent(new §<!U§(§<!U§.INFO_REQUESTED));
      }
      
      private function §<!P§(e:MouseEvent) : void
      {
         Log.log(§<!U§.TUTORIAL_REQUESTED);
         dispatchEvent(new §<!U§(§<!U§.TUTORIAL_REQUESTED));
      }
      
      private function §5C§(e:MouseEvent) : void
      {
         this.scroll(-this.§1W§.§&4§);
      }
      
      private function §&N§(e:MouseEvent) : void
      {
         this.scroll(this.§1W§.§&4§);
      }
      
      private function §54§(e:MouseEvent) : void
      {
         §85§.§"!,§("http://www.facebook.com/Intel");
         AngryBirdsUltraBook.sSingleton.§!!'§();
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
         this.§#Z§.§9f§.height = targetStageHeight - this.§#Z§.§<!4§.height - this.§#Z§.§9!T§.height + 5;
         this.§#Z§.§9!T§.y = this.§#Z§.§9f§.y + this.§#Z§.§9f§.height;
         this.§#Z§.§[!;§.y = this.§#Z§.§9!T§.y + 55;
         this.§#Z§.§3v§.y = this.§#Z§.§9!T§.y + 45;
         var scrollerHeight:Number = targetStageHeight - (this.§#Z§.§9!T§.height - 30 + this.§#Z§.§<!4§.height - 30);
         this.§1W§.§+@§(scrollerHeight);
         this.§;&§();
      }
      
      public function §-!e§(episode:String, level:String, scores:CachedFacebookFriends = null, isTournament:Boolean = false) : void
      {
         if(this.§7!2§ == level && !this.§;P§)
         {
            return;
         }
         this.§;P§ = false;
         if(this.§4,§ && this.§7!2§ != level)
         {
            this.§4,§.removeEventListener(CachedDataEvent.DATA_LOADED,this.§-d§);
            this.§4,§ = null;
         }
         if(level)
         {
            FriendItemRenderer.isShowingLevelScores = true;
            this.§]R§("Level scores");
            if(scores == null)
            {
               this.§4,§ = this.§ !;§.§-!O§(episode,level,isTournament);
            }
            else
            {
               this.§4,§ = scores;
            }
            isTournament = false;
            if(!isTournament)
            {
               this.§4,§.addEventListener(CachedDataEvent.DATA_LOADED,this.§-d§);
            }
            FriendItemRenderer.isShowingLevelScores = true;
            this.§1W§.data = [];
            this.§;&§();
            if(!this.§4,§.§?,§)
            {
               this.§4,§.§&a§(0,0);
            }
            this.§]!§(SIDEBAR_BUTTON_STATE_PLAY);
         }
         else
         {
            this.§]R§("Total scores");
            FriendItemRenderer.isShowingLevelScores = false;
            this.§>h§ = this.§ !;§.§1!_§().data;
            this.§,0§();
            this.§!A§(this.§ !;§.§1!_§().userIndex);
            this.§;&§();
            this.§ !;§.§1!_§().§&a§(0,0);
            this.§]!§(SIDEBAR_BUTTON_STATE_INFO);
         }
         this.§7!2§ = level;
      }
      
      private function §=!>§(e:CachedDataEvent) : void
      {
         if(this.§4,§)
         {
            return;
         }
         if(this.§1W§.data != this.§ !;§.§1!_§().data)
         {
            this.§>h§ = this.§ !;§.§1!_§().data;
            this.§,0§();
         }
         else
         {
            this.§1W§.§&0§();
         }
         this.§!A§(this.§ !;§.§1!_§().userIndex);
         this.§;&§();
      }
      
      private function §-d§(e:CachedDataEvent) : void
      {
         FriendItemRenderer.isShowingLevelScores = true;
         this.§>h§ = this.§4,§.data;
         this.§,0§();
         this.§!A§(this.§4,§.userIndex);
         this.§;&§();
      }
      
      public function §`!T§(data:Array) : void
      {
         this.§;P§ = true;
         FriendItemRenderer.isShowingLevelScores = false;
         this.§>h§ = data;
         this.§,0§();
         this.§;&§();
      }
      
      public function §!A§(userIndex:int, animate:Boolean = false) : void
      {
         var currentOffset:int = 0;
         var halfway:int = 0;
         var newOffset:int = 0;
         if(userIndex != -1)
         {
            currentOffset = this.§1W§.offset;
            halfway = Math.floor(this.§1W§.§&4§ / 2);
            newOffset = userIndex - halfway - currentOffset;
            this.§1W§.scroll(newOffset,!animate);
         }
      }
      
      private function scroll(offset:int) : void
      {
         if(offset != 0)
         {
            this.§1W§.scroll(offset);
            this.§;&§();
         }
      }
      
      private function §;&§() : void
      {
         var canGoLeft:Boolean = this.§1W§.offset != 0;
         var canGoRight:Boolean = this.§1W§.offset != this.§1W§.data.length - this.§1W§.§&4§;
         this.§#Z§.§,<§.visible = canGoLeft;
         this.§#Z§.§3v§.visible = canGoRight;
      }
      
      public function get §<!_§() : CachedFacebookFriends
      {
         return this.§4,§;
      }
      
      public function §6,§(level:String, score:int, stars:int, eagle:int, beatenUsers:Array, isTournament:Boolean = false) : int
      {
         var userBeaten:Object = null;
         if(!this.§4,§ || this.§7!2§ != level)
         {
            return 0;
         }
         var out_usersBeaten:Array = [];
         var prevOffset:int = this.§1W§.offset;
         var rankAfterUpdate:int = this.§4,§.§6,§(score,stars,eagle,out_usersBeaten);
         this.§>h§ = this.§4,§.data;
         this.§,0§();
         this.§!A§(rankAfterUpdate - 1,true);
         for each(userBeaten in out_usersBeaten)
         {
            beatenUsers.push(userBeaten);
         }
         this.§;&§();
         return rankAfterUpdate;
      }
      
      public function §52§(count:int) : void
      {
         var text:String = null;
         var counterBackground:MovieClip = null;
         var oldWidth:int = 0;
         if(count == 0)
         {
            this.§#Z§.§[!;§.txtInboxItemCount.visible = false;
            this.§#Z§.§[!;§.mcItemCountBg.visible = false;
         }
         else
         {
            this.§#Z§.§[!;§.txtInboxItemCount.visible = true;
            this.§#Z§.§[!;§.mcItemCountBg.visible = true;
            text = this.§%!$§(count);
            this.§#Z§.§[!;§.txtInboxItemCount.text.text = text;
            counterBackground = this.§#Z§.§[!;§.mcItemCountBg;
            oldWidth = counterBackground.width;
            counterBackground.scaleX = 1 + (text.length - 1) / 7;
            counterBackground.x = this.§#Z§.§[!;§.txtInboxItemCount.x + this.§#Z§.§[!;§.txtInboxItemCount.width / 2 - counterBackground.width / 2;
         }
      }
      
      private function §,0§() : void
      {
         var userVO:FriendListItemVO = null;
         var userBlocked:String = null;
         var blockedList:Array = §@a§.§&!'§.§3!E§();
         var newList:Array = this.§>h§.concat();
         for(var i:int = this.§>h§.length - 1; i >= 0; i--)
         {
            userVO = this.§>h§[i];
            for each(userBlocked in blockedList)
            {
               if(userBlocked == userVO.userId)
               {
                  newList.splice(i,1);
               }
            }
         }
         this.§1W§.data = newList;
      }
      
      private function §%!$§(amt:Number) : String
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
