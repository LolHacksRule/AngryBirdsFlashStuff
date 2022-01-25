package §4Y§
{
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §!R§.§9!8§;
   import §!R§.§]$§;
   import §+!2§.§0!%§;
   import §8!$§.§?p§;
   import com.rovio.assets.§1!C§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §["4§ extends §%n§
   {
      
      public static const §="&§:int = 0;
      
      public static const §@!Q§:int = 1;
      
      public static const §`F§:int = 2;
       
      
      public var §%Q§:String;
      
      public var §>"1§:Class;
      
      public var §<!8§:String = null;
      
      public var §3p§:Vector.<§]$§>;
      
      public var §#!K§:int;
      
      public var §%!B§:Number;
      
      public var §2!H§:Number;
      
      public var §9"5§:Number;
      
      public var §%G§:Number;
      
      public var §=!`§:Number;
      
      public var § J§:Number;
      
      public var §6!l§:Number;
      
      public var §'!x§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §3!Q§:int;
      
      public var §<;§:Number;
      
      public var §2!a§:String = "";
      
      public var §,!t§:int;
      
      public var §^!4§:int;
      
      public var §,!i§:GlowFilter;
      
      public var §[!2§:Boolean = true;
      
      public var §5t§:int;
      
      public var §#[§:int;
      
      public var §=p§:Number = 0;
      
      public var §6!J§:Number = 0;
      
      public var §&!v§:Number = 0;
      
      public var §!!Q§:Number = 0;
      
      public var §^5§:Boolean = false;
      
      public var §-!O§:Boolean = false;
      
      public var §["3§:MovieClip = null;
      
      public function §["4§(param1:XML, param2:§%n§, param3:§0!%§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§%Q§ = param1.@button;
         if(this.§%Q§.length > 0)
         {
            this.§>"1§ = §1!C§.§"!&§(this.§%Q§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§<!8§ = _loc5_;
         }
         this.§,!t§ = §="&§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§,!t§ = §@!Q§;
            }
         }
         this.§^!4§ = §`F§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§^!4§ = §="&§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§,!i§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §@U§.push(new § `§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §@U§.push(new § `§(_loc18_,this));
         }
         this.§%!B§ = mClip.getChildByName("Surface").x;
         this.§2!H§ = mClip.getChildByName("Surface").y;
         this.§9"5§ = mClip.getChildByName("Surface").width;
         this.§%G§ = mClip.getChildByName("Surface").height;
         this.§=!`§ = mClip.getChildByName("Button_Area1").x - this.§%!B§;
         this.§ J§ = mClip.getChildByName("Button_Area1").y - this.§2!H§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§%!B§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§2!H§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§<;§ = _loc9_.bottom - this.§2!H§ - this.§ J§;
         this.§6!l§ = _loc7_ - this.§=!`§;
         this.§'!x§ = _loc8_ - this.§ J§;
         if(Math.abs(this.§6!l§) < 3)
         {
            this.§6!l§ = 0;
         }
         if(Math.abs(this.§'!x§) < 3)
         {
            this.§'!x§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§6!l§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§=!`§ - this.§=!`§) / this.§6!l§;
         }
         if(this.§'!x§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§ J§ - this.§ J§) / this.§'!x§;
         }
         this.§#!K§ = Math.min(_loc10_,_loc11_);
         this.§[!2§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§5t§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§5t§ = this.§#!K§;
         }
         this.§3!Q§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§%!B§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§2!H§;
            this.mButtonMarginX2 = _loc19_ - this.§=!`§;
            this.mButtonMarginY2 = _loc20_ - this.§ J§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§[!2§)
            {
               this.§3!Q§ = 1 + (mClip.getChildByName("Surface").height - this.§ J§ - this.§ J§) / this.mButtonMarginY2;
            }
            else
            {
               this.§3!Q§ = 1 + (mClip.getChildByName("Surface").width - this.§=!`§ - this.§=!`§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§["3§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§&!v§ = this.§["3§.x - mClip.getChildByName("Surface").x;
            this.§!!Q§ = this.§["3§.y - mClip.getChildByName("Surface").y;
            this.§=p§ = this.§["3§.x + this.§["3§.width - (this.§["3§.x + mClip.getChildByName("Surface").width);
            this.§6!J§ = this.§["3§.y + this.§["3§.height - (this.§["3§.y + mClip.getChildByName("Surface").height);
            this.§^5§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§-!O§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§#[§ = §]$§.§+"4§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§#[§ = §]$§.§6!,§;
            }
         }
         this.§`!x§();
      }
      
      public function §`!x§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§'i§ = null;
         var _loc8_:§]$§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§return§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §return§;
         }
         this.§3p§ = new Vector.<§]$§>();
         this.§7!P§();
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
            _loc7_ = new §'i§(_loc6_,this,null,_loc5_);
            §@U§.push(_loc7_);
            _loc8_ = new §]$§(this.§#[§,_loc4_);
            this.§3p§.push(_loc8_);
            _loc9_ = this.§=!`§;
            _loc10_ = this.§#!K§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§^!4§ == §="&§)
            {
               _loc9_ = (this.§9"5§ - (_loc10_ - 1) * this.§6!l§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§@U§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§@U§.push(new param2(_loc12_,_loc7_,new this.§>"1§() as MovieClip));
               }
               _loc13_ = _loc7_.§@U§[_loc7_.§@U§.length - 1] as §return§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§8p§(_loc14_,this.§<!8§);
                  if(this.§,!t§ == §@!Q§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§<!8§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§3!Q§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§6!l§;
                  _loc13_.y = this.§ J§ + _loc11_ * this.§'!x§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§#!K§ * this.§3!Q§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§#!K§ * this.§3!Q§) / this.§#!K§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§#!K§ * this.§3!Q§) % this.§#!K§;
                  if(this.§[!2§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§6!l§ + _loc16_ * this.§#!K§ * this.§6!l§;
                     _loc13_.y = this.§ J§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§ J§ + _loc18_ * this.§'!x§ + _loc16_ * this.§#!K§ * this.§'!x§;
                  }
               }
               _loc8_.§]"&§(_loc13_);
               _loc11_++;
            }
            _loc8_.§,s§("");
            _loc7_.§^K§(this.§#!K§,this.§%!B§,this.§2!H§,this.§5t§ * this.§6!l§,this.§5t§ * this.§'!x§,this.§3!Q§,this.§5t§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §9!0§() : int
      {
         return this.§#!K§;
      }
      
      public function get §=!a§() : int
      {
         if(this.§9!0§ == 0)
         {
            return 0;
         }
         return this.§,p§(this.§2!a§).§@M§.length / this.§9!0§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§#!L§, param4:Event = null) : void
      {
         var _loc6_:§]$§ = null;
         var _loc5_:§'i§ = getItemByName(this.§2!a§) as §'i§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§4h§(_loc5_.§4K§ - 1);
               this.§?"%§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§4h§(_loc5_.§4K§ + 1);
               this.§?"%§();
            }
         }
         else if(param2.length > 0 && (param1 == §#!L§.LISTENER_EVENT_MOUSE_DOWN || param1 == §#!L§.LISTENER_EVENT_MOUSE_UP) && param3 is §9!8§)
         {
            if((_loc6_ = this.§,p§((param3 as §9!8§).mParentContainer.mName.toUpperCase())) && param3 is §return§)
            {
               _loc6_.§,s§((param3 as §9!8§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §`!E§(param1:String, param2:int) : void
      {
         var _loc3_:§'i§ = getItemByName(param1) as §'i§;
         if(_loc3_)
         {
            _loc3_.§4h§(param2);
            this.§?"%§();
         }
      }
      
      public function §,p§(param1:String) : §]$§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3p§.length)
         {
            if(param1.toUpperCase() == (this.§3p§[_loc2_] as §]$§).mName.toUpperCase())
            {
               return this.§3p§[_loc2_] as §]$§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §5z§(param1:String) : void
      {
         this.§2!a§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §@U§.length)
         {
            if(§@U§[_loc2_] is §'i§)
            {
               if((§@U§[_loc2_] as §'i§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§@U§[_loc2_] as §'i§).setActiveStatus(true);
                  if(this.§^5§)
                  {
                     this.§["3§.x = (§@U§[_loc2_] as §'i§).x + this.§&!v§;
                     this.§["3§.width = (§@U§[_loc2_] as §'i§).width + this.§=p§;
                  }
                  if(this.§-!O§)
                  {
                     this.§["3§.y = (§@U§[_loc2_] as §'i§).y + this.§!!Q§;
                     this.§["3§.height = (§@U§[_loc2_] as §'i§).height + this.§6!J§;
                  }
               }
               else
               {
                  (§@U§[_loc2_] as §'i§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§?"%§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§]$§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§3p§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §?"%§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§'i§ = getItemByName(this.§2!a§) as §'i§;
         if(_loc1_)
         {
            if(_loc1_.§4K§ > 0)
            {
               (getItemByName("Button_Scroll1") as § `§).setComponentState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as § `§).setComponentState(§-!T§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§4K§ < _loc1_.§^g§ - 1)
            {
               (getItemByName("Button_Scroll2") as § `§).setComponentState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as § `§).setComponentState(§-!T§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as § `§).setComponentState(§-!T§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as § `§).setComponentState(§-!T§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §7!P§() : void
      {
         var _loc2_:§'i§ = null;
         var _loc1_:int = §@U§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §@U§[_loc1_] as §'i§;
            if(_loc2_)
            {
               _loc2_.clear();
               §@U§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§5z§("");
      }
      
      public function §0!K§() : void
      {
         var _loc1_:§]$§ = null;
         for each(_loc1_ in this.§3p§)
         {
            _loc1_.§0!K§();
         }
      }
      
      public function §2!T§() : Array
      {
         if(this.§,p§(this.§2!a§) == null)
         {
            §?p§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§,p§(this.§2!a§).§&[§();
      }
      
      public function §?!B§(param1:Array) : void
      {
         this.§,p§(this.§2!a§).§?!B§(param1);
      }
      
      public function §5!M§(param1:Number) : void
      {
         this.§,p§(this.§2!a§).§5!M§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§>"1§ = null;
         this.§3p§ = null;
         this.§,!i§ = null;
      }
   }
}
