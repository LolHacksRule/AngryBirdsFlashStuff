package §2u§
{
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §'"!§.§9!E§;
   import §'"!§.§<!7§;
   import §1`§.§9%§;
   import §24§.;
   import com.rovio.assets.§=!V§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §]!>§ extends §,6§
   {
      
      public static const §"!W§:int = 0;
      
      public static const §^!O§:int = 1;
      
      public static const §<Q§:int = 2;
       
      
      public var §#!F§:String;
      
      public var §3!Z§:Class;
      
      public var §%!x§:String = null;
      
      public var include:Vector.<§9!E§>;
      
      public var §>f§:int;
      
      public var §@!g§:Number;
      
      public var §-!7§:Number;
      
      public var §+!>§:Number;
      
      public var §@4§:Number;
      
      public var §>;§:Number;
      
      public var §5!^§:Number;
      
      public var §>"3§:Number;
      
      public var §%^§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §<!-§:int;
      
      public var §?!P§:Number;
      
      public var §6b§:String = "";
      
      public var §@!3§:int;
      
      public var §5!3§:int;
      
      public var §9!t§:GlowFilter;
      
      public var § ;§:Boolean = true;
      
      public var §,!V§:int;
      
      public var §?!p§:int;
      
      public var §`_§:Number = 0;
      
      public var §4x§:Number = 0;
      
      public var §%"3§:Number = 0;
      
      public var §-!'§:Number = 0;
      
      public var §>"+§:Boolean = false;
      
      public var §]!x§:Boolean = false;
      
      public var §=f§:MovieClip = null;
      
      public function §]!>§(param1:XML, param2:§,6§, param3:§9%§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§#!F§ = param1.@button;
         if(this.§#!F§.length > 0)
         {
            this.§3!Z§ = §=!V§.§?!O§(this.§#!F§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§%!x§ = _loc5_;
         }
         this.§@!3§ = §"!W§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§@!3§ = §^!O§;
            }
         }
         this.§5!3§ = §<Q§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§5!3§ = §"!W§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§9!t§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §,_§.push(new §]"%§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §,_§.push(new §]"%§(_loc18_,this));
         }
         this.§@!g§ = mClip.getChildByName("Surface").x;
         this.§-!7§ = mClip.getChildByName("Surface").y;
         this.§+!>§ = mClip.getChildByName("Surface").width;
         this.§@4§ = mClip.getChildByName("Surface").height;
         this.§>;§ = mClip.getChildByName("Button_Area1").x - this.§@!g§;
         this.§5!^§ = mClip.getChildByName("Button_Area1").y - this.§-!7§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§@!g§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§-!7§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§?!P§ = _loc9_.bottom - this.§-!7§ - this.§5!^§;
         this.§>"3§ = _loc7_ - this.§>;§;
         this.§%^§ = _loc8_ - this.§5!^§;
         if(Math.abs(this.§>"3§) < 3)
         {
            this.§>"3§ = 0;
         }
         if(Math.abs(this.§%^§) < 3)
         {
            this.§%^§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§>"3§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§>;§ - this.§>;§) / this.§>"3§;
         }
         if(this.§%^§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§5!^§ - this.§5!^§) / this.§%^§;
         }
         this.§>f§ = Math.min(_loc10_,_loc11_);
         this.§ ;§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§,!V§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§,!V§ = this.§>f§;
         }
         this.§<!-§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§@!g§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§-!7§;
            this.mButtonMarginX2 = _loc19_ - this.§>;§;
            this.mButtonMarginY2 = _loc20_ - this.§5!^§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§ ;§)
            {
               this.§<!-§ = 1 + (mClip.getChildByName("Surface").height - this.§5!^§ - this.§5!^§) / this.mButtonMarginY2;
            }
            else
            {
               this.§<!-§ = 1 + (mClip.getChildByName("Surface").width - this.§>;§ - this.§>;§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§=f§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§%"3§ = this.§=f§.x - mClip.getChildByName("Surface").x;
            this.§-!'§ = this.§=f§.y - mClip.getChildByName("Surface").y;
            this.§`_§ = this.§=f§.x + this.§=f§.width - (this.§=f§.x + mClip.getChildByName("Surface").width);
            this.§4x§ = this.§=f§.y + this.§=f§.height - (this.§=f§.y + mClip.getChildByName("Surface").height);
            this.§>"+§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§]!x§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§?!p§ = §9!E§.§[!S§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§?!p§ = §9!E§.§<X§;
            }
         }
         this.§,!z§();
      }
      
      public function §,!z§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§<Y§ = null;
         var _loc8_:§9!E§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§!!j§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §!!j§;
         }
         this.include = new Vector.<§9!E§>();
         this.§+L§();
         if(!param1)
         {
            param1 = new Array();
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = mName + "_Tab_" + _loc3_;
            _loc5_ = new MovieClip();
            (_loc6_ = <Container/>).@name = _loc4_;
            _loc7_ = new §<Y§(_loc6_,this,null,_loc5_);
            §,_§.push(_loc7_);
            _loc8_ = new §9!E§(this.§?!p§,_loc4_);
            this.include.push(_loc8_);
            _loc9_ = this.§>;§;
            _loc10_ = this.§>f§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§5!3§ == §"!W§)
            {
               _loc9_ = (this.§+!>§ - (_loc10_ - 1) * this.§>"3§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§,_§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§,_§.push(new param2(_loc12_,_loc7_,new this.§3!Z§() as MovieClip));
               }
               _loc13_ = _loc7_.§,_§[_loc7_.§,_§.length - 1] as §!!j§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§0!d§(_loc14_,this.§%!x§);
                  if(this.§@!3§ == §^!O§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§%!x§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§<!-§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§>"3§;
                  _loc13_.y = this.§5!^§ + _loc11_ * this.§%^§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§>f§ * this.§<!-§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§>f§ * this.§<!-§) / this.§>f§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§>f§ * this.§<!-§) % this.§>f§;
                  if(this.§ ;§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§>"3§ + _loc16_ * this.§>f§ * this.§>"3§;
                     _loc13_.y = this.§5!^§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§5!^§ + _loc18_ * this.§%^§ + _loc16_ * this.§>f§ * this.§%^§;
                  }
               }
               _loc8_.§&k§(_loc13_);
               _loc11_++;
            }
            _loc8_.§]!f§("");
            _loc7_.§<"-§(this.§>f§,this.§@!g§,this.§-!7§,this.§,!V§ * this.§>"3§,this.§,!V§ * this.§%^§,this.§<!-§,this.§,!V§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §<B§() : int
      {
         return this.§>f§;
      }
      
      public function get §6!=§() : int
      {
         if(this.§<B§ == 0)
         {
            return 0;
         }
         return this.§8!t§(this.§6b§).§9-§.length / this.§<B§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§+§, param4:Event = null) : void
      {
         var _loc6_:§9!E§ = null;
         var _loc5_:§<Y§ = getItemByName(this.§6b§) as §<Y§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§""0§(_loc5_.§'!6§ - 1);
               this.§!$§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§""0§(_loc5_.§'!6§ + 1);
               this.§!$§();
            }
         }
         else if(param2.length > 0 && (param1 == §+§.LISTENER_EVENT_MOUSE_DOWN || param1 == §+§.LISTENER_EVENT_MOUSE_UP) && param3 is §<!7§)
         {
            if((_loc6_ = this.§8!t§((param3 as §<!7§).mParentContainer.mName.toUpperCase())) && param3 is §!!j§)
            {
               _loc6_.§]!f§((param3 as §<!7§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §[p§(param1:String, param2:int) : void
      {
         var _loc3_:§<Y§ = getItemByName(param1) as §<Y§;
         if(_loc3_)
         {
            _loc3_.§""0§(param2);
            this.§!$§();
         }
      }
      
      public function §8!t§(param1:String) : §9!E§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.include.length)
         {
            if(param1.toUpperCase() == (this.include[_loc2_] as §9!E§).mName.toUpperCase())
            {
               return this.include[_loc2_] as §9!E§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §<%§(param1:String) : void
      {
         this.§6b§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §,_§.length)
         {
            if(§,_§[_loc2_] is §<Y§)
            {
               if((§,_§[_loc2_] as §<Y§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§,_§[_loc2_] as §<Y§).setActiveStatus(true);
                  if(this.§>"+§)
                  {
                     this.§=f§.x = (§,_§[_loc2_] as §<Y§).x + this.§%"3§;
                     this.§=f§.width = (§,_§[_loc2_] as §<Y§).width + this.§`_§;
                  }
                  if(this.§]!x§)
                  {
                     this.§=f§.y = (§,_§[_loc2_] as §<Y§).y + this.§-!'§;
                     this.§=f§.height = (§,_§[_loc2_] as §<Y§).height + this.§4x§;
                  }
               }
               else
               {
                  (§,_§[_loc2_] as §<Y§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§!$§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§9!E§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.include)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §!$§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§<Y§ = getItemByName(this.§6b§) as §<Y§;
         if(_loc1_)
         {
            if(_loc1_.§'!6§ > 0)
            {
               (getItemByName("Button_Scroll1") as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§'!6§ < _loc1_.§^U§ - 1)
            {
               (getItemByName("Button_Scroll2") as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §+L§() : void
      {
         var _loc2_:§<Y§ = null;
         var _loc1_:int = §,_§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §,_§[_loc1_] as §<Y§;
            if(_loc2_)
            {
               _loc2_.clear();
               §,_§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§<%§("");
      }
      
      public function §>""§() : void
      {
         var _loc1_:§9!E§ = null;
         for each(_loc1_ in this.include)
         {
            _loc1_.§>""§();
         }
      }
      
      public function §'r§() : Array
      {
         if(this.§8!t§(this.§6b§) == null)
         {
            §#7§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§8!t§(this.§6b§).§"C§();
      }
      
      public function §1!a§(param1:Array) : void
      {
         this.§8!t§(this.§6b§).§1!a§(param1);
      }
      
      public function §4r§(param1:Number) : void
      {
         this.§8!t§(this.§6b§).§4r§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§3!Z§ = null;
         this.include = null;
         this.§9!t§ = null;
      }
   }
}
