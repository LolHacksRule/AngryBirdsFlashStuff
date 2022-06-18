package §!$§
{
   import §!^§.§"%§;
   import §-!C§.§#!G§;
   import §4!3§.§'!@§;
   import §4!3§.§+!D§;
   import §6u§.§3W§;
   import §6u§.§;=§;
   import §8!#§.§<n§;
   import §>%§.§]3§;
   import §[A§.§3!'§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import flash.events.Event;
   
   public class StateCutScene extends §3!'§
   {
      
      public static const §9"§:String = "StateCutScene";
      
      private static const §?t§:Number = 500;
       
      
      private var §,Y§:§+!D§;
      
      private var §`"§:Boolean;
      
      private var §?!#§:Number = 0;
      
      private var §[Z§:Number = 0;
      
      private var §]G§:§;=§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!2§ = new §&"§(this);
         §+!2§.init(§?O§.§@!<§.Views.View_CutScene[0]);
      }
      
      protected function §8e§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§]G§)
            {
               §+!2§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§]G§.removeEventListener(Event.COMPLETE,this.§47§);
               this.§]G§.removeEventListener(Event.CANCEL,this.§"^§);
               this.§]G§.addEventListener(Event.COMPLETE,this.§47§);
               this.§]G§.addEventListener(Event.CANCEL,this.§"^§);
               this.§]G§.§,!3§("cutscene_" + param1);
            }
            else
            {
               this.§#Q§();
            }
            return true;
         }
         return false;
      }
      
      private function §47§(param1:Event) : void
      {
         if(this.§]G§)
         {
            this.§]G§.removeEventListener(Event.COMPLETE,this.§47§);
            this.§]G§.removeEventListener(Event.CANCEL,this.§"^§);
            this.§#Q§();
         }
      }
      
      private function §#Q§() : void
      {
         §+!2§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§;!,§();
         var _loc2_:§3W§ = §3W§.§9r§;
         if(this.§]G§)
         {
            _loc2_ = this.§]G§.textureManager;
         }
         this.§,Y§ = §'!@§.§<_§(_loc1_,_loc2_);
         if(this.§,Y§)
         {
            AngryBirdsFP11.sUserProgress.§1§(_loc1_);
            §]3§.§;v§.§@!A§(true);
            §]3§.§;v§.§9>§(false);
            this.§,Y§.update(0);
            §]3§.§;v§.§3O§.addChild(this.§,Y§.sprite);
         }
      }
      
      protected function §"^§(param1:Event) : void
      {
         if(this.§]G§)
         {
            this.§]G§.removeEventListener(Event.COMPLETE,this.§47§);
            this.§]G§.removeEventListener(Event.CANCEL,this.§"^§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§]G§)
         {
            this.§]G§ = §]3§.§;v§.§]!$§;
         }
         if(§<n§.§?@§)
         {
            §<n§.§?@§.color = 0;
         }
         this.§?!#§ = 0;
         this.§[Z§ = 0;
         §+!2§.getItemByName("Button_Skip").setVisibility(false);
         §+!2§.getItemByName("Button_Skip").mClip.alpha = this.§?!#§;
         AngryBirdsFP11.§"!4§();
         this.§`"§ = false;
         §+!2§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§;!,§();
         if(!this.§8e§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §;!,§() : String
      {
         var _loc1_:String = §#!G§.§0E§;
         var _loc2_:String = §#!G§.§+!>§().§3y§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §#!G§.§9C§;
            _loc2_ = §#!G§.§+!>§().§3y§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§,Y§)
         {
            §]3§.§;v§.§3O§.removeChild(this.§,Y§.sprite);
            this.§,Y§.dispose();
            this.§,Y§ = null;
         }
         if(this.§]G§)
         {
            this.§]G§.removeEventListener(Event.COMPLETE,this.§47§);
            this.§]G§.removeEventListener(Event.CANCEL,this.§"^§);
         }
         §]3§.§;v§.§9>§(true);
         §#!G§.§0E§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§`"§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"h§.§>B§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§[Z§ > §?t§)
         {
            §+!2§.getItemByName("Button_Skip").setVisibility(true);
            this.§?!#§ += param1 / 1000;
            §+!2§.getItemByName("Button_Skip").mClip.alpha = this.§?!#§;
            if(this.§?!#§ > 1)
            {
               this.§?!#§ = 1;
            }
         }
         else
         {
            this.§[Z§ += param1;
         }
         if(this.§`"§)
         {
            this.end();
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         if(this.§,Y§ && !this.§,Y§.update(param1))
         {
            this.end();
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§,Y§ && this.§,Y§.§[w§ == §+!D§.§4"§)
         {
            §#u§.§,x§ = StateCutScene.§9"§;
            mNextState = §#u§.§9"§;
         }
         else if(this.§,Y§ && this.§,Y§.§[w§ == §+!D§.§+!B§)
         {
            mNextState = § X§.§9"§;
         }
         else
         {
            _loc1_ = §#!G§.§9C§;
            if(_loc1_)
            {
               mNextState = this.§]!0§();
            }
            else
            {
               mNextState = §#u§.§9"§;
            }
         }
      }
      
      protected function §]!0§() : String
      {
         return § W§.§9"§;
      }
   }
}
