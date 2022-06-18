package §2>§
{
   import §,!M§.§0!K§;
   import §,!M§.§2v§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §7!§.§,L§;
   import §7=§.§9Y§;
   import §7J§.§<!?§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   import §[v§.§&U§;
   import §[v§.§0&§;
   import flash.events.Event;
   
   public class StateCutScene extends §9Y§
   {
      
      public static const §]! §:String = "StateCutScene";
      
      private static const §<3§:Number = 500;
      
      protected static var §<`§:Boolean;
      
      protected static var §2r§:int;
       
      
      protected var §7!8§:§0!K§;
      
      private var §4!C§:Boolean;
      
      private var §]H§:Number = 0;
      
      private var §,k§:Number = 0;
      
      private var §@T§:§&U§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function §%k§(param1:Boolean, param2:int = -2147483648) : void
      {
         §<`§ = param1;
         §2r§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
         §!s§ = new §+!B§(this);
         §!s§.init(§-!K§.§"!G§.Views.View_CutScene[0]);
      }
      
      protected function §7B§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§@T§)
            {
               §!s§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§@T§.removeEventListener(Event.COMPLETE,this.§;z§);
               this.§@T§.removeEventListener(Event.CANCEL,this.§0!0§);
               this.§@T§.addEventListener(Event.COMPLETE,this.§;z§);
               this.§@T§.addEventListener(Event.CANCEL,this.§0!0§);
               this.§@T§.§,l§("cutscene_" + param1);
            }
            else
            {
               this.§#!O§();
            }
            return true;
         }
         return false;
      }
      
      private function §;z§(param1:Event) : void
      {
         if(this.§@T§)
         {
            this.§@T§.removeEventListener(Event.COMPLETE,this.§;z§);
            this.§@T§.removeEventListener(Event.CANCEL,this.§0!0§);
            this.§#!O§();
         }
      }
      
      protected function §#!O§() : void
      {
         §!s§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§'D§();
         var _loc2_:§0&§ = §0&§.§5+§;
         if(this.§@T§)
         {
            _loc2_ = this.§@T§.textureManager;
         }
         this.§7!8§ = §2v§.§&!"§(_loc1_,_loc2_);
         if(this.§7!8§)
         {
            AngryBirdsFP11.sUserProgress.§&!<§(_loc1_);
            §[!4§.§continue§.§3!;§(true);
            §[!4§.§continue§.§=!G§(false);
            this.§7!8§.update(0);
            §[!4§.§continue§.§13§.addChild(this.§7!8§.sprite);
         }
      }
      
      protected function §0!0§(param1:Event) : void
      {
         if(this.§@T§)
         {
            this.§@T§.removeEventListener(Event.COMPLETE,this.§;z§);
            this.§@T§.removeEventListener(Event.CANCEL,this.§0!0§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§@T§)
         {
            this.§@T§ = §[!4§.§continue§.§5!N§;
         }
         if(§,L§.§3v§)
         {
            §,L§.§3v§.color = 0;
         }
         this.§]H§ = 0;
         this.§,k§ = 0;
         §!s§.getItemByName("Button_Skip").setVisibility(false);
         §!s§.getItemByName("Button_Skip").mClip.alpha = this.§]H§;
         AngryBirdsFP11.§!!;§();
         this.§4!C§ = false;
         §!s§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§'D§();
         if(!this.§7B§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §'D§() : String
      {
         var _loc1_:String = §'?§.§9T§;
         var _loc2_:String = §'?§.§#>§().§9J§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §'?§.§"t§;
            _loc2_ = §'?§.§#>§().§9J§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§7!8§)
         {
            §[!4§.§continue§.§13§.removeChild(this.§7!8§.sprite);
            this.§7!8§.dispose();
            this.§7!8§ = null;
         }
         if(this.§@T§)
         {
            this.§@T§.removeEventListener(Event.COMPLETE,this.§;z§);
            this.§@T§.removeEventListener(Event.CANCEL,this.§0!0§);
         }
         §[!4§.§continue§.§=!G§(true);
         §'?§.§9T§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§4!C§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§6C§.§`d§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§,k§ > §<3§)
         {
            §!s§.getItemByName("Button_Skip").setVisibility(!§<`§);
            this.§]H§ += param1 / 1000;
            §!s§.getItemByName("Button_Skip").mClip.alpha = this.§]H§;
            if(this.§]H§ > 1)
            {
               this.§]H§ = 1;
            }
         }
         else
         {
            this.§,k§ += param1;
         }
         if(this.§4!C§)
         {
            this.end();
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         if(!§<`§)
         {
            if(this.§7!8§ && !this.§7!8§.update(param1))
            {
               this.end();
            }
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
      
      protected function end() : void
      {
         var _loc1_:String = null;
         if(this.§7!8§ && this.§7!8§.§5u§ == §0!K§.§1y§)
         {
            §0!O§.§`!H§ = StateCutScene.§]! §;
            mNextState = this.§`"§();
         }
         else if(this.§7!8§ && this.§7!8§.§5u§ == §0!K§.§"!@§)
         {
            mNextState = §,a§.§]! §;
         }
         else
         {
            _loc1_ = §'?§.§"t§;
            if(_loc1_)
            {
               mNextState = this.§+e§();
            }
            else
            {
               mNextState = this.§`"§();
            }
         }
         §%k§(false);
      }
      
      protected function §`"§() : String
      {
         return §0!O§.§]! §;
      }
      
      protected function §+e§() : String
      {
         return §9$§.§]! §;
      }
   }
}
