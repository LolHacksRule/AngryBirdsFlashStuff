package §;!0§
{
   import §,y§.§?!0§;
   import §-!V§.§@§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §"[§ extends §-!'§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §,E§:String = "Deactive";
      
      public static const §"f§:String = "Disabled";
      
      public static const §^&§:String = "Out";
      
      public static const §@!?§:String = "Over";
      
      public static const §]!U§:String = "Up_Default";
      
      public static const §]d§:String = "Down";
      
      public static var §&!f§:Class;
      
      public static var §]!7§:Boolean = true;
      
      public static const §5Q§:String = "Tooltip";
      
      public static var §67§:Boolean = true;
       
      
      public var § get§:String;
      
      public var §-d§:String;
      
      public var §]!_§:String;
      
      public var §`U§:MovieClip;
      
      public var §8J§:int = 6;
      
      private var §,!<§:Boolean = false;
      
      private var §4!D§:String = "auto";
      
      public function §"[§(param1:XML, param2:§@§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§ get§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§-d§ = §]!U§;
         this.§7`§();
         this.§,N§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§,!<§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§4!D§ = _loc5_;
         }
      }
      
      public static function §7!<§() : void
      {
         §&!f§ = §?!0§.§^e§(§5Q§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§^&§);
         }
      }
      
      public function §,N§(param1:String) : void
      {
         this.§]!_§ = param1;
         if(this.§]!_§ && this.§]!_§.length == 0)
         {
            this.§]!_§ = null;
         }
         if(this.§]!_§)
         {
            if(§]!7§)
            {
               §]!7§ = false;
               §7!<§();
            }
            this.§`U§ = new MovieClip();
            if(§&!f§)
            {
               this.§&!W§();
            }
            else
            {
               this.§0!a§();
            }
            this.§`U§.mouseEnabled = false;
            this.§`U§.mouseChildren = false;
            this.§`U§.visible = false;
            getParentView().addChild(this.§`U§);
         }
      }
      
      private function §0!a§() : void
      {
         this.§`U§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§`U§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§`U§.addChildAt(_loc2_,0);
         this.§&=§(this.§]!_§);
      }
      
      private function §&!W§() : void
      {
         this.§`U§ = new §&!f§();
         this.§5!3§(this.§]!_§);
      }
      
      public function §5!3§(param1:String) : void
      {
         this.§]!_§ = param1;
         if(§&!f§)
         {
            this.§?g§(param1);
         }
         else
         {
            this.§&=§(param1);
         }
      }
      
      private function §?g§(param1:String) : void
      {
         var _loc2_:TextField = this.§`U§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§`U§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§]!_§;
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
      
      private function §&=§(param1:String) : void
      {
         var _loc2_:TextField = this.§`U§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§]!_§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§`U§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§8J§,-this.§8J§,_loc2_.width + 2 * this.§8J§,_loc2_.height + 2 * this.§8J§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§8J§ / 2,-(this.§8J§ / 2),_loc2_.width + 1 * this.§8J§,_loc2_.height + 1 * this.§8J§);
      }
      
      private function §;z§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§`U§ || this.§]!_§ == null || this.§]!_§.length == 0)
         {
            return;
         }
         if(param1 && §67§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§`U§.y = _loc2_.y - this.§`U§.height - this.§8J§;
            this.§`U§.x = _loc2_.x + mClip.width / 2 - this.§`U§.width / 2;
            _loc3_ = this.§`U§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§8J§)
            {
               this.§`U§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§8J§));
            }
            if(_loc3_.left < this.§8J§)
            {
               this.§`U§.x += 1 + (this.§8J§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§8J§)
            {
               this.§`U§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§8J§));
            }
            if(_loc3_.top < this.§8J§)
            {
               this.§`U§.y += mClip.height + this.§`U§.height + this.§8J§ * 2;
            }
            this.§`U§.visible = true;
         }
         else
         {
            this.§`U§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§`U§)
         {
            this.§]!_§ = null;
            while(this.§`U§.numChildren > 0)
            {
               this.§`U§.removeChildAt(0);
            }
            if(this.§`U§.parent)
            {
               this.§`U§.parent.removeChild(this.§`U§);
            }
            this.§`U§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§ get§ = param1;
         this.§7`§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§-d§ = param1;
         this.§7`§();
      }
      
      public function §7`§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§ get§ + "_" + this.§-d§,this.§ get§ + "_" + §]!U§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§-d§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §]!U§);
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
         if(this.§ get§ == §"f§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§,!<§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§8v§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§]d§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§@!?§);
         }
         if(param1 == §'v§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§^&§);
         }
         if(param1 == §#!`§)
         {
            Mouse.cursor = this.§4!D§;
            this.setComponentVisualState(§@!?§);
         }
         this.§;z§(param1 == §#!`§);
      }
      
      public function §8v§() : void
      {
         if(this.§ get§ == §"[§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§"[§.§,E§);
         }
         else if(this.§ get§ == §"[§.§,E§)
         {
            this.setComponentState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§7`§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§;z§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§;z§(false);
         }
      }
   }
}
