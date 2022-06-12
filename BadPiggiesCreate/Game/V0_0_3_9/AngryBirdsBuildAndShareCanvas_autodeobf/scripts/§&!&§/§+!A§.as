package §&!&§
{
   import §<!I§.§>"-§;
   import com.rovio.assets.§8!q§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §+!A§ extends §&"1§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §5"6§:String = "Deactive";
      
      public static const §@x§:String = "Disabled";
      
      public static const §`y§:String = "Out";
      
      public static const §3#§:String = "Over";
      
      public static const §^!^§:String = "Up_Default";
      
      public static const §7M§:String = "Down";
      
      public static var §!§:Class;
      
      public static var §3!l§:Boolean = true;
      
      public static const §9!y§:String = "Tooltip";
      
      public static var §<!#§:Boolean = true;
       
      
      public var §]p§:String;
      
      public var §#!@§:String;
      
      public var §'z§:String;
      
      public var §?9§:MovieClip;
      
      public var §`C§:int = 6;
      
      private var §=!1§:Boolean = false;
      
      private var §@I§:String = "auto";
      
      public function §+!A§(param1:XML, param2:§>"-§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§]p§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§#!@§ = §^!^§;
         this.§[q§();
         this.§-B§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§=!1§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§@I§ = _loc5_;
         }
      }
      
      public static function §#!u§() : void
      {
         §!§ = §8!q§.§2^§(§9!y§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§`y§);
         }
      }
      
      public function §-B§(param1:String) : void
      {
         this.§'z§ = param1;
         if(this.§'z§ && this.§'z§.length == 0)
         {
            this.§'z§ = null;
         }
         if(this.§'z§)
         {
            if(§3!l§)
            {
               §3!l§ = false;
               §#!u§();
            }
            this.§?9§ = new MovieClip();
            if(§!§)
            {
               this.§=!3§();
            }
            else
            {
               this.§7§();
            }
            this.§?9§.mouseEnabled = false;
            this.§?9§.mouseChildren = false;
            this.§?9§.visible = false;
            getParentView().addChild(this.§?9§);
         }
      }
      
      private function §7§() : void
      {
         this.§?9§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§?9§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§?9§.addChildAt(_loc2_,0);
         this.§2V§(this.§'z§);
      }
      
      private function §=!3§() : void
      {
         this.§?9§ = new §!§();
         this.§'6§(this.§'z§);
      }
      
      public function §'6§(param1:String) : void
      {
         this.§'z§ = param1;
         if(§!§)
         {
            this.§>"2§(param1);
         }
         else
         {
            this.§2V§(param1);
         }
      }
      
      private function §>"2§(param1:String) : void
      {
         var _loc2_:TextField = this.§?9§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§?9§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§'z§;
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
      
      private function §2V§(param1:String) : void
      {
         var _loc2_:TextField = this.§?9§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§'z§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§?9§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§`C§,-this.§`C§,_loc2_.width + 2 * this.§`C§,_loc2_.height + 2 * this.§`C§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§`C§ / 2,-(this.§`C§ / 2),_loc2_.width + 1 * this.§`C§,_loc2_.height + 1 * this.§`C§);
      }
      
      private function §<!=§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§?9§ || this.§'z§ == null || this.§'z§.length == 0)
         {
            return;
         }
         if(param1 && §<!#§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§?9§.y = _loc2_.y - this.§?9§.height - this.§`C§;
            this.§?9§.x = _loc2_.x + mClip.width / 2 - this.§?9§.width / 2;
            _loc3_ = this.§?9§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§`C§)
            {
               this.§?9§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§`C§));
            }
            if(_loc3_.left < this.§`C§)
            {
               this.§?9§.x += 1 + (this.§`C§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§`C§)
            {
               this.§?9§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§`C§));
            }
            if(_loc3_.top < this.§`C§)
            {
               this.§?9§.y += mClip.height + this.§?9§.height + this.§`C§ * 2;
            }
            this.§?9§.visible = true;
         }
         else
         {
            this.§?9§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§?9§)
         {
            this.§'z§ = null;
            while(this.§?9§.numChildren > 0)
            {
               this.§?9§.removeChildAt(0);
            }
            if(this.§?9§.parent)
            {
               this.§?9§.parent.removeChild(this.§?9§);
            }
            this.§?9§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§]p§ = param1;
         this.§[q§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§#!@§ = param1;
         this.§[q§();
      }
      
      public function §[q§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§]p§ + "_" + this.§#!@§,this.§]p§ + "_" + §^!^§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§#!@§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §^!^§);
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
         if(this.§]p§ == §@x§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§=!1§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§@F§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§7M§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§3#§);
         }
         if(param1 == §5"-§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§`y§);
         }
         if(param1 == §2P§)
         {
            Mouse.cursor = this.§@I§;
            this.setComponentVisualState(§3#§);
         }
         this.§<!=§(param1 == §2P§);
      }
      
      public function §@F§() : void
      {
         if(this.§]p§ == §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§+!A§.§5"6§);
         }
         else if(this.§]p§ == §+!A§.§5"6§)
         {
            this.setComponentState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§[q§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§<!=§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§<!=§(false);
         }
      }
   }
}
