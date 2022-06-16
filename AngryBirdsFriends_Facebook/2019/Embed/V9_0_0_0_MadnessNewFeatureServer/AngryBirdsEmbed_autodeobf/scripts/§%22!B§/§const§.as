package §"!B§
{
   import §'6§.§?!L§;
   import §@a§.§8H§;
   import §]!=§.§&P§;
   import §]!=§.§'!#§;
   import §]!=§.§;!6§;
   import §]!=§.§]!"§;
   import com.rovio.assets.§%!?§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §const§ extends §58§
   {
      
      public static const §?x§:int = 0;
      
      public static const §<!2§:int = 1;
      
      public static const §[C§:int = 2;
       
      
      public var §@!5§:String;
      
      public var §=B§:Class;
      
      public var §0g§:String = null;
      
      public var §@0§:Vector.<§'!#§>;
      
      public var §+!F§:int;
      
      public var §7Y§:Number;
      
      public var §4X§:Number;
      
      public var §6`§:Number;
      
      public var §5n§:Number;
      
      public var §-!,§:Number;
      
      public var §!D§:Number;
      
      public var §7! §:Number;
      
      public var §true§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var § case§:int;
      
      public var §2!&§:Number;
      
      public var §>t§:String = "";
      
      public var §-@§:int;
      
      public var §6>§:int;
      
      public var §[3§:GlowFilter;
      
      public var §<!#§:Boolean = true;
      
      public var §8"§:int;
      
      public var §,! §:int;
      
      public var §7!H§:Number = 0;
      
      public var §^`§:Number = 0;
      
      public var §<z§:Number = 0;
      
      public var §6M§:Number = 0;
      
      public var §,x§:Boolean = false;
      
      public var §#!>§:Boolean = false;
      
      public var §0$§:MovieClip = null;
      
      public function §const§(param1:XML, param2:§58§, param3:§8H§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§@!5§ = param1.@button;
         if(this.§@!5§.length > 0)
         {
            this.§=B§ = §%!?§.§4"§(this.§@!5§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§0g§ = _loc5_;
         }
         this.§-@§ = §?x§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§-@§ = §<!2§;
            }
         }
         this.§6>§ = §[C§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§6>§ = §?x§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§[3§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            § else§.push(new §+!9§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            § else§.push(new §+!9§(_loc18_,this));
         }
         this.§7Y§ = mClip.getChildByName("Surface").x;
         this.§4X§ = mClip.getChildByName("Surface").y;
         this.§6`§ = mClip.getChildByName("Surface").width;
         this.§5n§ = mClip.getChildByName("Surface").height;
         this.§-!,§ = mClip.getChildByName("Button_Area1").x - this.§7Y§;
         this.§!D§ = mClip.getChildByName("Button_Area1").y - this.§4X§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§7Y§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§4X§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§2!&§ = _loc9_.bottom - this.§4X§ - this.§!D§;
         this.§7! § = _loc7_ - this.§-!,§;
         this.§true§ = _loc8_ - this.§!D§;
         if(Math.abs(this.§7! §) < 3)
         {
            this.§7! § = 0;
         }
         if(Math.abs(this.§true§) < 3)
         {
            this.§true§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§7! § != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§-!,§ - this.§-!,§) / this.§7! §;
         }
         if(this.§true§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§!D§ - this.§!D§) / this.§true§;
         }
         this.§+!F§ = Math.min(_loc10_,_loc11_);
         this.§<!#§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§8"§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§8"§ = this.§+!F§;
         }
         this.§ case§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§7Y§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§4X§;
            this.mButtonMarginX2 = _loc19_ - this.§-!,§;
            this.mButtonMarginY2 = _loc20_ - this.§!D§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§<!#§)
            {
               this.§ case§ = 1 + (mClip.getChildByName("Surface").height - this.§!D§ - this.§!D§) / this.mButtonMarginY2;
            }
            else
            {
               this.§ case§ = 1 + (mClip.getChildByName("Surface").width - this.§-!,§ - this.§-!,§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§0$§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§<z§ = this.§0$§.x - mClip.getChildByName("Surface").x;
            this.§6M§ = this.§0$§.y - mClip.getChildByName("Surface").y;
            this.§7!H§ = this.§0$§.x + this.§0$§.width - (this.§0$§.x + mClip.getChildByName("Surface").width);
            this.§^`§ = this.§0$§.y + this.§0$§.height - (this.§0$§.y + mClip.getChildByName("Surface").height);
            this.§,x§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§#!>§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§,! § = §'!#§.§4c§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§,! § = §'!#§.§3C§;
            }
         }
         this.§"T§();
      }
      
      public function §"T§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§5!3§ = null;
         var _loc8_:§'!#§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§]!1§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §]!1§;
         }
         this.§@0§ = new Vector.<§'!#§>();
         this.§%B§();
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
            _loc7_ = new §5!3§(_loc6_,this,null,_loc5_);
            § else§.push(_loc7_);
            _loc8_ = new §'!#§(this.§,! §,_loc4_);
            this.§@0§.push(_loc8_);
            _loc9_ = this.§-!,§;
            _loc10_ = this.§+!F§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§6>§ == §?x§)
            {
               _loc9_ = (this.§6`§ - (_loc10_ - 1) * this.§7! §) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§ else§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§ else§.push(new param2(_loc12_,_loc7_,new this.§=B§() as MovieClip));
               }
               _loc13_ = _loc7_.§ else§[_loc7_.§ else§.length - 1] as §]!1§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§^W§(_loc14_,this.§0g§);
                  if(this.§-@§ == §<!2§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§0g§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§ case§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§7! §;
                  _loc13_.y = this.§!D§ + _loc11_ * this.§true§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§+!F§ * this.§ case§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§+!F§ * this.§ case§) / this.§+!F§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§+!F§ * this.§ case§) % this.§+!F§;
                  if(this.§<!#§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§7! § + _loc16_ * this.§+!F§ * this.§7! §;
                     _loc13_.y = this.§!D§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§!D§ + _loc18_ * this.§true§ + _loc16_ * this.§+!F§ * this.§true§;
                  }
               }
               _loc8_.§"!8§(_loc13_);
               _loc11_++;
            }
            _loc8_.§=k§("");
            _loc7_.§-+§(this.§+!F§,this.§7Y§,this.§4X§,this.§8"§ * this.§7! §,this.§8"§ * this.§true§,this.§ case§,this.§8"§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §&!G§() : int
      {
         return this.§+!F§;
      }
      
      public function get §<!F§() : int
      {
         if(this.§&!G§ == 0)
         {
            return 0;
         }
         return this.§4m§(this.§>t§).§]W§.length / this.§&!G§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§;!6§) : void
      {
         var _loc5_:§'!#§ = null;
         var _loc4_:§5!3§ = getItemByName(this.§>t§) as §5!3§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§6k§(_loc4_.§5J§ - 1);
               this.§]!D§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§6k§(_loc4_.§5J§ + 1);
               this.§]!D§();
            }
         }
         else if(param2.length > 0 && (param1 == §;!6§.LISTENER_EVENT_MOUSE_DOWN || param1 == §;!6§.LISTENER_EVENT_MOUSE_UP) && param3 is §]!"§)
         {
            if((_loc5_ = this.§4m§((param3 as §]!"§).mParentContainer.mName.toUpperCase())) && param3 is §]!1§)
            {
               _loc5_.§=k§((param3 as §]!"§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §,O§(param1:String, param2:int) : void
      {
         var _loc3_:§5!3§ = getItemByName(param1) as §5!3§;
         if(_loc3_)
         {
            _loc3_.§6k§(param2);
            this.§]!D§();
         }
      }
      
      public function §4m§(param1:String) : §'!#§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@0§.length)
         {
            if(param1.toUpperCase() == (this.§@0§[_loc2_] as §'!#§).mName.toUpperCase())
            {
               return this.§@0§[_loc2_] as §'!#§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §7B§(param1:String) : void
      {
         this.§>t§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < § else§.length)
         {
            if(§ else§[_loc2_] is §5!3§)
            {
               if((§ else§[_loc2_] as §5!3§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§ else§[_loc2_] as §5!3§).setActiveStatus(true);
                  if(this.§,x§)
                  {
                     this.§0$§.x = (§ else§[_loc2_] as §5!3§).x + this.§<z§;
                     this.§0$§.width = (§ else§[_loc2_] as §5!3§).width + this.§7!H§;
                  }
                  if(this.§#!>§)
                  {
                     this.§0$§.y = (§ else§[_loc2_] as §5!3§).y + this.§6M§;
                     this.§0$§.height = (§ else§[_loc2_] as §5!3§).height + this.§^`§;
                  }
               }
               else
               {
                  (§ else§[_loc2_] as §5!3§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§]!D§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§'!#§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§@0§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §]!D§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§5!3§ = getItemByName(this.§>t§) as §5!3§;
         if(_loc1_)
         {
            if(_loc1_.§5J§ > 0)
            {
               (getItemByName("Button_Scroll1") as §+!9§).setComponentState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §+!9§).setComponentState(§&P§.§0!1§);
            }
            if(_loc1_.§5J§ < _loc1_.§@!3§ - 1)
            {
               (getItemByName("Button_Scroll2") as §+!9§).setComponentState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §+!9§).setComponentState(§&P§.§0!1§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §+!9§).setComponentState(§&P§.§0!1§);
            (getItemByName("Button_Scroll2") as §+!9§).setComponentState(§&P§.§0!1§);
         }
      }
      
      public function §%B§() : void
      {
         var _loc2_:§5!3§ = null;
         var _loc1_:int = § else§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = § else§[_loc1_] as §5!3§;
            if(_loc2_)
            {
               _loc2_.clear();
               § else§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§7B§("");
      }
      
      public function §6w§() : void
      {
         var _loc1_:§'!#§ = null;
         for each(_loc1_ in this.§@0§)
         {
            _loc1_.§6w§();
         }
      }
      
      public function §+!7§() : Array
      {
         if(this.§4m§(this.§>t§) == null)
         {
            §?!L§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§4m§(this.§>t§).§#"§();
      }
      
      public function §%!M§(param1:Array) : void
      {
         this.§4m§(this.§>t§).§%!M§(param1);
      }
      
      public function §5!%§(param1:Number) : void
      {
         this.§4m§(this.§>t§).§5!%§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§=B§ = null;
         this.§@0§ = null;
         this.§[3§ = null;
      }
   }
}
