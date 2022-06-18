package §]!5§
{
   import §<K§.§0e§;
   import §]!&§.§]!K§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §=j§ extends §1k§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §@!9§:String = "Deactive";
      
      public static const §in §:String = "Disabled";
      
      public static const §;1§:String = "Out";
      
      public static const §,=§:String = "Over";
      
      public static const §`v§:String = "Up_Default";
      
      public static const §>0§:String = "Down";
      
      public static var §2!1§:Class;
      
      public static var §<!8§:Boolean = true;
      
      public static const §6f§:String = "Tooltip";
      
      public static var §#!G§:Boolean = true;
       
      
      public var §@!M§:String;
      
      public var §2!]§:String;
      
      public var §6r§:String;
      
      public var §0!>§:MovieClip;
      
      public var §^k§:int = 6;
      
      private var §'f§:Boolean = false;
      
      private var §''§:String = "auto";
      
      public function §=j§(param1:XML, param2:§]!K§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§@!M§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§2!]§ = §`v§;
         this.§1t§();
         this.§3"§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§'f§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§''§ = _loc5_;
         }
      }
      
      public static function §&n§() : void
      {
         §2!1§ = §0e§.§#!!§(§6f§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§;1§);
         }
      }
      
      public function §3"§(param1:String) : void
      {
         this.§6r§ = param1;
         if(this.§6r§ && this.§6r§.length == 0)
         {
            this.§6r§ = null;
         }
         if(this.§6r§)
         {
            if(§<!8§)
            {
               §<!8§ = false;
               §&n§();
            }
            this.§0!>§ = new MovieClip();
            if(§2!1§)
            {
               this.§^c§();
            }
            else
            {
               this.§0!%§();
            }
            this.§0!>§.mouseEnabled = false;
            this.§0!>§.mouseChildren = false;
            this.§0!>§.visible = false;
            getParentView().addChild(this.§0!>§);
         }
      }
      
      private function §0!%§() : void
      {
         this.§0!>§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§0!>§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§0!>§.addChildAt(_loc2_,0);
         this.§<B§(this.§6r§);
      }
      
      private function §^c§() : void
      {
         this.§0!>§ = new §2!1§();
         this.§^+§(this.§6r§);
      }
      
      public function §^+§(param1:String) : void
      {
         this.§6r§ = param1;
         if(§2!1§)
         {
            this.§0f§(param1);
         }
         else
         {
            this.§<B§(param1);
         }
      }
      
      private function §0f§(param1:String) : void
      {
         var _loc2_:TextField = this.§0!>§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§0!>§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§6r§;
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
      
      private function §<B§(param1:String) : void
      {
         var _loc2_:TextField = this.§0!>§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§6r§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§0!>§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§^k§,-this.§^k§,_loc2_.width + 2 * this.§^k§,_loc2_.height + 2 * this.§^k§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§^k§ / 2,-(this.§^k§ / 2),_loc2_.width + 1 * this.§^k§,_loc2_.height + 1 * this.§^k§);
      }
      
      private function §<m§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§0!>§ || this.§6r§ == null || this.§6r§.length == 0)
         {
            return;
         }
         if(param1 && §#!G§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§0!>§.y = _loc2_.y - this.§0!>§.height - this.§^k§;
            this.§0!>§.x = _loc2_.x + mClip.width / 2 - this.§0!>§.width / 2;
            _loc3_ = this.§0!>§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§^k§)
            {
               this.§0!>§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§^k§));
            }
            if(_loc3_.left < this.§^k§)
            {
               this.§0!>§.x += 1 + (this.§^k§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§^k§)
            {
               this.§0!>§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§^k§));
            }
            if(_loc3_.top < this.§^k§)
            {
               this.§0!>§.y += mClip.height + this.§0!>§.height + this.§^k§ * 2;
            }
            this.§0!>§.visible = true;
         }
         else
         {
            this.§0!>§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§0!>§)
         {
            this.§6r§ = null;
            while(this.§0!>§.numChildren > 0)
            {
               this.§0!>§.removeChildAt(0);
            }
            if(this.§0!>§.parent)
            {
               this.§0!>§.parent.removeChild(this.§0!>§);
            }
            this.§0!>§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§@!M§ = param1;
         this.§1t§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§2!]§ = param1;
         this.§1t§();
      }
      
      public function §1t§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§@!M§ + "_" + this.§2!]§,this.§@!M§ + "_" + §`v§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§2!]§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §`v§);
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
         if(this.§@!M§ == §in §)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§'f§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§2"§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§>0§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§,=§);
         }
         if(param1 == §8!L§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§;1§);
         }
         if(param1 == §5A§)
         {
            Mouse.cursor = this.§''§;
            this.setComponentVisualState(§,=§);
         }
         this.§<m§(param1 == §5A§);
      }
      
      public function §2"§() : void
      {
         if(this.§@!M§ == §=j§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§=j§.§@!9§);
         }
         else if(this.§@!M§ == §=j§.§@!9§)
         {
            this.setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§1t§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§<m§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§<m§(false);
         }
      }
   }
}
