package §in§
{
   import §%S§.§,1§;
   import com.rovio.assets.§-!1§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §9c§ extends §]R§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §,4§:String = "Deactive";
      
      public static const §@<§:String = "Disabled";
      
      public static const §8s§:String = "Out";
      
      public static const §'!§:String = "Over";
      
      public static const §`T§:String = "Up_Default";
      
      public static const §@]§:String = "Down";
      
      public static var § C§:Class;
      
      public static var §75§:Boolean = true;
      
      public static const §@§:String = "Tooltip";
      
      public static var §-!A§:Boolean = true;
       
      
      public var §,V§:String;
      
      public var §2N§:String;
      
      public var §8V§:String;
      
      public var §3F§:MovieClip;
      
      public var §%<§:int = 6;
      
      private var §#!!§:Boolean = false;
      
      public function §9c§(param1:XML, param2:§,1§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§,V§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§2N§ = §`T§;
         this.§7u§();
         this.§1H§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§#!!§ = true;
         }
      }
      
      public static function §9M§() : void
      {
         § C§ = §-!1§.§-T§(§@§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§8s§);
         }
      }
      
      public function §1H§(param1:String) : void
      {
         this.§8V§ = param1;
         if(this.§8V§ && this.§8V§.length == 0)
         {
            this.§8V§ = null;
         }
         if(this.§8V§)
         {
            if(§75§)
            {
               §75§ = false;
               §9M§();
            }
            this.§3F§ = new MovieClip();
            if(§ C§)
            {
               this.§?!4§();
            }
            else
            {
               this.§"j§();
            }
            this.§3F§.mouseEnabled = false;
            this.§3F§.mouseChildren = false;
            this.§3F§.visible = false;
            getParentView().addChild(this.§3F§);
         }
      }
      
      private function §"j§() : void
      {
         this.§3F§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§3F§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§3F§.addChildAt(_loc2_,0);
         this.§?!#§(this.§8V§);
      }
      
      private function §?!4§() : void
      {
         this.§3F§ = new § C§();
         this.§[!D§(this.§8V§);
      }
      
      public function §[!D§(param1:String) : void
      {
         this.§8V§ = param1;
         if(§ C§)
         {
            this.§]!@§(param1);
         }
         else
         {
            this.§?!#§(param1);
         }
      }
      
      private function §]!@§(param1:String) : void
      {
         var _loc2_:TextField = this.§3F§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§3F§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§8V§;
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
      
      private function §?!#§(param1:String) : void
      {
         var _loc2_:TextField = this.§3F§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§8V§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§3F§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§%<§,-this.§%<§,_loc2_.width + 2 * this.§%<§,_loc2_.height + 2 * this.§%<§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§%<§ / 2,-(this.§%<§ / 2),_loc2_.width + 1 * this.§%<§,_loc2_.height + 1 * this.§%<§);
      }
      
      private function §>D§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§3F§ || this.§8V§ == null || this.§8V§.length == 0)
         {
            return;
         }
         if(param1 && §-!A§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§3F§.y = _loc2_.y - this.§3F§.height - this.§%<§;
            this.§3F§.x = _loc2_.x + mClip.width / 2 - this.§3F§.width / 2;
            _loc3_ = this.§3F§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§%<§)
            {
               this.§3F§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§%<§));
            }
            if(_loc3_.left < this.§%<§)
            {
               this.§3F§.x += 1 + (this.§%<§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§%<§)
            {
               this.§3F§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§%<§));
            }
            if(_loc3_.top < this.§%<§)
            {
               this.§3F§.y += mClip.height + this.§3F§.height + this.§%<§ * 2;
            }
            this.§3F§.visible = true;
         }
         else
         {
            this.§3F§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§3F§)
         {
            this.§8V§ = null;
            while(this.§3F§.numChildren > 0)
            {
               this.§3F§.removeChildAt(0);
            }
            if(this.§3F§.parent)
            {
               this.§3F§.parent.removeChild(this.§3F§);
            }
            this.§3F§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§,V§ = param1;
         this.§7u§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§2N§ = param1;
         this.§7u§();
      }
      
      public function §7u§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§,V§ + "_" + this.§2N§,this.§,V§ + "_" + §`T§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§2N§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §`T§);
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
         if(this.§,V§ == §@<§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§#!!§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§[=§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§@]§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§'!§);
         }
         if(param1 == §54§)
         {
            this.setComponentVisualState(§8s§);
         }
         if(param1 == §9S§)
         {
            this.setComponentVisualState(§'!§);
         }
         this.§>D§(param1 == §9S§);
      }
      
      public function §[=§() : void
      {
         if(this.§,V§ == §9c§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§9c§.§,4§);
         }
         else if(this.§,V§ == §9c§.§,4§)
         {
            this.setComponentState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§7u§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§>D§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§>D§(false);
         }
      }
   }
}
