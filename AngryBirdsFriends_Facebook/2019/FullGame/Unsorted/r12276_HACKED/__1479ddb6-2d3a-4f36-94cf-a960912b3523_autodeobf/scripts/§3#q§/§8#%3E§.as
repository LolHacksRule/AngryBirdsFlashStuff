package §3#q§
{
   import §-"S§.§>#G§;
   import §8#^§.§-B§;
   import §9x§.§ m§;
   import §9x§.§1"^§;
   import §>#Y§.§1N§;
   import §>#Y§.§6"k§;
   import §^#?§.§?#,§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.Font;
   import flash.utils.Timer;
   
   public class §8#>§ extends Sprite
   {
      
      public static const § "7§:int = 70;
       
      
      protected var §6"G§:§1N§;
      
      protected var §5"j§:§ m§;
      
      private var § K§:Boolean;
      
      protected var §,^§:§8!d§;
      
      protected var §0!c§:§<#p§;
      
      protected var §,#q§:Font;
      
      private var §5C§:String;
      
      protected var §7!S§:MovieClip;
      
      protected var §&"T§:MovieClip;
      
      private var §7"%§:Timer;
      
      public function §8#>§()
      {
         this.§,#q§ = new AngryBirdsFont();
         super();
         rotation = -90;
         y = 180;
         cacheAsBitmap = true;
         tabChildren = false;
         this.§ K§ = true;
      }
      
      public function set data(param1:§1N§) : void
      {
         if(this.§6"G§)
         {
            this.§ K§ = this.§6"G§.userId != param1.userId || this.§6"G§.userName != param1.userName || this.§6"G§.profileImageURL != param1.profileImageURL;
         }
         else
         {
            this.§ K§ = true;
         }
         this.§6"G§ = param1;
         this.update();
      }
      
      public function get data() : §1N§
      {
         return this.§6"G§;
      }
      
      public function §1"u§() : Object
      {
         return this.§6"G§;
      }
      
      public function update() : void
      {
      }
      
      protected function get § $1§() : Boolean
      {
         return §1"^§.§6f§(this.data.userId);
      }
      
      protected function §;"#§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§,^§ == null)
         {
            _loc1_ = this.§!"I§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.isMe)
         {
            if(this.contains(this.§,^§.mAssetHolder))
            {
               removeChild(this.§,^§.mAssetHolder);
               this.§,^§ = null;
               return;
            }
         }
         if(this is §8#'§)
         {
            §8#'§(this).setCanSendGift(§6"k§.§3"1§.§=#M§(this.data.userId),false);
         }
         setChildIndex(this.§,^§.mAssetHolder,numChildren - 1);
         this.§,^§.§3"9§.addEventListener(MouseEvent.CLICK,this.§&#2§,false,0,true);
      }
      
      protected function §0"Y§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§0!c§ == null)
         {
            _loc1_ = this.§[!b§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.isMe || !this.§ $1§)
         {
            if(this.contains(this.§0!c§.mAssetHolder))
            {
               removeChild(this.§0!c§.mAssetHolder);
               this.§0!c§ = null;
               return;
            }
         }
         setChildIndex(this.§0!c§.mAssetHolder,numChildren - 1);
      }
      
      protected function §[!b§() : Boolean
      {
         if(!this.isMe && (this.§ $1§ && this.data.profileImageURL && this.data.profileImageURL.length == 0))
         {
            this.§0!c§ = new §<#p§();
            addChild(this.§0!c§.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function §!"I§() : Boolean
      {
         if(!this.isMe)
         {
            this.§,^§ = new §8!d§();
            addChild(this.§,^§.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function updateLeagueIcon() : void
      {
         if(this.§7!S§)
         {
            this.§7!S§.visible = false;
            setChildIndex(this.§7!S§,numChildren - 1);
         }
         if(this.§&"T§)
         {
            this.§&"T§.visible = false;
            setChildIndex(this.§&"T§,numChildren - 1);
         }
      }
      
      private function §&#2§(param1:MouseEvent) : void
      {
         if(!this.§7"%§)
         {
            this.§7"%§ = new Timer(2000,1);
            this.§,^§.§3"9§.removeEventListener(MouseEvent.CLICK,this.§&#2§);
            dispatchEvent(new §-B§(§-B§.§'#%§,this.data,true));
            this.§7"%§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§3>§);
            this.§7"%§.start();
         }
      }
      
      private function §3>§(param1:TimerEvent) : void
      {
         this.§7"%§.stop();
         this.§7"%§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§3>§);
         this.§7"%§ = null;
         this.§,^§.§3"9§.addEventListener(MouseEvent.CLICK,this.§&#2§,false,0,true);
      }
      
      protected function get isMe() : Boolean
      {
         return this.data.userId == (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID;
      }
      
      protected function updatePhoto() : void
      {
         if(!this.§ K§)
         {
            return;
         }
         if(this.§5"j§ && this.§5"j§.parent == this)
         {
            removeChild(this.§5"j§);
            this.§5"j§ = null;
         }
         this.createNewPhoto();
         addChild(this.§5"j§);
      }
      
      protected function createNewPhoto() : void
      {
         this.§5"j§ = new § m§(this.data.userId,this.data.avatarString,false,null,this.data.profileImageURL);
         this.§5"j§.x = 5;
         this.§5"j§.y = 5;
      }
      
      protected function addLeagueIcon() : void
      {
         if(§?#,§.§3"1§.active)
         {
            addChild(this.§7!S§ = new §=@§.§9!x§("com.AngryBirds.friendsbar.MiniLeagueIcon")());
            addChild(this.§&"T§ = new §=@§.§9!x§("com.AngryBirds.friendsbar.MiniStarPlayer")());
         }
      }
      
      public function brandThePlate() : void
      {
      }
   }
}
