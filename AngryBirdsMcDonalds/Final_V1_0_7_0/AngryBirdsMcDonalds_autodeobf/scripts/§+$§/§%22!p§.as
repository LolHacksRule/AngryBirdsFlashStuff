package §+$§
{
   import §<l§.§@0§;
   import §[h§.§ !&§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §"!p§ extends §5"§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §`!Q§:String = "Deactive";
      
      public static const §>!W§:String = "Disabled";
      
      public static const §3!B§:String = "Out";
      
      public static const §"!6§:String = "Over";
      
      public static const §-t§:String = "Up_Default";
      
      public static const §5H§:String = "Down";
      
      public static var §?!K§:Class;
      
      public static var §^4§:Boolean = true;
      
      public static const §;!m§:String = "Tooltip";
      
      public static var §^q§:Boolean = true;
       
      
      public var § 4§:String;
      
      public var §#!_§:String;
      
      public var §7!G§:String;
      
      public var §#$§:MovieClip;
      
      public var §3y§:int = 6;
      
      private var §^'§:Boolean = false;
      
      private var §%!D§:String = "auto";
      
      public function §"!p§(param1:XML, param2:§ !&§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§ 4§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§#!_§ = §-t§;
         this.§3`§();
         this.§<!$§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§^'§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§%!D§ = _loc5_;
         }
      }
      
      public static function §8!i§() : void
      {
         §?!K§ = §@0§.§5+§(§;!m§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§3!B§);
         }
      }
      
      public function §<!$§(param1:String) : void
      {
         this.§7!G§ = param1;
         if(this.§7!G§ && this.§7!G§.length == 0)
         {
            this.§7!G§ = null;
         }
         if(this.§7!G§)
         {
            if(§^4§)
            {
               §^4§ = false;
               §8!i§();
            }
            this.§#$§ = new MovieClip();
            if(§?!K§)
            {
               this.§<!"§();
            }
            else
            {
               this.§7!§();
            }
            this.§#$§.mouseEnabled = false;
            this.§#$§.mouseChildren = false;
            this.§#$§.visible = false;
            getParentView().addChild(this.§#$§);
         }
      }
      
      private function §7!§() : void
      {
         this.§#$§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§#$§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§#$§.addChildAt(_loc2_,0);
         this.§<^§(this.§7!G§);
      }
      
      private function §<!"§() : void
      {
         this.§#$§ = new §?!K§();
         this.§8>§(this.§7!G§);
      }
      
      public function §8>§(param1:String) : void
      {
         this.§7!G§ = param1;
         if(§?!K§)
         {
            this.§ !Z§(param1);
         }
         else
         {
            this.§<^§(param1);
         }
      }
      
      private function § !Z§(param1:String) : void
      {
         var _loc2_:TextField = this.§#$§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§#$§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§7!G§;
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
      
      private function §<^§(param1:String) : void
      {
         var _loc2_:TextField = this.§#$§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§7!G§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§#$§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§3y§,-this.§3y§,_loc2_.width + 2 * this.§3y§,_loc2_.height + 2 * this.§3y§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§3y§ / 2,-(this.§3y§ / 2),_loc2_.width + 1 * this.§3y§,_loc2_.height + 1 * this.§3y§);
      }
      
      private function §7!+§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§#$§ || this.§7!G§ == null || this.§7!G§.length == 0)
         {
            return;
         }
         if(param1 && §^q§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§#$§.y = _loc2_.y - this.§#$§.height - this.§3y§;
            this.§#$§.x = _loc2_.x + mClip.width / 2 - this.§#$§.width / 2;
            _loc3_ = this.§#$§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§3y§)
            {
               this.§#$§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§3y§));
            }
            if(_loc3_.left < this.§3y§)
            {
               this.§#$§.x += 1 + (this.§3y§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§3y§)
            {
               this.§#$§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§3y§));
            }
            if(_loc3_.top < this.§3y§)
            {
               this.§#$§.y += mClip.height + this.§#$§.height + this.§3y§ * 2;
            }
            this.§#$§.visible = true;
         }
         else
         {
            this.§#$§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§#$§)
         {
            this.§7!G§ = null;
            while(this.§#$§.numChildren > 0)
            {
               this.§#$§.removeChildAt(0);
            }
            if(this.§#$§.parent)
            {
               this.§#$§.parent.removeChild(this.§#$§);
            }
            this.§#$§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§ 4§ = param1;
         this.§3`§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§#!_§ = param1;
         this.§3`§();
      }
      
      public function §3`§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§ 4§ + "_" + this.§#!_§,this.§ 4§ + "_" + §-t§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§#!_§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §-t§);
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
         if(this.§ 4§ == §>!W§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§^'§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§+!A§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§5H§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§"!6§);
         }
         if(param1 == §0§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§3!B§);
         }
         if(param1 == §0!V§)
         {
            Mouse.cursor = this.§%!D§;
            this.setComponentVisualState(§"!6§);
         }
         this.§7!+§(param1 == §0!V§);
      }
      
      public function §+!A§() : void
      {
         if(this.§ 4§ == §"!p§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§"!p§.§`!Q§);
         }
         else if(this.§ 4§ == §"!p§.§`!Q§)
         {
            this.setComponentState(§"!p§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§3`§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§7!+§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§7!+§(false);
         }
      }
   }
}
