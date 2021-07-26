package §#,§
{
   import §%!-§.§5!z§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §,!Q§.§8#=§;
   import §,!Q§.§8$E§;
   import §1#v§.§;!Y§;
   import com.rovio.assets.§6$A§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §&e§ extends §]$+§
   {
      
      public static const §+!T§:int = 0;
      
      public static const §'!E§:int = 1;
      
      public static const §4!4§:int = 2;
       
      
      public var §2a§:String;
      
      public var §?!c§:Class;
      
      public var § [§:String = null;
      
      public var §-"0§:Vector.<§8$E§>;
      
      public var §%#>§:int;
      
      public var §&!l§:Number;
      
      public var §@"=§:Number;
      
      public var §8!C§:Number;
      
      public var §&#=§:Number;
      
      public var §,"Q§:Number;
      
      public var §1#Q§:Number;
      
      public var §@#Y§:Number;
      
      public var §-#i§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §`#k§:int;
      
      public var §>!D§:Number;
      
      public var §+l§:String = "";
      
      public var §%&§:int;
      
      public var §!J§:int;
      
      public var §,`§:GlowFilter;
      
      public var § !'§:Boolean = true;
      
      public var §]#B§:int;
      
      public var §4V§:int;
      
      public var set:Number = 0;
      
      public var §0-§:Number = 0;
      
      public var §>"w§:Number = 0;
      
      public var §<"-§:Number = 0;
      
      public var § #c§:Boolean = false;
      
      public var §+"&§:Boolean = false;
      
      public var §-"]§:MovieClip = null;
      
      public function §&e§(param1:XML, param2:§]$+§, param3:§5!z§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§2a§ = param1.@button;
         if(this.§2a§.length > 0)
         {
            this.§?!c§ = §6$A§.§1!m§(this.§2a§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§ [§ = _loc5_;
         }
         this.§%&§ = §+!T§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§%&§ = §'!E§;
            }
         }
         this.§!J§ = §4!4§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§!J§ = §+!T§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§,`§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §!$"§.push(new § !>§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §!$"§.push(new § !>§(_loc18_,this));
         }
         this.§&!l§ = mClip.getChildByName("Surface").x;
         this.§@"=§ = mClip.getChildByName("Surface").y;
         this.§8!C§ = mClip.getChildByName("Surface").width;
         this.§&#=§ = mClip.getChildByName("Surface").height;
         this.§,"Q§ = mClip.getChildByName("Button_Area1").x - this.§&!l§;
         this.§1#Q§ = mClip.getChildByName("Button_Area1").y - this.§@"=§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§&!l§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§@"=§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§>!D§ = _loc9_.bottom - this.§@"=§ - this.§1#Q§;
         this.§@#Y§ = _loc7_ - this.§,"Q§;
         this.§-#i§ = _loc8_ - this.§1#Q§;
         if(Math.abs(this.§@#Y§) < 3)
         {
            this.§@#Y§ = 0;
         }
         if(Math.abs(this.§-#i§) < 3)
         {
            this.§-#i§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§@#Y§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§,"Q§ - this.§,"Q§) / this.§@#Y§;
         }
         if(this.§-#i§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§1#Q§ - this.§1#Q§) / this.§-#i§;
         }
         this.§%#>§ = Math.min(_loc10_,_loc11_);
         this.§ !'§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§]#B§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§]#B§ = this.§%#>§;
         }
         this.§`#k§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§&!l§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§@"=§;
            this.mButtonMarginX2 = _loc19_ - this.§,"Q§;
            this.mButtonMarginY2 = _loc20_ - this.§1#Q§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§ !'§)
            {
               this.§`#k§ = 1 + (mClip.getChildByName("Surface").height - this.§1#Q§ - this.§1#Q§) / this.mButtonMarginY2;
            }
            else
            {
               this.§`#k§ = 1 + (mClip.getChildByName("Surface").width - this.§,"Q§ - this.§,"Q§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§-"]§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§>"w§ = this.§-"]§.x - mClip.getChildByName("Surface").x;
            this.§<"-§ = this.§-"]§.y - mClip.getChildByName("Surface").y;
            this.set = this.§-"]§.x + this.§-"]§.width - (this.§-"]§.x + mClip.getChildByName("Surface").width);
            this.§0-§ = this.§-"]§.y + this.§-"]§.height - (this.§-"]§.y + mClip.getChildByName("Surface").height);
            this.§ #c§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§+"&§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§4V§ = §8$E§.§#!S§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§4V§ = §8$E§.§9!B§;
            }
         }
         this.§<$5§();
      }
      
      public function §<$5§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§;#8§ = null;
         var _loc8_:§8$E§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§=!7§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §=!7§;
         }
         this.§-"0§ = new Vector.<§8$E§>();
         this.§!!0§();
         if(!param1)
         {
            param1 = new Array();
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = name + "_Tab_" + _loc3_;
            _loc5_ = new MovieClip();
            (_loc6_ = <Container/>).@name = _loc4_;
            _loc7_ = new §;#8§(_loc6_,this,null,_loc5_);
            §!$"§.push(_loc7_);
            _loc8_ = new §8$E§(this.§4V§,_loc4_);
            this.§-"0§.push(_loc8_);
            _loc9_ = this.§,"Q§;
            _loc10_ = this.§%#>§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§!J§ == §+!T§)
            {
               _loc9_ = (this.§8!C§ - (_loc10_ - 1) * this.§@#Y§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§!$"§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§!$"§.push(new param2(_loc12_,_loc7_,new this.§?!c§() as MovieClip));
               }
               _loc13_ = _loc7_.§!$"§[_loc7_.§!$"§.length - 1] as §=!7§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§ [§);
                  if(this.§%&§ == §'!E§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§ [§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§`#k§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§@#Y§;
                  _loc13_.y = this.§1#Q§ + _loc11_ * this.§-#i§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§%#>§ * this.§`#k§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§%#>§ * this.§`#k§) / this.§%#>§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§%#>§ * this.§`#k§) % this.§%#>§;
                  if(this.§ !'§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§@#Y§ + _loc16_ * this.§%#>§ * this.§@#Y§;
                     _loc13_.y = this.§1#Q§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§1#Q§ + _loc18_ * this.§-#i§ + _loc16_ * this.§%#>§ * this.§-#i§;
                  }
               }
               _loc8_.§ ##§(_loc13_);
               _loc11_++;
            }
            _loc8_.§5d§("");
            _loc7_.§-"?§(this.§%#>§,this.§&!l§,this.§@"=§,this.§]#B§ * this.§@#Y§,this.§]#B§ * this.§-#i§,this.§`#k§,this.§]#B§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §3!y§() : int
      {
         return this.§%#>§;
      }
      
      public function get §-#`§() : int
      {
         if(this.§3!y§ == 0)
         {
            return 0;
         }
         return this.§6!U§(this.§+l§).§[">§.length / this.§3!y§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§6"n§, param4:Event = null) : void
      {
         var _loc6_:§8$E§ = null;
         var _loc5_:§;#8§ = getItemByName(this.§+l§) as §;#8§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§-#t§(_loc5_.§9N§ - 1);
               this.§,p§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§-#t§(_loc5_.§9N§ + 1);
               this.§,p§();
            }
         }
         else if(param2.length > 0 && (param1 == §6"n§.LISTENER_EVENT_MOUSE_DOWN || param1 == §6"n§.LISTENER_EVENT_MOUSE_UP) && param3 is §8#=§)
         {
            if((_loc6_ = this.§6!U§((param3 as §8#=§).mParentContainer.upperCaseName)) && param3 is §=!7§)
            {
               _loc6_.§5d§((param3 as §8#=§).upperCaseName);
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §%#q§(param1:String, param2:int) : void
      {
         var _loc3_:§;#8§ = getItemByName(param1) as §;#8§;
         if(_loc3_)
         {
            _loc3_.§-#t§(param2);
            this.§,p§();
         }
      }
      
      public function §6!U§(param1:String) : §8$E§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-"0§.length)
         {
            if(param1.toUpperCase() == (this.§-"0§[_loc2_] as §8$E§).§!I§.toUpperCase())
            {
               return this.§-"0§[_loc2_] as §8$E§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §[!'§(param1:String) : void
      {
         this.§+l§ = param1;
         param1 = param1.toUpperCase();
         var _loc2_:int = 0;
         while(_loc2_ < §!$"§.length)
         {
            if(§!$"§[_loc2_] is §;#8§)
            {
               if((§!$"§[_loc2_] as §;#8§).upperCaseName == param1)
               {
                  (§!$"§[_loc2_] as §;#8§).setActiveStatus(true);
                  if(this.§ #c§)
                  {
                     this.§-"]§.x = (§!$"§[_loc2_] as §;#8§).x + this.§>"w§;
                     this.§-"]§.width = (§!$"§[_loc2_] as §;#8§).width + this.set;
                  }
                  if(this.§+"&§)
                  {
                     this.§-"]§.y = (§!$"§[_loc2_] as §;#8§).y + this.§<"-§;
                     this.§-"]§.height = (§!$"§[_loc2_] as §;#8§).height + this.§0-§;
                  }
               }
               else
               {
                  (§!$"§[_loc2_] as §;#8§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§,p§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§8$E§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§-"0§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §,p§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§;#8§ = getItemByName(this.§+l§) as §;#8§;
         if(_loc1_)
         {
            if(_loc1_.§9N§ > 0)
            {
               (getItemByName("Button_Scroll1") as § !>§).setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as § !>§).setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§9N§ < _loc1_.§1$9§ - 1)
            {
               (getItemByName("Button_Scroll2") as § !>§).setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as § !>§).setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as § !>§).setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as § !>§).setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §!!0§() : void
      {
         var _loc2_:§;#8§ = null;
         var _loc1_:int = §!$"§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §!$"§[_loc1_] as §;#8§;
            if(_loc2_)
            {
               _loc2_.clear();
               §!$"§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§[!'§("");
      }
      
      public function §=!!§() : void
      {
         var _loc1_:§8$E§ = null;
         for each(_loc1_ in this.§-"0§)
         {
            _loc1_.§=!!§();
         }
      }
      
      public function §0"-§() : Array
      {
         if(this.§6!U§(this.§+l§) == null)
         {
            §;!Y§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§6!U§(this.§+l§).§5!N§();
      }
      
      public function §^"o§(param1:Array) : void
      {
         this.§6!U§(this.§+l§).§^"o§(param1);
      }
      
      public function §4$9§(param1:Number) : void
      {
         this.§6!U§(this.§+l§).§4$9§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§?!c§ = null;
         this.§-"0§ = null;
         this.§,`§ = null;
      }
   }
}
