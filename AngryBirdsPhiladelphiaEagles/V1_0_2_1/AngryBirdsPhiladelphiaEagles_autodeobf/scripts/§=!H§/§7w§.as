package §=!H§
{
   import §2S§.§<!K§;
   import §9c§.§,x§;
   import §9c§.§3i§;
   import §9c§.§6P§;
   import §9c§.§>J§;
   import §@V§.§`!5§;
   import com.rovio.assets.§<x§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §7w§ extends §9V§
   {
      
      public static const §"+§:int = 0;
      
      public static const §#3§:int = 1;
      
      public static const §6L§:int = 2;
       
      
      public var § _§:String;
      
      public var §@!+§:Class;
      
      public var §9r§:String = null;
      
      public var §2!I§:Vector.<§>J§>;
      
      public var §6!J§:int;
      
      public var §0?§:Number;
      
      public var §]!3§:Number;
      
      public var §+"§:Number;
      
      public var §%f§:Number;
      
      public var §[!5§:Number;
      
      public var §,6§:Number;
      
      public var §+n§:Number;
      
      public var §;!5§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §;r§:int;
      
      public var §92§:Number;
      
      public var §4!L§:String = "";
      
      public var §&'§:int;
      
      public var §3v§:int;
      
      public var § K§:GlowFilter;
      
      public var §,!-§:Boolean = true;
      
      public var §@A§:int;
      
      public var §^!7§:int;
      
      public var §`q§:Number = 0;
      
      public var §@U§:Number = 0;
      
      public var §,l§:Number = 0;
      
      public var § s§:Number = 0;
      
      public var §;g§:Boolean = false;
      
      public var §-m§:Boolean = false;
      
      public var §9N§:MovieClip = null;
      
      public function §7w§(param1:XML, param2:§9V§, param3:§<!K§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§ _§ = param1.@button;
         if(this.§ _§.length > 0)
         {
            this.§@!+§ = §<x§.§,! §(this.§ _§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§9r§ = _loc5_;
         }
         this.§&'§ = §"+§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§&'§ = §#3§;
            }
         }
         this.§3v§ = §6L§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§3v§ = §"+§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§ K§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §=!L§.push(new §=<§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §=!L§.push(new §=<§(_loc18_,this));
         }
         this.§0?§ = mClip.getChildByName("Surface").x;
         this.§]!3§ = mClip.getChildByName("Surface").y;
         this.§+"§ = mClip.getChildByName("Surface").width;
         this.§%f§ = mClip.getChildByName("Surface").height;
         this.§[!5§ = mClip.getChildByName("Button_Area1").x - this.§0?§;
         this.§,6§ = mClip.getChildByName("Button_Area1").y - this.§]!3§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§0?§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§]!3§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§92§ = _loc9_.bottom - this.§]!3§ - this.§,6§;
         this.§+n§ = _loc7_ - this.§[!5§;
         this.§;!5§ = _loc8_ - this.§,6§;
         if(Math.abs(this.§+n§) < 3)
         {
            this.§+n§ = 0;
         }
         if(Math.abs(this.§;!5§) < 3)
         {
            this.§;!5§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§+n§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§[!5§ - this.§[!5§) / this.§+n§;
         }
         if(this.§;!5§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§,6§ - this.§,6§) / this.§;!5§;
         }
         this.§6!J§ = Math.min(_loc10_,_loc11_);
         this.§,!-§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§@A§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§@A§ = this.§6!J§;
         }
         this.§;r§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§0?§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§]!3§;
            this.mButtonMarginX2 = _loc19_ - this.§[!5§;
            this.mButtonMarginY2 = _loc20_ - this.§,6§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§,!-§)
            {
               this.§;r§ = 1 + (mClip.getChildByName("Surface").height - this.§,6§ - this.§,6§) / this.mButtonMarginY2;
            }
            else
            {
               this.§;r§ = 1 + (mClip.getChildByName("Surface").width - this.§[!5§ - this.§[!5§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§9N§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§,l§ = this.§9N§.x - mClip.getChildByName("Surface").x;
            this.§ s§ = this.§9N§.y - mClip.getChildByName("Surface").y;
            this.§`q§ = this.§9N§.x + this.§9N§.width - (this.§9N§.x + mClip.getChildByName("Surface").width);
            this.§@U§ = this.§9N§.y + this.§9N§.height - (this.§9N§.y + mClip.getChildByName("Surface").height);
            this.§;g§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§-m§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§^!7§ = §>J§.§4L§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§^!7§ = §>J§.§"!?§;
            }
         }
         this.§?!%§();
      }
      
      public function §?!%§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§#!$§ = null;
         var _loc8_:§>J§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§<h§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §<h§;
         }
         this.§2!I§ = new Vector.<§>J§>();
         this.§'Y§();
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
            _loc7_ = new §#!$§(_loc6_,this,null,_loc5_);
            §=!L§.push(_loc7_);
            _loc8_ = new §>J§(this.§^!7§,_loc4_);
            this.§2!I§.push(_loc8_);
            _loc9_ = this.§[!5§;
            _loc10_ = this.§6!J§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§3v§ == §"+§)
            {
               _loc9_ = (this.§+"§ - (_loc10_ - 1) * this.§+n§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§=!L§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§=!L§.push(new param2(_loc12_,_loc7_,new this.§@!+§() as MovieClip));
               }
               _loc13_ = _loc7_.§=!L§[_loc7_.§=!L§.length - 1] as §<h§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§[!8§(_loc14_,this.§9r§);
                  if(this.§&'§ == §#3§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§9r§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§;r§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§+n§;
                  _loc13_.y = this.§,6§ + _loc11_ * this.§;!5§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§6!J§ * this.§;r§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§6!J§ * this.§;r§) / this.§6!J§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§6!J§ * this.§;r§) % this.§6!J§;
                  if(this.§,!-§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§+n§ + _loc16_ * this.§6!J§ * this.§+n§;
                     _loc13_.y = this.§,6§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§,6§ + _loc18_ * this.§;!5§ + _loc16_ * this.§6!J§ * this.§;!5§;
                  }
               }
               _loc8_.§1;§(_loc13_);
               _loc11_++;
            }
            _loc8_.§-!!§("");
            _loc7_.§]p§(this.§6!J§,this.§0?§,this.§]!3§,this.§@A§ * this.§+n§,this.§@A§ * this.§;!5§,this.§;r§,this.§@A§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §@8§() : int
      {
         return this.§6!J§;
      }
      
      public function get §7g§() : int
      {
         if(this.§@8§ == 0)
         {
            return 0;
         }
         return this.§?!>§(this.§4!L§).§9!3§.length / this.§@8§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§,x§) : void
      {
         var _loc5_:§>J§ = null;
         var _loc4_:§#!$§ = getItemByName(this.§4!L§) as §#!$§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§?!M§(_loc4_.§0P§ - 1);
               this.§@m§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§?!M§(_loc4_.§0P§ + 1);
               this.§@m§();
            }
         }
         else if(param2.length > 0 && (param1 == §,x§.LISTENER_EVENT_MOUSE_DOWN || param1 == §,x§.LISTENER_EVENT_MOUSE_UP) && param3 is §3i§)
         {
            if((_loc5_ = this.§?!>§((param3 as §3i§).mParentContainer.mName.toUpperCase())) && param3 is §<h§)
            {
               _loc5_.§-!!§((param3 as §3i§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §0!#§(param1:String, param2:int) : void
      {
         var _loc3_:§#!$§ = getItemByName(param1) as §#!$§;
         if(_loc3_)
         {
            _loc3_.§?!M§(param2);
            this.§@m§();
         }
      }
      
      public function §?!>§(param1:String) : §>J§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2!I§.length)
         {
            if(param1.toUpperCase() == (this.§2!I§[_loc2_] as §>J§).mName.toUpperCase())
            {
               return this.§2!I§[_loc2_] as §>J§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §0!Q§(param1:String) : void
      {
         this.§4!L§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §=!L§.length)
         {
            if(§=!L§[_loc2_] is §#!$§)
            {
               if((§=!L§[_loc2_] as §#!$§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§=!L§[_loc2_] as §#!$§).setActiveStatus(true);
                  if(this.§;g§)
                  {
                     this.§9N§.x = (§=!L§[_loc2_] as §#!$§).x + this.§,l§;
                     this.§9N§.width = (§=!L§[_loc2_] as §#!$§).width + this.§`q§;
                  }
                  if(this.§-m§)
                  {
                     this.§9N§.y = (§=!L§[_loc2_] as §#!$§).y + this.§ s§;
                     this.§9N§.height = (§=!L§[_loc2_] as §#!$§).height + this.§@U§;
                  }
               }
               else
               {
                  (§=!L§[_loc2_] as §#!$§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§@m§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§>J§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§2!I§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §@m§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§#!$§ = getItemByName(this.§4!L§) as §#!$§;
         if(_loc1_)
         {
            if(_loc1_.§0P§ > 0)
            {
               (getItemByName("Button_Scroll1") as §=<§).setComponentState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §=<§).setComponentState(§6P§.§^!<§);
            }
            if(_loc1_.§0P§ < _loc1_.§#!O§ - 1)
            {
               (getItemByName("Button_Scroll2") as §=<§).setComponentState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §=<§).setComponentState(§6P§.§^!<§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §=<§).setComponentState(§6P§.§^!<§);
            (getItemByName("Button_Scroll2") as §=<§).setComponentState(§6P§.§^!<§);
         }
      }
      
      public function §'Y§() : void
      {
         var _loc2_:§#!$§ = null;
         var _loc1_:int = §=!L§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §=!L§[_loc1_] as §#!$§;
            if(_loc2_)
            {
               _loc2_.clear();
               §=!L§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§0!Q§("");
      }
      
      public function §2!-§() : void
      {
         var _loc1_:§>J§ = null;
         for each(_loc1_ in this.§2!I§)
         {
            _loc1_.§2!-§();
         }
      }
      
      public function §-[§() : Array
      {
         if(this.§?!>§(this.§4!L§) == null)
         {
            §`!5§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§?!>§(this.§4!L§).§7!"§();
      }
      
      public function §@!H§(param1:Array) : void
      {
         this.§?!>§(this.§4!L§).§@!H§(param1);
      }
      
      public function § var§(param1:Number) : void
      {
         this.§?!>§(this.§4!L§).§ var§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§@!+§ = null;
         this.§2!I§ = null;
         this.§ K§ = null;
      }
   }
}
