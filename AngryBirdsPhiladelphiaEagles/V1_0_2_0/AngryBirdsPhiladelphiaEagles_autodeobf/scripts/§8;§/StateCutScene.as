package §8;§
{
   import §%!;§.§!L§;
   import §%!>§.§%!8§;
   import §%!>§.§;n§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §9c§.§,x§;
   import §<!F§.§5!+§;
   import §?!;§.§6H§;
   import §^'§.§ !C§;
   import §^'§.§[!4§;
   import §^h§.§2l§;
   import flash.events.Event;
   
   public class StateCutScene extends §!L§
   {
      
      public static const §"Z§:String = "StateCutScene";
      
      private static const §5k§:Number = 500;
       
      
      private var §&!6§:§;n§;
      
      private var §;c§:Boolean;
      
      private var § 2§:Number = 0;
      
      private var §&!§:Number = 0;
      
      private var §=h§:§[!4§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_CutScene[0]);
      }
      
      protected function §>n§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§=h§)
            {
               §>2§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§=h§.removeEventListener(Event.COMPLETE,this.§93§);
               this.§=h§.removeEventListener(Event.CANCEL,this.§0^§);
               this.§=h§.addEventListener(Event.COMPLETE,this.§93§);
               this.§=h§.addEventListener(Event.CANCEL,this.§0^§);
               this.§=h§.§7'§("cutscene_" + param1);
            }
            else
            {
               this.§84§();
            }
            return true;
         }
         return false;
      }
      
      private function §93§(param1:Event) : void
      {
         if(this.§=h§)
         {
            this.§=h§.removeEventListener(Event.COMPLETE,this.§93§);
            this.§=h§.removeEventListener(Event.CANCEL,this.§0^§);
            this.§84§();
         }
      }
      
      private function §84§() : void
      {
         §>2§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§[$§();
         var _loc2_:§ !C§ = § !C§.§&y§;
         if(this.§=h§)
         {
            _loc2_ = this.§=h§.textureManager;
         }
         this.§&!6§ = §%!8§.§9v§(_loc1_,_loc2_);
         if(this.§&!6§)
         {
            AngryBirdsFP11.§^O§.§5!B§(_loc1_);
            §5!+§.§6!§.§'!+§(true);
            §5!+§.§6!§.§2!H§(false);
            this.§&!6§.update(0);
            §5!+§.§6!§.§8!>§.addChild(this.§&!6§.sprite);
         }
      }
      
      protected function §0^§(param1:Event) : void
      {
         if(this.§=h§)
         {
            this.§=h§.removeEventListener(Event.COMPLETE,this.§93§);
            this.§=h§.removeEventListener(Event.CANCEL,this.§0^§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§=h§)
         {
            this.§=h§ = §5!+§.§6!§.§6"§;
         }
         if(§2l§.§7K§)
         {
            §2l§.§7K§.color = 0;
         }
         this.§ 2§ = 0;
         this.§&!§ = 0;
         §>2§.getItemByName("Button_Skip").setVisibility(false);
         §>2§.getItemByName("Button_Skip").mClip.alpha = this.§ 2§;
         AngryBirdsFP11.§1T§();
         this.§;c§ = false;
         §>2§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§[$§();
         if(!this.§>n§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §[$§() : String
      {
         var _loc1_:String = §6H§.§<S§;
         var _loc2_:String = §6H§.§'#§().§&T§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §6H§.§"Q§;
            _loc2_ = §6H§.§'#§().§&T§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§&!6§)
         {
            §5!+§.§6!§.§8!>§.removeChild(this.§&!6§.sprite);
            this.§&!6§.dispose();
            this.§&!6§ = null;
         }
         if(this.§=h§)
         {
            this.§=h§.removeEventListener(Event.COMPLETE,this.§93§);
            this.§=h§.removeEventListener(Event.CANCEL,this.§0^§);
         }
         §5!+§.§6!§.§2!H§(true);
         §6H§.§<S§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§;c§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"Y§.§4%§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§&!§ > §5k§)
         {
            §>2§.getItemByName("Button_Skip").setVisibility(true);
            this.§ 2§ += param1 / 1000;
            §>2§.getItemByName("Button_Skip").mClip.alpha = this.§ 2§;
            if(this.§ 2§ > 1)
            {
               this.§ 2§ = 1;
            }
         }
         else
         {
            this.§&!§ += param1;
         }
         if(this.§;c§)
         {
            this.end();
            return §!L§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §!L§.STATE_STATUS_COMPLETED;
         }
         if(this.§&!6§ && !this.§&!6§.update(param1))
         {
            this.end();
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§&!6§ && this.§&!6§.§'!8§ == §;n§.§[<§)
         {
            §!!6§.§<f§ = StateCutScene.§"Z§;
            mNextState = §!!6§.§"Z§;
         }
         else if(this.§&!6§ && this.§&!6§.§'!8§ == §;n§.§8!A§)
         {
            mNextState = §8!4§.§"Z§;
         }
         else
         {
            _loc1_ = §6H§.§"Q§;
            if(_loc1_)
            {
               mNextState = this.§,<§();
            }
            else
            {
               mNextState = §!!6§.§"Z§;
            }
         }
      }
      
      protected function §,<§() : String
      {
         return §8^§.§"Z§;
      }
   }
}
