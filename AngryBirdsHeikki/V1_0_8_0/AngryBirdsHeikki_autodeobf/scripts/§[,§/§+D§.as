package §[,§
{
   import § !3§.§!X§;
   import §!a§.§&6§;
   import §!v§.§7[§;
   import §#!+§.§"$§;
   import §#!+§.§?V§;
   import §#!T§.§&2§;
   import §'z§.§3?§;
   import §'z§.§super§;
   import §-!V§.§@§;
   import §3S§.§<p§;
   import §5!5§.§1!4§;
   import §;!0§.§4!I§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §+D§ extends §<!Y§
   {
      
      public static const §+Z§:String = "CreditsState";
       
      
      private var §8d§:§<p§ = null;
      
      private var §&i§:Boolean;
      
      private var §3!A§:Number;
      
      private var §[;§:Number;
      
      private var §0!]§:Number;
      
      private var §5!N§:Number;
      
      private var §=!§:Number;
      
      private var §2!V§:Boolean;
      
      public function §+D§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%L§ = new §1!4§(0,0,0,1);
         §[L§ = new §"$§(this);
         §[L§.init(§?V§.§-2§.Views.View_Credits[0]);
         this.§8d§ = new §<p§(§&2§.§4!1§,"INGAME_THEME_" + int(Math.random() * 12 + 1),false,15);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§2!V§ = false;
         this.§=!§ = (§[L§.getItemByName("Container_Credits") as §@§).height + §&2§.§>!?§ * §&2§.§ `§;
         this.§5!N§ = -this.§=!§;
         sHighscoreSidebar.enableCreditsButton(false);
         §&2§.§9![§(this.§8d§);
         this.§8d§.init();
         §2!S§.§3!E§();
         §7[§.§=!$§.isPaused = false;
         var _loc1_:§@§ = §[L§.container.getItemByName("Container_Credits") as §@§;
         §[L§.addEventListener(MouseEvent.MOUSE_MOVE,this.§^k§);
         §[L§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<m§);
         §[L§.addEventListener(MouseEvent.MOUSE_UP,this.§0!c§);
         §[L§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §[L§.stage.addEventListener(Event.MOUSE_LEAVE,this.§87§);
         this.§3!A§ = 0;
         this.§[;§ = 0;
         §[L§.setText(§!X§.§??§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
         if(§2!S§.§1!b§ == §3!<§.§+Z§)
         {
            sHighscoreSidebar.enableLogOutButton(false);
         }
         else
         {
            sHighscoreSidebar.enableLogOutButton(true);
         }
      }
      
      private function §^k§(param1:MouseEvent) : void
      {
         if(this.§&i§)
         {
            if(this.§0!]§ - §[L§.mouseY > 0)
            {
               this.§3!A§ = this.§0!]§ - §[L§.mouseY;
               this.§0!]§ = §[L§.mouseY;
            }
            else if(this.§0!]§ - §[L§.mouseY < 0)
            {
               this.§3!A§ = this.§0!]§ - §[L§.mouseY;
               this.§0!]§ = §[L§.mouseY;
            }
         }
      }
      
      private function §<m§(param1:MouseEvent) : void
      {
         this.§&i§ = true;
         this.§0!]§ = §[L§.mouseY;
      }
      
      private function §0!c§(param1:MouseEvent) : void
      {
         this.§&i§ = false;
      }
      
      private function §87§(param1:Event) : void
      {
         this.§&i§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§[;§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§[;§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§super§.§6!U§ || §3?§.§3!;§())
         {
            return §&6§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (§[L§.getItemByName("Container_Credits") as §@§).y = Math.floor(-this.§5!N§);
         if(!§&2§.isPaused)
         {
            §&2§.§7=§.update(param1);
            this.§27§(param1);
            this.§]`§();
         }
         else
         {
            §&2§.§,`§();
         }
         if(mNextState.length > 0)
         {
            return §&6§.STATE_STATUS_COMPLETED;
         }
         return §&6§.STATE_STATUS_RUNNING;
      }
      
      private function §]`§() : void
      {
         if(!this.§2!V§)
         {
            §&2§.§4!1§.§5h§(true);
            §&2§.§4!1§.§-H§(true);
            this.§2!V§ = true;
            §<>§();
         }
         (§[L§.getItemByName("Container_Credits") as §@§).setVisibility(true);
      }
      
      private function §27§(param1:Number) : void
      {
         this.§5!N§ += this.§3!A§;
         this.§5!N§ += this.§[;§;
         if(!this.§&i§ && Math.abs(this.§[;§) < param1 / 15)
         {
            this.§5!N§ += param1 / 15;
         }
         if(this.§5!N§ < -§2!S§.§>!?§ * §&2§.§ `§)
         {
            this.§5!N§ = this.§=!§;
         }
         else if(this.§5!N§ > this.§=!§)
         {
            this.§5!N§ = -§2!S§.§>!?§ * §&2§.§ `§;
         }
         if(!this.§&i§)
         {
            this.§3!A§ *= 0.9;
            this.§[;§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §[L§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§^k§);
         §[L§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<m§);
         §[L§.removeEventListener(MouseEvent.MOUSE_UP,this.§0!c§);
         §[L§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §[L§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§87§);
         (§[L§.getItemByName("Container_Credits") as §@§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
      {
         var _loc4_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §2!S§.§1!b§;
               break;
            case "CREDITS_GAE_BUTTON":
               _loc4_ = new URLRequest("https://developers.google.com/appengine/");
               navigateToURL(_loc4_,"_blank");
         }
      }
   }
}
