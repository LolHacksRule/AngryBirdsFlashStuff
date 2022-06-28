package §0!#§
{
   import §%4§.§4!=§;
   import com.rovio.assets.§]!>§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §0K§ extends §'!,§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §use§:String = "Deactive";
      
      public static const §]x§:String = "Disabled";
      
      public static const §4m§:String = "Out";
      
      public static const §?'§:String = "Over";
      
      public static const §=!4§:String = "Up_Default";
      
      public static const §-5§:String = "Down";
      
      public static var §-+§:Class;
      
      public static var §%!D§:Boolean = true;
      
      public static const §[!3§:String = "Tooltip";
      
      public static var §'m§:Boolean = true;
       
      
      public var §0!5§:String;
      
      public var §%s§:String;
      
      public var §+p§:String;
      
      public var §@x§:MovieClip;
      
      public var §37§:int = 6;
      
      private var §4P§:Boolean = false;
      
      private var §!!H§:String = "auto";
      
      public function §0K§(param1:XML, param2:§4!=§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§0!5§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§%s§ = §=!4§;
         this.§-!9§();
         this.§<N§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§4P§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§!!H§ = _loc5_;
         }
      }
      
      public static function §,!2§() : void
      {
         §-+§ = §]!>§.§8!@§(§[!3§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§4m§);
         }
      }
      
      public function §<N§(param1:String) : void
      {
         this.§+p§ = param1;
         if(this.§+p§ && this.§+p§.length == 0)
         {
            this.§+p§ = null;
         }
         if(this.§+p§)
         {
            if(§%!D§)
            {
               §%!D§ = false;
               §,!2§();
            }
            this.§@x§ = new MovieClip();
            if(§-+§)
            {
               this.§9!J§();
            }
            else
            {
               this.§"g§();
            }
            this.§@x§.mouseEnabled = false;
            this.§@x§.mouseChildren = false;
            this.§@x§.visible = false;
            getParentView().addChild(this.§@x§);
         }
      }
      
      private function §"g§() : void
      {
         this.§@x§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§@x§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§@x§.addChildAt(_loc2_,0);
         this.§`p§(this.§+p§);
      }
      
      private function §9!J§() : void
      {
         this.§@x§ = new §-+§();
         this.§<&§(this.§+p§);
      }
      
      public function §<&§(param1:String) : void
      {
         this.§+p§ = param1;
         if(§-+§)
         {
            this.§ 0§(param1);
         }
         else
         {
            this.§`p§(param1);
         }
      }
      
      private function § 0§(param1:String) : void
      {
         var _loc2_:TextField = this.§@x§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§@x§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§+p§;
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
      
      private function §`p§(param1:String) : void
      {
         var _loc2_:TextField = this.§@x§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§+p§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§@x§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§37§,-this.§37§,_loc2_.width + 2 * this.§37§,_loc2_.height + 2 * this.§37§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§37§ / 2,-(this.§37§ / 2),_loc2_.width + 1 * this.§37§,_loc2_.height + 1 * this.§37§);
      }
      
      private function §1g§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§@x§ || this.§+p§ == null || this.§+p§.length == 0)
         {
            return;
         }
         if(param1 && §'m§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§@x§.y = _loc2_.y - this.§@x§.height - this.§37§;
            this.§@x§.x = _loc2_.x + mClip.width / 2 - this.§@x§.width / 2;
            _loc3_ = this.§@x§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§37§)
            {
               this.§@x§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§37§));
            }
            if(_loc3_.left < this.§37§)
            {
               this.§@x§.x += 1 + (this.§37§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§37§)
            {
               this.§@x§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§37§));
            }
            if(_loc3_.top < this.§37§)
            {
               this.§@x§.y += mClip.height + this.§@x§.height + this.§37§ * 2;
            }
            this.§@x§.visible = true;
         }
         else
         {
            this.§@x§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§@x§)
         {
            this.§+p§ = null;
            while(this.§@x§.numChildren > 0)
            {
               this.§@x§.removeChildAt(0);
            }
            if(this.§@x§.parent)
            {
               this.§@x§.parent.removeChild(this.§@x§);
            }
            this.§@x§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§0!5§ = param1;
         this.§-!9§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§%s§ = param1;
         this.§-!9§();
      }
      
      public function §-!9§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§0!5§ + "_" + this.§%s§,this.§0!5§ + "_" + §=!4§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§%s§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §=!4§);
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
         if(this.§0!5§ == §]x§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§4P§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§+,§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§-5§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§?'§);
         }
         if(param1 == §@^§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§4m§);
         }
         if(param1 == §[F§)
         {
            Mouse.cursor = this.§!!H§;
            this.setComponentVisualState(§?'§);
         }
         this.§1g§(param1 == §[F§);
      }
      
      public function §+,§() : void
      {
         if(this.§0!5§ == §0K§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§0K§.§use§);
         }
         else if(this.§0!5§ == §0K§.§use§)
         {
            this.setComponentState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§-!9§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§1g§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§1g§(false);
         }
      }
   }
}
