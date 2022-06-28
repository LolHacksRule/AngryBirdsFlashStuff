package §>!A§
{
   import §"!&§.§#!,§;
   import §#!;§.§;T§;
   import §'k§.§ >§;
   import §'k§.§;[§;
   import §-!F§.§^h§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §8!>§.§=!+§;
   import §8!>§.§`!D§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import flash.events.Event;
   
   public class StateCutScene extends §#!,§
   {
      
      public static const §?x§:String = "StateCutScene";
      
      private static const §[X§:Number = 500;
       
      
      private var §=`§:§=!+§;
      
      private var §0'§:Boolean;
      
      private var §80§:Number = 0;
      
      private var §7@§:Number = 0;
      
      private var §6v§:§;[§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[=§ = new §^3§(this);
         §[=§.init(§!I§.§7y§.Views.View_CutScene[0]);
      }
      
      protected function §2!1§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§6v§)
            {
               §[=§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§6v§.removeEventListener(Event.COMPLETE,this.§0!6§);
               this.§6v§.removeEventListener(Event.CANCEL,this.§package§);
               this.§6v§.addEventListener(Event.COMPLETE,this.§0!6§);
               this.§6v§.addEventListener(Event.CANCEL,this.§package§);
               this.§6v§.§5&§("cutscene_" + param1);
            }
            else
            {
               this.§>S§();
            }
            return true;
         }
         return false;
      }
      
      private function §0!6§(param1:Event) : void
      {
         if(this.§6v§)
         {
            this.§6v§.removeEventListener(Event.COMPLETE,this.§0!6§);
            this.§6v§.removeEventListener(Event.CANCEL,this.§package§);
            this.§>S§();
         }
      }
      
      private function §>S§() : void
      {
         §[=§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§-!6§();
         var _loc2_:§ >§ = § >§.§^n§;
         if(this.§6v§)
         {
            _loc2_ = this.§6v§.textureManager;
         }
         this.§=`§ = §`!D§.§1!3§(_loc1_,_loc2_);
         if(this.§=`§)
         {
            AngryBirdsFP11.sUserProgress.§0u§(_loc1_);
            §[k§.§&@§.§`!G§(true);
            §[k§.§&@§.§%7§(false);
            this.§=`§.update(0);
            §[k§.§&@§.§;1§.addChild(this.§=`§.sprite);
         }
      }
      
      protected function §package§(param1:Event) : void
      {
         if(this.§6v§)
         {
            this.§6v§.removeEventListener(Event.COMPLETE,this.§0!6§);
            this.§6v§.removeEventListener(Event.CANCEL,this.§package§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§6v§)
         {
            this.§6v§ = §[k§.§&@§.§6_§;
         }
         if(§;T§.§,H§)
         {
            §;T§.§,H§.color = 0;
         }
         this.§80§ = 0;
         this.§7@§ = 0;
         §[=§.getItemByName("Button_Skip").setVisibility(false);
         §[=§.getItemByName("Button_Skip").mClip.alpha = this.§80§;
         AngryBirdsFP11.§'i§();
         this.§0'§ = false;
         §[=§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§-!6§();
         if(!this.§2!1§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §-!6§() : String
      {
         var _loc1_:String = §5j§.§>N§;
         var _loc2_:String = §5j§.§'!#§().§0!9§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §5j§.§%V§;
            _loc2_ = §5j§.§'!#§().§0!9§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§=`§)
         {
            §[k§.§&@§.§;1§.removeChild(this.§=`§.sprite);
            this.§=`§.dispose();
            this.§=`§ = null;
         }
         if(this.§6v§)
         {
            this.§6v§.removeEventListener(Event.COMPLETE,this.§0!6§);
            this.§6v§.removeEventListener(Event.CANCEL,this.§package§);
         }
         §[k§.§&@§.§%7§(true);
         §5j§.§>N§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§0'§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§,s§.§8!1§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§7@§ > §[X§)
         {
            §[=§.getItemByName("Button_Skip").setVisibility(true);
            this.§80§ += param1 / 1000;
            §[=§.getItemByName("Button_Skip").mClip.alpha = this.§80§;
            if(this.§80§ > 1)
            {
               this.§80§ = 1;
            }
         }
         else
         {
            this.§7@§ += param1;
         }
         if(this.§0'§)
         {
            this.end();
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         if(this.§=`§ && !this.§=`§.update(param1))
         {
            this.end();
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§=`§ && this.§=`§.§!K§ == §=!+§.§8!,§)
         {
            §5O§.§-!A§ = StateCutScene.§?x§;
            mNextState = §5O§.§?x§;
         }
         else if(this.§=`§ && this.§=`§.§!K§ == §=!+§.§5_§)
         {
            mNextState = §3!G§.§?x§;
         }
         else
         {
            _loc1_ = §5j§.§%V§;
            if(_loc1_)
            {
               mNextState = this.§#! §();
            }
            else
            {
               mNextState = §5O§.§?x§;
            }
         }
      }
      
      protected function §#! §() : String
      {
         return §,w§.§?x§;
      }
   }
}
