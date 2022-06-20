package §2!u§
{
   import §"!>§.§'!x§;
   import §#!E§.§2#Q§;
   import §6!'§.§@#c§;
   import §=#§.§%#y§;
   import §=#§.§0"V§;
   import §]"'§.§-!#§;
   import §]"'§.§8!a§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.Font;
   import flash.utils.Timer;
   
   public class §^#h§ extends Sprite
   {
      
      public static const §"!!§:int = 70;
       
      
      protected var §"""§:§8!a§;
      
      protected var §+!t§:§%#y§;
      
      private var §#o§:Boolean;
      
      protected var §^!W§:§>#$§;
      
      protected var §="2§:§!!n§;
      
      protected var §`"3§:Font;
      
      private var §4#W§:String;
      
      protected var §%#T§:MovieClip;
      
      protected var §!"#§:MovieClip;
      
      private var §=!;§:Timer;
      
      public function §^#h§()
      {
         this.§`"3§ = new AngryBirdsFont();
         super();
         rotation = -90;
         y = 180;
         cacheAsBitmap = true;
         tabChildren = false;
         this.§#o§ = true;
      }
      
      public function set data(param1:§8!a§) : void
      {
         if(this.§"""§)
         {
            this.§#o§ = this.§"""§.userId != param1.userId || this.§"""§.userName != param1.userName || this.§"""§.profileImageURL != param1.profileImageURL;
         }
         else
         {
            this.§#o§ = true;
         }
         this.§"""§ = param1;
         this.update();
      }
      
      public function get data() : §8!a§
      {
         return this.§"""§;
      }
      
      public function §4!u§() : Object
      {
         return this.§"""§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §[!F§() : Boolean
      {
         return §0"V§.§5#$§(this.data.userId);
      }
      
      protected function §]r§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§^!W§ == null)
         {
            _loc1_ = this.§5"p§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.isMe)
         {
            if(this.contains(this.§^!W§.mAssetHolder))
            {
               removeChild(this.§^!W§.mAssetHolder);
               this.§^!W§ = null;
               return;
            }
         }
         if(this is §'!9§)
         {
            §'!9§(this).setCanSendGift(§-!#§.§?q§.§?!u§(this.data.userId),false);
         }
         setChildIndex(this.§^!W§.mAssetHolder,numChildren - 1);
         this.§^!W§.§<#0§.addEventListener(MouseEvent.CLICK,this.§##_§,false,0,true);
      }
      
      protected function §,!C§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§="2§ == null)
         {
            _loc1_ = this.§ "d§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.isMe || !this.§[!F§)
         {
            if(this.contains(this.§="2§.mAssetHolder))
            {
               removeChild(this.§="2§.mAssetHolder);
               this.§="2§ = null;
               return;
            }
         }
         setChildIndex(this.§="2§.mAssetHolder,numChildren - 1);
      }
      
      protected function § "d§() : Boolean
      {
         if(!this.isMe && (this.§[!F§ && this.data.profileImageURL && this.data.profileImageURL.length == 0))
         {
            this.§="2§ = new §!!n§();
            addChild(this.§="2§.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function §5"p§() : Boolean
      {
         if(!this.isMe)
         {
            this.§^!W§ = new §>#$§();
            addChild(this.§^!W§.mAssetHolder);
            return true;
         }
         return false;
      }
      
      protected function updateLeagueIcon() : void
      {
         if(this.§%#T§)
         {
            this.§%#T§.visible = false;
            setChildIndex(this.§%#T§,numChildren - 1);
         }
         if(this.§!"#§)
         {
            this.§!"#§.visible = false;
            setChildIndex(this.§!"#§,numChildren - 1);
         }
      }
      
      private function §##_§(param1:MouseEvent) : void
      {
         if(!this.§=!;§)
         {
            this.§=!;§ = new Timer(2000,1);
            this.§^!W§.§<#0§.removeEventListener(MouseEvent.CLICK,this.§##_§);
            dispatchEvent(new §'!x§(§'!x§.§;$#§,this.data,true));
            this.§=!;§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§@#B§);
            this.§=!;§.start();
         }
      }
      
      private function §@#B§(param1:TimerEvent) : void
      {
         this.§=!;§.stop();
         this.§=!;§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§@#B§);
         this.§=!;§ = null;
         this.§^!W§.§<#0§.addEventListener(MouseEvent.CLICK,this.§##_§,false,0,true);
      }
      
      protected function get isMe() : Boolean
      {
         return this.data.userId == (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID;
      }
      
      protected function updatePhoto() : void
      {
         if(!this.§#o§)
         {
            return;
         }
         if(this.§+!t§ && this.§+!t§.parent == this)
         {
            removeChild(this.§+!t§);
            this.§+!t§ = null;
         }
         this.createNewPhoto();
         addChild(this.§+!t§);
      }
      
      protected function createNewPhoto() : void
      {
         this.§+!t§ = new §%#y§(this.data.userId,this.data.avatarString,false,null,this.data.profileImageURL);
         this.§+!t§.x = 5;
         this.§+!t§.y = 5;
      }
      
      protected function addLeagueIcon() : void
      {
         if(§@#c§.§?q§.active)
         {
            addChild(this.§%#T§ = new §2"O§.§`>§("com.AngryBirds.friendsbar.MiniLeagueIcon")());
            addChild(this.§!"#§ = new §2"O§.§`>§("com.AngryBirds.friendsbar.MiniStarPlayer")());
         }
      }
      
      public function brandThePlate() : void
      {
      }
   }
}
