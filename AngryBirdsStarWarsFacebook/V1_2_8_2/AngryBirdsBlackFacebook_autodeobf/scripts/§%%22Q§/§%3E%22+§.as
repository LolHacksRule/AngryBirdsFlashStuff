package §%"Q§
{
   import §&!j§.§5#+§;
   import §8!h§.§-V§;
   import §9"`§.§-"H§;
   import §=Z§.§@!8§;
   import §?"6§.§9X§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import com.angrybirds.§<!J§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §null §.§5#§;
   
   public class §>"+§ extends §`!6§
   {
      
      public static const §-!U§:String = "CreditsState";
       
      
      protected var §8"Z§:§9X§ = null;
      
      private var §;V§:Boolean;
      
      private var §#<§:Number;
      
      private var §--§:Number;
      
      private var §7#"§:Number;
      
      private var §&#3§:Number;
      
      private var §1g§:Number;
      
      public function §>"+§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_Credits[0]);
         this.§8"Z§ = new §9X§(§<!J§.§=!%§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§;V§ = false;
         this.§1g§ = (§^!b§.getItemByName("Container_Credits") as §@!8§).height + §<!J§.§,e§ * §<!J§.§`1§;
         this.§&#3§ = -this.§1g§;
         this.§ !A§();
         §^!b§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§,"[§);
         §^!b§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!l§);
         §^!b§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§""0§);
         §^!b§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §^!b§.stage.addEventListener(Event.MOUSE_LEAVE,this.§3"Q§);
         this.§#<§ = 0;
         this.§--§ = 0;
         this.§4"1§();
      }
      
      protected function § !A§() : void
      {
         §<!J§.§=!%§.§`"V§(true);
         §<!J§.resume();
         §<!J§.§-k§(this.§8"Z§);
         this.§8"Z§.init();
         §4"#§.singleton.playThemeMusic();
      }
      
      protected function §4"1§() : void
      {
         var _loc1_:String = §-"H§.§'"U§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §^!b§.setText(_loc1_,"TextField_Version_Number");
         §^!b§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §!#1§(param1:MouseEvent) : Boolean
      {
         if(§^!b§.stage.mouseX < §^!b§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §,"[§(param1:MouseEvent) : void
      {
         if(this.§;V§)
         {
            if(!this.§!#1§(param1))
            {
               this.§;V§ = false;
               return;
            }
            if(this.§7#"§ - §^!b§.stage.mouseY > 0)
            {
               this.§#<§ = this.§7#"§ - §^!b§.stage.mouseY;
               this.§7#"§ = §^!b§.stage.mouseY;
            }
            else if(this.§7#"§ - §^!b§.stage.mouseY < 0)
            {
               this.§#<§ = this.§7#"§ - §^!b§.stage.mouseY;
               this.§7#"§ = §^!b§.stage.mouseY;
            }
         }
      }
      
      private function §1!l§(param1:MouseEvent) : void
      {
         if(this.§!#1§(param1))
         {
            if(!§<!J§.isPaused)
            {
               this.§;V§ = true;
               this.§7#"§ = §^!b§.stage.mouseY;
            }
         }
      }
      
      private function §""0§(param1:MouseEvent) : void
      {
         this.§;V§ = false;
      }
      
      private function §3"Q§(param1:Event) : void
      {
         this.§;V§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§!#1§(param1))
         {
            if(param1.delta < 0)
            {
               this.§--§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§--§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§<!J§.isPaused)
         {
            §<!J§.§]!D§.update(param1);
            (§^!b§.getItemByName("Container_Credits") as §@!8§).setVisibility(true);
            this.§<"§();
            (§^!b§.getItemByName("Container_Credits") as §@!8§).y = Math.floor(-this.§&#3§);
            this.§<"+§(param1);
         }
      }
      
      protected function §<"§() : void
      {
      }
      
      private function §<"+§(param1:Number) : void
      {
         this.§&#3§ += this.§#<§;
         this.§&#3§ += this.§--§;
         if(!this.§;V§ && Math.abs(this.§--§) < param1 / 15)
         {
            this.§&#3§ += param1 / 15;
         }
         if(this.§&#3§ < -§4"#§.screenHeight * §<!J§.§`1§)
         {
            this.§&#3§ = this.§1g§;
         }
         else if(this.§&#3§ > this.§1g§)
         {
            this.§&#3§ = -§4"#§.screenHeight * §<!J§.§`1§;
         }
         if(!this.§;V§)
         {
            this.§#<§ *= 0.9;
            this.§--§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §^!b§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§,"[§);
         §^!b§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!l§);
         §^!b§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§""0§);
         §^!b§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §^!b§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§3"Q§);
         (§^!b§.getItemByName("Container_Credits") as §@!8§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §`0§(§<'§.§-!U§);
               break;
            case "FULLSCREEN_BUTTON":
               §4"#§.singleton.§^L§();
         }
      }
   }
}
