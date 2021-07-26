package §^"3§
{
   import § "L§.§23§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §`§.§%#m§;
   import com.rovio.assets.§[a§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class § #&§ extends §^"C§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const § ! §:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §+"x§:String = "Out";
      
      public static const §"!g§:String = "Over";
      
      public static const §2$!§:String = "Up_Default";
      
      public static const §>3§:String = "Down";
      
      public static var §@"N§:Class;
      
      public static var §'$?§:Boolean = true;
      
      public static const §!#0§:String = "Tooltip";
      
      public static var §4?§:Boolean = true;
       
      
      public var §;!i§:String;
      
      public var §;!p§:String;
      
      public var §&#,§:String;
      
      public var §"!2§:MovieClip;
      
      public var §=!K§:int = 6;
      
      private var §0$A§:Boolean = false;
      
      private var §<G§:String = "auto";
      
      private var §!N§:§@$-§;
      
      public function § #&§(param1:XML, param2:§23§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§;!i§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§;!p§ = §2$!§;
         this.§8"c§();
         this.§5"X§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§0$A§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§<G§ = _loc4_;
            }
         }
         §+"6§(§4$5§,param1.@MouseOver);
         §+"6§(§@"`§,param1.@MouseOut);
      }
      
      public static function §""d§() : void
      {
         §@"N§ = §[a§.§8#k§(§!#0§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§+"x§);
         }
      }
      
      public function §5"X§(param1:String) : void
      {
         this.§&#,§ = param1;
         if(this.§&#,§ && this.§&#,§.length == 0)
         {
            this.§&#,§ = null;
         }
         if(this.§&#,§)
         {
            if(§'$?§)
            {
               §'$?§ = false;
               §""d§();
            }
            this.§"!2§ = new MovieClip();
            if(§@"N§)
            {
               this.§<#E§();
            }
            else
            {
               this.§10§();
            }
            this.§"!2§.mouseEnabled = false;
            this.§"!2§.mouseChildren = false;
            this.§"!2§.visible = false;
            getParentView().addChild(this.§"!2§);
         }
      }
      
      private function §10§() : void
      {
         this.§"!2§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§"!2§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§"!2§.addChildAt(_loc2_,0);
         this.§5#P§(this.§&#,§);
      }
      
      private function §<#E§() : void
      {
         this.§"!2§ = new §@"N§();
         this.§"$6§(this.§&#,§);
      }
      
      public function §"$6§(param1:String) : void
      {
         this.§&#,§ = param1;
         if(§@"N§)
         {
            this.§2#y§(param1);
         }
         else
         {
            this.§5#P§(param1);
         }
      }
      
      private function §2#y§(param1:String) : void
      {
         var _loc2_:TextField = this.§"!2§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§"!2§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§&#,§;
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
      
      private function §5#P§(param1:String) : void
      {
         var _loc2_:TextField = this.§"!2§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§&#,§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§"!2§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§=!K§,-this.§=!K§,_loc2_.width + 2 * this.§=!K§,_loc2_.height + 2 * this.§=!K§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§=!K§ / 2,-(this.§=!K§ / 2),_loc2_.width + 1 * this.§=!K§,_loc2_.height + 1 * this.§=!K§);
      }
      
      private function §7!j§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§"!2§ || this.§&#,§ == null || this.§&#,§.length == 0)
         {
            return;
         }
         if(param1 && §4?§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§"!2§.y = _loc2_.y - this.§"!2§.height - this.§=!K§;
            this.§"!2§.x = _loc2_.x + mClip.width / 2 - this.§"!2§.width / 2;
            _loc3_ = this.§"!2§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§=!K§)
            {
               this.§"!2§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§=!K§));
            }
            if(_loc3_.left < this.§=!K§)
            {
               this.§"!2§.x += 1 + (this.§=!K§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§=!K§)
            {
               this.§"!2§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§=!K§));
            }
            if(_loc3_.top < this.§=!K§)
            {
               this.§"!2§.y += mClip.height + this.§"!2§.height + this.§=!K§ * 2;
            }
            this.§"!2§.visible = true;
         }
         else
         {
            this.§"!2§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§;!i§ = COMPONENT_STATE_DISABLED;
         if(this.§"!2§)
         {
            this.§&#,§ = null;
            while(this.§"!2§.numChildren > 0)
            {
               this.§"!2§.removeChildAt(0);
            }
            if(this.§"!2§.parent)
            {
               this.§"!2§.parent.removeChild(this.§"!2§);
            }
            this.§"!2§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§;!i§ = param1;
         this.§8"c§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§;#k§ && §0!Z§)
         {
            if(param1 == §"!g§)
            {
               if(this.§!N§ != null)
               {
                  this.§!N§.stop();
               }
               this.§!N§ = §6"W§.§+!,§.§9!n§(mClip,{
                  "scaleX":§0!Z§.scaleX + 0.1,
                  "scaleY":§0!Z§.scaleY + 0.1
               },null,0.1);
               this.§!N§.play();
            }
            else if(param1 == §+"x§)
            {
               if(this.§!N§ != null)
               {
                  this.§!N§.stop();
               }
               this.§!N§ = §6"W§.§+!,§.§9!n§(mClip,{
                  "scaleX":§0!Z§.scaleX,
                  "scaleY":§0!Z§.scaleY
               },null,0.1);
               this.§!N§.play();
            }
         }
         this.§;!p§ = param1;
         this.§8"c§();
      }
      
      public function §8"c§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§;!i§ + "_" + this.§;!p§,this.§;!i§ + "_" + §2$!§];
         if(this.§;!i§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§;!p§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §2$!§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§>#O§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §>#O§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §%#m§
      {
         if(this.§;!i§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§0$A§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§?!M§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§>3§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§"!g§);
         }
         if(param1 == §@"`§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§+"x§);
         }
         if(param1 == §4$5§)
         {
            Mouse.cursor = this.§<G§;
            this.setComponentVisualState(§"!g§);
         }
         this.§7!j§(param1 == §4$5§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §?!M§() : void
      {
         if(this.§;!i§ == § #&§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§ #&§.§ ! §);
         }
         else if(this.§;!i§ == § #&§.§ ! §)
         {
            this.setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§8"c§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§7!j§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§7!j§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§!N§)
         {
            this.§!N§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§!N§)
         {
            this.§!N§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
