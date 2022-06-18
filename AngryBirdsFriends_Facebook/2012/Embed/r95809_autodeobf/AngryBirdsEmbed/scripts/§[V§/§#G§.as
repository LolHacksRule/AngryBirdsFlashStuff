package §[V§
{
   import §2x§.§'!@§;
   import §5Y§.§"!4§;
   import §8B§.§+;§;
   import §8B§.§29§;
   import §8B§.§3J§;
   import §8B§.§6!9§;
   import com.rovio.assets.§0v§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §#G§ extends §=!'§
   {
      
      public static const §'l§:int = 0;
      
      public static const §]!#§:int = 1;
      
      public static const § N§:int = 2;
       
      
      public var §4+§:String;
      
      public var §#!;§:Class;
      
      public var §^Q§:String = null;
      
      public var §+q§:Vector.<§29§>;
      
      public var §&!;§:int;
      
      public var §&!,§:Number;
      
      public var §4n§:Number;
      
      public var §+E§:Number;
      
      public var §^4§:Number;
      
      public var §0@§:Number;
      
      public var §&c§:Number;
      
      public var §0!0§:Number;
      
      public var §!!G§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §0G§:int;
      
      public var §1j§:Number;
      
      public var §]C§:String = "";
      
      public var §=!§:int;
      
      public var §<9§:int;
      
      public var §,!1§:GlowFilter;
      
      public var §],§:Boolean = true;
      
      public var §#O§:int;
      
      public var §@i§:int;
      
      public var §1!1§:Number = 0;
      
      public var §6o§:Number = 0;
      
      public var §@n§:Number = 0;
      
      public var §1!?§:Number = 0;
      
      public var §>'§:Boolean = false;
      
      public var §7!4§:Boolean = false;
      
      public var §8W§:MovieClip = null;
      
      public function §#G§(param1:XML, param2:§=!'§, param3:§"!4§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§4+§ = param1.@button;
         if(this.§4+§.length > 0)
         {
            this.§#!;§ = §0v§.§#w§(this.§4+§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§^Q§ = _loc5_;
         }
         this.§=!§ = §'l§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§=!§ = §]!#§;
            }
         }
         this.§<9§ = § N§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§<9§ = §'l§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§,!1§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §7A§.push(new §1;§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §7A§.push(new §1;§(_loc18_,this));
         }
         this.§&!,§ = mClip.getChildByName("Surface").x;
         this.§4n§ = mClip.getChildByName("Surface").y;
         this.§+E§ = mClip.getChildByName("Surface").width;
         this.§^4§ = mClip.getChildByName("Surface").height;
         this.§0@§ = mClip.getChildByName("Button_Area1").x - this.§&!,§;
         this.§&c§ = mClip.getChildByName("Button_Area1").y - this.§4n§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§&!,§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§4n§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§1j§ = _loc9_.bottom - this.§4n§ - this.§&c§;
         this.§0!0§ = _loc7_ - this.§0@§;
         this.§!!G§ = _loc8_ - this.§&c§;
         if(Math.abs(this.§0!0§) < 3)
         {
            this.§0!0§ = 0;
         }
         if(Math.abs(this.§!!G§) < 3)
         {
            this.§!!G§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§0!0§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§0@§ - this.§0@§) / this.§0!0§;
         }
         if(this.§!!G§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§&c§ - this.§&c§) / this.§!!G§;
         }
         this.§&!;§ = Math.min(_loc10_,_loc11_);
         this.§],§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§#O§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§#O§ = this.§&!;§;
         }
         this.§0G§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§&!,§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§4n§;
            this.mButtonMarginX2 = _loc19_ - this.§0@§;
            this.mButtonMarginY2 = _loc20_ - this.§&c§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§],§)
            {
               this.§0G§ = 1 + (mClip.getChildByName("Surface").height - this.§&c§ - this.§&c§) / this.mButtonMarginY2;
            }
            else
            {
               this.§0G§ = 1 + (mClip.getChildByName("Surface").width - this.§0@§ - this.§0@§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§8W§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§@n§ = this.§8W§.x - mClip.getChildByName("Surface").x;
            this.§1!?§ = this.§8W§.y - mClip.getChildByName("Surface").y;
            this.§1!1§ = this.§8W§.x + this.§8W§.width - (this.§8W§.x + mClip.getChildByName("Surface").width);
            this.§6o§ = this.§8W§.y + this.§8W§.height - (this.§8W§.y + mClip.getChildByName("Surface").height);
            this.§>'§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§7!4§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§@i§ = §29§.§7%§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§@i§ = §29§.§%0§;
            }
         }
         this.§0z§();
      }
      
      public function §0z§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§@!!§ = null;
         var _loc8_:§29§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§2!@§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §2!@§;
         }
         this.§+q§ = new Vector.<§29§>();
         this.§#R§();
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
            _loc7_ = new §@!!§(_loc6_,this,null,_loc5_);
            §7A§.push(_loc7_);
            _loc8_ = new §29§(this.§@i§,_loc4_);
            this.§+q§.push(_loc8_);
            _loc9_ = this.§0@§;
            _loc10_ = this.§&!;§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§<9§ == §'l§)
            {
               _loc9_ = (this.§+E§ - (_loc10_ - 1) * this.§0!0§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§7A§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§7A§.push(new param2(_loc12_,_loc7_,new this.§#!;§() as MovieClip));
               }
               _loc13_ = _loc7_.§7A§[_loc7_.§7A§.length - 1] as §2!@§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§3!3§(_loc14_,this.§^Q§);
                  if(this.§=!§ == §]!#§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§^Q§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§0G§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§0!0§;
                  _loc13_.y = this.§&c§ + _loc11_ * this.§!!G§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§&!;§ * this.§0G§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§&!;§ * this.§0G§) / this.§&!;§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§&!;§ * this.§0G§) % this.§&!;§;
                  if(this.§],§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§0!0§ + _loc16_ * this.§&!;§ * this.§0!0§;
                     _loc13_.y = this.§&c§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§&c§ + _loc18_ * this.§!!G§ + _loc16_ * this.§&!;§ * this.§!!G§;
                  }
               }
               _loc8_.§2F§(_loc13_);
               _loc11_++;
            }
            _loc8_.§'!3§("");
            _loc7_.§;>§(this.§&!;§,this.§&!,§,this.§4n§,this.§#O§ * this.§0!0§,this.§#O§ * this.§!!G§,this.§0G§,this.§#O§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §@U§() : int
      {
         return this.§&!;§;
      }
      
      public function get §8o§() : int
      {
         if(this.§@U§ == 0)
         {
            return 0;
         }
         return this.§ b§(this.§]C§).§%Y§.length / this.§@U§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§6!9§) : void
      {
         var _loc5_:§29§ = null;
         var _loc4_:§@!!§ = getItemByName(this.§]C§) as §@!!§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§[!9§(_loc4_.§]B§ - 1);
               this.§+!@§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§[!9§(_loc4_.§]B§ + 1);
               this.§+!@§();
            }
         }
         else if(param2.length > 0 && (param1 == §6!9§.LISTENER_EVENT_MOUSE_DOWN || param1 == §6!9§.LISTENER_EVENT_MOUSE_UP) && param3 is §3J§)
         {
            if((_loc5_ = this.§ b§((param3 as §3J§).mParentContainer.mName.toUpperCase())) && param3 is §2!@§)
            {
               _loc5_.§'!3§((param3 as §3J§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §@3§(param1:String, param2:int) : void
      {
         var _loc3_:§@!!§ = getItemByName(param1) as §@!!§;
         if(_loc3_)
         {
            _loc3_.§[!9§(param2);
            this.§+!@§();
         }
      }
      
      public function § b§(param1:String) : §29§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+q§.length)
         {
            if(param1.toUpperCase() == (this.§+q§[_loc2_] as §29§).mName.toUpperCase())
            {
               return this.§+q§[_loc2_] as §29§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §[^§(param1:String) : void
      {
         this.§]C§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §7A§.length)
         {
            if(§7A§[_loc2_] is §@!!§)
            {
               if((§7A§[_loc2_] as §@!!§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§7A§[_loc2_] as §@!!§).setActiveStatus(true);
                  if(this.§>'§)
                  {
                     this.§8W§.x = (§7A§[_loc2_] as §@!!§).x + this.§@n§;
                     this.§8W§.width = (§7A§[_loc2_] as §@!!§).width + this.§1!1§;
                  }
                  if(this.§7!4§)
                  {
                     this.§8W§.y = (§7A§[_loc2_] as §@!!§).y + this.§1!?§;
                     this.§8W§.height = (§7A§[_loc2_] as §@!!§).height + this.§6o§;
                  }
               }
               else
               {
                  (§7A§[_loc2_] as §@!!§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§+!@§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§29§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§+q§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §+!@§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§@!!§ = getItemByName(this.§]C§) as §@!!§;
         if(_loc1_)
         {
            if(_loc1_.§]B§ > 0)
            {
               (getItemByName("Button_Scroll1") as §1;§).setComponentState(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §1;§).setComponentState(§+;§.§!!#§);
            }
            if(_loc1_.§]B§ < _loc1_.§'J§ - 1)
            {
               (getItemByName("Button_Scroll2") as §1;§).setComponentState(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §1;§).setComponentState(§+;§.§!!#§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §1;§).setComponentState(§+;§.§!!#§);
            (getItemByName("Button_Scroll2") as §1;§).setComponentState(§+;§.§!!#§);
         }
      }
      
      public function §#R§() : void
      {
         var _loc2_:§@!!§ = null;
         var _loc1_:int = §7A§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §7A§[_loc1_] as §@!!§;
            if(_loc2_)
            {
               _loc2_.clear();
               §7A§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§[^§("");
      }
      
      public function §13§() : void
      {
         var _loc1_:§29§ = null;
         for each(_loc1_ in this.§+q§)
         {
            _loc1_.§13§();
         }
      }
      
      public function §<o§() : Array
      {
         if(this.§ b§(this.§]C§) == null)
         {
            §'!@§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§ b§(this.§]C§).§^f§();
      }
      
      public function §[J§(param1:Array) : void
      {
         this.§ b§(this.§]C§).§[J§(param1);
      }
      
      public function §<7§(param1:Number) : void
      {
         this.§ b§(this.§]C§).§<7§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§#!;§ = null;
         this.§+q§ = null;
         this.§,!1§ = null;
      }
   }
}
