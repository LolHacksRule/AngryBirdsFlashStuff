package §!t§
{
   import §"1§.§3'§;
   import §5F§.§!!A§;
   import §5F§.§+!O§;
   import §5F§.§3^§;
   import §5F§.§=O§;
   import §>!7§.§"Q§;
   import com.rovio.assets.§[G§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §@R§ extends §;1§
   {
      
      public static const §"!6§:int = 0;
      
      public static const §=!8§:int = 1;
      
      public static const §&!G§:int = 2;
       
      
      public var §?L§:String;
      
      public var §4'§:Class;
      
      public var §0+§:String = null;
      
      public var §-!M§:Vector.<§=O§>;
      
      public var §5-§:int;
      
      public var §2!K§:Number;
      
      public var §>Z§:Number;
      
      public var §@h§:Number;
      
      public var §?z§:Number;
      
      public var §2Y§:Number;
      
      public var §6Z§:Number;
      
      public var §]@§:Number;
      
      public var §0!§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §>!§:int;
      
      public var §-H§:Number;
      
      public var §7!6§:String = "";
      
      public var §9B§:int;
      
      public var §;u§:int;
      
      public var §"!&§:GlowFilter;
      
      public var §=N§:Boolean = true;
      
      public var §'B§:int;
      
      public var §^m§:int;
      
      public var §3[§:Number = 0;
      
      public var §`q§:Number = 0;
      
      public var §%`§:Number = 0;
      
      public var § O§:Number = 0;
      
      public var §<C§:Boolean = false;
      
      public var §?C§:Boolean = false;
      
      public var §3a§:MovieClip = null;
      
      public function §@R§(param1:XML, param2:§;1§, param3:§"Q§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§?L§ = param1.@button;
         if(this.§?L§.length > 0)
         {
            this.§4'§ = §[G§.§6u§(this.§?L§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§0+§ = _loc5_;
         }
         this.§9B§ = §"!6§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§9B§ = §=!8§;
            }
         }
         this.§;u§ = §&!G§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§;u§ = §"!6§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§"!&§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §8A§.push(new §5b§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §8A§.push(new §5b§(_loc18_,this));
         }
         this.§2!K§ = mClip.getChildByName("Surface").x;
         this.§>Z§ = mClip.getChildByName("Surface").y;
         this.§@h§ = mClip.getChildByName("Surface").width;
         this.§?z§ = mClip.getChildByName("Surface").height;
         this.§2Y§ = mClip.getChildByName("Button_Area1").x - this.§2!K§;
         this.§6Z§ = mClip.getChildByName("Button_Area1").y - this.§>Z§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§2!K§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§>Z§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§-H§ = _loc9_.bottom - this.§>Z§ - this.§6Z§;
         this.§]@§ = _loc7_ - this.§2Y§;
         this.§0!§ = _loc8_ - this.§6Z§;
         if(Math.abs(this.§]@§) < 3)
         {
            this.§]@§ = 0;
         }
         if(Math.abs(this.§0!§) < 3)
         {
            this.§0!§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§]@§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§2Y§ - this.§2Y§) / this.§]@§;
         }
         if(this.§0!§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§6Z§ - this.§6Z§) / this.§0!§;
         }
         this.§5-§ = Math.min(_loc10_,_loc11_);
         this.§=N§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§'B§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§'B§ = this.§5-§;
         }
         this.§>!§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§2!K§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§>Z§;
            this.mButtonMarginX2 = _loc19_ - this.§2Y§;
            this.mButtonMarginY2 = _loc20_ - this.§6Z§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§=N§)
            {
               this.§>!§ = 1 + (mClip.getChildByName("Surface").height - this.§6Z§ - this.§6Z§) / this.mButtonMarginY2;
            }
            else
            {
               this.§>!§ = 1 + (mClip.getChildByName("Surface").width - this.§2Y§ - this.§2Y§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§3a§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§%`§ = this.§3a§.x - mClip.getChildByName("Surface").x;
            this.§ O§ = this.§3a§.y - mClip.getChildByName("Surface").y;
            this.§3[§ = this.§3a§.x + this.§3a§.width - (this.§3a§.x + mClip.getChildByName("Surface").width);
            this.§`q§ = this.§3a§.y + this.§3a§.height - (this.§3a§.y + mClip.getChildByName("Surface").height);
            this.§<C§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§?C§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§^m§ = §=O§.§!6§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§^m§ = §=O§.§[z§;
            }
         }
         this.§[8§();
      }
      
      public function §[8§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§90§ = null;
         var _loc8_:§=O§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§%5§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §%5§;
         }
         this.§-!M§ = new Vector.<§=O§>();
         this.§2H§();
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
            _loc7_ = new §90§(_loc6_,this,null,_loc5_);
            §8A§.push(_loc7_);
            _loc8_ = new §=O§(this.§^m§,_loc4_);
            this.§-!M§.push(_loc8_);
            _loc9_ = this.§2Y§;
            _loc10_ = this.§5-§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§;u§ == §"!6§)
            {
               _loc9_ = (this.§@h§ - (_loc10_ - 1) * this.§]@§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§8A§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§8A§.push(new param2(_loc12_,_loc7_,new this.§4'§() as MovieClip));
               }
               _loc13_ = _loc7_.§8A§[_loc7_.§8A§.length - 1] as §%5§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§=!N§(_loc14_,this.§0+§);
                  if(this.§9B§ == §=!8§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§0+§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§>!§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§]@§;
                  _loc13_.y = this.§6Z§ + _loc11_ * this.§0!§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§5-§ * this.§>!§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§5-§ * this.§>!§) / this.§5-§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§5-§ * this.§>!§) % this.§5-§;
                  if(this.§=N§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§]@§ + _loc16_ * this.§5-§ * this.§]@§;
                     _loc13_.y = this.§6Z§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§6Z§ + _loc18_ * this.§0!§ + _loc16_ * this.§5-§ * this.§0!§;
                  }
               }
               _loc8_.§"=§(_loc13_);
               _loc11_++;
            }
            _loc8_.§]H§("");
            _loc7_.§]0§(this.§5-§,this.§2!K§,this.§>Z§,this.§'B§ * this.§]@§,this.§'B§ * this.§0!§,this.§>!§,this.§'B§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §9a§() : int
      {
         return this.§5-§;
      }
      
      public function get §3y§() : int
      {
         if(this.§9a§ == 0)
         {
            return 0;
         }
         return this.§7!L§(this.§7!6§).§%!2§.length / this.§9a§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§+!O§) : void
      {
         var _loc5_:§=O§ = null;
         var _loc4_:§90§ = getItemByName(this.§7!6§) as §90§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§+!;§(_loc4_.§0J§ - 1);
               this.§9§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§+!;§(_loc4_.§0J§ + 1);
               this.§9§();
            }
         }
         else if(param2.length > 0 && (param1 == §+!O§.LISTENER_EVENT_MOUSE_DOWN || param1 == §+!O§.LISTENER_EVENT_MOUSE_UP) && param3 is §!!A§)
         {
            if((_loc5_ = this.§7!L§((param3 as §!!A§).mParentContainer.mName.toUpperCase())) && param3 is §%5§)
            {
               _loc5_.§]H§((param3 as §!!A§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §<x§(param1:String, param2:int) : void
      {
         var _loc3_:§90§ = getItemByName(param1) as §90§;
         if(_loc3_)
         {
            _loc3_.§+!;§(param2);
            this.§9§();
         }
      }
      
      public function §7!L§(param1:String) : §=O§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!M§.length)
         {
            if(param1.toUpperCase() == (this.§-!M§[_loc2_] as §=O§).mName.toUpperCase())
            {
               return this.§-!M§[_loc2_] as §=O§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §!!<§(param1:String) : void
      {
         this.§7!6§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §8A§.length)
         {
            if(§8A§[_loc2_] is §90§)
            {
               if((§8A§[_loc2_] as §90§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§8A§[_loc2_] as §90§).setActiveStatus(true);
                  if(this.§<C§)
                  {
                     this.§3a§.x = (§8A§[_loc2_] as §90§).x + this.§%`§;
                     this.§3a§.width = (§8A§[_loc2_] as §90§).width + this.§3[§;
                  }
                  if(this.§?C§)
                  {
                     this.§3a§.y = (§8A§[_loc2_] as §90§).y + this.§ O§;
                     this.§3a§.height = (§8A§[_loc2_] as §90§).height + this.§`q§;
                  }
               }
               else
               {
                  (§8A§[_loc2_] as §90§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§9§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§=O§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§-!M§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §9§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§90§ = getItemByName(this.§7!6§) as §90§;
         if(_loc1_)
         {
            if(_loc1_.§0J§ > 0)
            {
               (getItemByName("Button_Scroll1") as §5b§).setComponentState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §5b§).setComponentState(§3^§.§4a§);
            }
            if(_loc1_.§0J§ < _loc1_.§<r§ - 1)
            {
               (getItemByName("Button_Scroll2") as §5b§).setComponentState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §5b§).setComponentState(§3^§.§4a§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §5b§).setComponentState(§3^§.§4a§);
            (getItemByName("Button_Scroll2") as §5b§).setComponentState(§3^§.§4a§);
         }
      }
      
      public function §2H§() : void
      {
         var _loc2_:§90§ = null;
         var _loc1_:int = §8A§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §8A§[_loc1_] as §90§;
            if(_loc2_)
            {
               _loc2_.clear();
               §8A§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§!!<§("");
      }
      
      public function §0!D§() : void
      {
         var _loc1_:§=O§ = null;
         for each(_loc1_ in this.§-!M§)
         {
            _loc1_.§0!D§();
         }
      }
      
      public function §?l§() : Array
      {
         if(this.§7!L§(this.§7!6§) == null)
         {
            §3'§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§7!L§(this.§7!6§).§!r§();
      }
      
      public function §]q§(param1:Array) : void
      {
         this.§7!L§(this.§7!6§).§]q§(param1);
      }
      
      public function §`!7§(param1:Number) : void
      {
         this.§7!L§(this.§7!6§).§`!7§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§4'§ = null;
         this.§-!M§ = null;
         this.§"!&§ = null;
      }
   }
}
