package §&U§
{
   import §"!K§.§,U§;
   import §1t§.§-!M§;
   import §1t§.§9!"§;
   import §1t§.§@B§;
   import §1t§.§`!B§;
   import §?!8§.§2>§;
   import com.rovio.assets.§&%§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §`%§ extends §05§
   {
      
      public static const §7!#§:int = 0;
      
      public static const §@`§:int = 1;
      
      public static const §&[§:int = 2;
       
      
      public var §?5§:String;
      
      public var §6L§:Class;
      
      public var §!#§:String = null;
      
      public var §5!C§:Vector.<§9!"§>;
      
      public var §+R§:int;
      
      public var §>1§:Number;
      
      public var §2u§:Number;
      
      public var §2`§:Number;
      
      public var §69§:Number;
      
      public var §#N§:Number;
      
      public var §=w§:Number;
      
      public var §[!7§:Number;
      
      public var §=`§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §4U§:int;
      
      public var §+!&§:Number;
      
      public var §"!@§:String = "";
      
      public var §5w§:int;
      
      public var §[F§:int;
      
      public var §-!$§:GlowFilter;
      
      public var §[<§:Boolean = true;
      
      public var §3B§:int;
      
      public var §;Q§:int;
      
      public var §#e§:Number = 0;
      
      public var §8&§:Number = 0;
      
      public var §+!1§:Number = 0;
      
      public var §@>§:Number = 0;
      
      public var §<g§:Boolean = false;
      
      public var §2i§:Boolean = false;
      
      public var §4T§:MovieClip = null;
      
      public function §`%§(param1:XML, param2:§05§, param3:§,U§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§?5§ = param1.@button;
         if(this.§?5§.length > 0)
         {
            this.§6L§ = §&%§.§<7§(this.§?5§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§!#§ = _loc5_;
         }
         this.§5w§ = §7!#§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§5w§ = §@`§;
            }
         }
         this.§[F§ = §&[§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§[F§ = §7!#§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§-!$§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §"6§.push(new §^!@§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §"6§.push(new §^!@§(_loc18_,this));
         }
         this.§>1§ = mClip.getChildByName("Surface").x;
         this.§2u§ = mClip.getChildByName("Surface").y;
         this.§2`§ = mClip.getChildByName("Surface").width;
         this.§69§ = mClip.getChildByName("Surface").height;
         this.§#N§ = mClip.getChildByName("Button_Area1").x - this.§>1§;
         this.§=w§ = mClip.getChildByName("Button_Area1").y - this.§2u§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§>1§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§2u§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§+!&§ = _loc9_.bottom - this.§2u§ - this.§=w§;
         this.§[!7§ = _loc7_ - this.§#N§;
         this.§=`§ = _loc8_ - this.§=w§;
         if(Math.abs(this.§[!7§) < 3)
         {
            this.§[!7§ = 0;
         }
         if(Math.abs(this.§=`§) < 3)
         {
            this.§=`§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§[!7§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§#N§ - this.§#N§) / this.§[!7§;
         }
         if(this.§=`§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§=w§ - this.§=w§) / this.§=`§;
         }
         this.§+R§ = Math.min(_loc10_,_loc11_);
         this.§[<§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§3B§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§3B§ = this.§+R§;
         }
         this.§4U§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§>1§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§2u§;
            this.mButtonMarginX2 = _loc19_ - this.§#N§;
            this.mButtonMarginY2 = _loc20_ - this.§=w§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§[<§)
            {
               this.§4U§ = 1 + (mClip.getChildByName("Surface").height - this.§=w§ - this.§=w§) / this.mButtonMarginY2;
            }
            else
            {
               this.§4U§ = 1 + (mClip.getChildByName("Surface").width - this.§#N§ - this.§#N§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§4T§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§+!1§ = this.§4T§.x - mClip.getChildByName("Surface").x;
            this.§@>§ = this.§4T§.y - mClip.getChildByName("Surface").y;
            this.§#e§ = this.§4T§.x + this.§4T§.width - (this.§4T§.x + mClip.getChildByName("Surface").width);
            this.§8&§ = this.§4T§.y + this.§4T§.height - (this.§4T§.y + mClip.getChildByName("Surface").height);
            this.§<g§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§2i§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§;Q§ = §9!"§.§-l§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§;Q§ = §9!"§.§7R§;
            }
         }
         this.§[`§();
      }
      
      public function §[`§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§[!§ = null;
         var _loc8_:§9!"§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§%!H§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §%!H§;
         }
         this.§5!C§ = new Vector.<§9!"§>();
         this.§1e§();
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
            _loc7_ = new §[!§(_loc6_,this,null,_loc5_);
            §"6§.push(_loc7_);
            _loc8_ = new §9!"§(this.§;Q§,_loc4_);
            this.§5!C§.push(_loc8_);
            _loc9_ = this.§#N§;
            _loc10_ = this.§+R§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§[F§ == §7!#§)
            {
               _loc9_ = (this.§2`§ - (_loc10_ - 1) * this.§[!7§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§"6§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§"6§.push(new param2(_loc12_,_loc7_,new this.§6L§() as MovieClip));
               }
               _loc13_ = _loc7_.§"6§[_loc7_.§"6§.length - 1] as §%!H§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§#g§(_loc14_,this.§!#§);
                  if(this.§5w§ == §@`§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§!#§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§4U§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§[!7§;
                  _loc13_.y = this.§=w§ + _loc11_ * this.§=`§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§+R§ * this.§4U§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§+R§ * this.§4U§) / this.§+R§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§+R§ * this.§4U§) % this.§+R§;
                  if(this.§[<§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§[!7§ + _loc16_ * this.§+R§ * this.§[!7§;
                     _loc13_.y = this.§=w§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§=w§ + _loc18_ * this.§=`§ + _loc16_ * this.§+R§ * this.§=`§;
                  }
               }
               _loc8_.§^9§(_loc13_);
               _loc11_++;
            }
            _loc8_.§;7§("");
            _loc7_.§<1§(this.§+R§,this.§>1§,this.§2u§,this.§3B§ * this.§[!7§,this.§3B§ * this.§=`§,this.§4U§,this.§3B§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §@8§() : int
      {
         return this.§+R§;
      }
      
      public function get §]p§() : int
      {
         if(this.§@8§ == 0)
         {
            return 0;
         }
         return this.§1§(this.§"!@§).§6!N§.length / this.§@8§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§`!B§) : void
      {
         var _loc5_:§9!"§ = null;
         var _loc4_:§[!§ = getItemByName(this.§"!@§) as §[!§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§-i§(_loc4_.§finally§ - 1);
               this.§%Y§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§-i§(_loc4_.§finally§ + 1);
               this.§%Y§();
            }
         }
         else if(param2.length > 0 && (param1 == §`!B§.LISTENER_EVENT_MOUSE_DOWN || param1 == §`!B§.LISTENER_EVENT_MOUSE_UP) && param3 is §@B§)
         {
            if((_loc5_ = this.§1§((param3 as §@B§).mParentContainer.mName.toUpperCase())) && param3 is §%!H§)
            {
               _loc5_.§;7§((param3 as §@B§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §case§(param1:String, param2:int) : void
      {
         var _loc3_:§[!§ = getItemByName(param1) as §[!§;
         if(_loc3_)
         {
            _loc3_.§-i§(param2);
            this.§%Y§();
         }
      }
      
      public function §1§(param1:String) : §9!"§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!C§.length)
         {
            if(param1.toUpperCase() == (this.§5!C§[_loc2_] as §9!"§).mName.toUpperCase())
            {
               return this.§5!C§[_loc2_] as §9!"§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § C§(param1:String) : void
      {
         this.§"!@§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §"6§.length)
         {
            if(§"6§[_loc2_] is §[!§)
            {
               if((§"6§[_loc2_] as §[!§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§"6§[_loc2_] as §[!§).setActiveStatus(true);
                  if(this.§<g§)
                  {
                     this.§4T§.x = (§"6§[_loc2_] as §[!§).x + this.§+!1§;
                     this.§4T§.width = (§"6§[_loc2_] as §[!§).width + this.§#e§;
                  }
                  if(this.§2i§)
                  {
                     this.§4T§.y = (§"6§[_loc2_] as §[!§).y + this.§@>§;
                     this.§4T§.height = (§"6§[_loc2_] as §[!§).height + this.§8&§;
                  }
               }
               else
               {
                  (§"6§[_loc2_] as §[!§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§%Y§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§9!"§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§5!C§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §%Y§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§[!§ = getItemByName(this.§"!@§) as §[!§;
         if(_loc1_)
         {
            if(_loc1_.§finally§ > 0)
            {
               (getItemByName("Button_Scroll1") as §^!@§).setComponentState(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §^!@§).setComponentState(§-!M§.§,!-§);
            }
            if(_loc1_.§finally§ < _loc1_.§ ?§ - 1)
            {
               (getItemByName("Button_Scroll2") as §^!@§).setComponentState(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §^!@§).setComponentState(§-!M§.§,!-§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §^!@§).setComponentState(§-!M§.§,!-§);
            (getItemByName("Button_Scroll2") as §^!@§).setComponentState(§-!M§.§,!-§);
         }
      }
      
      public function §1e§() : void
      {
         var _loc2_:§[!§ = null;
         var _loc1_:int = §"6§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §"6§[_loc1_] as §[!§;
            if(_loc2_)
            {
               _loc2_.clear();
               §"6§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§ C§("");
      }
      
      public function §>!,§() : void
      {
         var _loc1_:§9!"§ = null;
         for each(_loc1_ in this.§5!C§)
         {
            _loc1_.§>!,§();
         }
      }
      
      public function §-U§() : Array
      {
         if(this.§1§(this.§"!@§) == null)
         {
            §2>§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§1§(this.§"!@§).§5!N§();
      }
      
      public function §6R§(param1:Array) : void
      {
         this.§1§(this.§"!@§).§6R§(param1);
      }
      
      public function §&W§(param1:Number) : void
      {
         this.§1§(this.§"!@§).§&W§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§6L§ = null;
         this.§5!C§ = null;
         this.§-!$§ = null;
      }
   }
}
