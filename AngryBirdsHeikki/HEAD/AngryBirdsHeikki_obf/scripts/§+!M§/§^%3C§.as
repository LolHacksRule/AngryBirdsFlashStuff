package §+!M§
{
   import §?v§.§&!h§;
   import §]!&§.§5!5§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §^<§ extends §`q§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §0!b§:String = "Deactive";
      
      public static const §-!O§:String = "Disabled";
      
      public static const §8!%§:String = "Out";
      
      public static const §^`§:String = "Over";
      
      public static const §8!D§:String = "Up_Default";
      
      public static const §"K§:String = "Down";
      
      public static var §'!@§:Class;
      
      public static var §5B§:Boolean = true;
      
      public static const §=c§:String = "Tooltip";
      
      public static var §3J§:Boolean = true;
       
      
      public var § !T§:String;
      
      public var §3!^§:String;
      
      public var § !L§:String;
      
      public var §^!a§:MovieClip;
      
      public var §'P§:int = 6;
      
      private var §5!1§:Boolean = false;
      
      private var §?!@§:String = "auto";
      
      public function §^<§(param1:XML, param2:§5!5§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§ !T§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§3!^§ = §8!D§;
         this.§'h§();
         this.§`d§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§5!1§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§?!@§ = _loc5_;
         }
      }
      
      public static function §import§() : void
      {
         §'!@§ = §&!h§.§#Q§(§=c§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§8!%§);
         }
      }
      
      public function §`d§(param1:String) : void
      {
         this.§ !L§ = param1;
         if(this.§ !L§ && this.§ !L§.length == 0)
         {
            this.§ !L§ = null;
         }
         if(this.§ !L§)
         {
            if(§5B§)
            {
               §5B§ = false;
               §import§();
            }
            this.§^!a§ = new MovieClip();
            if(§'!@§)
            {
               this.§0!f§();
            }
            else
            {
               this.§3!O§();
            }
            this.§^!a§.mouseEnabled = false;
            this.§^!a§.mouseChildren = false;
            this.§^!a§.visible = false;
            getParentView().addChild(this.§^!a§);
         }
      }
      
      private function §3!O§() : void
      {
         this.§^!a§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§^!a§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§^!a§.addChildAt(_loc2_,0);
         this.§9E§(this.§ !L§);
      }
      
      private function §0!f§() : void
      {
         this.§^!a§ = new §'!@§();
         this.§[a§(this.§ !L§);
      }
      
      public function §[a§(param1:String) : void
      {
         this.§ !L§ = param1;
         if(§'!@§)
         {
            this.§+n§(param1);
         }
         else
         {
            this.§9E§(param1);
         }
      }
      
      private function §+n§(param1:String) : void
      {
         var _loc2_:TextField = this.§^!a§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§^!a§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§ !L§;
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
      
      private function §9E§(param1:String) : void
      {
         var _loc2_:TextField = this.§^!a§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§ !L§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§^!a§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§'P§,-this.§'P§,_loc2_.width + 2 * this.§'P§,_loc2_.height + 2 * this.§'P§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§'P§ / 2,-(this.§'P§ / 2),_loc2_.width + 1 * this.§'P§,_loc2_.height + 1 * this.§'P§);
      }
      
      private function §'d§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§^!a§ || this.§ !L§ == null || this.§ !L§.length == 0)
         {
            return;
         }
         if(param1 && §3J§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§^!a§.y = _loc2_.y - this.§^!a§.height - this.§'P§;
            this.§^!a§.x = _loc2_.x + mClip.width / 2 - this.§^!a§.width / 2;
            _loc3_ = this.§^!a§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§'P§)
            {
               this.§^!a§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§'P§));
            }
            if(_loc3_.left < this.§'P§)
            {
               this.§^!a§.x += 1 + (this.§'P§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§'P§)
            {
               this.§^!a§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§'P§));
            }
            if(_loc3_.top < this.§'P§)
            {
               this.§^!a§.y += mClip.height + this.§^!a§.height + this.§'P§ * 2;
            }
            this.§^!a§.visible = true;
         }
         else
         {
            this.§^!a§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§^!a§)
         {
            this.§ !L§ = null;
            while(this.§^!a§.numChildren > 0)
            {
               this.§^!a§.removeChildAt(0);
            }
            if(this.§^!a§.parent)
            {
               this.§^!a§.parent.removeChild(this.§^!a§);
            }
            this.§^!a§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§ !T§ = param1;
         this.§'h§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§3!^§ = param1;
         this.§'h§();
      }
      
      public function §'h§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§ !T§ + "_" + this.§3!^§,this.§ !T§ + "_" + §8!D§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§3!^§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §8!D§);
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
         if(this.§ !T§ == §-!O§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§5!1§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§1a§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§"K§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§^`§);
         }
         if(param1 == §,!P§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§8!%§);
         }
         if(param1 == §`W§)
         {
            Mouse.cursor = this.§?!@§;
            this.setComponentVisualState(§^`§);
         }
         this.§'d§(param1 == §`W§);
      }
      
      public function §1a§() : void
      {
         if(this.§ !T§ == §^<§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§^<§.§0!b§);
         }
         else if(this.§ !T§ == §^<§.§0!b§)
         {
            this.setComponentState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§'h§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§'d§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§'d§(false);
         }
      }
   }
}
