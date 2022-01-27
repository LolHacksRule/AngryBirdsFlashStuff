package §"U§
{
   import §6v§.§64§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §6v§.§var §;
   import §]!-§.§`o§;
   import §`K§.§ L§;
   import com.rovio.assets.§[!D§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §"]§ extends §[Q§
   {
      
      public static const §1W§:int = 0;
      
      public static const §>b§:int = 1;
      
      public static const §&@§:int = 2;
       
      
      public var §=!@§:String;
      
      public var §`C§:Class;
      
      public var §0!@§:String = null;
      
      public var §"P§:Vector.<§64§>;
      
      public var §0g§:int;
      
      public var §9;§:Number;
      
      public var §>p§:Number;
      
      public var §;!!§:Number;
      
      public var §`§:Number;
      
      public var §&C§:Number;
      
      public var §+E§:Number;
      
      public var §2E§:Number;
      
      public var §%!B§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §&R§:int;
      
      public var § 9§:Number;
      
      public var §!Q§:String = "";
      
      public var §?E§:int;
      
      public var §4>§:int;
      
      public var §@O§:GlowFilter;
      
      public var §8!A§:Boolean = true;
      
      public var §^T§:int;
      
      public var §?<§:int;
      
      public var §[!P§:Number = 0;
      
      public var §1n§:Number = 0;
      
      public var §<q§:Number = 0;
      
      public var §5!4§:Number = 0;
      
      public var §5!;§:Boolean = false;
      
      public var §]$§:Boolean = false;
      
      public var §!w§:MovieClip = null;
      
      public function §"]§(param1:XML, param2:§[Q§, param3:§`o§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§=!@§ = param1.@button;
         if(this.§=!@§.length > 0)
         {
            this.§`C§ = §[!D§.§8!N§(this.§=!@§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§0!@§ = _loc5_;
         }
         this.§?E§ = §1W§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§?E§ = §>b§;
            }
         }
         this.§4>§ = §&@§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§4>§ = §1W§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§@O§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §`!O§.push(new §^'§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §`!O§.push(new §^'§(_loc18_,this));
         }
         this.§9;§ = mClip.getChildByName("Surface").x;
         this.§>p§ = mClip.getChildByName("Surface").y;
         this.§;!!§ = mClip.getChildByName("Surface").width;
         this.§`§ = mClip.getChildByName("Surface").height;
         this.§&C§ = mClip.getChildByName("Button_Area1").x - this.§9;§;
         this.§+E§ = mClip.getChildByName("Button_Area1").y - this.§>p§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§9;§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§>p§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§ 9§ = _loc9_.bottom - this.§>p§ - this.§+E§;
         this.§2E§ = _loc7_ - this.§&C§;
         this.§%!B§ = _loc8_ - this.§+E§;
         if(Math.abs(this.§2E§) < 3)
         {
            this.§2E§ = 0;
         }
         if(Math.abs(this.§%!B§) < 3)
         {
            this.§%!B§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§2E§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§&C§ - this.§&C§) / this.§2E§;
         }
         if(this.§%!B§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§+E§ - this.§+E§) / this.§%!B§;
         }
         this.§0g§ = Math.min(_loc10_,_loc11_);
         this.§8!A§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§^T§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§^T§ = this.§0g§;
         }
         this.§&R§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§9;§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§>p§;
            this.mButtonMarginX2 = _loc19_ - this.§&C§;
            this.mButtonMarginY2 = _loc20_ - this.§+E§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§8!A§)
            {
               this.§&R§ = 1 + (mClip.getChildByName("Surface").height - this.§+E§ - this.§+E§) / this.mButtonMarginY2;
            }
            else
            {
               this.§&R§ = 1 + (mClip.getChildByName("Surface").width - this.§&C§ - this.§&C§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§!w§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§<q§ = this.§!w§.x - mClip.getChildByName("Surface").x;
            this.§5!4§ = this.§!w§.y - mClip.getChildByName("Surface").y;
            this.§[!P§ = this.§!w§.x + this.§!w§.width - (this.§!w§.x + mClip.getChildByName("Surface").width);
            this.§1n§ = this.§!w§.y + this.§!w§.height - (this.§!w§.y + mClip.getChildByName("Surface").height);
            this.§5!;§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§]$§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§?<§ = §64§.§61§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§?<§ = §64§.§[W§;
            }
         }
         this.§90§();
      }
      
      public function §90§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§@!E§ = null;
         var _loc8_:§64§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§&!M§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §&!M§;
         }
         this.§"P§ = new Vector.<§64§>();
         this.§^-§();
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
            (_loc6_ = <Container/>).@name = _loc4_;
            _loc7_ = new §@!E§(_loc6_,this,null,_loc5_);
            §`!O§.push(_loc7_);
            _loc8_ = new §64§(this.§?<§,_loc4_);
            this.§"P§.push(_loc8_);
            _loc9_ = this.§&C§;
            _loc10_ = this.§0g§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§4>§ == §1W§)
            {
               _loc9_ = (this.§;!!§ - (_loc10_ - 1) * this.§2E§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§`!O§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§`!O§.push(new param2(_loc12_,_loc7_,new this.§`C§() as MovieClip));
               }
               _loc13_ = _loc7_.§`!O§[_loc7_.§`!O§.length - 1] as §&!M§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§[!0§(_loc14_,this.§0!@§);
                  if(this.§?E§ == §>b§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§0!@§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§&R§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§2E§;
                  _loc13_.y = this.§+E§ + _loc11_ * this.§%!B§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§0g§ * this.§&R§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§0g§ * this.§&R§) / this.§0g§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§0g§ * this.§&R§) % this.§0g§;
                  if(this.§8!A§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§2E§ + _loc16_ * this.§0g§ * this.§2E§;
                     _loc13_.y = this.§+E§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§+E§ + _loc18_ * this.§%!B§ + _loc16_ * this.§0g§ * this.§%!B§;
                  }
               }
               _loc8_.§3!F§(_loc13_);
               _loc11_++;
            }
            _loc8_.§6L§("");
            _loc7_.§%7§(this.§0g§,this.§9;§,this.§>p§,this.§^T§ * this.§2E§,this.§^T§ * this.§%!B§,this.§&R§,this.§^T§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §"X§() : int
      {
         return this.§0g§;
      }
      
      public function get §%w§() : int
      {
         if(this.§"X§ == 0)
         {
            return 0;
         }
         return this.§%s§(this.§!Q§).§%%§.length / this.§"X§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc5_:§64§ = null;
         var _loc4_:§@!E§ = getItemByName(this.§!Q§) as §@!E§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§5N§(_loc4_.§,8§ - 1);
               this.§7!E§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§5N§(_loc4_.§,8§ + 1);
               this.§7!E§();
            }
         }
         else if(param2.length > 0 && (param1 == §`M§.LISTENER_EVENT_MOUSE_DOWN || param1 == §`M§.LISTENER_EVENT_MOUSE_UP) && param3 is §var §)
         {
            if((_loc5_ = this.§%s§((param3 as §var §).mParentContainer.mName.toUpperCase())) && param3 is §&!M§)
            {
               _loc5_.§6L§((param3 as §var §).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §2$§(param1:String, param2:int) : void
      {
         var _loc3_:§@!E§ = getItemByName(param1) as §@!E§;
         if(_loc3_)
         {
            _loc3_.§5N§(param2);
            this.§7!E§();
         }
      }
      
      public function §%s§(param1:String) : §64§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§"P§.length)
         {
            if(param1.toUpperCase() == (this.§"P§[_loc2_] as §64§).mName.toUpperCase())
            {
               return this.§"P§[_loc2_] as §64§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §false§(param1:String) : void
      {
         this.§!Q§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §`!O§.length)
         {
            if(§`!O§[_loc2_] is §@!E§)
            {
               if((§`!O§[_loc2_] as §@!E§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§`!O§[_loc2_] as §@!E§).setActiveStatus(true);
                  if(this.§5!;§)
                  {
                     this.§!w§.x = (§`!O§[_loc2_] as §@!E§).x + this.§<q§;
                     this.§!w§.width = (§`!O§[_loc2_] as §@!E§).width + this.§[!P§;
                  }
                  if(this.§]$§)
                  {
                     this.§!w§.y = (§`!O§[_loc2_] as §@!E§).y + this.§5!4§;
                     this.§!w§.height = (§`!O§[_loc2_] as §@!E§).height + this.§1n§;
                  }
               }
               else
               {
                  (§`!O§[_loc2_] as §@!E§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§7!E§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§64§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§"P§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §7!E§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§@!E§ = getItemByName(this.§!Q§) as §@!E§;
         if(_loc1_)
         {
            if(_loc1_.§,8§ > 0)
            {
               (getItemByName("Button_Scroll1") as §^'§).setComponentState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §^'§).setComponentState(§@V§.§!%§);
            }
            if(_loc1_.§,8§ < _loc1_.§#$§ - 1)
            {
               (getItemByName("Button_Scroll2") as §^'§).setComponentState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §^'§).setComponentState(§@V§.§!%§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §^'§).setComponentState(§@V§.§!%§);
            (getItemByName("Button_Scroll2") as §^'§).setComponentState(§@V§.§!%§);
         }
      }
      
      public function §^-§() : void
      {
         var _loc2_:§@!E§ = null;
         var _loc1_:int = §`!O§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §`!O§[_loc1_] as §@!E§;
            if(_loc2_)
            {
               _loc2_.clear();
               §`!O§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§false§("");
      }
      
      public function §%!;§() : void
      {
         var _loc1_:§64§ = null;
         for each(_loc1_ in this.§"P§)
         {
            _loc1_.§%!;§();
         }
      }
      
      public function §6U§() : Array
      {
         if(this.§%s§(this.§!Q§) == null)
         {
            § L§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§%s§(this.§!Q§).§7!=§();
      }
      
      public function §6x§(param1:Array) : void
      {
         this.§%s§(this.§!Q§).§6x§(param1);
      }
      
      public function §>!1§(param1:Number) : void
      {
         this.§%s§(this.§!Q§).§>!1§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§`C§ = null;
         this.§"P§ = null;
         this.§@O§ = null;
      }
   }
}
