package §]!6§
{
   import §4!9§.§6"§;
   import §6b§.Log;
   import §>!-§.UIButtonGroupRovio;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIComponentRovio;
   import §>!-§.UIEventListenerRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class UIRepeaterRovio extends UIContainerRovio
   {
      
      public static const §^7§:int = 0;
      
      public static const §7![§:int = 1;
      
      public static const §=8§:int = 2;
       
      
      public var §7'§:String;
      
      public var §'w§:Class;
      
      public var §"7§:String = null;
      
      public var §->§:Vector.<UIButtonGroupRovio>;
      
      public var §6V§:int;
      
      public var §6z§:Number;
      
      public var §!Q§:Number;
      
      public var §=!2§:Number;
      
      public var §=c§:Number;
      
      public var §[L§:Number;
      
      public var §9a§:Number;
      
      public var §>W§:Number;
      
      public var §<-§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §'t§:int;
      
      public var §>S§:Number;
      
      public var §5!8§:String = "";
      
      public var §9n§:int;
      
      public var §>P§:int;
      
      public var §'Y§:GlowFilter;
      
      public var §6[§:Boolean = true;
      
      public var § set§:int;
      
      public var §;t§:int;
      
      public var §1w§:Number = 0;
      
      public var §>a§:Number = 0;
      
      public var §0!3§:Number = 0;
      
      public var §=t§:Number = 0;
      
      public var §@`§:Boolean = false;
      
      public var §!4§:Boolean = false;
      
      public var §'M§:MovieClip = null;
      
      public function UIRepeaterRovio(param1:XML, param2:UIContainerRovio, param3:§6"§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§7'§ = param1.@button;
         if(this.§7'§.length > 0)
         {
            this.§'w§ = AssetCache.§-9§(this.§7'§);
         }
         var _loc5_:String = param1.@buttonIconContainer;
         if(_loc5_.length > 0)
         {
            this.§"7§ = _loc5_;
         }
         this.§9n§ = §^7§;
         if(param1.@buttonAlign)
         {
            _loc14_ = param1.@buttonAlign;
            if(_loc14_.toUpperCase() == "BOTTOM")
            {
               this.§9n§ = §7![§;
            }
         }
         this.§>P§ = §=8§;
         if(param1.@surfaceAlign)
         {
            _loc15_ = param1.@surfaceAlign;
            if(_loc15_.toUpperCase() == "CENTER")
            {
               this.§>P§ = §^7§;
            }
         }
         var _loc6_:String = param1.@GlowFilter;
         if(_loc6_ && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§'Y§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            _loc17_ = <Button/>;
            _loc17_.@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §4!W§.push(new UIButtonRovio(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            _loc18_ = <Button/>;
            _loc18_.@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §4!W§.push(new UIButtonRovio(_loc18_,this));
         }
         this.§6z§ = mClip.getChildByName("Surface").x;
         this.§!Q§ = mClip.getChildByName("Surface").y;
         this.§=!2§ = mClip.getChildByName("Surface").width;
         this.§=c§ = mClip.getChildByName("Surface").height;
         this.§[L§ = mClip.getChildByName("Button_Area1").x - this.§6z§;
         this.§9a§ = mClip.getChildByName("Button_Area1").y - this.§!Q§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§6z§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§!Q§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§>S§ = _loc9_.bottom - this.§!Q§ - this.§9a§;
         this.§>W§ = _loc7_ - this.§[L§;
         this.§<-§ = _loc8_ - this.§9a§;
         if(Math.abs(this.§>W§) < 3)
         {
            this.§>W§ = 0;
         }
         if(Math.abs(this.§<-§) < 3)
         {
            this.§<-§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§>W§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§[L§ - this.§[L§) / this.§>W§;
         }
         if(this.§<-§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§9a§ - this.§9a§) / this.§<-§;
         }
         this.§6V§ = Math.min(_loc10_,_loc11_);
         this.§6[§ = _loc10_ <= _loc11_;
         var _loc12_:String = param1.@ScrollPerClick;
         if(_loc12_ && _loc12_.length > 0)
         {
            this.§ set§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§ set§ = this.§6V§;
         }
         this.§'t§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§6z§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§!Q§;
            this.mButtonMarginX2 = _loc19_ - this.§[L§;
            this.mButtonMarginY2 = _loc20_ - this.§9a§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§6[§)
            {
               this.§'t§ = 1 + (mClip.getChildByName("Surface").height - this.§9a§ - this.§9a§) / this.mButtonMarginY2;
            }
            else
            {
               this.§'t§ = 1 + (mClip.getChildByName("Surface").width - this.§[L§ - this.§[L§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String = param1.@backgroundInstance;
         if(_loc13_ && _loc13_.length > 0)
         {
            this.§'M§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§0!3§ = this.§'M§.x - mClip.getChildByName("Surface").x;
            this.§=t§ = this.§'M§.y - mClip.getChildByName("Surface").y;
            this.§1w§ = this.§'M§.x + this.§'M§.width - (this.§'M§.x + mClip.getChildByName("Surface").width);
            this.§>a§ = this.§'M§.y + this.§'M§.height - (this.§'M§.y + mClip.getChildByName("Surface").height);
            this.§@`§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§!4§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§;t§ = UIButtonGroupRovio.§3&§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§;t§ = UIButtonGroupRovio.§>Z§;
            }
         }
         this.§%U§();
      }
      
      public function §%U§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:UIRepeaterTabRovio = null;
         var _loc8_:UIButtonGroupRovio = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:UIRepeaterButtonRovio = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = UIRepeaterButtonRovio;
         }
         this.§->§ = new Vector.<UIButtonGroupRovio>();
         this.§2!0§();
         if(param1 == null)
         {
            param1 = getParentView().getRepeaterDataXML(mName);
         }
         if(!param1)
         {
            param1 = new Array();
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = mName + "_Tab_" + _loc3_;
            _loc5_ = new MovieClip();
            _loc6_ = <Container/>;
            _loc6_.@name = _loc4_;
            _loc7_ = new UIRepeaterTabRovio(_loc6_,this,null,_loc5_);
            §4!W§.push(_loc7_);
            _loc8_ = new UIButtonGroupRovio(this.§;t§,_loc4_);
            this.§->§.push(_loc8_);
            _loc9_ = this.§[L§;
            _loc10_ = this.§6V§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§>P§ == §^7§)
            {
               _loc9_ = (this.§=!2§ - (_loc10_ - 1) * this.§>W§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§4!W§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§4!W§.push(new param2(_loc12_,_loc7_,new this.§'w§() as MovieClip));
               }
               _loc13_ = _loc7_.§4!W§[_loc7_.§4!W§.length - 1] as UIRepeaterButtonRovio;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§"7§);
                  if(this.§9n§ == §7![§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§"7§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§'t§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§>W§;
                  _loc13_.y = this.§9a§ + _loc11_ * this.§<-§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§6V§ * this.§'t§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§6V§ * this.§'t§) / this.§6V§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§6V§ * this.§'t§) % this.§6V§;
                  if(this.§6[§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§>W§ + _loc16_ * this.§6V§ * this.§>W§;
                     _loc13_.y = this.§9a§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§9a§ + _loc18_ * this.§<-§ + _loc16_ * this.§6V§ * this.§<-§;
                  }
               }
               _loc8_.§#!0§(_loc13_);
               _loc11_++;
            }
            _loc8_.§9!+§("");
            _loc7_.§`I§(this.§6V§,this.§6z§,this.§!Q§,this.§ set§ * this.§>W§,this.§ set§ * this.§<-§,this.§'t§,this.§ set§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §4s§() : int
      {
         return this.§6V§;
      }
      
      public function get §9j§() : int
      {
         if(this.§4s§ == 0)
         {
            return 0;
         }
         return this.§9k§(this.§5!8§).§[A§.length / this.§4s§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc5_:UIButtonGroupRovio = null;
         var _loc4_:UIRepeaterTabRovio = getItemByName(this.§5!8§) as UIRepeaterTabRovio;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§3!Q§(_loc4_.§3!&§ - 1);
               this.§7N§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§3!Q§(_loc4_.§3!&§ + 1);
               this.§7N§();
            }
         }
         else if(param2.length > 0 && (param1 == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN || param1 == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP) && param3 is UIComponentRovio)
         {
            _loc5_ = this.§9k§((param3 as UIComponentRovio).mParentContainer.mName.toUpperCase());
            if(_loc5_ && param3 is UIRepeaterButtonRovio)
            {
               _loc5_.§9!+§((param3 as UIComponentRovio).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §3!§(param1:String, param2:int) : void
      {
         var _loc3_:UIRepeaterTabRovio = getItemByName(param1) as UIRepeaterTabRovio;
         if(_loc3_)
         {
            _loc3_.§3!Q§(param2);
            this.§7N§();
         }
      }
      
      public function §9k§(param1:String) : UIButtonGroupRovio
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§->§.length)
         {
            if(param1.toUpperCase() == (this.§->§[_loc2_] as UIButtonGroupRovio).mName.toUpperCase())
            {
               return this.§->§[_loc2_] as UIButtonGroupRovio;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § v§(param1:String) : void
      {
         this.§5!8§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §4!W§.length)
         {
            if(§4!W§[_loc2_] is UIRepeaterTabRovio)
            {
               if((§4!W§[_loc2_] as UIRepeaterTabRovio).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§4!W§[_loc2_] as UIRepeaterTabRovio).setActiveStatus(true);
                  if(this.§@`§)
                  {
                     this.§'M§.x = (§4!W§[_loc2_] as UIRepeaterTabRovio).x + this.§0!3§;
                     this.§'M§.width = (§4!W§[_loc2_] as UIRepeaterTabRovio).width + this.§1w§;
                  }
                  if(this.§!4§)
                  {
                     this.§'M§.y = (§4!W§[_loc2_] as UIRepeaterTabRovio).y + this.§=t§;
                     this.§'M§.height = (§4!W§[_loc2_] as UIRepeaterTabRovio).height + this.§>a§;
                  }
               }
               else
               {
                  (§4!W§[_loc2_] as UIRepeaterTabRovio).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§7N§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:UIButtonGroupRovio = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§->§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §7N§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:UIRepeaterTabRovio = getItemByName(this.§5!8§) as UIRepeaterTabRovio;
         if(_loc1_)
         {
            if(_loc1_.§3!&§ > 0)
            {
               (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
            }
            if(_loc1_.§3!&§ < _loc1_.§37§ - 1)
            {
               (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
            (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
         }
      }
      
      public function §2!0§() : void
      {
         var _loc2_:UIRepeaterTabRovio = null;
         var _loc1_:int = §4!W§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §4!W§[_loc1_] as UIRepeaterTabRovio;
            if(_loc2_)
            {
               _loc2_.clear();
               §4!W§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§ v§("");
      }
      
      public function §9!!§() : void
      {
         var _loc1_:UIButtonGroupRovio = null;
         for each(_loc1_ in this.§->§)
         {
            _loc1_.§9!!§();
         }
      }
      
      public function §4!i§() : Array
      {
         if(this.§9k§(this.§5!8§) == null)
         {
            Log.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§9k§(this.§5!8§).§1U§();
      }
      
      public function §4!D§(param1:Array) : void
      {
         this.§9k§(this.§5!8§).§4!D§(param1);
      }
      
      public function §+V§(param1:Number) : void
      {
         this.§9k§(this.§5!8§).§+V§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§'w§ = null;
         this.§->§ = null;
         this.§'Y§ = null;
      }
   }
}
