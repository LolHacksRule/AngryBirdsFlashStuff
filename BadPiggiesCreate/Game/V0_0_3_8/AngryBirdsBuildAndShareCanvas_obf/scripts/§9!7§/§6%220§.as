package §9!7§
{
   import §!D§.§ use§;
   import com.rovio.assets.§%"4§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §6"0§ extends §0!`§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const § B§:String = "Deactive";
      
      public static const §<>§:String = "Disabled";
      
      public static const §1!M§:String = "Out";
      
      public static const §?!G§:String = "Over";
      
      public static const §8!b§:String = "Up_Default";
      
      public static const §[R§:String = "Down";
      
      public static var §5!"§:Class;
      
      public static var §0!G§:Boolean = true;
      
      public static const §?!A§:String = "Tooltip";
      
      public static var §3!;§:Boolean = true;
       
      
      public var § null§:String;
      
      public var §3@§:String;
      
      public var §<!,§:String;
      
      public var §1c§:MovieClip;
      
      public var §@U§:int = 6;
      
      private var § !&§:Boolean = false;
      
      private var §"!T§:String = "auto";
      
      public function §6"0§(param1:XML, param2:§ use§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§ null§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§3@§ = §8!b§;
         this.§<!s§();
         this.§!!-§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§ !&§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§"!T§ = _loc5_;
         }
      }
      
      public static function §@!u§() : void
      {
         §5!"§ = §%"4§.§>!v§(§?!A§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§1!M§);
         }
      }
      
      public function §!!-§(param1:String) : void
      {
         this.§<!,§ = param1;
         if(this.§<!,§ && this.§<!,§.length == 0)
         {
            this.§<!,§ = null;
         }
         if(this.§<!,§)
         {
            if(§0!G§)
            {
               §0!G§ = false;
               §@!u§();
            }
            this.§1c§ = new MovieClip();
            if(§5!"§)
            {
               this.§9z§();
            }
            else
            {
               this.§"!1§();
            }
            this.§1c§.mouseEnabled = false;
            this.§1c§.mouseChildren = false;
            this.§1c§.visible = false;
            getParentView().addChild(this.§1c§);
         }
      }
      
      private function §"!1§() : void
      {
         this.§1c§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§1c§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§1c§.addChildAt(_loc2_,0);
         this.§#!l§(this.§<!,§);
      }
      
      private function §9z§() : void
      {
         this.§1c§ = new §5!"§();
         this.§&!A§(this.§<!,§);
      }
      
      public function §&!A§(param1:String) : void
      {
         this.§<!,§ = param1;
         if(§5!"§)
         {
            this.§6[§(param1);
         }
         else
         {
            this.§#!l§(param1);
         }
      }
      
      private function §6[§(param1:String) : void
      {
         var _loc2_:TextField = this.§1c§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§1c§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§<!,§;
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
      
      private function §#!l§(param1:String) : void
      {
         var _loc2_:TextField = this.§1c§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§<!,§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§1c§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§@U§,-this.§@U§,_loc2_.width + 2 * this.§@U§,_loc2_.height + 2 * this.§@U§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§@U§ / 2,-(this.§@U§ / 2),_loc2_.width + 1 * this.§@U§,_loc2_.height + 1 * this.§@U§);
      }
      
      private function §]_§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§1c§ || this.§<!,§ == null || this.§<!,§.length == 0)
         {
            return;
         }
         if(param1 && §3!;§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§1c§.y = _loc2_.y - this.§1c§.height - this.§@U§;
            this.§1c§.x = _loc2_.x + mClip.width / 2 - this.§1c§.width / 2;
            _loc3_ = this.§1c§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§@U§)
            {
               this.§1c§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§@U§));
            }
            if(_loc3_.left < this.§@U§)
            {
               this.§1c§.x += 1 + (this.§@U§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§@U§)
            {
               this.§1c§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§@U§));
            }
            if(_loc3_.top < this.§@U§)
            {
               this.§1c§.y += mClip.height + this.§1c§.height + this.§@U§ * 2;
            }
            this.§1c§.visible = true;
         }
         else
         {
            this.§1c§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§1c§)
         {
            this.§<!,§ = null;
            while(this.§1c§.numChildren > 0)
            {
               this.§1c§.removeChildAt(0);
            }
            if(this.§1c§.parent)
            {
               this.§1c§.parent.removeChild(this.§1c§);
            }
            this.§1c§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§ null§ = param1;
         this.§<!s§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§3@§ = param1;
         this.§<!s§();
      }
      
      public function §<!s§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§ null§ + "_" + this.§3@§,this.§ null§ + "_" + §8!b§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§3@§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §8!b§);
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
         if(this.§ null§ == §<>§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§ !&§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§2!C§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§[R§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§?!G§);
         }
         if(param1 == §6U§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§1!M§);
         }
         if(param1 == §@q§)
         {
            Mouse.cursor = this.§"!T§;
            this.setComponentVisualState(§?!G§);
         }
         this.§]_§(param1 == §@q§);
      }
      
      public function §2!C§() : void
      {
         if(this.§ null§ == §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§6"0§.§ B§);
         }
         else if(this.§ null§ == §6"0§.§ B§)
         {
            this.setComponentState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§<!s§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§]_§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§]_§(false);
         }
      }
   }
}
