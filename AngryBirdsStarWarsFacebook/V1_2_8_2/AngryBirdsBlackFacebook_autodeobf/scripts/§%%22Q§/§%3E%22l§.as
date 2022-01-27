package §%"Q§
{
   import §&!j§.§5#+§;
   import §7"P§.§7"u§;
   import §8!h§.§-V§;
   import §9"`§.§-"H§;
   import §=Z§.§@!8§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import §`"]§.§0!a§;
   import com.angrybirds.§<!J§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   import §null §.§5#§;
   
   public class §>"l§ extends §`!6§
   {
      
      public static const §-!U§:String = "CreditsState";
      
      private static const §[!o§:int = -350;
      
      private static const §4_§:int = 400;
      
      private static const §0Q§:int = 180;
      
      private static const §^!4§:String = "Container_Part";
      
      private static const §7%§:int = 50;
       
      
      private var §;V§:Boolean;
      
      private var §#<§:Number;
      
      private var §--§:Number;
      
      private var §7#"§:Number;
      
      private var §&#3§:Number;
      
      private var §1g§:Number;
      
      private var §;#0§:§0!a§;
      
      private var §9"n§:§@!8§;
      
      private var §7"o§:§@!8§;
      
      private var §]"3§:§@!8§;
      
      private var §^%§:MovieClip;
      
      public function §>"l§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_Credits[0]);
         this.§9"n§ = §@!8§(§^!b§.getItemByName("Container_Credits"));
         this.§7"o§ = §@!8§(§^!b§.getItemByName("Container_Tilted"));
         this.§]"3§ = §@!8§(§^!b§.getItemByName("Container_Masked"));
         this.§^%§ = §^!b§.getItemByName("MovieClip_CreditsMask").mClip;
         this.§+#!§();
         var _loc1_:PerspectiveProjection = new PerspectiveProjection();
         _loc1_.fieldOfView = 60;
         _loc1_.projectionCenter = new Point(§^!b§.container.viewWidth / 2,§^!b§.container.viewHeight / 4);
         this.§7"o§.mClip.transform.perspectiveProjection = _loc1_;
         this.§7"o§.mClip.rotationX = -65;
         this.§7"o§.mClip.z = 20;
         this.§]"3§.mClip.mask = this.§^%§;
         this.§;#0§ = new §0!a§("StarBackground");
         §^!b§.movieClip.addChildAt(this.§;#0§,0);
      }
      
      private function §+#!§() : void
      {
         var _loc2_:DisplayObject = null;
         var _loc5_:int = 0;
         var _loc1_:MovieClip = this.§9"n§.mClip;
         var _loc3_:int = int.MAX_VALUE;
         var _loc4_:int = 0;
         var _loc6_:Dictionary = new Dictionary();
         var _loc7_:int = 0;
         while(_loc7_ < _loc1_.numChildren)
         {
            _loc2_ = _loc1_.getChildAt(_loc7_);
            if(_loc2_.name.indexOf(§^!4§) == 0)
            {
               _loc6_[_loc2_.name] = _loc2_;
               if((_loc5_ = parseInt(_loc2_.name.substr(§^!4§.length))) < _loc3_)
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
         _loc2_ = DisplayObject(_loc6_[§^!4§ + _loc3_]);
         _loc2_.y = 0;
         _loc2_.x = 360;
         var _loc9_:int = _loc7_ = _loc2_.y + _loc2_.height + §7%§;
         _loc7_ = _loc3_;
         while(_loc7_ <= _loc4_)
         {
            if(_loc7_ != _loc3_)
            {
               _loc2_ = DisplayObject(_loc6_[§^!4§ + _loc7_]);
               if(_loc2_)
               {
                  _loc2_.y = _loc9_;
                  _loc2_.x = 360;
                  _loc9_ = _loc2_.y + _loc2_.height + §7%§;
               }
            }
            _loc7_++;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§1g§ = this.§9"n§.height + §<!J§.§!"!§();
         this.§&#3§ = -§4"#§.screenHeight * §<!J§.§`1§;
         this.§9"n§.y = Math.floor(-this.§&#3§);
         this.playThemeMusic();
         §^!b§.movieClip.addEventListener(MouseEvent.MOUSE_MOVE,this.§,"[§);
         §^!b§.movieClip.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!l§);
         §^!b§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§""0§);
         §^!b§.movieClip.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §^!b§.movieClip.addEventListener(Event.MOUSE_LEAVE,this.§3"Q§);
         this.§#<§ = 0;
         this.§--§ = 0;
         this.§4"1§();
         this.§9"n§.setVisibility(true);
      }
      
      override public function deActivate() : void
      {
         §=Q§.§+1§("Channel_Theme").§!#,§();
         §^!b§.movieClip.removeEventListener(MouseEvent.MOUSE_MOVE,this.§,"[§);
         §^!b§.movieClip.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!l§);
         §^!b§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§""0§);
         §^!b§.movieClip.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §^!b§.movieClip.removeEventListener(Event.MOUSE_LEAVE,this.§3"Q§);
         this.§9"n§.visible = false;
         super.deActivate();
      }
      
      protected function §-B§(param1:String, param2:String) : void
      {
         §^!b§.setText(param1,"TextField_Version_Number");
         §^!b§.setText("","TextField_Version_Number_Server");
      }
      
      protected function playThemeMusic() : void
      {
         if(§=Q§.§+1§("Channel_Theme").§["z§())
         {
            §=Q§.§+1§("Channel_Theme").§!#,§();
         }
         if(§=Q§.§+1§("Channel_Theme") == null || !§=Q§.§+1§("Channel_Theme").§["z§())
         {
            §=Q§.§`!A§(§7"u§.§4!m§,"Channel_Theme",int.MAX_VALUE);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §=Q§.§`!A§("misc_menubuttonback_1");
               §`0§(§'!V§.§-!U§);
               break;
            case "APP_ENGINE_BUTTON":
               if(§4"#§.singleton.§!n§())
               {
                  §4"#§.singleton.§^L§();
               }
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
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
         if(§^!b§.stage.mouseX < §^!b§.stage.width - §0Q§)
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
            this.§;V§ = true;
            this.§7#"§ = §^!b§.stage.mouseY;
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
         this.§9"n§.y = Math.floor(-this.§&#3§);
         this.§<"+§(param1);
      }
      
      private function §<"+§(param1:Number) : void
      {
         this.§&#3§ += this.§#<§;
         this.§&#3§ += this.§--§;
         if(!this.§;V§ && Math.abs(this.§--§) < param1 / 15)
         {
            this.§&#3§ += param1 / 15;
         }
         var _loc2_:Number = this.§1g§ + §4_§;
         var _loc3_:Number = §[!o§;
         if(this.§&#3§ < _loc3_)
         {
            this.§&#3§ = _loc2_;
         }
         else if(this.§&#3§ > _loc2_)
         {
            this.§&#3§ = _loc3_;
         }
         if(!this.§;V§)
         {
            this.§#<§ *= 0.9;
            this.§--§ *= 0.9;
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§;#0§.setSize(param1,param2);
      }
   }
}
