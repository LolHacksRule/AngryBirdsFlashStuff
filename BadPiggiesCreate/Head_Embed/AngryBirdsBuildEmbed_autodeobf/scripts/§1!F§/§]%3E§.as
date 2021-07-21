package §1!F§
{
   import §!!8§.§"!i§;
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§ else§;
   import §"!E§.§%O§;
   import §"!E§.§?j§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §-!0§.§0!k§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §1j§.§=q§;
   import §5!`§.§%!Y§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §?!4§.§=Y§;
   import §@!i§.§@!n§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §]>§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelSelectionStateBS";
      
      private static const §%!V§:Number = 0.5;
      
      public static var §3d§:String = "";
       
      
      private var §#!<§:Boolean = false;
      
      private var §+Q§:§[!s§;
      
      private var §&!l§:§[!s§;
      
      private var §<!^§:Array;
      
      private var §0![§:Array;
      
      private var §#!2§:int = 0;
      
      private var §,!@§:int = 0;
      
      private var §%<§:int = 0;
      
      private var §<!v§:Boolean = false;
      
      private var §7!Z§:§=Y§ = null;
      
      private var §>!5§:Dictionary;
      
      private var §>i§:Array;
      
      private var §%U§:Array;
      
      private var §7H§:§%!Y§;
      
      private var §"!d§:Number = 0;
      
      public function §]>§(param1:Boolean = false, param2:String = "LevelSelectionStateBS")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelSelectionBS[0]);
         this.§0![§ = [];
         this.§<!^§ = [];
      }
      
      override public function activate() : void
      {
         super.activate();
         §'!V§.§1!2§.§-I§(false);
         this.§]!_§(true);
         this.each();
         AngryBirdsFP11.§?!7§();
         §"!i§.§]!p§(§=q§.§<!@§,0,7,this.§[!O§,this.§"-§);
      }
      
      public function §[!O§(param1:Object) : void
      {
         var _loc5_:XML = null;
         var _loc6_:MovieClip = null;
         var _loc8_:Number = NaN;
         var _loc9_:§0!k§ = null;
         var _loc10_:MovieClip = null;
         var _loc11_:§%O§ = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§0!k§ = null;
         var _loc15_:Sprite = null;
         var _loc2_:Array = JSON.parse(param1 as String).levels;
         §=q§.§[!A§(_loc2_);
         var _loc3_:Vector.<§0!k§> = §=q§.§0c§();
         if(_loc3_.length > 0)
         {
            _loc8_ = 0;
            _loc9_ = _loc3_[_loc8_++];
            _loc10_ = new MovieClip();
            _loc11_ = §+!$§.getItemByName("ImageContainer_LevelThumb") as §%O§;
            _loc10_.addChild(_loc9_.thumbnail);
            if(_loc10_.width > _loc11_.mClip.width || _loc10_.height > _loc11_.mClip.height)
            {
               _loc12_ = _loc11_.mClip.width / _loc10_.width;
               _loc13_ = _loc11_.mClip.height / _loc10_.height;
               _loc10_.scaleX = _loc10_.scaleY = _loc12_ < _loc13_ ? Number(_loc12_) : Number(_loc13_);
            }
            _loc10_.scaleX = _loc10_.scaleY = 0.475;
            _loc11_.changeMovieClip(_loc10_);
            §+!$§.setText(_loc9_.§'!#§,"TextField_LevelName");
            §+!$§.setText(_loc9_.author,"TextField_LevelAuthor");
         }
         var _loc4_:Array;
         (_loc4_ = new Array())[0] = new Array();
         var _loc7_:Class = §1F§.§"!_§("Component_LevelSelection");
         while(_loc8_ < _loc3_.length && _loc8_ < 7)
         {
            _loc14_ = _loc3_[_loc8_];
            (_loc5_ = <Button/>).@name = _loc14_.id;
            _loc5_.@MouseUp = _loc14_.id;
            _loc6_ = new _loc7_();
            (_loc15_ = _loc14_.thumbnail).x = _loc6_.ImageContainer_LevelThumb.x;
            _loc15_.y = _loc6_.ImageContainer_LevelThumb.y;
            _loc15_.scaleX = _loc15_.scaleY = 0.315;
            _loc6_.addChild(_loc15_);
            _loc6_.ImageContainer_LevelThumb.visible = false;
            _loc6_.TextField_LevelName.text.text = _loc14_.§'!#§;
            _loc6_.TextField_LevelAuthor.text.text = _loc14_.author;
            _loc6_.TextField_LevelDay.visible = false;
            _loc4_[0].push(new Array(_loc5_,null,_loc6_));
            _loc8_++;
         }
         (§+!$§.getItemByName("Repeater_LevelSelection") as §?j§).§<!u§(_loc4_);
         (§+!$§.getItemByName("Repeater_LevelSelection") as §?j§).§+!b§("Repeater_LevelSelection_Tab_0");
         §-!D§.§?5§("onLevelMenuOpened",null);
         this.§]!_§(false);
      }
      
      public function §"-§() : void
      {
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §1^§.§3W§ = null;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         if(param2.length > 0 && param3 is § else§)
         {
            if((param3 as § else§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as § else§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§<!v§)
               {
                  §@!n§.§,c§(StatePlayBS.STATE_NAME,param2.toLowerCase());
                  mNextState = §@!n§.STATE_NAME;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §+!§.§4c§("Menu_Back");
               mNextState = §-G§.STATE_NAME;
               break;
            case "NEXT":
               §+!§.§4c§("Menu_Confirm");
               if(!this.§<!v§)
               {
                  ++this.§#!2§;
               }
               break;
            case "PREV":
               §+!§.§4c§("Menu_Confirm");
               if(!this.§<!v§)
               {
                  --this.§#!2§;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §+!§.§4c§("Menu_Confirm");
               AngryBirdsFP11.§`!d§.§!5§();
               break;
            case "PLAY_LEVEL_OF_DAY":
               §@!n§.§,c§(StatePlayBS.STATE_NAME,§=q§.§0c§()[0].id);
               mNextState = §@!n§.STATE_NAME;
         }
      }
      
      public function each() : void
      {
         this.§>i§ = [];
         this.§%U§ = [];
         this.§,!@§ = this.§#!2§;
         this.§%<§ = this.§#!2§;
      }
      
      private function §9!&§(param1:MouseEvent) : void
      {
      }
      
      public function §]!_§(param1:Boolean) : void
      {
         §+!$§.setItemVisibility("MovieClip_Loading",param1);
         §+!$§.setItemVisibility("Container_LevelOfTheDay",!param1);
         §+!$§.setItemVisibility("Repeater_LevelSelection",!param1);
      }
   }
}
