package §8!§
{
   import §%#w§.§2#s§;
   import §+$?§.§%!k§;
   import §+$?§.§=#>§;
   import §-!S§.§##>§;
   import §2G§.§&"+§;
   import §2G§.§4O§;
   import §`!e§.§=Z§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.Font;
   import flash.utils.Timer;
   
   public class §2$-§ extends Sprite
   {
      
      public static const §`"6§:int = 70;
       
      
      protected var §["[§:§4O§;
      
      protected var §=!<§:§=#>§;
      
      private var §7d§:Boolean;
      
      protected var §0#U§:§5"M§;
      
      protected var §-#P§:§""L§;
      
      protected var §2"M§:Font;
      
      private var §&K§:String;
      
      protected var §<!Y§:MovieClip;
      
      protected var §1"$§:MovieClip;
      
      private var §!#g§:Timer;
      
      public function §2$-§()
      {
         this.§2"M§ = new AngryBirdsFont();
         super();
         rotation = -90;
         y = 180;
         cacheAsBitmap = true;
         tabChildren = false;
         this.§7d§ = true;
      }
      
      public function set data(param1:§4O§) : void
      {
         if(this.§["[§)
         {
            this.§7d§ = this.§["[§.userId != param1.userId || this.§["[§.userName != param1.userName || this.§["[§.profileImageURL != param1.profileImageURL;
         }
         else
         {
            this.§7d§ = true;
         }
         this.§["[§ = param1;
         this.update();
      }
      
      public function get data() : §4O§
      {
         return this.§["[§;
      }
      
      public function §4=§() : Object
      {
         return this.§["[§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §0#G§() : Boolean
      {
         return §%!k§.§@#A§(this.data.userId);
      }
      
      protected function §+!,§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§0#U§ == null)
         {
            _loc1_ = this.§#!Z§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.isMe)
         {
            if(this.contains(this.§0#U§.mAssetHolder))
            {
               removeChild(this.§0#U§.mAssetHolder);
               this.§0#U§ = null;
               return;
            }
         }
         if(this is §[g§)
         {
            §[g§(this).setCanSendGift(§&"+§.§6!§.§^#n§(this.data.userId),false);
         }
         setChildIndex(this.§0#U§.mAssetHolder,numChildren - 1);
         this.§0#U§.§9"P§.addEventListener(MouseEvent.CLICK,this.§=$2§,false,0,true);
      }
      
      protected function §-$B§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§-#P§ == null)
         {
            _loc1_ = this.§<!h§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.isMe || !this.§0#G§)
         {
            if(this.contains(this.§-#P§.mAssetHolder))
            {
               removeChild(this.§-#P§.mAssetHolder);
               this.§-#P§ = null;
               return;
            }
         }
         setChildIndex(this.§-#P§.mAssetHolder,numChildren - 1);
      }
      
      protected function §<!h§() : Boolean
      {
         if(!this.isMe && (this.§0#G§ && this.data.profileImageURL && this.data.profileImageURL.length == 0))
         {
            this.§-#P§ = new §""L§();
            addChild(this.§-#P§.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function §#!Z§() : Boolean
      {
         if(!this.isMe)
         {
            this.§0#U§ = new §5"M§();
            addChild(this.§0#U§.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function updateLeagueIcon() : void
      {
         if(this.§<!Y§)
         {
            this.§<!Y§.visible = false;
            setChildIndex(this.§<!Y§,numChildren - 1);
         }
         if(this.§1"$§)
         {
            this.§1"$§.visible = false;
            setChildIndex(this.§1"$§,numChildren - 1);
         }
      }
      
      private function §=$2§(param1:MouseEvent) : void
      {
         if(!this.§!#g§)
         {
            this.§!#g§ = new Timer(2000,1);
            this.§0#U§.§9"P§.removeEventListener(MouseEvent.CLICK,this.§=$2§);
            dispatchEvent(new §=Z§(§=Z§.§"N§,this.data,true));
            this.§!#g§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§%#Q§);
            this.§!#g§.start();
         }
      }
      
      private function §%#Q§(param1:TimerEvent) : void
      {
         this.§!#g§.stop();
         this.§!#g§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§%#Q§);
         this.§!#g§ = null;
         this.§0#U§.§9"P§.addEventListener(MouseEvent.CLICK,this.§=$2§,false,0,true);
      }
      
      protected function get isMe() : Boolean
      {
         return this.data.userId == (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID;
      }
      
      protected function updatePhoto() : void
      {
         if(!this.§7d§)
         {
            return;
         }
         if(this.§=!<§ && this.§=!<§.parent == this)
         {
            removeChild(this.§=!<§);
            this.§=!<§ = null;
         }
         this.createNewPhoto();
         addChild(this.§=!<§);
      }
      
      protected function createNewPhoto() : void
      {
         this.§=!<§ = new §=#>§(this.data.userId,this.data.avatarString,false,null,this.data.profileImageURL);
         this.§=!<§.x = 5;
         this.§=!<§.y = 5;
      }
      
      protected function addLeagueIcon() : void
      {
         if(§2#s§.§6!§.active)
         {
            addChild(this.§<!Y§ = new §!"f§.§##?§("com.AngryBirds.friendsbar.MiniLeagueIcon")());
            addChild(this.§1"$§ = new §!"f§.§##?§("com.AngryBirds.friendsbar.MiniStarPlayer")());
         }
      }
   }
}
