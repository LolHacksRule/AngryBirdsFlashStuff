package § !@§
{
   import §&p§.§-r§;
   import §&p§.§^!C§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   import §9K§.§5!H§;
   import §9K§.§`!H§;
   import §=!0§.§>I§;
   import flash.events.Event;
   
   public class StateCutScene extends §1Q§
   {
      
      public static const §>9§:String = "StateCutScene";
      
      private static const §!!3§:Number = 500;
      
      protected static var §0!<§:Boolean;
      
      protected static var §?!6§:int;
       
      
      protected var §,y§:§-r§;
      
      private var §'2§:Boolean;
      
      private var §]3§:Number = 0;
      
      private var §6-§:Number = 0;
      
      private var §#!G§:§`!H§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function § #§(param1:Boolean, param2:int = -2147483648) : void
      {
         §0!<§ = param1;
         §?!6§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
         §]F§ = new §4!,§(this);
         §]F§.init(§5A§.§;L§.Views.View_CutScene[0]);
      }
      
      protected function §'u§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§#!G§)
            {
               §]F§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§#!G§.removeEventListener(Event.COMPLETE,this.§?p§);
               this.§#!G§.removeEventListener(Event.CANCEL,this.§=B§);
               this.§#!G§.addEventListener(Event.COMPLETE,this.§?p§);
               this.§#!G§.addEventListener(Event.CANCEL,this.§=B§);
               this.§#!G§.§9I§("cutscene_" + param1);
            }
            else
            {
               this.§ '§();
            }
            return true;
         }
         return false;
      }
      
      private function §?p§(param1:Event) : void
      {
         if(this.§#!G§)
         {
            this.§#!G§.removeEventListener(Event.COMPLETE,this.§?p§);
            this.§#!G§.removeEventListener(Event.CANCEL,this.§=B§);
            this.§ '§();
         }
      }
      
      protected function § '§() : void
      {
         §]F§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§0!A§();
         var _loc2_:§5!H§ = §5!H§.§@6§;
         if(this.§#!G§)
         {
            _loc2_ = this.§#!G§.textureManager;
         }
         this.§,y§ = §^!C§.§`T§(_loc1_,_loc2_);
         if(this.§,y§)
         {
            AngryBirdsFP11.sUserProgress.§]0§(_loc1_);
            §=w§.§ o§.§7!E§(true);
            §=w§.§ o§.§&!B§(false);
            this.§,y§.update(0);
            §=w§.§ o§.§^m§.addChild(this.§,y§.sprite);
         }
      }
      
      protected function §=B§(param1:Event) : void
      {
         if(this.§#!G§)
         {
            this.§#!G§.removeEventListener(Event.COMPLETE,this.§?p§);
            this.§#!G§.removeEventListener(Event.CANCEL,this.§=B§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§#!G§)
         {
            this.§#!G§ = §=w§.§ o§.§&!3§;
         }
         if(§>I§.§`S§)
         {
            §>I§.§`S§.color = 0;
         }
         this.§]3§ = 0;
         this.§6-§ = 0;
         §]F§.getItemByName("Button_Skip").setVisibility(false);
         §]F§.getItemByName("Button_Skip").mClip.alpha = this.§]3§;
         AngryBirdsFP11.§#!5§();
         this.§'2§ = false;
         §]F§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§0!A§();
         if(!this.§'u§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §0!A§() : String
      {
         var _loc1_:String = §[4§.§ !7§;
         var _loc2_:String = §[4§.§5C§().§1w§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §[4§.§"!>§;
            _loc2_ = §[4§.§5C§().§1w§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§,y§)
         {
            §=w§.§ o§.§^m§.removeChild(this.§,y§.sprite);
            this.§,y§.dispose();
            this.§,y§ = null;
         }
         if(this.§#!G§)
         {
            this.§#!G§.removeEventListener(Event.COMPLETE,this.§?p§);
            this.§#!G§.removeEventListener(Event.CANCEL,this.§=B§);
         }
         §=w§.§ o§.§&!B§(true);
         §[4§.§ !7§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§'2§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ y§.§-!$§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§6-§ > §!!3§)
         {
            §]F§.getItemByName("Button_Skip").setVisibility(!§0!<§);
            this.§]3§ += param1 / 1000;
            §]F§.getItemByName("Button_Skip").mClip.alpha = this.§]3§;
            if(this.§]3§ > 1)
            {
               this.§]3§ = 1;
            }
         }
         else
         {
            this.§6-§ += param1;
         }
         if(this.§'2§)
         {
            this.end();
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         if(!§0!<§)
         {
            if(this.§,y§ && !this.§,y§.update(param1))
            {
               this.end();
            }
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      protected function end() : void
      {
         var _loc1_:String = null;
         if(this.§,y§ && this.§,y§.§"Z§ == §-r§.§02§)
         {
            §6!@§.§]t§ = StateCutScene.§>9§;
            mNextState = this.§[A§();
         }
         else if(this.§,y§ && this.§,y§.§"Z§ == §-r§.§>A§)
         {
            mNextState = §8!M§.§>9§;
         }
         else
         {
            _loc1_ = §[4§.§"!>§;
            if(_loc1_)
            {
               mNextState = this.§]!-§();
            }
            else
            {
               mNextState = this.§[A§();
            }
         }
         § #§(false);
      }
      
      protected function §[A§() : String
      {
         return §6!@§.§>9§;
      }
      
      protected function §]!-§() : String
      {
         return §^!K§.§>9§;
      }
   }
}
