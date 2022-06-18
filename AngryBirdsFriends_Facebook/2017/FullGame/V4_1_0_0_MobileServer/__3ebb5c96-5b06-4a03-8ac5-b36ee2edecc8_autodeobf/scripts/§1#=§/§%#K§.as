package §1#=§
{
   import §&"J§.§"!F§;
   import §&"J§.§3!3§;
   import §+#t§.§-"3§;
   import §+#t§.§>J§;
   import §5"?§.§4"-§;
   import §@!n§.§`$<§;
   import §[0§.§;$-§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.Font;
   import flash.utils.Timer;
   
   public class §%#K§ extends Sprite
   {
      
      public static const §>"+§:int = 70;
       
      
      protected var §]!$§:§3!3§;
      
      protected var §-!N§:§-"3§;
      
      private var §,!G§:Boolean;
      
      protected var §]n§:§8#_§;
      
      protected var §'$6§:§8#O§;
      
      protected var §2L§:Font;
      
      private var §`"k§:String;
      
      protected var §8!f§:MovieClip;
      
      protected var §0#@§:MovieClip;
      
      private var §+$§:Timer;
      
      public function §%#K§()
      {
         this.§2L§ = new AngryBirdsFont();
         super();
         rotation = -90;
         y = 180;
         cacheAsBitmap = true;
         tabChildren = false;
         this.§,!G§ = true;
      }
      
      public function set data(param1:§3!3§) : void
      {
         if(this.§]!$§)
         {
            this.§,!G§ = this.§]!$§.userId != param1.userId || this.§]!$§.userName != param1.userName || this.§]!$§.profileImageURL != param1.profileImageURL;
         }
         else
         {
            this.§,!G§ = true;
         }
         this.§]!$§ = param1;
         this.update();
      }
      
      public function get data() : §3!3§
      {
         return this.§]!$§;
      }
      
      public function § ?§() : Object
      {
         return this.§]!$§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §#$1§() : Boolean
      {
         return §>J§.§7!;§(this.data.userId);
      }
      
      protected function §9#%§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§]n§ == null)
         {
            _loc1_ = this.§+"j§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.isMe)
         {
            if(this.contains(this.§]n§.mAssetHolder))
            {
               removeChild(this.§]n§.mAssetHolder);
               this.§]n§ = null;
               return;
            }
         }
         if(this is §&#e§)
         {
            §&#e§(this).setCanSendGift(§"!F§.§ "D§.§=!F§(this.data.userId),false);
         }
         setChildIndex(this.§]n§.mAssetHolder,numChildren - 1);
         this.§]n§.§@"&§.addEventListener(MouseEvent.CLICK,this.§&#E§,false,0,true);
      }
      
      protected function §,"Q§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§'$6§ == null)
         {
            _loc1_ = this.§6!i§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.isMe || !this.§#$1§)
         {
            if(this.contains(this.§'$6§.mAssetHolder))
            {
               removeChild(this.§'$6§.mAssetHolder);
               this.§'$6§ = null;
               return;
            }
         }
         setChildIndex(this.§'$6§.mAssetHolder,numChildren - 1);
      }
      
      protected function §6!i§() : Boolean
      {
         if(!this.isMe && (this.§#$1§ && this.data.profileImageURL && this.data.profileImageURL.length == 0))
         {
            this.§'$6§ = new §8#O§();
            addChild(this.§'$6§.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function §+"j§() : Boolean
      {
         if(!this.isMe)
         {
            this.§]n§ = new §8#_§();
            addChild(this.§]n§.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function updateLeagueIcon() : void
      {
         if(this.§8!f§)
         {
            this.§8!f§.visible = false;
            setChildIndex(this.§8!f§,numChildren - 1);
         }
         if(this.§0#@§)
         {
            this.§0#@§.visible = false;
            setChildIndex(this.§0#@§,numChildren - 1);
         }
      }
      
      private function §&#E§(param1:MouseEvent) : void
      {
         if(!this.§+$§)
         {
            this.§+$§ = new Timer(2000,1);
            this.§]n§.§@"&§.removeEventListener(MouseEvent.CLICK,this.§&#E§);
            dispatchEvent(new §`$<§(§`$<§.§?F§,this.data,true));
            this.§+$§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§<!k§);
            this.§+$§.start();
         }
      }
      
      private function §<!k§(param1:TimerEvent) : void
      {
         this.§+$§.stop();
         this.§+$§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§<!k§);
         this.§+$§ = null;
         this.§]n§.§@"&§.addEventListener(MouseEvent.CLICK,this.§&#E§,false,0,true);
      }
      
      protected function get isMe() : Boolean
      {
         return this.data.userId == (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID;
      }
      
      protected function updatePhoto() : void
      {
         if(!this.§,!G§)
         {
            return;
         }
         if(this.§-!N§ && this.§-!N§.parent == this)
         {
            removeChild(this.§-!N§);
            this.§-!N§ = null;
         }
         this.createNewPhoto();
         addChild(this.§-!N§);
      }
      
      protected function createNewPhoto() : void
      {
         this.§-!N§ = new §-"3§(this.data.userId,this.data.avatarString,false,null,this.data.profileImageURL);
         this.§-!N§.x = 5;
         this.§-!N§.y = 5;
      }
      
      protected function addLeagueIcon() : void
      {
         if(§;$-§.§ "D§.active)
         {
            addChild(this.§8!f§ = new §+$#§.§["`§("com.AngryBirds.friendsbar.MiniLeagueIcon")());
            addChild(this.§0#@§ = new §+$#§.§["`§("com.AngryBirds.friendsbar.MiniStarPlayer")());
         }
      }
   }
}
