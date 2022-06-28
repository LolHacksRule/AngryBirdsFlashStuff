package §>!<§
{
   import §"!2§.UIContainerRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class UIComponentInteractiveRovio extends UIComponentRovio
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §6!C§:String = "Deactive";
      
      public static const §,a§:String = "Disabled";
      
      public static const §1>§:String = "Out";
      
      public static const §@!a§:String = "Over";
      
      public static const §0!0§:String = "Up_Default";
      
      public static const §`#§:String = "Down";
      
      public static var §]!S§:Class;
      
      public static var §3[§:Boolean = true;
      
      public static const §%6§:String = "Tooltip";
      
      public static var §>H§:Boolean = true;
       
      
      public var §9!h§:String;
      
      public var §9![§:String;
      
      public var §=[§:String;
      
      public var §5Y§:MovieClip;
      
      public var §<h§:int = 6;
      
      private var §[!!§:Boolean = false;
      
      private var §8!V§:String = "auto";
      
      public function UIComponentInteractiveRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§9!h§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§9![§ = §0!0§;
         this.§'l§();
         this.§^!F§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§[!!§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§8!V§ = _loc5_;
         }
      }
      
      public static function §-x§() : void
      {
         §]!S§ = AssetCache.§,!k§(§%6§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§1>§);
         }
      }
      
      public function §^!F§(param1:String) : void
      {
         this.§=[§ = param1;
         if(this.§=[§ && this.§=[§.length == 0)
         {
            this.§=[§ = null;
         }
         if(this.§=[§)
         {
            if(§3[§)
            {
               §3[§ = false;
               §-x§();
            }
            this.§5Y§ = new MovieClip();
            if(§]!S§)
            {
               this.§<G§();
            }
            else
            {
               this.§9!§();
            }
            this.§5Y§.mouseEnabled = false;
            this.§5Y§.mouseChildren = false;
            this.§5Y§.visible = false;
            getParentView().addChild(this.§5Y§);
         }
      }
      
      private function §9!§() : void
      {
         this.§5Y§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§5Y§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§5Y§.addChildAt(_loc2_,0);
         this.§[!<§(this.§=[§);
      }
      
      private function §<G§() : void
      {
         this.§5Y§ = new §]!S§();
         this.§;i§(this.§=[§);
      }
      
      public function §;i§(param1:String) : void
      {
         this.§=[§ = param1;
         if(§]!S§)
         {
            this.§2![§(param1);
         }
         else
         {
            this.§[!<§(param1);
         }
      }
      
      private function §2![§(param1:String) : void
      {
         var _loc2_:TextField = this.§5Y§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§5Y§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§=[§;
         _loc2_.multiline = false;
         _loc2_.width = _loc2_.textWidth * 1.25;
         var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
         _loc3_.scaleX = _loc4_ / _loc3_.width;
         _loc3_.x = 0;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(0).x = 0;
            _loc5_++;
         }
         _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
      }
      
      private function §[!<§(param1:String) : void
      {
         var _loc2_:TextField = this.§5Y§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§=[§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape = this.§5Y§.getChildByName("Base") as Shape;
         _loc4_.graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§<h§,-this.§<h§,_loc2_.width + 2 * this.§<h§,_loc2_.height + 2 * this.§<h§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§<h§ / 2,-(this.§<h§ / 2),_loc2_.width + 1 * this.§<h§,_loc2_.height + 1 * this.§<h§);
      }
      
      private function §`!^§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§5Y§ || this.§=[§ == null || this.§=[§.length == 0)
         {
            return;
         }
         if(param1 && §>H§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§5Y§.y = _loc2_.y - this.§5Y§.height - this.§<h§;
            this.§5Y§.x = _loc2_.x + mClip.width / 2 - this.§5Y§.width / 2;
            _loc3_ = this.§5Y§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§<h§)
            {
               this.§5Y§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§<h§));
            }
            if(_loc3_.left < this.§<h§)
            {
               this.§5Y§.x += 1 + (this.§<h§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§<h§)
            {
               this.§5Y§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§<h§));
            }
            if(_loc3_.top < this.§<h§)
            {
               this.§5Y§.y += mClip.height + this.§5Y§.height + this.§<h§ * 2;
            }
            this.§5Y§.visible = true;
         }
         else
         {
            this.§5Y§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§5Y§)
         {
            this.§=[§ = null;
            while(this.§5Y§.numChildren > 0)
            {
               this.§5Y§.removeChildAt(0);
            }
            if(this.§5Y§.parent)
            {
               this.§5Y§.parent.removeChild(this.§5Y§);
            }
            this.§5Y§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§9!h§ = param1;
         this.§'l§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§9![§ = param1;
         this.§'l§();
      }
      
      public function §'l§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§9!h§ + "_" + this.§9![§,this.§9!h§ + "_" + §0!0§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§9![§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §0!0§);
         var _loc2_:int = 0;
         for(; _loc2_ < _loc1_.length; _loc2_++)
         {
            try
            {
               mClip.gotoAndStop(_loc1_[_loc2_] as String);
               if(mClip.numChildren > 0)
               {
                  return;
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         if(this.§9!h§ == §,a§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§[!!§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§!!X§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§`#§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§@!a§);
         }
         if(param1 == §2!O§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§1>§);
         }
         if(param1 == §"!H§)
         {
            Mouse.cursor = this.§8!V§;
            this.setComponentVisualState(§@!a§);
         }
         this.§`!^§(param1 == §"!H§);
      }
      
      public function §!!X§() : void
      {
         if(this.§9!h§ == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(UIComponentInteractiveRovio.§6!C§);
         }
         else if(this.§9!h§ == UIComponentInteractiveRovio.§6!C§)
         {
            this.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
      }
      
      override public function changeMovieClip(param1:MovieClip) : void
      {
         super.changeMovieClip(param1);
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(this.mParentContainer)
         {
            mParentContainer.mClip.removeChild(mClip);
         }
         mClip = null;
         mClip = param1;
         if(this.mParentContainer)
         {
            mParentContainer.mClip.addChildAt(mClip,_loc4_);
         }
         mClip.x = _loc2_;
         mClip.y = _loc3_;
         this.§'l§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§`!^§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§`!^§(false);
         }
      }
   }
}
