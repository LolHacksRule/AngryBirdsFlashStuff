package §`W§
{
   import §[v§.§&F§;
   import com.rovio.assets.§>D§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §<r§ extends §`H§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §55§:String = "Deactive";
      
      public static const §?!B§:String = "Disabled";
      
      public static const §const§:String = "Out";
      
      public static const §%i§:String = "Over";
      
      public static const §>!2§:String = "Up_Default";
      
      public static const §7!4§:String = "Down";
      
      public static var §[L§:Class;
      
      public static var §',§:Boolean = true;
      
      public static const §'0§:String = "Tooltip";
      
      public static var §1C§:Boolean = true;
       
      
      public var §`!8§:String;
      
      public var §7m§:String;
      
      public var §5E§:String;
      
      public var §9a§:MovieClip;
      
      public var §+!G§:int = 6;
      
      private var §<'§:Boolean = false;
      
      private var §=e§:String = "auto";
      
      public function §<r§(param1:XML, param2:§&F§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§`!8§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§7m§ = §>!2§;
         this.§;!9§();
         this.§1P§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§<'§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§=e§ = _loc5_;
         }
      }
      
      public static function §`V§() : void
      {
         §[L§ = §>D§.§`C§(§'0§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§const§);
         }
      }
      
      public function §1P§(param1:String) : void
      {
         this.§5E§ = param1;
         if(this.§5E§ && this.§5E§.length == 0)
         {
            this.§5E§ = null;
         }
         if(this.§5E§)
         {
            if(§',§)
            {
               §',§ = false;
               §`V§();
            }
            this.§9a§ = new MovieClip();
            if(§[L§)
            {
               this.§?!9§();
            }
            else
            {
               this.§ &§();
            }
            this.§9a§.mouseEnabled = false;
            this.§9a§.mouseChildren = false;
            this.§9a§.visible = false;
            getParentView().addChild(this.§9a§);
         }
      }
      
      private function § &§() : void
      {
         this.§9a§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§9a§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§9a§.addChildAt(_loc2_,0);
         this.§=R§(this.§5E§);
      }
      
      private function §?!9§() : void
      {
         this.§9a§ = new §[L§();
         this.§;!@§(this.§5E§);
      }
      
      public function §;!@§(param1:String) : void
      {
         this.§5E§ = param1;
         if(§[L§)
         {
            this.§7u§(param1);
         }
         else
         {
            this.§=R§(param1);
         }
      }
      
      private function §7u§(param1:String) : void
      {
         var _loc2_:TextField = this.§9a§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§9a§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§5E§;
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
      
      private function §=R§(param1:String) : void
      {
         var _loc2_:TextField = this.§9a§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§5E§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§9a§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§+!G§,-this.§+!G§,_loc2_.width + 2 * this.§+!G§,_loc2_.height + 2 * this.§+!G§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§+!G§ / 2,-(this.§+!G§ / 2),_loc2_.width + 1 * this.§+!G§,_loc2_.height + 1 * this.§+!G§);
      }
      
      private function §8!#§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§9a§ || this.§5E§ == null || this.§5E§.length == 0)
         {
            return;
         }
         if(param1 && §1C§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§9a§.y = _loc2_.y - this.§9a§.height - this.§+!G§;
            this.§9a§.x = _loc2_.x + mClip.width / 2 - this.§9a§.width / 2;
            _loc3_ = this.§9a§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§+!G§)
            {
               this.§9a§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§+!G§));
            }
            if(_loc3_.left < this.§+!G§)
            {
               this.§9a§.x += 1 + (this.§+!G§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§+!G§)
            {
               this.§9a§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§+!G§));
            }
            if(_loc3_.top < this.§+!G§)
            {
               this.§9a§.y += mClip.height + this.§9a§.height + this.§+!G§ * 2;
            }
            this.§9a§.visible = true;
         }
         else
         {
            this.§9a§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§9a§)
         {
            this.§5E§ = null;
            while(this.§9a§.numChildren > 0)
            {
               this.§9a§.removeChildAt(0);
            }
            if(this.§9a§.parent)
            {
               this.§9a§.parent.removeChild(this.§9a§);
            }
            this.§9a§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§`!8§ = param1;
         this.§;!9§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§7m§ = param1;
         this.§;!9§();
      }
      
      public function §;!9§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§`!8§ + "_" + this.§7m§,this.§`!8§ + "_" + §>!2§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§7m§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §>!2§);
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
         if(this.§`!8§ == §?!B§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§<'§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§?d§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§7!4§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§%i§);
         }
         if(param1 == §@K§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§const§);
         }
         if(param1 == §&!<§)
         {
            Mouse.cursor = this.§=e§;
            this.setComponentVisualState(§%i§);
         }
         this.§8!#§(param1 == §&!<§);
      }
      
      public function §?d§() : void
      {
         if(this.§`!8§ == §<r§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§<r§.§55§);
         }
         else if(this.§`!8§ == §<r§.§55§)
         {
            this.setComponentState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§;!9§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§8!#§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§8!#§(false);
         }
      }
   }
}
