package §"!E§
{
   import § !r§.§`![§;
   import §!y§.§2U§;
   import §#!4§.§'^§;
   import §#!4§.§+!S§;
   import §#!4§.§8!L§;
   import §#!4§.§<f§;
   import com.rovio.assets.§1F§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §?j§ extends §[!s§
   {
      
      public static const §"!;§:int = 0;
      
      public static const §8R§:int = 1;
      
      public static const §#!6§:int = 2;
       
      
      public var §%!F§:String;
      
      public var §!!§:Class;
      
      public var §;!u§:String = null;
      
      public var §9v§:Vector.<§8!L§>;
      
      public var §0$§:int;
      
      public var §?4§:Number;
      
      public var §6!a§:Number;
      
      public var §"!3§:Number;
      
      public var §5W§:Number;
      
      public var §=-§:Number;
      
      public var final:Number;
      
      public var §]x§:Number;
      
      public var §+!3§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §>g§:int;
      
      public var §-<§:Number;
      
      public var §]!k§:String = "";
      
      public var §0!R§:int;
      
      public var §^x§:int;
      
      public var §4!3§:GlowFilter;
      
      public var §-B§:Boolean = true;
      
      public var §3!1§:int;
      
      public var §,k§:int;
      
      public var §#!j§:Number = 0;
      
      public var §[!'§:Number = 0;
      
      public var §]&§:Number = 0;
      
      public var §@!s§:Number = 0;
      
      public var §7]§:Boolean = false;
      
      public var §[&§:Boolean = false;
      
      public var § F§:MovieClip = null;
      
      public function §?j§(param1:XML, param2:§[!s§, param3:§2U§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§%!F§ = param1.@button;
         if(this.§%!F§.length > 0)
         {
            this.§!!§ = §1F§.§"!_§(this.§%!F§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§;!u§ = _loc5_;
         }
         this.§0!R§ = §"!;§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§0!R§ = §8R§;
            }
         }
         this.§^x§ = §#!6§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§^x§ = §"!;§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§4!3§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §?n§.push(new §#!'§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §?n§.push(new §#!'§(_loc18_,this));
         }
         this.§?4§ = mClip.getChildByName("Surface").x;
         this.§6!a§ = mClip.getChildByName("Surface").y;
         this.§"!3§ = mClip.getChildByName("Surface").width;
         this.§5W§ = mClip.getChildByName("Surface").height;
         this.§=-§ = mClip.getChildByName("Button_Area1").x - this.§?4§;
         this.final = mClip.getChildByName("Button_Area1").y - this.§6!a§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§?4§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§6!a§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§-<§ = _loc9_.bottom - this.§6!a§ - this.final;
         this.§]x§ = _loc7_ - this.§=-§;
         this.§+!3§ = _loc8_ - this.final;
         if(Math.abs(this.§]x§) < 3)
         {
            this.§]x§ = 0;
         }
         if(Math.abs(this.§+!3§) < 3)
         {
            this.§+!3§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§]x§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§=-§ - this.§=-§) / this.§]x§;
         }
         if(this.§+!3§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.final - this.final) / this.§+!3§;
         }
         this.§0$§ = Math.min(_loc10_,_loc11_);
         this.§-B§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§3!1§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§3!1§ = this.§0$§;
         }
         this.§>g§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§?4§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§6!a§;
            this.mButtonMarginX2 = _loc19_ - this.§=-§;
            this.mButtonMarginY2 = _loc20_ - this.final;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§-B§)
            {
               this.§>g§ = 1 + (mClip.getChildByName("Surface").height - this.final - this.final) / this.mButtonMarginY2;
            }
            else
            {
               this.§>g§ = 1 + (mClip.getChildByName("Surface").width - this.§=-§ - this.§=-§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§ F§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§]&§ = this.§ F§.x - mClip.getChildByName("Surface").x;
            this.§@!s§ = this.§ F§.y - mClip.getChildByName("Surface").y;
            this.§#!j§ = this.§ F§.x + this.§ F§.width - (this.§ F§.x + mClip.getChildByName("Surface").width);
            this.§[!'§ = this.§ F§.y + this.§ F§.height - (this.§ F§.y + mClip.getChildByName("Surface").height);
            this.§7]§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§[&§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§,k§ = §8!L§.§2!n§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§,k§ = §8!L§.§&p§;
            }
         }
         this.§<!u§();
      }
      
      public function §<!u§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§1!W§ = null;
         var _loc8_:§8!L§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§ else§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = § else§;
         }
         this.§9v§ = new Vector.<§8!L§>();
         this.§;!>§();
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
            _loc7_ = new §1!W§(_loc6_,this,null,_loc5_);
            §?n§.push(_loc7_);
            _loc8_ = new §8!L§(this.§,k§,_loc4_);
            this.§9v§.push(_loc8_);
            _loc9_ = this.§=-§;
            _loc10_ = this.§0$§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§^x§ == §"!;§)
            {
               _loc9_ = (this.§"!3§ - (_loc10_ - 1) * this.§]x§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§?n§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§?n§.push(new param2(_loc12_,_loc7_,new this.§!!§() as MovieClip));
               }
               _loc13_ = _loc7_.§?n§[_loc7_.§?n§.length - 1] as § else§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§;!u§);
                  if(this.§0!R§ == §8R§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§;!u§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§>g§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§]x§;
                  _loc13_.y = this.final + _loc11_ * this.§+!3§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§0$§ * this.§>g§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§0$§ * this.§>g§) / this.§0$§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§0$§ * this.§>g§) % this.§0$§;
                  if(this.§-B§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§]x§ + _loc16_ * this.§0$§ * this.§]x§;
                     _loc13_.y = this.final + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.final + _loc18_ * this.§+!3§ + _loc16_ * this.§0$§ * this.§+!3§;
                  }
               }
               _loc8_.§57§(_loc13_);
               _loc11_++;
            }
            _loc8_.§#!L§("");
            _loc7_.§5a§(this.§0$§,this.§?4§,this.§6!a§,this.§3!1§ * this.§]x§,this.§3!1§ * this.§+!3§,this.§>g§,this.§3!1§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §^c§() : int
      {
         return this.§0$§;
      }
      
      public function get §1!j§() : int
      {
         if(this.§^c§ == 0)
         {
            return 0;
         }
         return this.§+!!§(this.§]!k§).§&!p§.length / this.§^c§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:§8!L§ = null;
         var _loc4_:§1!W§ = getItemByName(this.§]!k§) as §1!W§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§]!$§(_loc4_.§%<§ - 1);
               this.§>§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§]!$§(_loc4_.§%<§ + 1);
               this.§>§();
            }
         }
         else if(param2.length > 0 && (param1 == §+!S§.LISTENER_EVENT_MOUSE_DOWN || param1 == §+!S§.LISTENER_EVENT_MOUSE_UP) && param3 is §'^§)
         {
            if((_loc5_ = this.§+!!§((param3 as §'^§).mParentContainer.mName.toUpperCase())) && param3 is § else§)
            {
               _loc5_.§#!L§((param3 as §'^§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §1;§(param1:String, param2:int) : void
      {
         var _loc3_:§1!W§ = getItemByName(param1) as §1!W§;
         if(_loc3_)
         {
            _loc3_.§]!$§(param2);
            this.§>§();
         }
      }
      
      public function §+!!§(param1:String) : §8!L§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§9v§.length)
         {
            if(param1.toUpperCase() == (this.§9v§[_loc2_] as §8!L§).mName.toUpperCase())
            {
               return this.§9v§[_loc2_] as §8!L§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §+!b§(param1:String) : void
      {
         this.§]!k§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §?n§.length)
         {
            if(§?n§[_loc2_] is §1!W§)
            {
               if((§?n§[_loc2_] as §1!W§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§?n§[_loc2_] as §1!W§).setActiveStatus(true);
                  if(this.§7]§)
                  {
                     this.§ F§.x = (§?n§[_loc2_] as §1!W§).x + this.§]&§;
                     this.§ F§.width = (§?n§[_loc2_] as §1!W§).width + this.§#!j§;
                  }
                  if(this.§[&§)
                  {
                     this.§ F§.y = (§?n§[_loc2_] as §1!W§).y + this.§@!s§;
                     this.§ F§.height = (§?n§[_loc2_] as §1!W§).height + this.§[!'§;
                  }
               }
               else
               {
                  (§?n§[_loc2_] as §1!W§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§>§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§8!L§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§9v§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §>§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§1!W§ = getItemByName(this.§]!k§) as §1!W§;
         if(_loc1_)
         {
            if(_loc1_.§%<§ > 0)
            {
               (getItemByName("Button_Scroll1") as §#!'§).setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §#!'§).setComponentState(§<f§.§!`§);
            }
            if(_loc1_.§%<§ < _loc1_.§>q§ - 1)
            {
               (getItemByName("Button_Scroll2") as §#!'§).setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §#!'§).setComponentState(§<f§.§!`§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §#!'§).setComponentState(§<f§.§!`§);
            (getItemByName("Button_Scroll2") as §#!'§).setComponentState(§<f§.§!`§);
         }
      }
      
      public function §;!>§() : void
      {
         var _loc2_:§1!W§ = null;
         var _loc1_:int = §?n§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §?n§[_loc1_] as §1!W§;
            if(_loc2_)
            {
               _loc2_.clear();
               §?n§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§+!b§("");
      }
      
      public function §!8§() : void
      {
         var _loc1_:§8!L§ = null;
         for each(_loc1_ in this.§9v§)
         {
            _loc1_.§!8§();
         }
      }
      
      public function §9!0§() : Array
      {
         if(this.§+!!§(this.§]!k§) == null)
         {
            §`![§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§+!!§(this.§]!k§).§<<§();
      }
      
      public function §+!j§(param1:Array) : void
      {
         this.§+!!§(this.§]!k§).§+!j§(param1);
      }
      
      public function §;[§(param1:Number) : void
      {
         this.§+!!§(this.§]!k§).§;[§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§!!§ = null;
         this.§9v§ = null;
         this.§4!3§ = null;
      }
   }
}
