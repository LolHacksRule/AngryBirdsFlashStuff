package §2!X§
{
   import §%$!§.§1#`§;
   import §%$!§.§9$6§;
   import §,n§.§3I§;
   import §,n§.§`"d§;
   import §4q§.§!#Q§;
   import §7g§.§4!q§;
   import §9!s§.§!#d§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.Font;
   import flash.utils.Timer;
   
   public class §5$<§ extends Sprite
   {
      
      public static const §2#0§:int = 70;
       
      
      protected var §+!&§:§9$6§;
      
      protected var §!v§:§3I§;
      
      private var §2#+§:Boolean;
      
      protected var §,!X§:§#D§;
      
      protected var §>#;§:§!!p§;
      
      protected var §<#s§:Font;
      
      private var §<"g§:String;
      
      protected var §[#3§:MovieClip;
      
      protected var §7#-§:MovieClip;
      
      private var §`#H§:Timer;
      
      public function §5$<§()
      {
         this.§<#s§ = new AngryBirdsFont();
         super();
         rotation = -90;
         y = 180;
         cacheAsBitmap = true;
         tabChildren = false;
         this.§2#+§ = true;
      }
      
      public function set data(param1:§9$6§) : void
      {
         if(this.§+!&§)
         {
            this.§2#+§ = this.§+!&§.userId != param1.userId || this.§+!&§.userName != param1.userName || this.§+!&§.profileImageURL != param1.profileImageURL;
         }
         else
         {
            this.§2#+§ = true;
         }
         this.§+!&§ = param1;
         this.update();
      }
      
      public function get data() : §9$6§
      {
         return this.§+!&§;
      }
      
      public function §["S§() : Object
      {
         return this.§+!&§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §>$,§() : Boolean
      {
         return §`"d§.§0Y§(this.data.userId);
      }
      
      protected function §0#V§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§,!X§ == null)
         {
            _loc1_ = this.§;U§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.isMe)
         {
            if(this.contains(this.§,!X§.mAssetHolder))
            {
               removeChild(this.§,!X§.mAssetHolder);
               this.§,!X§ = null;
               return;
            }
         }
         if(this is §;z§)
         {
            §;z§(this).setCanSendGift(§1#`§.§3!]§.§"",§(this.data.userId),false);
         }
         setChildIndex(this.§,!X§.mAssetHolder,numChildren - 1);
         this.§,!X§.§]V§.addEventListener(MouseEvent.CLICK,this.§8!y§,false,0,true);
      }
      
      protected function § #9§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§>#;§ == null)
         {
            _loc1_ = this.§0o§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.isMe || !this.§>$,§)
         {
            if(this.contains(this.§>#;§.mAssetHolder))
            {
               removeChild(this.§>#;§.mAssetHolder);
               this.§>#;§ = null;
               return;
            }
         }
         setChildIndex(this.§>#;§.mAssetHolder,numChildren - 1);
      }
      
      protected function §0o§() : Boolean
      {
         if(!this.isMe && (this.§>$,§ && this.data.profileImageURL && this.data.profileImageURL.length == 0))
         {
            this.§>#;§ = new §!!p§();
            addChild(this.§>#;§.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function §;U§() : Boolean
      {
         if(!this.isMe)
         {
            this.§,!X§ = new §#D§();
            addChild(this.§,!X§.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function updateLeagueIcon() : void
      {
         if(this.§[#3§)
         {
            this.§[#3§.visible = false;
            setChildIndex(this.§[#3§,numChildren - 1);
         }
         if(this.§7#-§)
         {
            this.§7#-§.visible = false;
            setChildIndex(this.§7#-§,numChildren - 1);
         }
      }
      
      private function §8!y§(param1:MouseEvent) : void
      {
         if(!this.§`#H§)
         {
            this.§`#H§ = new Timer(2000,1);
            this.§,!X§.§]V§.removeEventListener(MouseEvent.CLICK,this.§8!y§);
            dispatchEvent(new §!#d§(§!#d§.§'#=§,this.data,true));
            this.§`#H§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^"L§);
            this.§`#H§.start();
         }
      }
      
      private function §^"L§(param1:TimerEvent) : void
      {
         this.§`#H§.stop();
         this.§`#H§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^"L§);
         this.§`#H§ = null;
         this.§,!X§.§]V§.addEventListener(MouseEvent.CLICK,this.§8!y§,false,0,true);
      }
      
      protected function get isMe() : Boolean
      {
         return this.data.userId == (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID;
      }
      
      protected function updatePhoto() : void
      {
         if(!this.§2#+§)
         {
            return;
         }
         if(this.§!v§ && this.§!v§.parent == this)
         {
            removeChild(this.§!v§);
            this.§!v§ = null;
         }
         this.createNewPhoto();
         addChild(this.§!v§);
      }
      
      protected function createNewPhoto() : void
      {
         this.§!v§ = new §3I§(this.data.userId,this.data.avatarString,false,null,this.data.profileImageURL);
         this.§!v§.x = 5;
         this.§!v§.y = 5;
      }
      
      protected function addLeagueIcon() : void
      {
         if(§4!q§.§3!]§.active)
         {
            addChild(this.§[#3§ = new §@`§.§4!i§("com.AngryBirds.friendsbar.MiniLeagueIcon")());
            addChild(this.§7#-§ = new §@`§.§4!i§("com.AngryBirds.friendsbar.MiniStarPlayer")());
         }
      }
   }
}
