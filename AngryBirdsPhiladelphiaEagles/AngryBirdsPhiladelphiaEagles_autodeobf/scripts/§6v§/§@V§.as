package §6v§
{
   import §"U§.§[Q§;
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §@V§ extends §var §
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §?!@§:String = "Deactive";
      
      public static const §!%§:String = "Disabled";
      
      public static const §1V§:String = "Out";
      
      public static const §+R§:String = "Over";
      
      public static const §%g§:String = "Up_Default";
      
      public static const §@@§:String = "Down";
      
      public static var §^!P§:Class;
      
      public static var §8!G§:Boolean = true;
      
      public static const §%!!§:String = "Tooltip";
      
      public static var §=-§:Boolean = true;
       
      
      public var § var§:String;
      
      public var §if §:String;
      
      public var §2!9§:String;
      
      public var §<!&§:MovieClip;
      
      public var §!&§:int = 6;
      
      private var §+]§:Boolean = false;
      
      private var §]b§:String = "auto";
      
      public function §@V§(param1:XML, param2:§[Q§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§ var§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§if § = §%g§;
         this.§>!N§();
         this.§4M§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§+]§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§]b§ = _loc5_;
         }
      }
      
      public static function §,b§() : void
      {
         §^!P§ = §[!D§.§8!N§(§%!!§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§1V§);
         }
      }
      
      public function §4M§(param1:String) : void
      {
         this.§2!9§ = param1;
         if(this.§2!9§ && this.§2!9§.length == 0)
         {
            this.§2!9§ = null;
         }
         if(this.§2!9§)
         {
            if(§8!G§)
            {
               §8!G§ = false;
               §,b§();
            }
            this.§<!&§ = new MovieClip();
            if(§^!P§)
            {
               this.§1!L§();
            }
            else
            {
               this.§9U§();
            }
            this.§<!&§.mouseEnabled = false;
            this.§<!&§.mouseChildren = false;
            this.§<!&§.visible = false;
            getParentView().addChild(this.§<!&§);
         }
      }
      
      private function §9U§() : void
      {
         this.§<!&§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§<!&§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§<!&§.addChildAt(_loc2_,0);
         this.§+!-§(this.§2!9§);
      }
      
      private function §1!L§() : void
      {
         this.§<!&§ = new §^!P§();
         this.§0!>§(this.§2!9§);
      }
      
      public function §0!>§(param1:String) : void
      {
         this.§2!9§ = param1;
         if(§^!P§)
         {
            this.§#z§(param1);
         }
         else
         {
            this.§+!-§(param1);
         }
      }
      
      private function §#z§(param1:String) : void
      {
         var _loc2_:TextField = this.§<!&§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§<!&§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§2!9§;
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
      
      private function §+!-§(param1:String) : void
      {
         var _loc2_:TextField = this.§<!&§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§2!9§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§<!&§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§!&§,-this.§!&§,_loc2_.width + 2 * this.§!&§,_loc2_.height + 2 * this.§!&§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§!&§ / 2,-(this.§!&§ / 2),_loc2_.width + 1 * this.§!&§,_loc2_.height + 1 * this.§!&§);
      }
      
      private function § r§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§<!&§ || this.§2!9§ == null || this.§2!9§.length == 0)
         {
            return;
         }
         if(param1 && §=-§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§<!&§.y = _loc2_.y - this.§<!&§.height - this.§!&§;
            this.§<!&§.x = _loc2_.x + mClip.width / 2 - this.§<!&§.width / 2;
            _loc3_ = this.§<!&§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§!&§)
            {
               this.§<!&§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§!&§));
            }
            if(_loc3_.left < this.§!&§)
            {
               this.§<!&§.x += 1 + (this.§!&§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§!&§)
            {
               this.§<!&§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§!&§));
            }
            if(_loc3_.top < this.§!&§)
            {
               this.§<!&§.y += mClip.height + this.§<!&§.height + this.§!&§ * 2;
            }
            this.§<!&§.visible = true;
         }
         else
         {
            this.§<!&§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§<!&§)
         {
            this.§2!9§ = null;
            while(this.§<!&§.numChildren > 0)
            {
               this.§<!&§.removeChildAt(0);
            }
            if(this.§<!&§.parent)
            {
               this.§<!&§.parent.removeChild(this.§<!&§);
            }
            this.§<!&§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§ var§ = param1;
         this.§>!N§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§if § = param1;
         this.§>!N§();
      }
      
      public function §>!N§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§ var§ + "_" + this.§if §,this.§ var§ + "_" + §%g§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§if §,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §%g§);
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
         if(this.§ var§ == §!%§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§+]§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§;!&§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§@@§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§+R§);
         }
         if(param1 == §&U§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§1V§);
         }
         if(param1 == §^! §)
         {
            Mouse.cursor = this.§]b§;
            this.setComponentVisualState(§+R§);
         }
         this.§ r§(param1 == §^! §);
      }
      
      public function §;!&§() : void
      {
         if(this.§ var§ == §@V§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§@V§.§?!@§);
         }
         else if(this.§ var§ == §@V§.§?!@§)
         {
            this.setComponentState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§>!N§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§ r§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§ r§(false);
         }
      }
   }
}
