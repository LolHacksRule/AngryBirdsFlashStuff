package §2y§
{
   import §1!B§.§<m§;
   import §>f§.§&!G§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §@!&§.§7!>§;
   import §@!&§.§7W§;
   import com.rovio.assets.§,!j§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §<N§ extends §^! §
   {
      
      public static const §!k§:int = 0;
      
      public static const §`f§:int = 1;
      
      public static const §>e§:int = 2;
       
      
      public var §<!s§:String;
      
      public var §default§:Class;
      
      public var §4!§:String = null;
      
      public var §3,§:Vector.<§7W§>;
      
      public var §+Y§:int;
      
      public var § <§:Number;
      
      public var §-!f§:Number;
      
      public var §'!;§:Number;
      
      public var §7!`§:Number;
      
      public var §@!a§:Number;
      
      public var § g§:Number;
      
      public var §`m§:Number;
      
      public var §;! §:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §-a§:int;
      
      public var §;"#§:Number;
      
      public var §]E§:String = "";
      
      public var §]N§:int;
      
      public var §-!Z§:int;
      
      public var §2!G§:GlowFilter;
      
      public var §^!'§:Boolean = true;
      
      public var §@!X§:int;
      
      public var §3!f§:int;
      
      public var §true §:Number = 0;
      
      public var § t§:Number = 0;
      
      public var §&=§:Number = 0;
      
      public var §5E§:Number = 0;
      
      public var §5!E§:Boolean = false;
      
      public var §=j§:Boolean = false;
      
      public var §;f§:MovieClip = null;
      
      public function §<N§(param1:XML, param2:§^! §, param3:§&!G§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§<!s§ = param1.@button;
         if(this.§<!s§.length > 0)
         {
            this.§default§ = §,!j§.§!!N§(this.§<!s§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§4!§ = _loc5_;
         }
         this.§]N§ = §!k§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§]N§ = §`f§;
            }
         }
         this.§-!Z§ = §>e§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§-!Z§ = §!k§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§2!G§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §&O§.push(new §[!i§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §&O§.push(new §[!i§(_loc18_,this));
         }
         this.§ <§ = mClip.getChildByName("Surface").x;
         this.§-!f§ = mClip.getChildByName("Surface").y;
         this.§'!;§ = mClip.getChildByName("Surface").width;
         this.§7!`§ = mClip.getChildByName("Surface").height;
         this.§@!a§ = mClip.getChildByName("Button_Area1").x - this.§ <§;
         this.§ g§ = mClip.getChildByName("Button_Area1").y - this.§-!f§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§ <§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§-!f§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§;"#§ = _loc9_.bottom - this.§-!f§ - this.§ g§;
         this.§`m§ = _loc7_ - this.§@!a§;
         this.§;! § = _loc8_ - this.§ g§;
         if(Math.abs(this.§`m§) < 3)
         {
            this.§`m§ = 0;
         }
         if(Math.abs(this.§;! §) < 3)
         {
            this.§;! § = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§`m§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§@!a§ - this.§@!a§) / this.§`m§;
         }
         if(this.§;! § != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§ g§ - this.§ g§) / this.§;! §;
         }
         this.§+Y§ = Math.min(_loc10_,_loc11_);
         this.§^!'§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§@!X§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§@!X§ = this.§+Y§;
         }
         this.§-a§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§ <§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§-!f§;
            this.mButtonMarginX2 = _loc19_ - this.§@!a§;
            this.mButtonMarginY2 = _loc20_ - this.§ g§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§^!'§)
            {
               this.§-a§ = 1 + (mClip.getChildByName("Surface").height - this.§ g§ - this.§ g§) / this.mButtonMarginY2;
            }
            else
            {
               this.§-a§ = 1 + (mClip.getChildByName("Surface").width - this.§@!a§ - this.§@!a§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§;f§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§&=§ = this.§;f§.x - mClip.getChildByName("Surface").x;
            this.§5E§ = this.§;f§.y - mClip.getChildByName("Surface").y;
            this.§true § = this.§;f§.x + this.§;f§.width - (this.§;f§.x + mClip.getChildByName("Surface").width);
            this.§ t§ = this.§;f§.y + this.§;f§.height - (this.§;f§.y + mClip.getChildByName("Surface").height);
            this.§5!E§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§=j§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§3!f§ = §7W§.§!W§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§3!f§ = §7W§.§,!z§;
            }
         }
         this.§>k§();
      }
      
      public function §>k§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§;!=§ = null;
         var _loc8_:§7W§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§8!k§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §8!k§;
         }
         this.§3,§ = new Vector.<§7W§>();
         this.§+!%§();
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
            _loc7_ = new §;!=§(_loc6_,this,null,_loc5_);
            §&O§.push(_loc7_);
            _loc8_ = new §7W§(this.§3!f§,_loc4_);
            this.§3,§.push(_loc8_);
            _loc9_ = this.§@!a§;
            _loc10_ = this.§+Y§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§-!Z§ == §!k§)
            {
               _loc9_ = (this.§'!;§ - (_loc10_ - 1) * this.§`m§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§&O§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§&O§.push(new param2(_loc12_,_loc7_,new this.§default§() as MovieClip));
               }
               _loc13_ = _loc7_.§&O§[_loc7_.§&O§.length - 1] as §8!k§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§4!§);
                  if(this.§]N§ == §`f§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§4!§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§-a§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§`m§;
                  _loc13_.y = this.§ g§ + _loc11_ * this.§;! §;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§+Y§ * this.§-a§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§+Y§ * this.§-a§) / this.§+Y§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§+Y§ * this.§-a§) % this.§+Y§;
                  if(this.§^!'§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§`m§ + _loc16_ * this.§+Y§ * this.§`m§;
                     _loc13_.y = this.§ g§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§ g§ + _loc18_ * this.§;! § + _loc16_ * this.§+Y§ * this.§;! §;
                  }
               }
               _loc8_.§ get§(_loc13_);
               _loc11_++;
            }
            _loc8_.§@G§("");
            _loc7_.§@!n§(this.§+Y§,this.§ <§,this.§-!f§,this.§@!X§ * this.§`m§,this.§@!X§ * this.§;! §,this.§-a§,this.§@!X§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §>!w§() : int
      {
         return this.§+Y§;
      }
      
      public function get §+1§() : int
      {
         if(this.§>!w§ == 0)
         {
            return 0;
         }
         return this.§1!@§(this.§]E§).§3w§.length / this.§>!w§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc5_:§7W§ = null;
         var _loc4_:§;!=§ = getItemByName(this.§]E§) as §;!=§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§`4§(_loc4_.§<#§ - 1);
               this.§[s§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§`4§(_loc4_.§<#§ + 1);
               this.§[s§();
            }
         }
         else if(param2.length > 0 && (param1 == §'!o§.LISTENER_EVENT_MOUSE_DOWN || param1 == §'!o§.LISTENER_EVENT_MOUSE_UP) && param3 is §7!>§)
         {
            if((_loc5_ = this.§1!@§((param3 as §7!>§).mParentContainer.mName.toUpperCase())) && param3 is §8!k§)
            {
               _loc5_.§@G§((param3 as §7!>§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §-!n§(param1:String, param2:int) : void
      {
         var _loc3_:§;!=§ = getItemByName(param1) as §;!=§;
         if(_loc3_)
         {
            _loc3_.§`4§(param2);
            this.§[s§();
         }
      }
      
      public function §1!@§(param1:String) : §7W§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3,§.length)
         {
            if(param1.toUpperCase() == (this.§3,§[_loc2_] as §7W§).mName.toUpperCase())
            {
               return this.§3,§[_loc2_] as §7W§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §-U§(param1:String) : void
      {
         this.§]E§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §&O§.length)
         {
            if(§&O§[_loc2_] is §;!=§)
            {
               if((§&O§[_loc2_] as §;!=§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§&O§[_loc2_] as §;!=§).setActiveStatus(true);
                  if(this.§5!E§)
                  {
                     this.§;f§.x = (§&O§[_loc2_] as §;!=§).x + this.§&=§;
                     this.§;f§.width = (§&O§[_loc2_] as §;!=§).width + this.§true §;
                  }
                  if(this.§=j§)
                  {
                     this.§;f§.y = (§&O§[_loc2_] as §;!=§).y + this.§5E§;
                     this.§;f§.height = (§&O§[_loc2_] as §;!=§).height + this.§ t§;
                  }
               }
               else
               {
                  (§&O§[_loc2_] as §;!=§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§[s§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§7W§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§3,§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §[s§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§;!=§ = getItemByName(this.§]E§) as §;!=§;
         if(_loc1_)
         {
            if(_loc1_.§<#§ > 0)
            {
               (getItemByName("Button_Scroll1") as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §[!i§).setComponentState(§-0§.§6!q§);
            }
            if(_loc1_.§<#§ < _loc1_.§7!=§ - 1)
            {
               (getItemByName("Button_Scroll2") as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §[!i§).setComponentState(§-0§.§6!q§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §[!i§).setComponentState(§-0§.§6!q§);
            (getItemByName("Button_Scroll2") as §[!i§).setComponentState(§-0§.§6!q§);
         }
      }
      
      public function §+!%§() : void
      {
         var _loc2_:§;!=§ = null;
         var _loc1_:int = §&O§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §&O§[_loc1_] as §;!=§;
            if(_loc2_)
            {
               _loc2_.clear();
               §&O§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§-U§("");
      }
      
      public function §;!Y§() : void
      {
         var _loc1_:§7W§ = null;
         for each(_loc1_ in this.§3,§)
         {
            _loc1_.§;!Y§();
         }
      }
      
      public function §!!!§() : Array
      {
         if(this.§1!@§(this.§]E§) == null)
         {
            §<m§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§1!@§(this.§]E§).§^"#§();
      }
      
      public function §,!§(param1:Array) : void
      {
         this.§1!@§(this.§]E§).§,!§(param1);
      }
      
      public function §1!^§(param1:Number) : void
      {
         this.§1!@§(this.§]E§).§1!^§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§default§ = null;
         this.§3,§ = null;
         this.§2!G§ = null;
      }
   }
}
