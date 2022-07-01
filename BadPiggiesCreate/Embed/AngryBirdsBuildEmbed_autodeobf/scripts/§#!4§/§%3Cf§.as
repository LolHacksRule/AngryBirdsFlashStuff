package §#!4§
{
   import §"!E§.§[!s§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §<f§ extends §'^§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §`O§:String = "Deactive";
      
      public static const §!`§:String = "Disabled";
      
      public static const §@5§:String = "Out";
      
      public static const §8!U§:String = "Over";
      
      public static const §1-§:String = "Up_Default";
      
      public static const §5!?§:String = "Down";
      
      public static var §<!"§:Class;
      
      public static var §%$§:Boolean = true;
      
      public static const §2!J§:String = "Tooltip";
      
      public static var §0b§:Boolean = true;
       
      
      public var §-Y§:String;
      
      public var §-!5§:String;
      
      public var §5!#§:String;
      
      public var §"L§:MovieClip;
      
      public var §"!L§:int = 6;
      
      private var § !l§:Boolean = false;
      
      public function §<f§(param1:XML, param2:§[!s§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§-Y§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§-!5§ = §1-§;
         this.§7@§();
         this.§#X§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§ !l§ = true;
         }
      }
      
      public static function §3!,§() : void
      {
         §<!"§ = §1F§.§"!_§(§2!J§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§@5§);
         }
      }
      
      public function §#X§(param1:String) : void
      {
         this.§5!#§ = param1;
         if(this.§5!#§ && this.§5!#§.length == 0)
         {
            this.§5!#§ = null;
         }
         if(this.§5!#§)
         {
            if(§%$§)
            {
               §%$§ = false;
               §3!,§();
            }
            this.§"L§ = new MovieClip();
            if(§<!"§)
            {
               this.§9!g§();
            }
            else
            {
               this.§1!%§();
            }
            this.§"L§.mouseEnabled = false;
            this.§"L§.mouseChildren = false;
            this.§"L§.visible = false;
            getParentView().addChild(this.§"L§);
         }
      }
      
      private function §1!%§() : void
      {
         this.§"L§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§"L§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§"L§.addChildAt(_loc2_,0);
         this.§+o§(this.§5!#§);
      }
      
      private function §9!g§() : void
      {
         this.§"L§ = new §<!"§();
         this.§;!<§(this.§5!#§);
      }
      
      public function §;!<§(param1:String) : void
      {
         this.§5!#§ = param1;
         if(§<!"§)
         {
            this.§#7§(param1);
         }
         else
         {
            this.§+o§(param1);
         }
      }
      
      private function §#7§(param1:String) : void
      {
         var _loc2_:TextField = this.§"L§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§"L§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§5!#§;
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
      
      private function §+o§(param1:String) : void
      {
         var _loc2_:TextField = this.§"L§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§5!#§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§"L§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§"!L§,-this.§"!L§,_loc2_.width + 2 * this.§"!L§,_loc2_.height + 2 * this.§"!L§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§"!L§ / 2,-(this.§"!L§ / 2),_loc2_.width + 1 * this.§"!L§,_loc2_.height + 1 * this.§"!L§);
      }
      
      private function §`8§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§"L§ || this.§5!#§ == null || this.§5!#§.length == 0)
         {
            return;
         }
         if(param1 && §0b§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§"L§.y = _loc2_.y - this.§"L§.height + this.§"!L§;
            this.§"L§.x = _loc2_.x + mClip.width / 2 - this.§"L§.width / 2;
            _loc3_ = this.§"L§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§"!L§)
            {
               this.§"L§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§"!L§));
            }
            if(_loc3_.left < this.§"!L§)
            {
               this.§"L§.x += 1 + (this.§"!L§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§"!L§)
            {
               this.§"L§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§"!L§));
            }
            if(_loc3_.top < this.§"!L§)
            {
               this.§"L§.y += mClip.height + this.§"L§.height;
            }
            this.§"L§.visible = true;
         }
         else
         {
            this.§"L§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§"L§)
         {
            this.§5!#§ = null;
            while(this.§"L§.numChildren > 0)
            {
               this.§"L§.removeChildAt(0);
            }
            if(this.§"L§.parent)
            {
               this.§"L§.parent.removeChild(this.§"L§);
            }
            this.§"L§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§-Y§ = param1;
         this.§7@§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§-!5§ = param1;
         this.§7@§();
      }
      
      public function §7@§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§-Y§ + "_" + this.§-!5§,this.§-Y§ + "_" + §1-§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§-!5§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §1-§);
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
         if(this.§-Y§ == §!`§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§-Y§ != §!`§ && this.§ !l§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§ a§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§5!?§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§8!U§);
         }
         if(param1 == §<H§)
         {
            this.setComponentVisualState(§@5§);
         }
         if(param1 == §`"§)
         {
            this.setComponentVisualState(§8!U§);
         }
         this.§`8§(param1 == §`"§);
      }
      
      public function § a§() : void
      {
         if(this.§-Y§ == §<f§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§<f§.§`O§);
         }
         else if(this.§-Y§ == §<f§.§`O§)
         {
            this.setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§7@§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§`8§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§`8§(false);
         }
      }
   }
}
