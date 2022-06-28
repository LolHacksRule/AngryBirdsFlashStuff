package §%4§
{
   import §-!D§.§4!,§;
   import §0!#§.§'!,§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §0!#§.§1Z§;
   import §3a§.§7!+§;
   import com.rovio.assets.§]!>§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §]q§ extends §4!=§
   {
      
      public static const §7!?§:int = 0;
      
      public static const §%'§:int = 1;
      
      public static const §-4§:int = 2;
       
      
      public var §`!C§:String;
      
      public var §=m§:Class;
      
      public var §=C§:String = null;
      
      public var §+!&§:Vector.<§1Z§>;
      
      public var § ;§:int;
      
      public var §6F§:Number;
      
      public var §+a§:Number;
      
      public var §,!9§:Number;
      
      public var §]g§:Number;
      
      public var §6!5§:Number;
      
      public var §>!J§:Number;
      
      public var §#!;§:Number;
      
      public var §;Y§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §@U§:int;
      
      public var §]!H§:Number;
      
      public var §^^§:String = "";
      
      public var §1G§:int;
      
      public var §0W§:int;
      
      public var §1=§:GlowFilter;
      
      public var §<!0§:Boolean = true;
      
      public var §+!@§:int;
      
      public var §1"§:int;
      
      public var §,c§:Number = 0;
      
      public var §7!6§:Number = 0;
      
      public var §=T§:Number = 0;
      
      public var §4T§:Number = 0;
      
      public var §=G§:Boolean = false;
      
      public var §3K§:Boolean = false;
      
      public var §`!0§:MovieClip = null;
      
      public function §]q§(param1:XML, param2:§4!=§, param3:§4!,§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§`!C§ = param1.@button;
         if(this.§`!C§.length > 0)
         {
            this.§=m§ = §]!>§.§8!@§(this.§`!C§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§=C§ = _loc5_;
         }
         this.§1G§ = §7!?§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§1G§ = §%'§;
            }
         }
         this.§0W§ = §-4§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§0W§ = §7!?§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§1=§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §+q§.push(new §7-§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §+q§.push(new §7-§(_loc18_,this));
         }
         this.§6F§ = mClip.getChildByName("Surface").x;
         this.§+a§ = mClip.getChildByName("Surface").y;
         this.§,!9§ = mClip.getChildByName("Surface").width;
         this.§]g§ = mClip.getChildByName("Surface").height;
         this.§6!5§ = mClip.getChildByName("Button_Area1").x - this.§6F§;
         this.§>!J§ = mClip.getChildByName("Button_Area1").y - this.§+a§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§6F§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§+a§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§]!H§ = _loc9_.bottom - this.§+a§ - this.§>!J§;
         this.§#!;§ = _loc7_ - this.§6!5§;
         this.§;Y§ = _loc8_ - this.§>!J§;
         if(Math.abs(this.§#!;§) < 3)
         {
            this.§#!;§ = 0;
         }
         if(Math.abs(this.§;Y§) < 3)
         {
            this.§;Y§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§#!;§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§6!5§ - this.§6!5§) / this.§#!;§;
         }
         if(this.§;Y§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§>!J§ - this.§>!J§) / this.§;Y§;
         }
         this.§ ;§ = Math.min(_loc10_,_loc11_);
         this.§<!0§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§+!@§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§+!@§ = this.§ ;§;
         }
         this.§@U§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§6F§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§+a§;
            this.mButtonMarginX2 = _loc19_ - this.§6!5§;
            this.mButtonMarginY2 = _loc20_ - this.§>!J§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§<!0§)
            {
               this.§@U§ = 1 + (mClip.getChildByName("Surface").height - this.§>!J§ - this.§>!J§) / this.mButtonMarginY2;
            }
            else
            {
               this.§@U§ = 1 + (mClip.getChildByName("Surface").width - this.§6!5§ - this.§6!5§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§`!0§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§=T§ = this.§`!0§.x - mClip.getChildByName("Surface").x;
            this.§4T§ = this.§`!0§.y - mClip.getChildByName("Surface").y;
            this.§,c§ = this.§`!0§.x + this.§`!0§.width - (this.§`!0§.x + mClip.getChildByName("Surface").width);
            this.§7!6§ = this.§`!0§.y + this.§`!0§.height - (this.§`!0§.y + mClip.getChildByName("Surface").height);
            this.§=G§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§3K§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§1"§ = §1Z§.§7Y§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§1"§ = §1Z§.§?m§;
            }
         }
         this.§=i§();
      }
      
      public function §=i§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§9!&§ = null;
         var _loc8_:§1Z§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§0!I§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §0!I§;
         }
         this.§+!&§ = new Vector.<§1Z§>();
         this.§;]§();
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
            _loc7_ = new §9!&§(_loc6_,this,null,_loc5_);
            §+q§.push(_loc7_);
            _loc8_ = new §1Z§(this.§1"§,_loc4_);
            this.§+!&§.push(_loc8_);
            _loc9_ = this.§6!5§;
            _loc10_ = this.§ ;§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§0W§ == §7!?§)
            {
               _loc9_ = (this.§,!9§ - (_loc10_ - 1) * this.§#!;§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§+q§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§+q§.push(new param2(_loc12_,_loc7_,new this.§=m§() as MovieClip));
               }
               _loc13_ = _loc7_.§+q§[_loc7_.§+q§.length - 1] as §0!I§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§-!B§(_loc14_,this.§=C§);
                  if(this.§1G§ == §%'§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§=C§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§@U§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§#!;§;
                  _loc13_.y = this.§>!J§ + _loc11_ * this.§;Y§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§ ;§ * this.§@U§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§ ;§ * this.§@U§) / this.§ ;§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§ ;§ * this.§@U§) % this.§ ;§;
                  if(this.§<!0§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§#!;§ + _loc16_ * this.§ ;§ * this.§#!;§;
                     _loc13_.y = this.§>!J§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§>!J§ + _loc18_ * this.§;Y§ + _loc16_ * this.§ ;§ * this.§;Y§;
                  }
               }
               _loc8_.§[H§(_loc13_);
               _loc11_++;
            }
            _loc8_.§>J§("");
            _loc7_.§4^§(this.§ ;§,this.§6F§,this.§+a§,this.§+!@§ * this.§#!;§,this.§+!@§ * this.§;Y§,this.§@U§,this.§+!@§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §>O§() : int
      {
         return this.§ ;§;
      }
      
      public function get §<!-§() : int
      {
         if(this.§>O§ == 0)
         {
            return 0;
         }
         return this.§^o§(this.§^^§).§<F§.length / this.§>O§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc5_:§1Z§ = null;
         var _loc4_:§9!&§ = getItemByName(this.§^^§) as §9!&§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§<!#§(_loc4_.§1x§ - 1);
               this.§-B§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§<!#§(_loc4_.§1x§ + 1);
               this.§-B§();
            }
         }
         else if(param2.length > 0 && (param1 == §-P§.LISTENER_EVENT_MOUSE_DOWN || param1 == §-P§.LISTENER_EVENT_MOUSE_UP) && param3 is §'!,§)
         {
            if((_loc5_ = this.§^o§((param3 as §'!,§).mParentContainer.mName.toUpperCase())) && param3 is §0!I§)
            {
               _loc5_.§>J§((param3 as §'!,§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function § H§(param1:String, param2:int) : void
      {
         var _loc3_:§9!&§ = getItemByName(param1) as §9!&§;
         if(_loc3_)
         {
            _loc3_.§<!#§(param2);
            this.§-B§();
         }
      }
      
      public function §^o§(param1:String) : §1Z§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!&§.length)
         {
            if(param1.toUpperCase() == (this.§+!&§[_loc2_] as §1Z§).mName.toUpperCase())
            {
               return this.§+!&§[_loc2_] as §1Z§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §^B§(param1:String) : void
      {
         this.§^^§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §+q§.length)
         {
            if(§+q§[_loc2_] is §9!&§)
            {
               if((§+q§[_loc2_] as §9!&§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§+q§[_loc2_] as §9!&§).setActiveStatus(true);
                  if(this.§=G§)
                  {
                     this.§`!0§.x = (§+q§[_loc2_] as §9!&§).x + this.§=T§;
                     this.§`!0§.width = (§+q§[_loc2_] as §9!&§).width + this.§,c§;
                  }
                  if(this.§3K§)
                  {
                     this.§`!0§.y = (§+q§[_loc2_] as §9!&§).y + this.§4T§;
                     this.§`!0§.height = (§+q§[_loc2_] as §9!&§).height + this.§7!6§;
                  }
               }
               else
               {
                  (§+q§[_loc2_] as §9!&§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§-B§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§1Z§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§+!&§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §-B§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§9!&§ = getItemByName(this.§^^§) as §9!&§;
         if(_loc1_)
         {
            if(_loc1_.§1x§ > 0)
            {
               (getItemByName("Button_Scroll1") as §7-§).setComponentState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §7-§).setComponentState(§0K§.§]x§);
            }
            if(_loc1_.§1x§ < _loc1_.§-!=§ - 1)
            {
               (getItemByName("Button_Scroll2") as §7-§).setComponentState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §7-§).setComponentState(§0K§.§]x§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §7-§).setComponentState(§0K§.§]x§);
            (getItemByName("Button_Scroll2") as §7-§).setComponentState(§0K§.§]x§);
         }
      }
      
      public function §;]§() : void
      {
         var _loc2_:§9!&§ = null;
         var _loc1_:int = §+q§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §+q§[_loc1_] as §9!&§;
            if(_loc2_)
            {
               _loc2_.clear();
               §+q§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§^B§("");
      }
      
      public function §'!J§() : void
      {
         var _loc1_:§1Z§ = null;
         for each(_loc1_ in this.§+!&§)
         {
            _loc1_.§'!J§();
         }
      }
      
      public function §[2§() : Array
      {
         if(this.§^o§(this.§^^§) == null)
         {
            §7!+§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§^o§(this.§^^§).§35§();
      }
      
      public function §[f§(param1:Array) : void
      {
         this.§^o§(this.§^^§).§[f§(param1);
      }
      
      public function §6,§(param1:Number) : void
      {
         this.§^o§(this.§^^§).§6,§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§=m§ = null;
         this.§+!&§ = null;
         this.§1=§ = null;
      }
   }
}
