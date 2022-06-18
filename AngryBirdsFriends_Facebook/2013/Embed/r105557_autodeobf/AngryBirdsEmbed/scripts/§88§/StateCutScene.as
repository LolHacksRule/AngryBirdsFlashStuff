package §88§
{
   import § if§.§2q§;
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §#]§.§'5§;
   import §1t§.§`!B§;
   import §2r§.§5l§;
   import §2r§.§@!,§;
   import §<!M§.§[i§;
   import §=!K§.§5n§;
   import §=!K§.§^Q§;
   import §??§.§5!@§;
   import flash.events.Event;
   
   public class StateCutScene extends §2q§
   {
      
      public static const §&! §:String = "StateCutScene";
      
      private static const §>r§:Number = 500;
      
      protected static var §2!K§:Boolean;
      
      protected static var §^y§:int;
       
      
      protected var §9z§:§@!,§;
      
      private var §>e§:Boolean;
      
      private var § &§:Number = 0;
      
      private var §8!-§:Number = 0;
      
      private var §5C§:§5n§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function §,!?§(param1:Boolean, param2:int = -2147483648) : void
      {
         §2!K§ = param1;
         §^y§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
         §=V§ = new §,U§(this);
         §=V§.init(§while§.§ v§.Views.View_CutScene[0]);
      }
      
      protected function §[q§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§5C§)
            {
               §=V§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§5C§.removeEventListener(Event.COMPLETE,this.§0J§);
               this.§5C§.removeEventListener(Event.CANCEL,this.§?!E§);
               this.§5C§.addEventListener(Event.COMPLETE,this.§0J§);
               this.§5C§.addEventListener(Event.CANCEL,this.§?!E§);
               this.§5C§.§+!G§("cutscene_" + param1);
            }
            else
            {
               this.§+j§();
            }
            return true;
         }
         return false;
      }
      
      private function §0J§(param1:Event) : void
      {
         if(this.§5C§)
         {
            this.§5C§.removeEventListener(Event.COMPLETE,this.§0J§);
            this.§5C§.removeEventListener(Event.CANCEL,this.§?!E§);
            this.§+j§();
         }
      }
      
      protected function §+j§() : void
      {
         §=V§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§!R§();
         var _loc2_:§^Q§ = §^Q§.§&e§;
         if(this.§5C§)
         {
            _loc2_ = this.§5C§.textureManager;
         }
         this.§9z§ = §5l§.§-=§(_loc1_,_loc2_);
         if(this.§9z§)
         {
            AngryBirdsFP11.sUserProgress.§1!E§(_loc1_);
            §'5§.§^;§.§]g§(true);
            §'5§.§^;§.§1z§(false);
            this.§9z§.update(0);
            §'5§.§^;§.§5!B§.addChild(this.§9z§.sprite);
         }
      }
      
      protected function §?!E§(param1:Event) : void
      {
         if(this.§5C§)
         {
            this.§5C§.removeEventListener(Event.COMPLETE,this.§0J§);
            this.§5C§.removeEventListener(Event.CANCEL,this.§?!E§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§5C§)
         {
            this.§5C§ = §'5§.§^;§.§[n§;
         }
         if(§5!@§.§8%§)
         {
            §5!@§.§8%§.color = 0;
         }
         this.§ &§ = 0;
         this.§8!-§ = 0;
         §=V§.getItemByName("Button_Skip").setVisibility(false);
         §=V§.getItemByName("Button_Skip").mClip.alpha = this.§ &§;
         AngryBirdsFP11.§0!0§();
         this.§>e§ = false;
         §=V§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§!R§();
         if(!this.§[q§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §!R§() : String
      {
         var _loc1_:String = §[i§.§+!8§;
         var _loc2_:String = §[i§.§1V§().§[D§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §[i§.§0A§;
            _loc2_ = §[i§.§1V§().§[D§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§9z§)
         {
            §'5§.§^;§.§5!B§.removeChild(this.§9z§.sprite);
            this.§9z§.dispose();
            this.§9z§ = null;
         }
         if(this.§5C§)
         {
            this.§5C§.removeEventListener(Event.COMPLETE,this.§0J§);
            this.§5C§.removeEventListener(Event.CANCEL,this.§?!E§);
         }
         §'5§.§^;§.§1z§(true);
         §[i§.§+!8§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§>e§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§^!<§.§;3§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§8!-§ > §>r§)
         {
            §=V§.getItemByName("Button_Skip").setVisibility(!§2!K§);
            this.§ &§ += param1 / 1000;
            §=V§.getItemByName("Button_Skip").mClip.alpha = this.§ &§;
            if(this.§ &§ > 1)
            {
               this.§ &§ = 1;
            }
         }
         else
         {
            this.§8!-§ += param1;
         }
         if(this.§>e§)
         {
            this.end();
            return §2q§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §2q§.STATE_STATUS_COMPLETED;
         }
         if(!§2!K§)
         {
            if(this.§9z§ && !this.§9z§.update(param1))
            {
               this.end();
            }
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
      
      protected function end() : void
      {
         var _loc1_:String = null;
         if(this.§9z§ && this.§9z§.§]B§ == §@!,§.§6h§)
         {
            §!G§.§;c§ = StateCutScene.§&! §;
            mNextState = this.§'V§();
         }
         else if(this.§9z§ && this.§9z§.§]B§ == §@!,§.§@! §)
         {
            mNextState = §7P§.§&! §;
         }
         else
         {
            _loc1_ = §[i§.§0A§;
            if(_loc1_)
            {
               mNextState = this.static();
            }
            else
            {
               mNextState = this.§'V§();
            }
         }
         §,!?§(false);
      }
      
      protected function §'V§() : String
      {
         return §!G§.§&! §;
      }
      
      protected function static() : String
      {
         return §`!J§.§&! §;
      }
   }
}
