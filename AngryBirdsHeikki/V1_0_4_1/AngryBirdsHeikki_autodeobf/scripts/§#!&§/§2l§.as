package §#!&§
{
   import §%!$§.§[Z§;
   import §7!X§.§7g§;
   import §7S§.§3t§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import §var§.§+!^§;
   import §var§.§8!_§;
   import §var§.§;!&§;
   import §var§.§<N§;
   
   public class §2l§ extends §59§
   {
      
      public static const §-?§:int = 0;
      
      public static const §0!<§:int = 1;
      
      public static const §<S§:int = 2;
       
      
      public var §5§:String;
      
      public var §+!3§:Class;
      
      public var §#[§:String = null;
      
      public var §>0§:Vector.<§<N§>;
      
      public var §9!@§:int;
      
      public var §&^§:Number;
      
      public var §+7§:Number;
      
      public var §3K§:Number;
      
      public var § U§:Number;
      
      public var §,N§:Number;
      
      public var §@,§:Number;
      
      public var §+9§:Number;
      
      public var §%?§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §8s§:int;
      
      public var §3!C§:Number;
      
      public var §-_§:String = "";
      
      public var §+!1§:int;
      
      public var §'!3§:int;
      
      public var §57§:GlowFilter;
      
      public var §^N§:Boolean = true;
      
      public var §#5§:int;
      
      public var §&i§:int;
      
      public var §1Z§:Number = 0;
      
      public var §!c§:Number = 0;
      
      public var §@!W§:Number = 0;
      
      public var §#!E§:Number = 0;
      
      public var §[!R§:Boolean = false;
      
      public var §%!a§:Boolean = false;
      
      public var §<#§:MovieClip = null;
      
      public function §2l§(param1:XML, param2:§59§, param3:§7g§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§5§ = param1.@button;
         if(this.§5§.length > 0)
         {
            this.§+!3§ = §3t§.§#v§(this.§5§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§#[§ = _loc5_;
         }
         this.§+!1§ = §-?§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§+!1§ = §0!<§;
            }
         }
         this.§'!3§ = §<S§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§'!3§ = §-?§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§57§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §0l§.push(new §#O§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §0l§.push(new §#O§(_loc18_,this));
         }
         this.§&^§ = mClip.getChildByName("Surface").x;
         this.§+7§ = mClip.getChildByName("Surface").y;
         this.§3K§ = mClip.getChildByName("Surface").width;
         this.§ U§ = mClip.getChildByName("Surface").height;
         this.§,N§ = mClip.getChildByName("Button_Area1").x - this.§&^§;
         this.§@,§ = mClip.getChildByName("Button_Area1").y - this.§+7§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§&^§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§+7§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§3!C§ = _loc9_.bottom - this.§+7§ - this.§@,§;
         this.§+9§ = _loc7_ - this.§,N§;
         this.§%?§ = _loc8_ - this.§@,§;
         if(Math.abs(this.§+9§) < 3)
         {
            this.§+9§ = 0;
         }
         if(Math.abs(this.§%?§) < 3)
         {
            this.§%?§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§+9§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§,N§ - this.§,N§) / this.§+9§;
         }
         if(this.§%?§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§@,§ - this.§@,§) / this.§%?§;
         }
         this.§9!@§ = Math.min(_loc10_,_loc11_);
         this.§^N§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§#5§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§#5§ = this.§9!@§;
         }
         this.§8s§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§&^§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§+7§;
            this.mButtonMarginX2 = _loc19_ - this.§,N§;
            this.mButtonMarginY2 = _loc20_ - this.§@,§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§^N§)
            {
               this.§8s§ = 1 + (mClip.getChildByName("Surface").height - this.§@,§ - this.§@,§) / this.mButtonMarginY2;
            }
            else
            {
               this.§8s§ = 1 + (mClip.getChildByName("Surface").width - this.§,N§ - this.§,N§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§<#§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§@!W§ = this.§<#§.x - mClip.getChildByName("Surface").x;
            this.§#!E§ = this.§<#§.y - mClip.getChildByName("Surface").y;
            this.§1Z§ = this.§<#§.x + this.§<#§.width - (this.§<#§.x + mClip.getChildByName("Surface").width);
            this.§!c§ = this.§<#§.y + this.§<#§.height - (this.§<#§.y + mClip.getChildByName("Surface").height);
            this.§[!R§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§%!a§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§&i§ = §<N§.§^!P§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§&i§ = §<N§.§;F§;
            }
         }
         this.§ h§();
      }
      
      public function § h§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§9,§ = null;
         var _loc8_:§<N§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§+T§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §+T§;
         }
         this.§>0§ = new Vector.<§<N§>();
         this.§6!a§();
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
            _loc7_ = new §9,§(_loc6_,this,null,_loc5_);
            §0l§.push(_loc7_);
            _loc8_ = new §<N§(this.§&i§,_loc4_);
            this.§>0§.push(_loc8_);
            _loc9_ = this.§,N§;
            _loc10_ = this.§9!@§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§'!3§ == §-?§)
            {
               _loc9_ = (this.§3K§ - (_loc10_ - 1) * this.§+9§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§0l§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§0l§.push(new param2(_loc12_,_loc7_,new this.§+!3§() as MovieClip));
               }
               _loc13_ = _loc7_.§0l§[_loc7_.§0l§.length - 1] as §+T§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§1q§(_loc14_,this.§#[§);
                  if(this.§+!1§ == §0!<§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§#[§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§8s§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§+9§;
                  _loc13_.y = this.§@,§ + _loc11_ * this.§%?§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§9!@§ * this.§8s§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§9!@§ * this.§8s§) / this.§9!@§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§9!@§ * this.§8s§) % this.§9!@§;
                  if(this.§^N§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§+9§ + _loc16_ * this.§9!@§ * this.§+9§;
                     _loc13_.y = this.§@,§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§@,§ + _loc18_ * this.§%?§ + _loc16_ * this.§9!@§ * this.§%?§;
                  }
               }
               _loc8_.§^-§(_loc13_);
               _loc11_++;
            }
            _loc8_.§!7§("");
            _loc7_.§&u§(this.§9!@§,this.§&^§,this.§+7§,this.§#5§ * this.§+9§,this.§#5§ * this.§%?§,this.§8s§,this.§#5§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §3!$§() : int
      {
         return this.§9!@§;
      }
      
      public function get §,!%§() : int
      {
         if(this.§3!$§ == 0)
         {
            return 0;
         }
         return this.§1!K§(this.§-_§).§@!C§.length / this.§3!$§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§+!^§) : void
      {
         var _loc5_:§<N§ = null;
         var _loc4_:§9,§ = getItemByName(this.§-_§) as §9,§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§>n§(_loc4_.§^Q§ - 1);
               this.§!!"§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§>n§(_loc4_.§^Q§ + 1);
               this.§!!"§();
            }
         }
         else if(param2.length > 0 && (param1 == §+!^§.LISTENER_EVENT_MOUSE_DOWN || param1 == §+!^§.LISTENER_EVENT_MOUSE_UP) && param3 is §;!&§)
         {
            if((_loc5_ = this.§1!K§((param3 as §;!&§).mParentContainer.mName.toUpperCase())) && param3 is §+T§)
            {
               _loc5_.§!7§((param3 as §;!&§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §25§(param1:String, param2:int) : void
      {
         var _loc3_:§9,§ = getItemByName(param1) as §9,§;
         if(_loc3_)
         {
            _loc3_.§>n§(param2);
            this.§!!"§();
         }
      }
      
      public function §1!K§(param1:String) : §<N§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§>0§.length)
         {
            if(param1.toUpperCase() == (this.§>0§[_loc2_] as §<N§).mName.toUpperCase())
            {
               return this.§>0§[_loc2_] as §<N§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §!@§(param1:String) : void
      {
         this.§-_§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §0l§.length)
         {
            if(§0l§[_loc2_] is §9,§)
            {
               if((§0l§[_loc2_] as §9,§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§0l§[_loc2_] as §9,§).setActiveStatus(true);
                  if(this.§[!R§)
                  {
                     this.§<#§.x = (§0l§[_loc2_] as §9,§).x + this.§@!W§;
                     this.§<#§.width = (§0l§[_loc2_] as §9,§).width + this.§1Z§;
                  }
                  if(this.§%!a§)
                  {
                     this.§<#§.y = (§0l§[_loc2_] as §9,§).y + this.§#!E§;
                     this.§<#§.height = (§0l§[_loc2_] as §9,§).height + this.§!c§;
                  }
               }
               else
               {
                  (§0l§[_loc2_] as §9,§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§!!"§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§<N§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§>0§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §!!"§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§9,§ = getItemByName(this.§-_§) as §9,§;
         if(_loc1_)
         {
            if(_loc1_.§^Q§ > 0)
            {
               (getItemByName("Button_Scroll1") as §#O§).setComponentState(§8!_§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §#O§).setComponentState(§8!_§.§4Z§);
            }
            if(_loc1_.§^Q§ < _loc1_.§]!3§ - 1)
            {
               (getItemByName("Button_Scroll2") as §#O§).setComponentState(§8!_§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §#O§).setComponentState(§8!_§.§4Z§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §#O§).setComponentState(§8!_§.§4Z§);
            (getItemByName("Button_Scroll2") as §#O§).setComponentState(§8!_§.§4Z§);
         }
      }
      
      public function §6!a§() : void
      {
         var _loc2_:§9,§ = null;
         var _loc1_:int = §0l§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §0l§[_loc1_] as §9,§;
            if(_loc2_)
            {
               _loc2_.clear();
               §0l§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§!@§("");
      }
      
      public function §[!#§() : void
      {
         var _loc1_:§<N§ = null;
         for each(_loc1_ in this.§>0§)
         {
            _loc1_.§[!#§();
         }
      }
      
      public function §%g§() : Array
      {
         if(this.§1!K§(this.§-_§) == null)
         {
            §[Z§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§1!K§(this.§-_§).§39§();
      }
      
      public function §use §(param1:Array) : void
      {
         this.§1!K§(this.§-_§).§use §(param1);
      }
      
      public function §[a§(param1:Number) : void
      {
         this.§1!K§(this.§-_§).§[a§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§+!3§ = null;
         this.§>0§ = null;
         this.§57§ = null;
      }
   }
}
