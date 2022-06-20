package §=§#0
{
   import §!#C§.§0#;§;
   import §!#C§.§1%§;
   import §##Z§.§<$2§;
   import §7R§.§ #`§;
   import §?!]§.§6#k§;
   import §?!a§.§-=§;
   import §?!a§.§2!-§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.Font;
   import flash.utils.Timer;
   
   public class § #i§ extends Sprite
   {
      
      public static const §4#I§:int = 70;
       
      
      protected var §8#f§:§0#;§;
      
      protected var §7#j§:§-=§;
      
      private var §9#-§:Boolean;
      
      protected var §6-§:§^#w§;
      
      protected var §4!,§:§%`§;
      
      protected var §+!B§:Font;
      
      private var §?!y§:String;
      
      protected var §'"X§:MovieClip;
      
      protected var §;#I§:MovieClip;
      
      private var §%P§:Timer;
      
      public function § #i§()
      {
         this.§+!B§ = new AngryBirdsFont();
         super();
         rotation = -90;
         y = 180;
         cacheAsBitmap = true;
         tabChildren = false;
         this.§9#-§ = true;
      }
      
      public function set data(param1:§0#;§) : void
      {
         if(this.§8#f§)
         {
            this.§9#-§ = this.§8#f§.userId != param1.userId || this.§8#f§.userName != param1.userName || this.§8#f§.profileImageURL != param1.profileImageURL;
         }
         else
         {
            this.§9#-§ = true;
         }
         this.§8#f§ = param1;
         this.update();
      }
      
      public function get data() : §0#;§
      {
         return this.§8#f§;
      }
      
      public function §##'§() : Object
      {
         return this.§8#f§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §6#O§() : Boolean
      {
         return §2!-§.§]"2§(this.data.userId);
      }
      
      protected function §+!$§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§6-§ == null)
         {
            _loc1_ = this.§&"y§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.isMe)
         {
            if(this.contains(this.§6-§.mAssetHolder))
            {
               removeChild(this.§6-§.mAssetHolder);
               this.§6-§ = null;
               return;
            }
         }
         if(this is §0V§)
         {
            §0V§(this).setCanSendGift(§1%§.§`"H§.§&B§(this.data.userId),false);
         }
         setChildIndex(this.§6-§.mAssetHolder,numChildren - 1);
         this.§6-§.§,!X§.addEventListener(MouseEvent.CLICK,this.§<$%§,false,0,true);
      }
      
      protected function §9x§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§4!,§ == null)
         {
            _loc1_ = this.§]!&§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.isMe || !this.§6#O§)
         {
            if(this.contains(this.§4!,§.mAssetHolder))
            {
               removeChild(this.§4!,§.mAssetHolder);
               this.§4!,§ = null;
               return;
            }
         }
         setChildIndex(this.§4!,§.mAssetHolder,numChildren - 1);
      }
      
      protected function §]!&§() : Boolean
      {
         if(!this.isMe && (this.§6#O§ && this.data.profileImageURL && this.data.profileImageURL.length == 0))
         {
            this.§4!,§ = new §%`§();
            addChild(this.§4!,§.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function §&"y§() : Boolean
      {
         if(!this.isMe)
         {
            this.§6-§ = new §^#w§();
            addChild(this.§6-§.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function updateLeagueIcon() : void
      {
         if(this.§'"X§)
         {
            this.§'"X§.visible = false;
            setChildIndex(this.§'"X§,numChildren - 1);
         }
         if(this.§;#I§)
         {
            this.§;#I§.visible = false;
            setChildIndex(this.§;#I§,numChildren - 1);
         }
      }
      
      private function §<$%§(param1:MouseEvent) : void
      {
         if(!this.§%P§)
         {
            this.§%P§ = new Timer(2000,1);
            this.§6-§.§,!X§.removeEventListener(MouseEvent.CLICK,this.§<$%§);
            dispatchEvent(new §6#k§(§6#k§.§=#n§,this.data,true));
            this.§%P§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§8!J§);
            this.§%P§.start();
         }
      }
      
      private function §8!J§(param1:TimerEvent) : void
      {
         this.§%P§.stop();
         this.§%P§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§8!J§);
         this.§%P§ = null;
         this.§6-§.§,!X§.addEventListener(MouseEvent.CLICK,this.§<$%§,false,0,true);
      }
      
      protected function get isMe() : Boolean
      {
         return this.data.userId == (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID;
      }
      
      protected function updatePhoto() : void
      {
         if(!this.§9#-§)
         {
            return;
         }
         if(this.§7#j§ && this.§7#j§.parent == this)
         {
            removeChild(this.§7#j§);
            this.§7#j§ = null;
         }
         this.createNewPhoto();
         addChild(this.§7#j§);
      }
      
      protected function createNewPhoto() : void
      {
         this.§7#j§ = new §-=§(this.data.userId,this.data.avatarString,false,null,this.data.profileImageURL);
         this.§7#j§.x = 5;
         this.§7#j§.y = 5;
      }
      
      protected function addLeagueIcon() : void
      {
         if(§<$2§.§`"H§.active)
         {
            addChild(this.§'"X§ = new §6$A§.§1!m§("com.AngryBirds.friendsbar.MiniLeagueIcon")());
            addChild(this.§;#I§ = new §6$A§.§1!m§("com.AngryBirds.friendsbar.MiniStarPlayer")());
         }
      }
      
      public function brandThePlate() : void
      {
      }
   }
}
