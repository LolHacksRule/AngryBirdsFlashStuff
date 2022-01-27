package §!X§
{
   import §""d§.§,m§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §0" §.§5N§;
   import §0"I§.§5!s§;
   import §4##§.§7!B§;
   import §7""§.§0I§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §"S§ extends §@!?§
   {
      
      public static const §'#2§:String = "CreditsState";
      
      private static const §[?§:int = -350;
      
      private static const §<!g§:int = 400;
      
      private static const §>-§:int = 180;
      
      private static const §8"§:String = "Container_Part";
      
      private static const §>=§:int = 50;
       
      
      private var §%H§:Boolean;
      
      private var §]!§:Number;
      
      private var §[!o§:Number;
      
      private var §>Q§:Number;
      
      private var §1!U§:Number;
      
      private var §4"N§:Number;
      
      private var §@,§:§0I§;
      
      private var §+!2§:§,m§;
      
      private var §2!z§:§,m§;
      
      private var §7!P§:§,m§;
      
      private var §=E§:MovieClip;
      
      public function §"S§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_Credits[0]);
         this.§+!2§ = §,m§(§>I§.getItemByName("Container_Credits"));
         this.§2!z§ = §,m§(§>I§.getItemByName("Container_Tilted"));
         this.§7!P§ = §,m§(§>I§.getItemByName("Container_Masked"));
         this.§=E§ = §>I§.getItemByName("MovieClip_CreditsMask").mClip;
         this.§3e§();
         var _loc1_:PerspectiveProjection = new PerspectiveProjection();
         _loc1_.fieldOfView = 60;
         _loc1_.projectionCenter = new Point(§>I§.container.viewWidth / 2,§>I§.container.viewHeight / 4);
         this.§2!z§.mClip.transform.perspectiveProjection = _loc1_;
         this.§2!z§.mClip.rotationX = -65;
         this.§2!z§.mClip.z = 20;
         this.§7!P§.mClip.mask = this.§=E§;
         this.§@,§ = new §0I§("StarBackground");
         §>I§.movieClip.addChildAt(this.§@,§,0);
      }
      
      private function §3e§() : void
      {
         var _loc2_:DisplayObject = null;
         var _loc5_:int = 0;
         var _loc1_:MovieClip = this.§+!2§.mClip;
         var _loc3_:int = int.MAX_VALUE;
         var _loc4_:int = 0;
         var _loc6_:Dictionary = new Dictionary();
         var _loc7_:int = 0;
         while(_loc7_ < _loc1_.numChildren)
         {
            _loc2_ = _loc1_.getChildAt(_loc7_);
            if(_loc2_.name.indexOf(§8"§) == 0)
            {
               _loc6_[_loc2_.name] = _loc2_;
               if((_loc5_ = parseInt(_loc2_.name.substr(§8"§.length))) < _loc3_)
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
         _loc2_ = DisplayObject(_loc6_[§8"§ + _loc3_]);
         _loc2_.y = 0;
         _loc2_.x = 360;
         var _loc9_:int = _loc7_ = _loc2_.y + _loc2_.height + §>=§;
         _loc7_ = _loc3_;
         while(_loc7_ <= _loc4_)
         {
            if(_loc7_ != _loc3_)
            {
               _loc2_ = DisplayObject(_loc6_[§8"§ + _loc7_]);
               if(_loc2_)
               {
                  _loc2_.y = _loc9_;
                  _loc2_.x = 360;
                  _loc9_ = _loc2_.y + _loc2_.height + §>=§;
               }
            }
            _loc7_++;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§4"N§ = this.§+!2§.height + §;!e§.§?!Q§();
         this.§1!U§ = -§;"@§.screenHeight * §;!e§.§1"6§;
         this.§+!2§.y = Math.floor(-this.§1!U§);
         this.playThemeMusic();
         §>I§.movieClip.addEventListener(MouseEvent.MOUSE_MOVE,this.§8;§);
         §>I§.movieClip.addEventListener(MouseEvent.MOUSE_DOWN,this.§^!b§);
         §>I§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§+v§);
         §>I§.movieClip.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §>I§.movieClip.addEventListener(Event.MOUSE_LEAVE,this.§7!-§);
         this.§]!§ = 0;
         this.§[!o§ = 0;
         this.§1F§();
         this.§+!2§.setVisibility(true);
      }
      
      override public function deActivate() : void
      {
         §@§.§]#%§("Channel_Theme").§+A§();
         §>I§.movieClip.removeEventListener(MouseEvent.MOUSE_MOVE,this.§8;§);
         §>I§.movieClip.removeEventListener(MouseEvent.MOUSE_DOWN,this.§^!b§);
         §>I§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§+v§);
         §>I§.movieClip.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §>I§.movieClip.removeEventListener(Event.MOUSE_LEAVE,this.§7!-§);
         this.§+!2§.visible = false;
         super.deActivate();
      }
      
      protected function §?"k§(param1:String, param2:String) : void
      {
         §>I§.setText(param1,"TextField_Version_Number");
         §>I§.setText("","TextField_Version_Number_Server");
      }
      
      protected function playThemeMusic() : void
      {
         if(§@§.§]#%§("Channel_Theme").§^"h§())
         {
            §@§.§]#%§("Channel_Theme").§+A§();
         }
         if(§@§.§]#%§("Channel_Theme") == null || !§@§.§]#%§("Channel_Theme").§^"h§())
         {
            §@§.§=Y§(§5N§.§,"Y§,"Channel_Theme",int.MAX_VALUE);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §@§.§=Y§("misc_menubuttonback_1");
               §0"B§(§5+§.§'#2§);
               break;
            case "APP_ENGINE_BUTTON":
               if(§;"@§.singleton.§3!g§())
               {
                  §;"@§.singleton.§35§();
               }
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
      
      protected function §1F§() : void
      {
         var _loc1_:String = §5!s§.§4w§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §>I§.setText(_loc1_,"TextField_Version_Number");
         §>I§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §@n§(param1:MouseEvent) : Boolean
      {
         if(§>I§.stage.mouseX < §>I§.stage.width - §>-§)
         {
            return true;
         }
         return false;
      }
      
      private function §8;§(param1:MouseEvent) : void
      {
         if(this.§%H§)
         {
            if(!this.§@n§(param1))
            {
               this.§%H§ = false;
               return;
            }
            if(this.§>Q§ - §>I§.stage.mouseY > 0)
            {
               this.§]!§ = this.§>Q§ - §>I§.stage.mouseY;
               this.§>Q§ = §>I§.stage.mouseY;
            }
            else if(this.§>Q§ - §>I§.stage.mouseY < 0)
            {
               this.§]!§ = this.§>Q§ - §>I§.stage.mouseY;
               this.§>Q§ = §>I§.stage.mouseY;
            }
         }
      }
      
      private function §^!b§(param1:MouseEvent) : void
      {
         if(this.§@n§(param1))
         {
            this.§%H§ = true;
            this.§>Q§ = §>I§.stage.mouseY;
         }
      }
      
      private function §+v§(param1:MouseEvent) : void
      {
         this.§%H§ = false;
      }
      
      private function §7!-§(param1:Event) : void
      {
         this.§%H§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§@n§(param1))
         {
            if(param1.delta < 0)
            {
               this.§[!o§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§[!o§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§+!2§.y = Math.floor(-this.§1!U§);
         this.§+[§(param1);
      }
      
      private function §+[§(param1:Number) : void
      {
         this.§1!U§ += this.§]!§;
         this.§1!U§ += this.§[!o§;
         if(!this.§%H§ && Math.abs(this.§[!o§) < param1 / 15)
         {
            this.§1!U§ += param1 / 15;
         }
         var _loc2_:Number = this.§4"N§ + §<!g§;
         var _loc3_:Number = §[?§;
         if(this.§1!U§ < _loc3_)
         {
            this.§1!U§ = _loc2_;
         }
         else if(this.§1!U§ > _loc2_)
         {
            this.§1!U§ = _loc3_;
         }
         if(!this.§%H§)
         {
            this.§]!§ *= 0.9;
            this.§[!o§ *= 0.9;
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§@,§.setSize(param1,param2);
      }
   }
}
