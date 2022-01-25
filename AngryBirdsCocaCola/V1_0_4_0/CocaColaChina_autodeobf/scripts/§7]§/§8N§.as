package §7]§
{
   import §'P§.§`;§;
   import §="§.§@5§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §8N§ extends §'T§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §9L§:String = "Deactive";
      
      public static const §!N§:String = "Disabled";
      
      public static const §#! §:String = "Out";
      
      public static const §@2§:String = "Over";
      
      public static const §1$§:String = "Up_Default";
      
      public static const §"D§:String = "Down";
      
      public static var §,8§:Class;
      
      public static var §[M§:Boolean = true;
      
      public static const §[<§:String = "Tooltip";
      
      public static var §^!S§:Boolean = true;
       
      
      public var §>k§:String;
      
      public var §!!^§:String;
      
      public var §#`§:String;
      
      public var §7!Z§:MovieClip;
      
      public var §7H§:int = 6;
      
      private var §4&§:Boolean = false;
      
      private var §,]§:String = "auto";
      
      public function §8N§(param1:XML, param2:§`;§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§>k§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§!!^§ = §1$§;
         this.§@!W§();
         this.§=-§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§4&§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§,]§ = _loc5_;
         }
      }
      
      public static function §[!_§() : void
      {
         §,8§ = §@5§.§>! §(§[<§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§#! §);
         }
      }
      
      public function §=-§(param1:String) : void
      {
         this.§#`§ = param1;
         if(this.§#`§ && this.§#`§.length == 0)
         {
            this.§#`§ = null;
         }
         if(this.§#`§)
         {
            if(§[M§)
            {
               §[M§ = false;
               §[!_§();
            }
            this.§7!Z§ = new MovieClip();
            if(§,8§)
            {
               this.§!_§();
            }
            else
            {
               this.§'!#§();
            }
            this.§7!Z§.mouseEnabled = false;
            this.§7!Z§.mouseChildren = false;
            this.§7!Z§.visible = false;
            getParentView().addChild(this.§7!Z§);
         }
      }
      
      private function §'!#§() : void
      {
         this.§7!Z§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§7!Z§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§7!Z§.addChildAt(_loc2_,0);
         this.§3H§(this.§#`§);
      }
      
      private function §!_§() : void
      {
         this.§7!Z§ = new §,8§();
         this.§[$§(this.§#`§);
      }
      
      public function §[$§(param1:String) : void
      {
         this.§#`§ = param1;
         if(§,8§)
         {
            this.§8!O§(param1);
         }
         else
         {
            this.§3H§(param1);
         }
      }
      
      private function §8!O§(param1:String) : void
      {
         var _loc2_:TextField = this.§7!Z§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§7!Z§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§#`§;
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
      
      private function §3H§(param1:String) : void
      {
         var _loc2_:TextField = this.§7!Z§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§#`§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§7!Z§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§7H§,-this.§7H§,_loc2_.width + 2 * this.§7H§,_loc2_.height + 2 * this.§7H§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§7H§ / 2,-(this.§7H§ / 2),_loc2_.width + 1 * this.§7H§,_loc2_.height + 1 * this.§7H§);
      }
      
      private function §-![§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§7!Z§ || this.§#`§ == null || this.§#`§.length == 0)
         {
            return;
         }
         if(param1 && §^!S§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§7!Z§.y = _loc2_.y - this.§7!Z§.height - this.§7H§;
            this.§7!Z§.x = _loc2_.x + mClip.width / 2 - this.§7!Z§.width / 2;
            _loc3_ = this.§7!Z§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§7H§)
            {
               this.§7!Z§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§7H§));
            }
            if(_loc3_.left < this.§7H§)
            {
               this.§7!Z§.x += 1 + (this.§7H§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§7H§)
            {
               this.§7!Z§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§7H§));
            }
            if(_loc3_.top < this.§7H§)
            {
               this.§7!Z§.y += mClip.height + this.§7!Z§.height + this.§7H§ * 2;
            }
            this.§7!Z§.visible = true;
         }
         else
         {
            this.§7!Z§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§7!Z§)
         {
            this.§#`§ = null;
            while(this.§7!Z§.numChildren > 0)
            {
               this.§7!Z§.removeChildAt(0);
            }
            if(this.§7!Z§.parent)
            {
               this.§7!Z§.parent.removeChild(this.§7!Z§);
            }
            this.§7!Z§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§>k§ = param1;
         this.§@!W§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§!!^§ = param1;
         this.§@!W§();
      }
      
      public function §@!W§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§>k§ + "_" + this.§!!^§,this.§>k§ + "_" + §1$§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§!!^§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §1$§);
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
         if(this.§>k§ == §!N§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§4&§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§6!c§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§"D§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§@2§);
         }
         if(param1 == §&y§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§#! §);
         }
         if(param1 == §?R§)
         {
            Mouse.cursor = this.§,]§;
            this.setComponentVisualState(§@2§);
         }
         this.§-![§(param1 == §?R§);
      }
      
      public function §6!c§() : void
      {
         if(this.§>k§ == §8N§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§8N§.§9L§);
         }
         else if(this.§>k§ == §8N§.§9L§)
         {
            this.setComponentState(§8N§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§@!W§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§-![§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§-![§(false);
         }
      }
   }
}
