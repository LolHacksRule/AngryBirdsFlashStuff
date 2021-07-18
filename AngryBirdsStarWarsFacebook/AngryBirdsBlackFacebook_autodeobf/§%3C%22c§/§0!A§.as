package §<"c§
{
   import §+!c§.§9"1§;
   import §+D§.§ #^§;
   import §5t§.Log;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §[#+§.§<k§;
   import com.angrybirds.§,!q§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §0!A§ extends §]"_§
   {
      
      public static const §^!7§:String = "CreditsState";
      
      private static const § #Y§:int = -350;
      
      private static const §81§:int = 400;
      
      private static const §%g§:int = 180;
      
      private static const §]"x§:String = "Container_Part";
      
      private static const §!<§:int = 50;
       
      
      private var §&!8§:Boolean;
      
      private var §<u§:Number;
      
      private var §^#L§:Number;
      
      private var §@"t§:Number;
      
      private var §[s§:Number;
      
      private var §&Y§:Number;
      
      private var §"!§:§9"1§;
      
      private var §@!0§:§ #^§;
      
      private var §]#>§:§ #^§;
      
      private var §6#6§:§ #^§;
      
      private var §++§:MovieClip;
      
      public function §0!A§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_Credits[0]);
         this.§@!0§ = § #^§(§@;§.getItemByName("Container_Credits"));
         this.§]#>§ = § #^§(§@;§.getItemByName("Container_Tilted"));
         this.§6#6§ = § #^§(§@;§.getItemByName("Container_Masked"));
         this.§++§ = §@;§.getItemByName("MovieClip_CreditsMask").mClip;
         this.§]!V§();
         var _loc1_:PerspectiveProjection = new PerspectiveProjection();
         _loc1_.fieldOfView = 60;
         _loc1_.projectionCenter = new Point(§@;§.container.viewWidth / 2,§@;§.container.viewHeight / 4);
         this.§]#>§.mClip.transform.perspectiveProjection = _loc1_;
         this.§]#>§.mClip.rotationX = -65;
         this.§]#>§.mClip.z = 20;
         this.§6#6§.mClip.mask = this.§++§;
         this.§"!§ = new §9"1§("StarBackground");
         §@;§.movieClip.addChildAt(this.§"!§,0);
      }
      
      private function §]!V§() : void
      {
         var _loc2_:DisplayObject = null;
         var _loc5_:int = 0;
         var _loc1_:MovieClip = this.§@!0§.mClip;
         var _loc3_:int = int.MAX_VALUE;
         var _loc4_:int = 0;
         var _loc6_:Dictionary = new Dictionary();
         var _loc7_:int = 0;
         while(_loc7_ < _loc1_.numChildren)
         {
            _loc2_ = _loc1_.getChildAt(_loc7_);
            if(_loc2_.name.indexOf(§]"x§) == 0)
            {
               _loc6_[_loc2_.name] = _loc2_;
               if((_loc5_ = parseInt(_loc2_.name.substr(§]"x§.length))) < _loc3_)
               {
                  _loc3_ = _loc5_;
               }
               if(_loc5_ > _loc4_)
               {
                  _loc4_ = _loc5_;
               }
            }
            _loc7_++;
         }
         _loc2_ = DisplayObject(_loc6_[§]"x§ + _loc3_]);
         _loc2_.y = 0;
         _loc2_.x = 360;
         var _loc9_:int = _loc7_ = _loc2_.y + _loc2_.height + §!<§;
         _loc7_ = _loc3_;
         while(_loc7_ <= _loc4_)
         {
            if(_loc7_ != _loc3_)
            {
               _loc2_ = DisplayObject(_loc6_[§]"x§ + _loc7_]);
               if(_loc2_)
               {
                  _loc2_.y = _loc9_;
                  _loc2_.x = 360;
                  _loc9_ = _loc2_.y + _loc2_.height + §!<§;
               }
            }
            _loc7_++;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§&Y§ = this.§@!0§.height + §,!q§.§[">§();
         this.§[s§ = -§4#;§.screenHeight * §,!q§.§!"N§;
         this.§@!0§.y = Math.floor(-this.§[s§);
         this.playThemeMusic();
         §@;§.movieClip.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         §@;§.movieClip.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         §@;§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         §@;§.movieClip.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §@;§.movieClip.addEventListener(Event.MOUSE_LEAVE,this.§[u§);
         this.§<u§ = 0;
         this.§^#L§ = 0;
         this.§&!K§();
         this.§@!0§.setVisibility(true);
      }
      
      override public function deActivate() : void
      {
         §?!r§.§2R§("Channel_Theme").§0"#§();
         §@;§.movieClip.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         §@;§.movieClip.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         §@;§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         §@;§.movieClip.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §@;§.movieClip.removeEventListener(Event.MOUSE_LEAVE,this.§[u§);
         this.§@!0§.visible = false;
         super.deActivate();
      }
      
      protected function §1-§(param1:String, param2:String) : void
      {
         §@;§.setText(param1,"TextField_Version_Number");
         §@;§.setText("","TextField_Version_Number_Server");
      }
      
      protected function playThemeMusic() : void
      {
         if(§?!r§.§2R§("Channel_Theme").§<"M§())
         {
            §?!r§.§2R§("Channel_Theme").§0"#§();
         }
         if(§?!r§.§2R§("Channel_Theme") == null || !§?!r§.§2R§("Channel_Theme").§<"M§())
         {
            §?!r§.§"#_§(§<k§.§5"<§,"Channel_Theme",int.MAX_VALUE);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §?!r§.§"#_§("misc_menubuttonback_1");
               § g§(§"C§.§^!7§);
               break;
            case "APP_ENGINE_BUTTON":
               if(§4#;§.singleton.§>!Z§())
               {
                  §4#;§.singleton.§5"q§();
               }
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
      
      protected function §&!K§() : void
      {
         var _loc1_:String = Log.§,#1§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §@;§.setText(_loc1_,"TextField_Version_Number");
         §@;§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §># §(param1:MouseEvent) : Boolean
      {
         if(§@;§.stage.mouseX < §@;§.stage.width - §%g§)
         {
            return true;
         }
         return false;
      }
      
      private function §[#8§(param1:MouseEvent) : void
      {
         if(this.§&!8§)
         {
            if(!this.§># §(param1))
            {
               this.§&!8§ = false;
               return;
            }
            if(this.§@"t§ - §@;§.stage.mouseY > 0)
            {
               this.§<u§ = this.§@"t§ - §@;§.stage.mouseY;
               this.§@"t§ = §@;§.stage.mouseY;
            }
            else if(this.§@"t§ - §@;§.stage.mouseY < 0)
            {
               this.§<u§ = this.§@"t§ - §@;§.stage.mouseY;
               this.§@"t§ = §@;§.stage.mouseY;
            }
         }
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         if(this.§># §(param1))
         {
            this.§&!8§ = true;
            this.§@"t§ = §@;§.stage.mouseY;
         }
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         this.§&!8§ = false;
      }
      
      private function §[u§(param1:Event) : void
      {
         this.§&!8§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§># §(param1))
         {
            if(param1.delta < 0)
            {
               this.§^#L§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§^#L§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§@!0§.y = Math.floor(-this.§[s§);
         this.§4!x§(param1);
      }
      
      private function §4!x§(param1:Number) : void
      {
         this.§[s§ += this.§<u§;
         this.§[s§ += this.§^#L§;
         if(!this.§&!8§ && Math.abs(this.§^#L§) < param1 / 15)
         {
            this.§[s§ += param1 / 15;
         }
         var _loc2_:Number = this.§&Y§ + §81§;
         var _loc3_:Number = § #Y§;
         if(this.§[s§ < _loc3_)
         {
            this.§[s§ = _loc2_;
         }
         else if(this.§[s§ > _loc2_)
         {
            this.§[s§ = _loc3_;
         }
         if(!this.§&!8§)
         {
            this.§<u§ *= 0.9;
            this.§^#L§ *= 0.9;
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§"!§.setSize(param1,param2);
      }
   }
}
