package §;n§
{
   import §-B§.§?!j§;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §^q§ extends §&G§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §]">§:String = "Deactive";
      
      public static const §?!0§:String = "Disabled";
      
      public static const §,"1§:String = "Out";
      
      public static const §7!9§:String = "Over";
      
      public static const §`d§:String = "Up_Default";
      
      public static const §%!j§:String = "Down";
      
      public static var §@!S§:Class;
      
      public static var §"!X§:Boolean = true;
      
      public static const §7"1§:String = "Tooltip";
      
      public static var §2!d§:Boolean = true;
       
      
      public var §9@§:String;
      
      public var §#"?§:String;
      
      public var §[!<§:String;
      
      public var §]I§:MovieClip;
      
      public var §"!o§:int = 6;
      
      private var §-!^§:Boolean = false;
      
      private var § !8§:String = "auto";
      
      public function §^q§(param1:XML, param2:§?!j§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§9@§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§#"?§ = §`d§;
         this.§5!=§();
         this.§;!+§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§-!^§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§ !8§ = _loc5_;
         }
      }
      
      public static function §'!w§() : void
      {
         §@!S§ = §>"5§.§6s§(§7"1§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§,"1§);
         }
      }
      
      public function §;!+§(param1:String) : void
      {
         this.§[!<§ = param1;
         if(this.§[!<§ && this.§[!<§.length == 0)
         {
            this.§[!<§ = null;
         }
         if(this.§[!<§)
         {
            if(§"!X§)
            {
               §"!X§ = false;
               §'!w§();
            }
            this.§]I§ = new MovieClip();
            if(§@!S§)
            {
               this.§68§();
            }
            else
            {
               this.§?!A§();
            }
            this.§]I§.mouseEnabled = false;
            this.§]I§.mouseChildren = false;
            this.§]I§.visible = false;
            getParentView().addChild(this.§]I§);
         }
      }
      
      private function §?!A§() : void
      {
         this.§]I§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§]I§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§]I§.addChildAt(_loc2_,0);
         this.§&!W§(this.§[!<§);
      }
      
      private function §68§() : void
      {
         this.§]I§ = new §@!S§();
         this.§=0§(this.§[!<§);
      }
      
      public function §=0§(param1:String) : void
      {
         this.§[!<§ = param1;
         if(§@!S§)
         {
            this.§0";§(param1);
         }
         else
         {
            this.§&!W§(param1);
         }
      }
      
      private function §0";§(param1:String) : void
      {
         var _loc2_:TextField = this.§]I§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§]I§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§[!<§;
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
      
      private function §&!W§(param1:String) : void
      {
         var _loc2_:TextField = this.§]I§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§[!<§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§]I§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§"!o§,-this.§"!o§,_loc2_.width + 2 * this.§"!o§,_loc2_.height + 2 * this.§"!o§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§"!o§ / 2,-(this.§"!o§ / 2),_loc2_.width + 1 * this.§"!o§,_loc2_.height + 1 * this.§"!o§);
      }
      
      private function §?!6§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§]I§ || this.§[!<§ == null || this.§[!<§.length == 0)
         {
            return;
         }
         if(param1 && §2!d§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§]I§.y = _loc2_.y - this.§]I§.height - this.§"!o§;
            this.§]I§.x = _loc2_.x + mClip.width / 2 - this.§]I§.width / 2;
            _loc3_ = this.§]I§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§"!o§)
            {
               this.§]I§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§"!o§));
            }
            if(_loc3_.left < this.§"!o§)
            {
               this.§]I§.x += 1 + (this.§"!o§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§"!o§)
            {
               this.§]I§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§"!o§));
            }
            if(_loc3_.top < this.§"!o§)
            {
               this.§]I§.y += mClip.height + this.§]I§.height + this.§"!o§ * 2;
            }
            this.§]I§.visible = true;
         }
         else
         {
            this.§]I§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§]I§)
         {
            this.§[!<§ = null;
            while(this.§]I§.numChildren > 0)
            {
               this.§]I§.removeChildAt(0);
            }
            if(this.§]I§.parent)
            {
               this.§]I§.parent.removeChild(this.§]I§);
            }
            this.§]I§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§9@§ = param1;
         this.§5!=§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§#"?§ = param1;
         this.§5!=§();
      }
      
      public function §5!=§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§9@§ + "_" + this.§#"?§,this.§9@§ + "_" + §`d§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§#"?§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §`d§);
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
         if(this.§9@§ == §?!0§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§-!^§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§[r§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§%!j§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§7!9§);
         }
         if(param1 == §[!v§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§,"1§);
         }
         if(param1 == §^" §)
         {
            Mouse.cursor = this.§ !8§;
            this.setComponentVisualState(§7!9§);
         }
         this.§?!6§(param1 == §^" §);
      }
      
      public function §[r§() : void
      {
         if(this.§9@§ == §^q§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§^q§.§]">§);
         }
         else if(this.§9@§ == §^q§.§]">§)
         {
            this.setComponentState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§5!=§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§?!6§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§?!6§(false);
         }
      }
   }
}
