package §-!V§
{
   import § !3§.§!X§;
   import §#!+§.§"$§;
   import §,y§.§?!0§;
   import §;!0§.§"[§;
   import §;!0§.§-!'§;
   import §;!0§.§4!I§;
   import §;!0§.§;;§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §##§ extends §@§
   {
      
      public static const §2@§:int = 0;
      
      public static const §8A§:int = 1;
      
      public static const §'a§:int = 2;
       
      
      public var §<!B§:String;
      
      public var §[C§:Class;
      
      public var §6N§:String = null;
      
      public var §-!]§:Vector.<§;;§>;
      
      public var §#J§:int;
      
      public var §@+§:Number;
      
      public var §&X§:Number;
      
      public var §]2§:Number;
      
      public var §?Q§:Number;
      
      public var § s§:Number;
      
      public var §]!1§:Number;
      
      public var §,h§:Number;
      
      public var §?M§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §17§:int;
      
      public var §#N§:Number;
      
      public var §]!G§:String = "";
      
      public var §2W§:int;
      
      public var §?y§:int;
      
      public var §'X§:GlowFilter;
      
      public var §+R§:Boolean = true;
      
      public var §#!E§:int;
      
      public var §?!G§:int;
      
      public var §-e§:Number = 0;
      
      public var §'D§:Number = 0;
      
      public var §+!-§:Number = 0;
      
      public var §<C§:Number = 0;
      
      public var §]!]§:Boolean = false;
      
      public var §3!I§:Boolean = false;
      
      public var §8^§:MovieClip = null;
      
      public function §##§(param1:XML, param2:§@§, param3:§"$§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§<!B§ = param1.@button;
         if(this.§<!B§.length > 0)
         {
            this.§[C§ = §?!0§.§^e§(this.§<!B§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§6N§ = _loc5_;
         }
         this.§2W§ = §2@§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§2W§ = §8A§;
            }
         }
         this.§?y§ = §'a§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§?y§ = §2@§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§'X§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §@!^§.push(new §'J§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §@!^§.push(new §'J§(_loc18_,this));
         }
         this.§@+§ = mClip.getChildByName("Surface").x;
         this.§&X§ = mClip.getChildByName("Surface").y;
         this.§]2§ = mClip.getChildByName("Surface").width;
         this.§?Q§ = mClip.getChildByName("Surface").height;
         this.§ s§ = mClip.getChildByName("Button_Area1").x - this.§@+§;
         this.§]!1§ = mClip.getChildByName("Button_Area1").y - this.§&X§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§@+§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§&X§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§#N§ = _loc9_.bottom - this.§&X§ - this.§]!1§;
         this.§,h§ = _loc7_ - this.§ s§;
         this.§?M§ = _loc8_ - this.§]!1§;
         if(Math.abs(this.§,h§) < 3)
         {
            this.§,h§ = 0;
         }
         if(Math.abs(this.§?M§) < 3)
         {
            this.§?M§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§,h§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§ s§ - this.§ s§) / this.§,h§;
         }
         if(this.§?M§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§]!1§ - this.§]!1§) / this.§?M§;
         }
         this.§#J§ = Math.min(_loc10_,_loc11_);
         this.§+R§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§#!E§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§#!E§ = this.§#J§;
         }
         this.§17§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§@+§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§&X§;
            this.mButtonMarginX2 = _loc19_ - this.§ s§;
            this.mButtonMarginY2 = _loc20_ - this.§]!1§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§+R§)
            {
               this.§17§ = 1 + (mClip.getChildByName("Surface").height - this.§]!1§ - this.§]!1§) / this.mButtonMarginY2;
            }
            else
            {
               this.§17§ = 1 + (mClip.getChildByName("Surface").width - this.§ s§ - this.§ s§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§8^§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§+!-§ = this.§8^§.x - mClip.getChildByName("Surface").x;
            this.§<C§ = this.§8^§.y - mClip.getChildByName("Surface").y;
            this.§-e§ = this.§8^§.x + this.§8^§.width - (this.§8^§.x + mClip.getChildByName("Surface").width);
            this.§'D§ = this.§8^§.y + this.§8^§.height - (this.§8^§.y + mClip.getChildByName("Surface").height);
            this.§]!]§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§3!I§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§?!G§ = §;;§.§^!c§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§?!G§ = §;;§.§@!W§;
            }
         }
         this.§!!=§();
      }
      
      public function §!!=§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§@A§ = null;
         var _loc8_:§;;§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§@?§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §@?§;
         }
         this.§-!]§ = new Vector.<§;;§>();
         this.§!x§();
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
            _loc7_ = new §@A§(_loc6_,this,null,_loc5_);
            §@!^§.push(_loc7_);
            _loc8_ = new §;;§(this.§?!G§,_loc4_);
            this.§-!]§.push(_loc8_);
            _loc9_ = this.§ s§;
            _loc10_ = this.§#J§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§?y§ == §2@§)
            {
               _loc9_ = (this.§]2§ - (_loc10_ - 1) * this.§,h§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§@!^§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§@!^§.push(new param2(_loc12_,_loc7_,new this.§[C§() as MovieClip));
               }
               _loc13_ = _loc7_.§@!^§[_loc7_.§@!^§.length - 1] as §@?§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§?!2§(_loc14_,this.§6N§);
                  if(this.§2W§ == §8A§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§6N§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§17§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§,h§;
                  _loc13_.y = this.§]!1§ + _loc11_ * this.§?M§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§#J§ * this.§17§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§#J§ * this.§17§) / this.§#J§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§#J§ * this.§17§) % this.§#J§;
                  if(this.§+R§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§,h§ + _loc16_ * this.§#J§ * this.§,h§;
                     _loc13_.y = this.§]!1§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§]!1§ + _loc18_ * this.§?M§ + _loc16_ * this.§#J§ * this.§?M§;
                  }
               }
               _loc8_.§-9§(_loc13_);
               _loc11_++;
            }
            _loc8_.§1!f§("");
            _loc7_.§,!$§(this.§#J§,this.§@+§,this.§&X§,this.§#!E§ * this.§,h§,this.§#!E§ * this.§?M§,this.§17§,this.§#!E§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §-!"§() : int
      {
         return this.§#J§;
      }
      
      public function get §,2§() : int
      {
         if(this.§-!"§ == 0)
         {
            return 0;
         }
         return this.§?!P§(this.§]!G§).§7j§.length / this.§-!"§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§4!I§) : void
      {
         var _loc5_:§;;§ = null;
         var _loc4_:§@A§ = getItemByName(this.§]!G§) as §@A§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§'!D§(_loc4_.§1Z§ - 1);
               this.§=2§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§'!D§(_loc4_.§1Z§ + 1);
               this.§=2§();
            }
         }
         else if(param2.length > 0 && (param1 == §4!I§.LISTENER_EVENT_MOUSE_DOWN || param1 == §4!I§.LISTENER_EVENT_MOUSE_UP) && param3 is §-!'§)
         {
            if((_loc5_ = this.§?!P§((param3 as §-!'§).mParentContainer.mName.toUpperCase())) && param3 is §@?§)
            {
               _loc5_.§1!f§((param3 as §-!'§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §5Y§(param1:String, param2:int) : void
      {
         var _loc3_:§@A§ = getItemByName(param1) as §@A§;
         if(_loc3_)
         {
            _loc3_.§'!D§(param2);
            this.§=2§();
         }
      }
      
      public function §?!P§(param1:String) : §;;§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!]§.length)
         {
            if(param1.toUpperCase() == (this.§-!]§[_loc2_] as §;;§).mName.toUpperCase())
            {
               return this.§-!]§[_loc2_] as §;;§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §2!T§(param1:String) : void
      {
         this.§]!G§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §@!^§.length)
         {
            if(§@!^§[_loc2_] is §@A§)
            {
               if((§@!^§[_loc2_] as §@A§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§@!^§[_loc2_] as §@A§).setActiveStatus(true);
                  if(this.§]!]§)
                  {
                     this.§8^§.x = (§@!^§[_loc2_] as §@A§).x + this.§+!-§;
                     this.§8^§.width = (§@!^§[_loc2_] as §@A§).width + this.§-e§;
                  }
                  if(this.§3!I§)
                  {
                     this.§8^§.y = (§@!^§[_loc2_] as §@A§).y + this.§<C§;
                     this.§8^§.height = (§@!^§[_loc2_] as §@A§).height + this.§'D§;
                  }
               }
               else
               {
                  (§@!^§[_loc2_] as §@A§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§=2§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§;;§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§-!]§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §=2§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§@A§ = getItemByName(this.§]!G§) as §@A§;
         if(_loc1_)
         {
            if(_loc1_.§1Z§ > 0)
            {
               (getItemByName("Button_Scroll1") as §'J§).setComponentState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §'J§).setComponentState(§"[§.§"f§);
            }
            if(_loc1_.§1Z§ < _loc1_.§[!&§ - 1)
            {
               (getItemByName("Button_Scroll2") as §'J§).setComponentState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §'J§).setComponentState(§"[§.§"f§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §'J§).setComponentState(§"[§.§"f§);
            (getItemByName("Button_Scroll2") as §'J§).setComponentState(§"[§.§"f§);
         }
      }
      
      public function §!x§() : void
      {
         var _loc2_:§@A§ = null;
         var _loc1_:int = §@!^§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §@!^§[_loc1_] as §@A§;
            if(_loc2_)
            {
               _loc2_.clear();
               §@!^§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§2!T§("");
      }
      
      public function §8!>§() : void
      {
         var _loc1_:§;;§ = null;
         for each(_loc1_ in this.§-!]§)
         {
            _loc1_.§8!>§();
         }
      }
      
      public function §=!2§() : Array
      {
         if(this.§?!P§(this.§]!G§) == null)
         {
            §!X§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§?!P§(this.§]!G§).§^,§();
      }
      
      public function §-![§(param1:Array) : void
      {
         this.§?!P§(this.§]!G§).§-![§(param1);
      }
      
      public function §`!b§(param1:Number) : void
      {
         this.§?!P§(this.§]!G§).§`!b§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§[C§ = null;
         this.§-!]§ = null;
         this.§'X§ = null;
      }
   }
}
