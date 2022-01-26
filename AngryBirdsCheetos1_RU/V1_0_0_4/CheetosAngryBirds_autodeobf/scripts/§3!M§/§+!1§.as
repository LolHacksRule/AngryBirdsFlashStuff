package §3!M§
{
   import §!!S§.§'+§;
   import §!!S§.§3!_§;
   import §!!S§.§>a§;
   import §!!S§.§^P§;
   import §@y§.§"!X§;
   import §^!&§.§;C§;
   import §`B§.§-Z§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §+!1§ extends §7^§
   {
      
      public static const §!2§:int = 0;
      
      public static const §+9§:int = 1;
      
      public static const §;$§:int = 2;
       
      
      public var §>$§:String;
      
      public var §1!?§:Class;
      
      public var §"[§:String = null;
      
      public var §7!6§:Vector.<§3!_§>;
      
      public var §<!X§:int;
      
      public var §0!R§:Number;
      
      public var §?!]§:Number;
      
      public var §]7§:Number;
      
      public var §?$§:Number;
      
      public var §3&§:Number;
      
      public var §,p§:Number;
      
      public var §[$§:Number;
      
      public var §^y§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var § !@§:int;
      
      public var §1v§:Number;
      
      public var §4K§:String = "";
      
      public var §?N§:int;
      
      public var §6§:int;
      
      public var §+8§:GlowFilter;
      
      public var §&! §:Boolean = true;
      
      public var §4!3§:int;
      
      public var §7%§:int;
      
      public var §6!W§:Number = 0;
      
      public var §#`§:Number = 0;
      
      public var §0!3§:Number = 0;
      
      public var §`J§:Number = 0;
      
      public var § N§:Boolean = false;
      
      public var §'!T§:Boolean = false;
      
      public var § var§:MovieClip = null;
      
      public function §+!1§(param1:XML, param2:§7^§, param3:§-Z§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§>$§ = param1.@button;
         if(this.§>$§.length > 0)
         {
            this.§1!?§ = §"!X§.§1!0§(this.§>$§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§"[§ = _loc5_;
         }
         this.§?N§ = §!2§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§?N§ = §+9§;
            }
         }
         this.§6§ = §;$§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§6§ = §!2§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§+8§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §]=§.push(new §`!;§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §]=§.push(new §`!;§(_loc18_,this));
         }
         this.§0!R§ = mClip.getChildByName("Surface").x;
         this.§?!]§ = mClip.getChildByName("Surface").y;
         this.§]7§ = mClip.getChildByName("Surface").width;
         this.§?$§ = mClip.getChildByName("Surface").height;
         this.§3&§ = mClip.getChildByName("Button_Area1").x - this.§0!R§;
         this.§,p§ = mClip.getChildByName("Button_Area1").y - this.§?!]§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§0!R§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§?!]§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§1v§ = _loc9_.bottom - this.§?!]§ - this.§,p§;
         this.§[$§ = _loc7_ - this.§3&§;
         this.§^y§ = _loc8_ - this.§,p§;
         if(Math.abs(this.§[$§) < 3)
         {
            this.§[$§ = 0;
         }
         if(Math.abs(this.§^y§) < 3)
         {
            this.§^y§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§[$§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§3&§ - this.§3&§) / this.§[$§;
         }
         if(this.§^y§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§,p§ - this.§,p§) / this.§^y§;
         }
         this.§<!X§ = Math.min(_loc10_,_loc11_);
         this.§&! § = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§4!3§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§4!3§ = this.§<!X§;
         }
         this.§ !@§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§0!R§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§?!]§;
            this.mButtonMarginX2 = _loc19_ - this.§3&§;
            this.mButtonMarginY2 = _loc20_ - this.§,p§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§&! §)
            {
               this.§ !@§ = 1 + (mClip.getChildByName("Surface").height - this.§,p§ - this.§,p§) / this.mButtonMarginY2;
            }
            else
            {
               this.§ !@§ = 1 + (mClip.getChildByName("Surface").width - this.§3&§ - this.§3&§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§ var§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§0!3§ = this.§ var§.x - mClip.getChildByName("Surface").x;
            this.§`J§ = this.§ var§.y - mClip.getChildByName("Surface").y;
            this.§6!W§ = this.§ var§.x + this.§ var§.width - (this.§ var§.x + mClip.getChildByName("Surface").width);
            this.§#`§ = this.§ var§.y + this.§ var§.height - (this.§ var§.y + mClip.getChildByName("Surface").height);
            this.§ N§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§'!T§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§7%§ = §3!_§.§+e§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§7%§ = §3!_§.§`p§;
            }
         }
         this.§;d§();
      }
      
      public function §;d§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§#A§ = null;
         var _loc8_:§3!_§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§6A§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §6A§;
         }
         this.§7!6§ = new Vector.<§3!_§>();
         this.§=!M§();
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
            _loc7_ = new §#A§(_loc6_,this,null,_loc5_);
            §]=§.push(_loc7_);
            _loc8_ = new §3!_§(this.§7%§,_loc4_);
            this.§7!6§.push(_loc8_);
            _loc9_ = this.§3&§;
            _loc10_ = this.§<!X§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§6§ == §!2§)
            {
               _loc9_ = (this.§]7§ - (_loc10_ - 1) * this.§[$§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§]=§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§]=§.push(new param2(_loc12_,_loc7_,new this.§1!?§() as MovieClip));
               }
               _loc13_ = _loc7_.§]=§[_loc7_.§]=§.length - 1] as §6A§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§=4§(_loc14_,this.§"[§);
                  if(this.§?N§ == §+9§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§"[§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§ !@§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§[$§;
                  _loc13_.y = this.§,p§ + _loc11_ * this.§^y§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§<!X§ * this.§ !@§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§<!X§ * this.§ !@§) / this.§<!X§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§<!X§ * this.§ !@§) % this.§<!X§;
                  if(this.§&! §)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§[$§ + _loc16_ * this.§<!X§ * this.§[$§;
                     _loc13_.y = this.§,p§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§,p§ + _loc18_ * this.§^y§ + _loc16_ * this.§<!X§ * this.§^y§;
                  }
               }
               _loc8_.§^!O§(_loc13_);
               _loc11_++;
            }
            _loc8_.§!!$§("");
            _loc7_.§^!E§(this.§<!X§,this.§0!R§,this.§?!]§,this.§4!3§ * this.§[$§,this.§4!3§ * this.§^y§,this.§ !@§,this.§4!3§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §;k§() : int
      {
         return this.§<!X§;
      }
      
      public function get §"<§() : int
      {
         if(this.§;k§ == 0)
         {
            return 0;
         }
         return this.§&f§(this.§4K§).§"!8§.length / this.§;k§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§^P§) : void
      {
         var _loc5_:§3!_§ = null;
         var _loc4_:§#A§ = getItemByName(this.§4K§) as §#A§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§[#§(_loc4_.§ H§ - 1);
               this.§8"§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§[#§(_loc4_.§ H§ + 1);
               this.§8"§();
            }
         }
         else if(param2.length > 0 && (param1 == §^P§.LISTENER_EVENT_MOUSE_DOWN || param1 == §^P§.LISTENER_EVENT_MOUSE_UP) && param3 is §'+§)
         {
            if((_loc5_ = this.§&f§((param3 as §'+§).mParentContainer.mName.toUpperCase())) && param3 is §6A§)
            {
               _loc5_.§!!$§((param3 as §'+§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §3=§(param1:String, param2:int) : void
      {
         var _loc3_:§#A§ = getItemByName(param1) as §#A§;
         if(_loc3_)
         {
            _loc3_.§[#§(param2);
            this.§8"§();
         }
      }
      
      public function §&f§(param1:String) : §3!_§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§7!6§.length)
         {
            if(param1.toUpperCase() == (this.§7!6§[_loc2_] as §3!_§).mName.toUpperCase())
            {
               return this.§7!6§[_loc2_] as §3!_§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §;!Q§(param1:String) : void
      {
         this.§4K§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §]=§.length)
         {
            if(§]=§[_loc2_] is §#A§)
            {
               if((§]=§[_loc2_] as §#A§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§]=§[_loc2_] as §#A§).setActiveStatus(true);
                  if(this.§ N§)
                  {
                     this.§ var§.x = (§]=§[_loc2_] as §#A§).x + this.§0!3§;
                     this.§ var§.width = (§]=§[_loc2_] as §#A§).width + this.§6!W§;
                  }
                  if(this.§'!T§)
                  {
                     this.§ var§.y = (§]=§[_loc2_] as §#A§).y + this.§`J§;
                     this.§ var§.height = (§]=§[_loc2_] as §#A§).height + this.§#`§;
                  }
               }
               else
               {
                  (§]=§[_loc2_] as §#A§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§8"§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§3!_§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§7!6§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §8"§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§#A§ = getItemByName(this.§4K§) as §#A§;
         if(_loc1_)
         {
            if(_loc1_.§ H§ > 0)
            {
               (getItemByName("Button_Scroll1") as §`!;§).setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §`!;§).setComponentState(§>a§.§9E§);
            }
            if(_loc1_.§ H§ < _loc1_.§0#§ - 1)
            {
               (getItemByName("Button_Scroll2") as §`!;§).setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §`!;§).setComponentState(§>a§.§9E§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §`!;§).setComponentState(§>a§.§9E§);
            (getItemByName("Button_Scroll2") as §`!;§).setComponentState(§>a§.§9E§);
         }
      }
      
      public function §=!M§() : void
      {
         var _loc2_:§#A§ = null;
         var _loc1_:int = §]=§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §]=§[_loc1_] as §#A§;
            if(_loc2_)
            {
               _loc2_.clear();
               §]=§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§;!Q§("");
      }
      
      public function §7!N§() : void
      {
         var _loc1_:§3!_§ = null;
         for each(_loc1_ in this.§7!6§)
         {
            _loc1_.§7!N§();
         }
      }
      
      public function §%o§() : Array
      {
         if(this.§&f§(this.§4K§) == null)
         {
            §;C§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§&f§(this.§4K§).§>[§();
      }
      
      public function §]!_§(param1:Array) : void
      {
         this.§&f§(this.§4K§).§]!_§(param1);
      }
      
      public function §4!8§(param1:Number) : void
      {
         this.§&f§(this.§4K§).§4!8§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§1!?§ = null;
         this.§7!6§ = null;
         this.§+8§ = null;
      }
   }
}
