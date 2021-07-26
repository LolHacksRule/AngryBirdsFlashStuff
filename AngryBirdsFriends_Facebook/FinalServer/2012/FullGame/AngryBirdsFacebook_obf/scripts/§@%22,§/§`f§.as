package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §-B§.§?!j§;
   import §5!G§.§&2§;
   import §70§.§#!p§;
   import §;n§.§^!;§;
   import §=#§.§5!S§;
   import §[x§.§%3§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §`f§ extends §5!S§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §6!z§:§#!p§ = null;
      
      private var §9h§:Boolean;
      
      private var §<W§:Number;
      
      private var §>!<§:Number;
      
      private var §=!m§:Number;
      
      private var §0!l§:Number;
      
      private var §'"D§:Number;
      
      public function §`f§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_Credits[0]);
         this.§6!z§ = new §#!p§(§&2§.§],§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§9h§ = false;
         this.§'"D§ = (§2!K§.getItemByName("Container_Credits") as §?!j§).height + §&2§.§#!h§ * §&2§.§0"@§;
         this.§0!l§ = -this.§'"D§;
         §&2§.§],§.§`!I§(true);
         §&2§.resume();
         §&2§.setController(this.§6!z§);
         this.§6!z§.init();
         this.playThemeMusic();
         §2!K§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§6"B§);
         §2!K§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§ !!§);
         §2!K§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§]3§);
         §2!K§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §2!K§.stage.addEventListener(Event.MOUSE_LEAVE,this.§@!l§);
         this.§<W§ = 0;
         this.§>!<§ = 0;
         var _loc1_:String = §%3§.§5!s§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         this.setVersionTexts(_loc1_,_loc2_);
      }
      
      protected function setVersionTexts(param1:String, param2:String) : void
      {
         §2!K§.setText(param1,"TextField_Version_Number");
         §2!K§.setText(param2,"TextField_Version_Number_Server");
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      private function §4"K§(param1:MouseEvent) : Boolean
      {
         if(§2!K§.stage.mouseX < §2!K§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §6"B§(param1:MouseEvent) : void
      {
         if(this.§9h§)
         {
            if(!this.§4"K§(param1))
            {
               this.§9h§ = false;
               return;
            }
            if(this.§=!m§ - §2!K§.stage.mouseY > 0)
            {
               this.§<W§ = this.§=!m§ - §2!K§.stage.mouseY;
               this.§=!m§ = §2!K§.stage.mouseY;
            }
            else if(this.§=!m§ - §2!K§.stage.mouseY < 0)
            {
               this.§<W§ = this.§=!m§ - §2!K§.stage.mouseY;
               this.§=!m§ = §2!K§.stage.mouseY;
            }
         }
      }
      
      private function § !!§(param1:MouseEvent) : void
      {
         if(this.§4"K§(param1))
         {
            if(!§&2§.isPaused)
            {
               this.§9h§ = true;
               this.§=!m§ = §2!K§.stage.mouseY;
            }
         }
      }
      
      private function §]3§(param1:MouseEvent) : void
      {
         this.§9h§ = false;
      }
      
      private function §@!l§(param1:Event) : void
      {
         this.§9h§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§4"K§(param1))
         {
            if(param1.delta < 0)
            {
               this.§>!<§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§>!<§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§&2§.isPaused)
         {
            §&2§.§,!x§.update(param1);
            (§2!K§.getItemByName("Container_Credits") as §?!j§).setVisibility(true);
            this.readyToShowCredits();
            (§2!K§.getItemByName("Container_Credits") as §?!j§).y = Math.floor(-this.§0!l§);
            this.§;!j§(param1);
         }
         if(mNextState.length > 0)
         {
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §;!j§(param1:Number) : void
      {
         this.§0!l§ += this.§<W§;
         this.§0!l§ += this.§>!<§;
         if(!this.§9h§ && Math.abs(this.§>!<§) < param1 / 15)
         {
            this.§0!l§ += param1 / 15;
         }
         if(this.§0!l§ < -AngryBirdsFP11.§[!f§ * §&2§.§0"@§)
         {
            this.§0!l§ = this.§'"D§;
         }
         else if(this.§0!l§ > this.§'"D§)
         {
            this.§0!l§ = -AngryBirdsFP11.§[!f§ * §&2§.§0"@§;
         }
         if(!this.§9h§)
         {
            this.§<W§ *= 0.9;
            this.§>!<§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §2!K§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§6"B§);
         §2!K§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ !!§);
         §2!K§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§]3§);
         §2!K§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §2!K§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§@!l§);
         (§2!K§.getItemByName("Container_Credits") as §?!j§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §5"7§.STATE_NAME;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§#!4§.§-"F§();
         }
      }
   }
}
