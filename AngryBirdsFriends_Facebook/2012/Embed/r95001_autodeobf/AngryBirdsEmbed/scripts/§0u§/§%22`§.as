package §0u§
{
   import §4-§.§'J§;
   import com.rovio.assets.§ 3§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §"`§ extends §^S§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §&E§:String = "Deactive";
      
      public static const §&!$§:String = "Disabled";
      
      public static const § !3§:String = "Out";
      
      public static const §^K§:String = "Over";
      
      public static const §#S§:String = "Up_Default";
      
      public static const §7!-§:String = "Down";
      
      public static var §2!=§:Class;
      
      public static var §@n§:Boolean = true;
      
      public static const §#p§:String = "Tooltip";
      
      public static var §9&§:Boolean = true;
       
      
      public var §[1§:String;
      
      public var §7! §:String;
      
      public var §%y§:String;
      
      public var §#!C§:MovieClip;
      
      public var §#e§:int = 6;
      
      private var §2!@§:Boolean = false;
      
      public function §"`§(param1:XML, param2:§'J§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§[1§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§7! § = §#S§;
         this.§;E§();
         this.§<U§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§2!@§ = true;
         }
      }
      
      public static function §&x§() : void
      {
         §2!=§ = § 3§.§+i§(§#p§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§ !3§);
         }
      }
      
      public function §<U§(param1:String) : void
      {
         this.§%y§ = param1;
         if(this.§%y§ && this.§%y§.length == 0)
         {
            this.§%y§ = null;
         }
         if(this.§%y§)
         {
            if(§@n§)
            {
               §@n§ = false;
               §&x§();
            }
            this.§#!C§ = new MovieClip();
            if(§2!=§)
            {
               this.§3h§();
            }
            else
            {
               this.§5_§();
            }
            this.§#!C§.mouseEnabled = false;
            this.§#!C§.mouseChildren = false;
            this.§#!C§.visible = false;
            getParentView().addChild(this.§#!C§);
         }
      }
      
      private function §5_§() : void
      {
         this.§#!C§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§#!C§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§#!C§.addChildAt(_loc2_,0);
         this.§`Z§(this.§%y§);
      }
      
      private function §3h§() : void
      {
         this.§#!C§ = new §2!=§();
         this.§`d§(this.§%y§);
      }
      
      public function §`d§(param1:String) : void
      {
         this.§%y§ = param1;
         if(§2!=§)
         {
            this.§%[§(param1);
         }
         else
         {
            this.§`Z§(param1);
         }
      }
      
      private function §%[§(param1:String) : void
      {
         var _loc2_:TextField = this.§#!C§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§#!C§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§%y§;
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
      
      private function §`Z§(param1:String) : void
      {
         var _loc2_:TextField = this.§#!C§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§%y§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§#!C§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§#e§,-this.§#e§,_loc2_.width + 2 * this.§#e§,_loc2_.height + 2 * this.§#e§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§#e§ / 2,-(this.§#e§ / 2),_loc2_.width + 1 * this.§#e§,_loc2_.height + 1 * this.§#e§);
      }
      
      private function §]§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§#!C§ || this.§%y§ == null || this.§%y§.length == 0)
         {
            return;
         }
         if(param1 && §9&§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§#!C§.y = _loc2_.y - this.§#!C§.height + this.§#e§;
            this.§#!C§.x = _loc2_.x + mClip.width / 2 - this.§#!C§.width / 2;
            _loc3_ = this.§#!C§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§#e§)
            {
               this.§#!C§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§#e§));
            }
            if(_loc3_.left < this.§#e§)
            {
               this.§#!C§.x += 1 + (this.§#e§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§#e§)
            {
               this.§#!C§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§#e§));
            }
            if(_loc3_.top < this.§#e§)
            {
               this.§#!C§.y += mClip.height + this.§#!C§.height;
            }
            this.§#!C§.visible = true;
         }
         else
         {
            this.§#!C§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§#!C§)
         {
            this.§%y§ = null;
            while(this.§#!C§.numChildren > 0)
            {
               this.§#!C§.removeChildAt(0);
            }
            if(this.§#!C§.parent)
            {
               this.§#!C§.parent.removeChild(this.§#!C§);
            }
            this.§#!C§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§[1§ = param1;
         this.§;E§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§7! § = param1;
         this.§;E§();
      }
      
      public function §;E§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§[1§ + "_" + this.§7! §,this.§[1§ + "_" + §#S§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§7! §,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §#S§);
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
         if(this.§[1§ == §&!$§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§[1§ != §&!$§ && this.§2!@§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§3>§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§7!-§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§^K§);
         }
         if(param1 == §,n§)
         {
            this.setComponentVisualState(§ !3§);
         }
         if(param1 == §-&§)
         {
            this.setComponentVisualState(§^K§);
         }
         this.§]§(param1 == §-&§);
      }
      
      public function §3>§() : void
      {
         if(this.§[1§ == §"`§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§"`§.§&E§);
         }
         else if(this.§[1§ == §"`§.§&E§)
         {
            this.setComponentState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§;E§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§]§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§]§(false);
         }
      }
   }
}
