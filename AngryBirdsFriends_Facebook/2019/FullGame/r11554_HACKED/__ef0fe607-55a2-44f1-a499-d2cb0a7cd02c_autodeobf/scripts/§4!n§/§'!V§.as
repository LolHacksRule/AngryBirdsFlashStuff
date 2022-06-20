package §4!n§
{
   import §5!$§.§<c§;
   import §5"G§.§8"`§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import com.rovio.assets.§2"O§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §'!V§ extends §#$>§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §,[§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §+"[§:String = "Out";
      
      public static const §62§:String = "Over";
      
      public static const §'"=§:String = "Up_Default";
      
      public static const §>#o§:String = "Down";
      
      public static var §<#8§:Class;
      
      public static var §3^§:Boolean = true;
      
      public static const §-!+§:String = "Tooltip";
      
      public static var §8k§:Boolean = true;
       
      
      public var §9!#§:String;
      
      public var §#!l§:String;
      
      public var §+"'§:String;
      
      public var §&$ §:MovieClip;
      
      public var §1$D§:int = 6;
      
      private var §9!p§:Boolean = false;
      
      private var §9#W§:String = "auto";
      
      private var §!!W§:§]%§;
      
      public function §'!V§(param1:XML, param2:§<c§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§9!#§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§#!l§ = §'"=§;
         this.§%#+§();
         this.§6$4§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§9!p§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if([MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM].indexOf(_loc4_) > -1)
            {
               this.§9#W§ = _loc4_;
            }
         }
         §4M§(§[!P§,param1.@MouseOver);
         §4M§(§`[§,param1.@MouseOut);
      }
      
      public static function §>!8§() : void
      {
         §<#8§ = §2"O§.§`>§(§-!+§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§+"[§);
         }
      }
      
      public function §6$4§(param1:String) : void
      {
         this.§+"'§ = param1;
         if(this.§+"'§ && this.§+"'§.length == 0)
         {
            this.§+"'§ = null;
         }
         if(this.§+"'§)
         {
            if(§3^§)
            {
               §3^§ = false;
               §>!8§();
            }
            this.§&$ § = new MovieClip();
            if(§<#8§)
            {
               this.§^!R§();
            }
            else
            {
               this.§[$=§();
            }
            this.§&$ §.mouseEnabled = false;
            this.§&$ §.mouseChildren = false;
            this.§&$ §.visible = false;
            getParentView().addChild(this.§&$ §);
         }
      }
      
      private function §[$=§() : void
      {
         this.§&$ § = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§&$ §.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§&$ §.addChildAt(_loc2_,0);
         this.§,"X§(this.§+"'§);
      }
      
      private function §^!R§() : void
      {
         this.§&$ § = new §<#8§();
         this.§-#M§(this.§+"'§);
      }
      
      public function §-#M§(param1:String) : void
      {
         this.§+"'§ = param1;
         if(§<#8§)
         {
            this.§^#S§(param1);
         }
         else
         {
            this.§,"X§(param1);
         }
      }
      
      private function §^#S§(param1:String) : void
      {
         var _loc2_:TextField = this.§&$ §.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§&$ §.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§+"'§;
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
      
      private function §,"X§(param1:String) : void
      {
         var _loc2_:TextField = this.§&$ §.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§+"'§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§&$ §.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§1$D§,-this.§1$D§,_loc2_.width + 2 * this.§1$D§,_loc2_.height + 2 * this.§1$D§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§1$D§ / 2,-(this.§1$D§ / 2),_loc2_.width + 1 * this.§1$D§,_loc2_.height + 1 * this.§1$D§);
      }
      
      private function §`#i§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§&$ § || this.§+"'§ == null || this.§+"'§.length == 0)
         {
            return;
         }
         if(param1 && §8k§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§&$ §.y = _loc2_.y - this.§&$ §.height - this.§1$D§;
            this.§&$ §.x = _loc2_.x + mClip.width / 2 - this.§&$ §.width / 2;
            _loc3_ = this.§&$ §.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§1$D§)
            {
               this.§&$ §.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§1$D§));
            }
            if(_loc3_.left < this.§1$D§)
            {
               this.§&$ §.x += 1 + (this.§1$D§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§1$D§)
            {
               this.§&$ §.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§1$D§));
            }
            if(_loc3_.top < this.§1$D§)
            {
               this.§&$ §.y += mClip.height + this.§&$ §.height + this.§1$D§ * 2;
            }
            this.§&$ §.visible = true;
         }
         else
         {
            this.§&$ §.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§9!#§ = COMPONENT_STATE_DISABLED;
         if(this.§&$ §)
         {
            this.§+"'§ = null;
            while(this.§&$ §.numChildren > 0)
            {
               this.§&$ §.removeChildAt(0);
            }
            if(this.§&$ §.parent)
            {
               this.§&$ §.parent.removeChild(this.§&$ §);
            }
            this.§&$ § = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§9!#§ = param1;
         this.§%#+§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§8,§ && §]!-§)
         {
            if(param1 == §62§)
            {
               if(this.§!!W§ != null)
               {
                  this.§!!W§.stop();
               }
               this.§!!W§ = §'#n§.§?q§.§9!N§(mClip,{
                  "scaleX":§]!-§.scaleX + 0.1,
                  "scaleY":§]!-§.scaleY + 0.1
               },null,0.1);
               this.§!!W§.play();
            }
            else if(param1 == §+"[§)
            {
               if(this.§!!W§ != null)
               {
                  this.§!!W§.stop();
               }
               this.§!!W§ = §'#n§.§?q§.§9!N§(mClip,{
                  "scaleX":§]!-§.scaleX,
                  "scaleY":§]!-§.scaleY
               },null,0.1);
               this.§!!W§.play();
            }
         }
         this.§#!l§ = param1;
         this.§%#+§();
      }
      
      public function §%#+§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§9!#§ + "_" + this.§#!l§,this.§9!#§ + "_" + §'"=§];
         if(this.§9!#§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§#!l§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §'"=§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§;g§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §;g§(param1:String) : Boolean
      {
         var _loc2_:FrameLabel = null;
         for each(_loc2_ in mClip.currentLabels)
         {
            if(_loc2_.name == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8"`§
      {
         if(this.§9!#§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§9!p§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§##7§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§>#o§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§62§);
         }
         if(param1 == §`[§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§+"[§);
         }
         if(param1 == §[!P§)
         {
            Mouse.cursor = this.§9#W§;
            this.setComponentVisualState(§62§);
         }
         this.§`#i§(param1 == §[!P§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §##7§() : void
      {
         if(this.§9!#§ == §'!V§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§'!V§.§,[§);
         }
         else if(this.§9!#§ == §'!V§.§,[§)
         {
            this.setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
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
         this.§%#+§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§`#i§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§`#i§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§!!W§)
         {
            this.§!!W§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§!!W§)
         {
            this.§!!W§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
