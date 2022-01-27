package §9c§
{
   import §=!H§.§9V§;
   import com.rovio.assets.§<x§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §6P§ extends §3i§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §@!=§:String = "Deactive";
      
      public static const §^!<§:String = "Disabled";
      
      public static const §`5§:String = "Out";
      
      public static const §6K§:String = "Over";
      
      public static const §,r§:String = "Up_Default";
      
      public static const §;!P§:String = "Down";
      
      public static var §[!;§:Class;
      
      public static var §[2§:Boolean = true;
      
      public static const §#!G§:String = "Tooltip";
      
      public static var §59§:Boolean = true;
       
      
      public var §33§:String;
      
      public var §&A§:String;
      
      public var § v§:String;
      
      public var §!j§:MovieClip;
      
      public var §8!P§:int = 6;
      
      private var §%D§:Boolean = false;
      
      private var §5!-§:String = "auto";
      
      public function §6P§(param1:XML, param2:§9V§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§33§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§&A§ = §,r§;
         this.§]s§();
         this.§;!?§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§%D§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§5!-§ = _loc5_;
         }
      }
      
      public static function §+$§() : void
      {
         §[!;§ = §<x§.§,! §(§#!G§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§`5§);
         }
      }
      
      public function §;!?§(param1:String) : void
      {
         this.§ v§ = param1;
         if(this.§ v§ && this.§ v§.length == 0)
         {
            this.§ v§ = null;
         }
         if(this.§ v§)
         {
            if(§[2§)
            {
               §[2§ = false;
               §+$§();
            }
            this.§!j§ = new MovieClip();
            if(§[!;§)
            {
               this.§<4§();
            }
            else
            {
               this.§0s§();
            }
            this.§!j§.mouseEnabled = false;
            this.§!j§.mouseChildren = false;
            this.§!j§.visible = false;
            getParentView().addChild(this.§!j§);
         }
      }
      
      private function §0s§() : void
      {
         this.§!j§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§!j§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§!j§.addChildAt(_loc2_,0);
         this.§"!&§(this.§ v§);
      }
      
      private function §<4§() : void
      {
         this.§!j§ = new §[!;§();
         this.§1!E§(this.§ v§);
      }
      
      public function §1!E§(param1:String) : void
      {
         this.§ v§ = param1;
         if(§[!;§)
         {
            this.§0y§(param1);
         }
         else
         {
            this.§"!&§(param1);
         }
      }
      
      private function §0y§(param1:String) : void
      {
         var _loc2_:TextField = this.§!j§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§!j§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§ v§;
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
      
      private function §"!&§(param1:String) : void
      {
         var _loc2_:TextField = this.§!j§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§ v§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§!j§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§8!P§,-this.§8!P§,_loc2_.width + 2 * this.§8!P§,_loc2_.height + 2 * this.§8!P§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§8!P§ / 2,-(this.§8!P§ / 2),_loc2_.width + 1 * this.§8!P§,_loc2_.height + 1 * this.§8!P§);
      }
      
      private function §`!J§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§!j§ || this.§ v§ == null || this.§ v§.length == 0)
         {
            return;
         }
         if(param1 && §59§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§!j§.y = _loc2_.y - this.§!j§.height - this.§8!P§;
            this.§!j§.x = _loc2_.x + mClip.width / 2 - this.§!j§.width / 2;
            _loc3_ = this.§!j§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§8!P§)
            {
               this.§!j§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§8!P§));
            }
            if(_loc3_.left < this.§8!P§)
            {
               this.§!j§.x += 1 + (this.§8!P§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§8!P§)
            {
               this.§!j§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§8!P§));
            }
            if(_loc3_.top < this.§8!P§)
            {
               this.§!j§.y += mClip.height + this.§!j§.height + this.§8!P§ * 2;
            }
            this.§!j§.visible = true;
         }
         else
         {
            this.§!j§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§!j§)
         {
            this.§ v§ = null;
            while(this.§!j§.numChildren > 0)
            {
               this.§!j§.removeChildAt(0);
            }
            if(this.§!j§.parent)
            {
               this.§!j§.parent.removeChild(this.§!j§);
            }
            this.§!j§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§33§ = param1;
         this.§]s§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§&A§ = param1;
         this.§]s§();
      }
      
      public function §]s§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§33§ + "_" + this.§&A§,this.§33§ + "_" + §,r§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§&A§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §,r§);
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
         if(this.§33§ == §^!<§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§%D§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§^! §();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§;!P§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§6K§);
         }
         if(param1 == §#!I§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§`5§);
         }
         if(param1 == §]!J§)
         {
            Mouse.cursor = this.§5!-§;
            this.setComponentVisualState(§6K§);
         }
         this.§`!J§(param1 == §]!J§);
      }
      
      public function §^! §() : void
      {
         if(this.§33§ == §6P§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§6P§.§@!=§);
         }
         else if(this.§33§ == §6P§.§@!=§)
         {
            this.setComponentState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§]s§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§`!J§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§`!J§(false);
         }
      }
   }
}
