package §!i§
{
   import §""<§.§#N§;
   import §+w§.§,!@§;
   import §4!t§.§+X§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §4!t§.§?i§;
   import com.rovio.assets.§2!3§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §1W§ extends §1s§
   {
      
      public static const §9M§:int = 0;
      
      public static const §4,§:int = 1;
      
      public static const §#!x§:int = 2;
       
      
      public var §]V§:String;
      
      public var §7]§:Class;
      
      public var §2Q§:String = null;
      
      public var §=w§:Vector.<§+X§>;
      
      public var §`!$§:int;
      
      public var §=F§:Number;
      
      public var §4!$§:Number;
      
      public var § !Z§:Number;
      
      public var §7"2§:Number;
      
      public var §0!E§:Number;
      
      public var §,!c§:Number;
      
      public var §'!5§:Number;
      
      public var §[!K§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §+j§:int;
      
      public var §3!>§:Number;
      
      public var §%!T§:String = "";
      
      public var §5=§:int;
      
      public var §1!b§:int;
      
      public var §7!%§:GlowFilter;
      
      public var §1z§:Boolean = true;
      
      public var §,N§:int;
      
      public var §-"=§:int;
      
      public var §[a§:Number = 0;
      
      public var §=!P§:Number = 0;
      
      public var §==§:Number = 0;
      
      public var §%!a§:Number = 0;
      
      public var §>![§:Boolean = false;
      
      public var §!H§:Boolean = false;
      
      public var §%"<§:MovieClip = null;
      
      public function §1W§(param1:XML, param2:§1s§, param3:§,!@§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§]V§ = param1.@button;
         if(this.§]V§.length > 0)
         {
            this.§7]§ = §2!3§.dynamic(this.§]V§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§2Q§ = _loc5_;
         }
         this.§5=§ = §9M§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§5=§ = §4,§;
            }
         }
         this.§1!b§ = §#!x§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§1!b§ = §9M§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§7!%§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §="§.push(new §3!A§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §="§.push(new §3!A§(_loc18_,this));
         }
         this.§=F§ = mClip.getChildByName("Surface").x;
         this.§4!$§ = mClip.getChildByName("Surface").y;
         this.§ !Z§ = mClip.getChildByName("Surface").width;
         this.§7"2§ = mClip.getChildByName("Surface").height;
         this.§0!E§ = mClip.getChildByName("Button_Area1").x - this.§=F§;
         this.§,!c§ = mClip.getChildByName("Button_Area1").y - this.§4!$§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§=F§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§4!$§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§3!>§ = _loc9_.bottom - this.§4!$§ - this.§,!c§;
         this.§'!5§ = _loc7_ - this.§0!E§;
         this.§[!K§ = _loc8_ - this.§,!c§;
         if(Math.abs(this.§'!5§) < 3)
         {
            this.§'!5§ = 0;
         }
         if(Math.abs(this.§[!K§) < 3)
         {
            this.§[!K§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§'!5§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§0!E§ - this.§0!E§) / this.§'!5§;
         }
         if(this.§[!K§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§,!c§ - this.§,!c§) / this.§[!K§;
         }
         this.§`!$§ = Math.min(_loc10_,_loc11_);
         this.§1z§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§,N§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§,N§ = this.§`!$§;
         }
         this.§+j§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§=F§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§4!$§;
            this.mButtonMarginX2 = _loc19_ - this.§0!E§;
            this.mButtonMarginY2 = _loc20_ - this.§,!c§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§1z§)
            {
               this.§+j§ = 1 + (mClip.getChildByName("Surface").height - this.§,!c§ - this.§,!c§) / this.mButtonMarginY2;
            }
            else
            {
               this.§+j§ = 1 + (mClip.getChildByName("Surface").width - this.§0!E§ - this.§0!E§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§%"<§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§==§ = this.§%"<§.x - mClip.getChildByName("Surface").x;
            this.§%!a§ = this.§%"<§.y - mClip.getChildByName("Surface").y;
            this.§[a§ = this.§%"<§.x + this.§%"<§.width - (this.§%"<§.x + mClip.getChildByName("Surface").width);
            this.§=!P§ = this.§%"<§.y + this.§%"<§.height - (this.§%"<§.y + mClip.getChildByName("Surface").height);
            this.§>![§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§!H§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§-"=§ = §+X§.§="?§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§-"=§ = §+X§.§4!v§;
            }
         }
         this.§@X§();
      }
      
      public function §@X§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§]!p§ = null;
         var _loc8_:§+X§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§%!'§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §%!'§;
         }
         this.§=w§ = new Vector.<§+X§>();
         this.§3!K§();
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
            _loc7_ = new §]!p§(_loc6_,this,null,_loc5_);
            §="§.push(_loc7_);
            _loc8_ = new §+X§(this.§-"=§,_loc4_);
            this.§=w§.push(_loc8_);
            _loc9_ = this.§0!E§;
            _loc10_ = this.§`!$§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§1!b§ == §9M§)
            {
               _loc9_ = (this.§ !Z§ - (_loc10_ - 1) * this.§'!5§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§="§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§="§.push(new param2(_loc12_,_loc7_,new this.§7]§() as MovieClip));
               }
               _loc13_ = _loc7_.§="§[_loc7_.§="§.length - 1] as §%!'§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§3!u§(_loc14_,this.§2Q§);
                  if(this.§5=§ == §4,§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§2Q§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§+j§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§'!5§;
                  _loc13_.y = this.§,!c§ + _loc11_ * this.§[!K§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§`!$§ * this.§+j§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§`!$§ * this.§+j§) / this.§`!$§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§`!$§ * this.§+j§) % this.§`!$§;
                  if(this.§1z§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§'!5§ + _loc16_ * this.§`!$§ * this.§'!5§;
                     _loc13_.y = this.§,!c§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§,!c§ + _loc18_ * this.§[!K§ + _loc16_ * this.§`!$§ * this.§[!K§;
                  }
               }
               _loc8_.§=2§(_loc13_);
               _loc11_++;
            }
            _loc8_.§1S§("");
            _loc7_.§[b§(this.§`!$§,this.§=F§,this.§4!$§,this.§,N§ * this.§'!5§,this.§,N§ * this.§[!K§,this.§+j§,this.§,N§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §^",§() : int
      {
         return this.§`!$§;
      }
      
      public function get §`n§() : int
      {
         if(this.§^",§ == 0)
         {
            return 0;
         }
         return this.§-Z§(this.§%!T§).§;!6§.length / this.§^",§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§95§, param4:Event = null) : void
      {
         var _loc6_:§+X§ = null;
         var _loc5_:§]!p§ = getItemByName(this.§%!T§) as §]!p§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§'h§(_loc5_.§,Y§ - 1);
               this.§;"%§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§'h§(_loc5_.§,Y§ + 1);
               this.§;"%§();
            }
         }
         else if(param2.length > 0 && (param1 == §95§.LISTENER_EVENT_MOUSE_DOWN || param1 == §95§.LISTENER_EVENT_MOUSE_UP) && param3 is §?i§)
         {
            if((_loc6_ = this.§-Z§((param3 as §?i§).mParentContainer.mName.toUpperCase())) && param3 is §%!'§)
            {
               _loc6_.§1S§((param3 as §?i§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §9!E§(param1:String, param2:int) : void
      {
         var _loc3_:§]!p§ = getItemByName(param1) as §]!p§;
         if(_loc3_)
         {
            _loc3_.§'h§(param2);
            this.§;"%§();
         }
      }
      
      public function §-Z§(param1:String) : §+X§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§=w§.length)
         {
            if(param1.toUpperCase() == (this.§=w§[_loc2_] as §+X§).mName.toUpperCase())
            {
               return this.§=w§[_loc2_] as §+X§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,"8§(param1:String) : void
      {
         this.§%!T§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §="§.length)
         {
            if(§="§[_loc2_] is §]!p§)
            {
               if((§="§[_loc2_] as §]!p§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§="§[_loc2_] as §]!p§).setActiveStatus(true);
                  if(this.§>![§)
                  {
                     this.§%"<§.x = (§="§[_loc2_] as §]!p§).x + this.§==§;
                     this.§%"<§.width = (§="§[_loc2_] as §]!p§).width + this.§[a§;
                  }
                  if(this.§!H§)
                  {
                     this.§%"<§.y = (§="§[_loc2_] as §]!p§).y + this.§%!a§;
                     this.§%"<§.height = (§="§[_loc2_] as §]!p§).height + this.§=!P§;
                  }
               }
               else
               {
                  (§="§[_loc2_] as §]!p§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§;"%§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§+X§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§=w§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §;"%§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§]!p§ = getItemByName(this.§%!T§) as §]!p§;
         if(_loc1_)
         {
            if(_loc1_.§,Y§ > 0)
            {
               (getItemByName("Button_Scroll1") as §3!A§).setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §3!A§).setComponentState(§>r§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§,Y§ < _loc1_.§'n§ - 1)
            {
               (getItemByName("Button_Scroll2") as §3!A§).setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §3!A§).setComponentState(§>r§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §3!A§).setComponentState(§>r§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §3!A§).setComponentState(§>r§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §3!K§() : void
      {
         var _loc2_:§]!p§ = null;
         var _loc1_:int = §="§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §="§[_loc1_] as §]!p§;
            if(_loc2_)
            {
               _loc2_.clear();
               §="§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§,"8§("");
      }
      
      public function §>,§() : void
      {
         var _loc1_:§+X§ = null;
         for each(_loc1_ in this.§=w§)
         {
            _loc1_.§>,§();
         }
      }
      
      public function §?F§() : Array
      {
         if(this.§-Z§(this.§%!T§) == null)
         {
            §#N§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§-Z§(this.§%!T§).§41§();
      }
      
      public function §-[§(param1:Array) : void
      {
         this.§-Z§(this.§%!T§).§-[§(param1);
      }
      
      public function §<!u§(param1:Number) : void
      {
         this.§-Z§(this.§%!T§).§<!u§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§7]§ = null;
         this.§=w§ = null;
         this.§7!%§ = null;
      }
   }
}
