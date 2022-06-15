package §+W§
{
   import §!L§.§`#u§;
   import §,#,§.§0!u§;
   import §,#,§.§4!g§;
   import §2G§.§"A§;
   import §2G§.§?$3§;
   import §7"X§.§2"R§;
   import §]#'§.§4"s§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.Font;
   import flash.utils.Timer;
   
   public class §2!$§ extends Sprite
   {
      
      public static const §%!x§:int = 70;
       
      
      protected var §1!,§:§0!u§;
      
      protected var §>"o§:§?$3§;
      
      private var §@$$§:Boolean;
      
      protected var §;!#§:§["V§;
      
      protected var §!#9§:§ !T§;
      
      protected var §&u§:Font;
      
      private var §%H§:String;
      
      protected var §"#7§:MovieClip;
      
      protected var §,!#§:MovieClip;
      
      private var §=G§:Timer;
      
      public function §2!$§()
      {
         this.§&u§ = new AngryBirdsFont();
         super();
         rotation = -90;
         y = 180;
         cacheAsBitmap = true;
         tabChildren = false;
         this.§@$$§ = true;
      }
      
      public function set data(param1:§0!u§) : void
      {
         if(this.§1!,§)
         {
            this.§@$$§ = this.§1!,§.userId != param1.userId || this.§1!,§.userName != param1.userName || this.§1!,§.profileImageURL != param1.profileImageURL;
         }
         else
         {
            this.§@$$§ = true;
         }
         this.§1!,§ = param1;
         this.update();
      }
      
      public function get data() : §0!u§
      {
         return this.§1!,§;
      }
      
      public function §?#Q§() : Object
      {
         return this.§1!,§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §#"b§() : Boolean
      {
         return §"A§.§<$!§(this.data.userId);
      }
      
      protected function §`"P§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§;!#§ == null)
         {
            _loc1_ = this.§`i§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.isMe)
         {
            if(this.contains(this.§;!#§.mAssetHolder))
            {
               removeChild(this.§;!#§.mAssetHolder);
               this.§;!#§ = null;
               return;
            }
         }
         if(this is §@#K§)
         {
            §@#K§(this).setCanSendGift(§4!g§.§+!,§.§8$§(this.data.userId),false);
         }
         setChildIndex(this.§;!#§.mAssetHolder,numChildren - 1);
         this.§;!#§.§5#g§.addEventListener(MouseEvent.CLICK,this.§+"t§,false,0,true);
      }
      
      protected function §"$$§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§!#9§ == null)
         {
            _loc1_ = this.§+$'§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.isMe || !this.§#"b§)
         {
            if(this.contains(this.§!#9§.mAssetHolder))
            {
               removeChild(this.§!#9§.mAssetHolder);
               this.§!#9§ = null;
               return;
            }
         }
         setChildIndex(this.§!#9§.mAssetHolder,numChildren - 1);
      }
      
      protected function §+$'§() : Boolean
      {
         if(!this.isMe && (this.§#"b§ && this.data.profileImageURL && this.data.profileImageURL.length == 0))
         {
            this.§!#9§ = new § !T§();
            addChild(this.§!#9§.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function §`i§() : Boolean
      {
         if(!this.isMe)
         {
            this.§;!#§ = new §["V§();
            addChild(this.§;!#§.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function updateLeagueIcon() : void
      {
         if(this.§"#7§)
         {
            this.§"#7§.visible = false;
            setChildIndex(this.§"#7§,numChildren - 1);
         }
         if(this.§,!#§)
         {
            this.§,!#§.visible = false;
            setChildIndex(this.§,!#§,numChildren - 1);
         }
      }
      
      private function §+"t§(param1:MouseEvent) : void
      {
         if(!this.§=G§)
         {
            this.§=G§ = new Timer(2000,1);
            this.§;!#§.§5#g§.removeEventListener(MouseEvent.CLICK,this.§+"t§);
            dispatchEvent(new §2"R§(§2"R§.§!#b§,this.data,true));
            this.§=G§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§%#5§);
            this.§=G§.start();
         }
      }
      
      private function §%#5§(param1:TimerEvent) : void
      {
         this.§=G§.stop();
         this.§=G§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§%#5§);
         this.§=G§ = null;
         this.§;!#§.§5#g§.addEventListener(MouseEvent.CLICK,this.§+"t§,false,0,true);
      }
      
      protected function get isMe() : Boolean
      {
         return this.data.userId == (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID;
      }
      
      protected function updatePhoto() : void
      {
         if(!this.§@$$§)
         {
            return;
         }
         if(this.§>"o§ && this.§>"o§.parent == this)
         {
            removeChild(this.§>"o§);
            this.§>"o§ = null;
         }
         this.createNewPhoto();
         addChild(this.§>"o§);
      }
      
      protected function createNewPhoto() : void
      {
         this.§>"o§ = new §?$3§(this.data.userId,this.data.avatarString,false,null,this.data.profileImageURL);
         this.§>"o§.x = 5;
         this.§>"o§.y = 5;
      }
      
      protected function addLeagueIcon() : void
      {
         if(§4"s§.§+!,§.active)
         {
            addChild(this.§"#7§ = new §[a§.§8#k§("com.AngryBirds.friendsbar.MiniLeagueIcon")());
            addChild(this.§,!#§ = new §[a§.§8#k§("com.AngryBirds.friendsbar.MiniStarPlayer")());
         }
      }
      
      public function brandThePlate() : void
      {
      }
   }
}
