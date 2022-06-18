package §]!=§
{
   import §"!B§.§58§;
   import com.rovio.assets.§%!?§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §&P§ extends §]!"§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §"0§:String = "Deactive";
      
      public static const §0!1§:String = "Disabled";
      
      public static const §;y§:String = "Out";
      
      public static const §+H§:String = "Over";
      
      public static const §,!=§:String = "Up_Default";
      
      public static const §@p§:String = "Down";
      
      public static var §3E§:Class;
      
      public static var §,!"§:Boolean = true;
      
      public static const §?I§:String = "Tooltip";
      
      public static var §&H§:Boolean = true;
       
      
      public var §;K§:String;
      
      public var §@!0§:String;
      
      public var §4_§:String;
      
      public var §43§:MovieClip;
      
      public var §>w§:int = 6;
      
      private var §>?§:Boolean = false;
      
      private var §^l§:String = "auto";
      
      public function §&P§(param1:XML, param2:§58§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§;K§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§@!0§ = §,!=§;
         this.§ y§();
         this.§51§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§>?§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§^l§ = _loc5_;
         }
      }
      
      public static function §'_§() : void
      {
         §3E§ = §%!?§.§4"§(§?I§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§;y§);
         }
      }
      
      public function §51§(param1:String) : void
      {
         this.§4_§ = param1;
         if(this.§4_§ && this.§4_§.length == 0)
         {
            this.§4_§ = null;
         }
         if(this.§4_§)
         {
            if(§,!"§)
            {
               §,!"§ = false;
               §'_§();
            }
            this.§43§ = new MovieClip();
            if(§3E§)
            {
               this.§#M§();
            }
            else
            {
               this.§>m§();
            }
            this.§43§.mouseEnabled = false;
            this.§43§.mouseChildren = false;
            this.§43§.visible = false;
            getParentView().addChild(this.§43§);
         }
      }
      
      private function §>m§() : void
      {
         this.§43§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§43§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§43§.addChildAt(_loc2_,0);
         this.§?!F§(this.§4_§);
      }
      
      private function §#M§() : void
      {
         this.§43§ = new §3E§();
         this.§=u§(this.§4_§);
      }
      
      public function §=u§(param1:String) : void
      {
         this.§4_§ = param1;
         if(§3E§)
         {
            this.§`V§(param1);
         }
         else
         {
            this.§?!F§(param1);
         }
      }
      
      private function §`V§(param1:String) : void
      {
         var _loc2_:TextField = this.§43§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§43§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§4_§;
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
      
      private function §?!F§(param1:String) : void
      {
         var _loc2_:TextField = this.§43§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§4_§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§43§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§>w§,-this.§>w§,_loc2_.width + 2 * this.§>w§,_loc2_.height + 2 * this.§>w§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§>w§ / 2,-(this.§>w§ / 2),_loc2_.width + 1 * this.§>w§,_loc2_.height + 1 * this.§>w§);
      }
      
      private function §];§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§43§ || this.§4_§ == null || this.§4_§.length == 0)
         {
            return;
         }
         if(param1 && §&H§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§43§.y = _loc2_.y - this.§43§.height - this.§>w§;
            this.§43§.x = _loc2_.x + mClip.width / 2 - this.§43§.width / 2;
            _loc3_ = this.§43§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§>w§)
            {
               this.§43§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§>w§));
            }
            if(_loc3_.left < this.§>w§)
            {
               this.§43§.x += 1 + (this.§>w§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§>w§)
            {
               this.§43§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§>w§));
            }
            if(_loc3_.top < this.§>w§)
            {
               this.§43§.y += mClip.height + this.§43§.height + this.§>w§ * 2;
            }
            this.§43§.visible = true;
         }
         else
         {
            this.§43§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§43§)
         {
            this.§4_§ = null;
            while(this.§43§.numChildren > 0)
            {
               this.§43§.removeChildAt(0);
            }
            if(this.§43§.parent)
            {
               this.§43§.parent.removeChild(this.§43§);
            }
            this.§43§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§;K§ = param1;
         this.§ y§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§@!0§ = param1;
         this.§ y§();
      }
      
      public function § y§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§;K§ + "_" + this.§@!0§,this.§;K§ + "_" + §,!=§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§@!0§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §,!=§);
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
         if(this.§;K§ == §0!1§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§>?§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§`'§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§@p§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§+H§);
         }
         if(param1 == §=!N§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§;y§);
         }
         if(param1 == §"?§)
         {
            Mouse.cursor = this.§^l§;
            this.setComponentVisualState(§+H§);
         }
         this.§];§(param1 == §"?§);
      }
      
      public function §`'§() : void
      {
         if(this.§;K§ == §&P§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§&P§.§"0§);
         }
         else if(this.§;K§ == §&P§.§"0§)
         {
            this.setComponentState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§ y§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§];§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§];§(false);
         }
      }
   }
}
