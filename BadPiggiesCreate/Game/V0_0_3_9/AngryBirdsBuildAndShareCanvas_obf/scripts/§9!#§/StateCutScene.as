package §9!#§
{
   import §"h§.§<"+§;
   import §&!&§.§7!8§;
   import §-N§.§=!]§;
   import §3!S§.§%s§;
   import §6!&§.§1!c§;
   import §9!e§.§%w§;
   import §9!e§.§7,§;
   import §;!<§.§7!f§;
   import §;!<§.§>!>§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import flash.events.Event;
   
   public class StateCutScene extends §<"+§
   {
      
      public static const §8G§:String = "StateCutScene";
      
      private static const §<"!§:Number = 500;
       
      
      private var §2"7§:§%w§;
      
      private var §8!n§:Boolean;
      
      private var §7j§:Number = 0;
      
      private var §?!H§:Number = 0;
      
      private var §3?§:§>!>§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_CutScene[0]);
      }
      
      protected function §#!8§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§3?§)
            {
               §;i§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§3?§.removeEventListener(Event.COMPLETE,this.§19§);
               this.§3?§.removeEventListener(Event.CANCEL,this.§="'§);
               this.§3?§.addEventListener(Event.COMPLETE,this.§19§);
               this.§3?§.addEventListener(Event.CANCEL,this.§="'§);
               this.§3?§.§#"5§("cutscene_" + param1);
            }
            else
            {
               this.§ "%§();
            }
            return true;
         }
         return false;
      }
      
      private function §19§(param1:Event) : void
      {
         if(this.§3?§)
         {
            this.§3?§.removeEventListener(Event.COMPLETE,this.§19§);
            this.§3?§.removeEventListener(Event.CANCEL,this.§="'§);
            this.§ "%§();
         }
      }
      
      private function § "%§() : void
      {
         §;i§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§0"!§();
         var _loc2_:§7!f§ = §7!f§.§'!o§;
         if(this.§3?§)
         {
            _loc2_ = this.§3?§.§20§;
         }
         this.§2"7§ = §7,§.§]!<§(_loc1_,_loc2_);
         if(this.§2"7§)
         {
            AngryBirdsFP11.§5!c§.§6!+§(_loc1_);
            §%s§.§`!f§.§6M§(true);
            §%s§.§`!f§.§,v§(false);
            this.§2"7§.update(0);
            §%s§.§`!f§.§>"+§.addChild(this.§2"7§.sprite);
         }
      }
      
      protected function §="'§(param1:Event) : void
      {
         if(this.§3?§)
         {
            this.§3?§.removeEventListener(Event.COMPLETE,this.§19§);
            this.§3?§.removeEventListener(Event.CANCEL,this.§="'§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§3?§)
         {
            this.§3?§ = §%s§.§`!f§.§?m§;
         }
         if(§=!]§.§@§)
         {
            §=!]§.§@§.color = 0;
         }
         this.§7j§ = 0;
         this.§?!H§ = 0;
         §;i§.getItemByName("Button_Skip").setVisibility(false);
         §;i§.getItemByName("Button_Skip").mClip.alpha = this.§7j§;
         AngryBirdsFP11.§8z§();
         this.§8!n§ = false;
         §;i§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§0"!§();
         if(!this.§#!8§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §0"!§() : String
      {
         var _loc1_:String = §1!c§.§!f§;
         var _loc2_:String = §1!c§.§<!7§().§>1§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §1!c§.§'Z§;
            _loc2_ = §1!c§.§<!7§().§>1§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§2"7§)
         {
            §%s§.§`!f§.§>"+§.removeChild(this.§2"7§.sprite);
            this.§2"7§.dispose();
            this.§2"7§ = null;
         }
         if(this.§3?§)
         {
            this.§3?§.removeEventListener(Event.COMPLETE,this.§19§);
            this.§3?§.removeEventListener(Event.CANCEL,this.§="'§);
         }
         §%s§.§`!f§.§,v§(true);
         §1!c§.§!f§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§8!n§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?!-§.§>=§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§?!H§ > §<"!§)
         {
            §;i§.getItemByName("Button_Skip").setVisibility(true);
            this.§7j§ += param1 / 1000;
            §;i§.getItemByName("Button_Skip").mClip.alpha = this.§7j§;
            if(this.§7j§ > 1)
            {
               this.§7j§ = 1;
            }
         }
         else
         {
            this.§?!H§ += param1;
         }
         if(this.§8!n§)
         {
            this.end();
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         if(this.§2"7§ && !this.§2"7§.update(param1))
         {
            this.end();
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§2"7§ && this.§2"7§.§5!D§ == §%w§.§5Y§)
         {
            §#B§.§-"#§ = StateCutScene.§8G§;
            mNextState = §#B§.§8G§;
         }
         else if(this.§2"7§ && this.§2"7§.§5!D§ == §%w§.§&h§)
         {
            mNextState = §>!o§.§8G§;
         }
         else
         {
            _loc1_ = §1!c§.§'Z§;
            if(_loc1_)
            {
               mNextState = this.§'!#§();
            }
            else
            {
               mNextState = §#B§.§8G§;
            }
         }
      }
      
      protected function §'!#§() : String
      {
         return §+0§.§8G§;
      }
   }
}
