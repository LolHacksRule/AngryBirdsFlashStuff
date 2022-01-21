package §,![§
{
   import §#Z§.§?R§;
   import §-1§.§%#§;
   import §-1§.§3!%§;
   import §-1§.§>!6§;
   import §-1§.§^l§;
   import §9!8§.§0!7§;
   import §`!W§.§2v§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §8!?§ extends §[!S§
   {
      
      public static const §9S§:int = 0;
      
      public static const §4!d§:int = 1;
      
      public static const §1#§:int = 2;
       
      
      public var §-A§:String;
      
      public var §0!Q§:Class;
      
      public var §?j§:String = null;
      
      public var §8a§:Vector.<§^l§>;
      
      public var §%m§:int;
      
      public var §!O§:Number;
      
      public var § '§:Number;
      
      public var §?!A§:Number;
      
      public var §in§:Number;
      
      public var §5$§:Number;
      
      public var §3!d§:Number;
      
      public var §6y§:Number;
      
      public var §"!?§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §`!&§:int;
      
      public var §!2§:Number;
      
      public var §?N§:String = "";
      
      public var §8T§:int;
      
      public var §3!O§:int;
      
      public var §<k§:GlowFilter;
      
      public var §4!c§:Boolean = true;
      
      public var §?!D§:int;
      
      public var §=>§:int;
      
      public var §7L§:Number = 0;
      
      public var § ]§:Number = 0;
      
      public var §+!d§:Number = 0;
      
      public var §7!+§:Number = 0;
      
      public var §<T§:Boolean = false;
      
      public var §0!L§:Boolean = false;
      
      public var §2!9§:MovieClip = null;
      
      public function §8!?§(param1:XML, param2:§[!S§, param3:§0!7§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§-A§ = param1.@button;
         if(this.§-A§.length > 0)
         {
            this.§0!Q§ = §?R§.§>e§(this.§-A§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§?j§ = _loc5_;
         }
         this.§8T§ = §9S§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§8T§ = §4!d§;
            }
         }
         this.§3!O§ = §1#§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§3!O§ = §9S§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§<k§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §]_§.push(new §2!"§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §]_§.push(new §2!"§(_loc18_,this));
         }
         this.§!O§ = mClip.getChildByName("Surface").x;
         this.§ '§ = mClip.getChildByName("Surface").y;
         this.§?!A§ = mClip.getChildByName("Surface").width;
         this.§in§ = mClip.getChildByName("Surface").height;
         this.§5$§ = mClip.getChildByName("Button_Area1").x - this.§!O§;
         this.§3!d§ = mClip.getChildByName("Button_Area1").y - this.§ '§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§!O§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§ '§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§!2§ = _loc9_.bottom - this.§ '§ - this.§3!d§;
         this.§6y§ = _loc7_ - this.§5$§;
         this.§"!?§ = _loc8_ - this.§3!d§;
         if(Math.abs(this.§6y§) < 3)
         {
            this.§6y§ = 0;
         }
         if(Math.abs(this.§"!?§) < 3)
         {
            this.§"!?§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§6y§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§5$§ - this.§5$§) / this.§6y§;
         }
         if(this.§"!?§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§3!d§ - this.§3!d§) / this.§"!?§;
         }
         this.§%m§ = Math.min(_loc10_,_loc11_);
         this.§4!c§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§?!D§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§?!D§ = this.§%m§;
         }
         this.§`!&§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§!O§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§ '§;
            this.mButtonMarginX2 = _loc19_ - this.§5$§;
            this.mButtonMarginY2 = _loc20_ - this.§3!d§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§4!c§)
            {
               this.§`!&§ = 1 + (mClip.getChildByName("Surface").height - this.§3!d§ - this.§3!d§) / this.mButtonMarginY2;
            }
            else
            {
               this.§`!&§ = 1 + (mClip.getChildByName("Surface").width - this.§5$§ - this.§5$§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§2!9§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§+!d§ = this.§2!9§.x - mClip.getChildByName("Surface").x;
            this.§7!+§ = this.§2!9§.y - mClip.getChildByName("Surface").y;
            this.§7L§ = this.§2!9§.x + this.§2!9§.width - (this.§2!9§.x + mClip.getChildByName("Surface").width);
            this.§ ]§ = this.§2!9§.y + this.§2!9§.height - (this.§2!9§.y + mClip.getChildByName("Surface").height);
            this.§<T§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§0!L§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§=>§ = §^l§.§>!3§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§=>§ = §^l§.§]6§;
            }
         }
         this.§4!'§();
      }
      
      public function §4!'§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§?!8§ = null;
         var _loc8_:§^l§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§2!4§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §2!4§;
         }
         this.§8a§ = new Vector.<§^l§>();
         this.§%K§();
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
            _loc7_ = new §?!8§(_loc6_,this,null,_loc5_);
            §]_§.push(_loc7_);
            _loc8_ = new §^l§(this.§=>§,_loc4_);
            this.§8a§.push(_loc8_);
            _loc9_ = this.§5$§;
            _loc10_ = this.§%m§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§3!O§ == §9S§)
            {
               _loc9_ = (this.§?!A§ - (_loc10_ - 1) * this.§6y§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§]_§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§]_§.push(new param2(_loc12_,_loc7_,new this.§0!Q§() as MovieClip));
               }
               _loc13_ = _loc7_.§]_§[_loc7_.§]_§.length - 1] as §2!4§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§8!e§(_loc14_,this.§?j§);
                  if(this.§8T§ == §4!d§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§?j§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§`!&§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§6y§;
                  _loc13_.y = this.§3!d§ + _loc11_ * this.§"!?§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§%m§ * this.§`!&§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§%m§ * this.§`!&§) / this.§%m§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§%m§ * this.§`!&§) % this.§%m§;
                  if(this.§4!c§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§6y§ + _loc16_ * this.§%m§ * this.§6y§;
                     _loc13_.y = this.§3!d§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§3!d§ + _loc18_ * this.§"!?§ + _loc16_ * this.§%m§ * this.§"!?§;
                  }
               }
               _loc8_.§+!R§(_loc13_);
               _loc11_++;
            }
            _loc8_.§<`§("");
            _loc7_.§7J§(this.§%m§,this.§!O§,this.§ '§,this.§?!D§ * this.§6y§,this.§?!D§ * this.§"!?§,this.§`!&§,this.§?!D§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §,T§() : int
      {
         return this.§%m§;
      }
      
      public function get §"!j§() : int
      {
         if(this.§,T§ == 0)
         {
            return 0;
         }
         return this.§1W§(this.§?N§).§!!Y§.length / this.§,T§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§%#§) : void
      {
         var _loc5_:§^l§ = null;
         var _loc4_:§?!8§ = getItemByName(this.§?N§) as §?!8§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§;4§(_loc4_.§9!o§ - 1);
               this.§<!k§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§;4§(_loc4_.§9!o§ + 1);
               this.§<!k§();
            }
         }
         else if(param2.length > 0 && (param1 == §%#§.LISTENER_EVENT_MOUSE_DOWN || param1 == §%#§.LISTENER_EVENT_MOUSE_UP) && param3 is §3!%§)
         {
            if((_loc5_ = this.§1W§((param3 as §3!%§).mParentContainer.mName.toUpperCase())) && param3 is §2!4§)
            {
               _loc5_.§<`§((param3 as §3!%§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §>d§(param1:String, param2:int) : void
      {
         var _loc3_:§?!8§ = getItemByName(param1) as §?!8§;
         if(_loc3_)
         {
            _loc3_.§;4§(param2);
            this.§<!k§();
         }
      }
      
      public function §1W§(param1:String) : §^l§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§8a§.length)
         {
            if(param1.toUpperCase() == (this.§8a§[_loc2_] as §^l§).mName.toUpperCase())
            {
               return this.§8a§[_loc2_] as §^l§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §2!I§(param1:String) : void
      {
         this.§?N§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §]_§.length)
         {
            if(§]_§[_loc2_] is §?!8§)
            {
               if((§]_§[_loc2_] as §?!8§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§]_§[_loc2_] as §?!8§).setActiveStatus(true);
                  if(this.§<T§)
                  {
                     this.§2!9§.x = (§]_§[_loc2_] as §?!8§).x + this.§+!d§;
                     this.§2!9§.width = (§]_§[_loc2_] as §?!8§).width + this.§7L§;
                  }
                  if(this.§0!L§)
                  {
                     this.§2!9§.y = (§]_§[_loc2_] as §?!8§).y + this.§7!+§;
                     this.§2!9§.height = (§]_§[_loc2_] as §?!8§).height + this.§ ]§;
                  }
               }
               else
               {
                  (§]_§[_loc2_] as §?!8§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§<!k§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§^l§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§8a§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §<!k§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§?!8§ = getItemByName(this.§?N§) as §?!8§;
         if(_loc1_)
         {
            if(_loc1_.§9!o§ > 0)
            {
               (getItemByName("Button_Scroll1") as §2!"§).setComponentState(§>!6§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §2!"§).setComponentState(§>!6§.§5h§);
            }
            if(_loc1_.§9!o§ < _loc1_.§]!0§ - 1)
            {
               (getItemByName("Button_Scroll2") as §2!"§).setComponentState(§>!6§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §2!"§).setComponentState(§>!6§.§5h§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §2!"§).setComponentState(§>!6§.§5h§);
            (getItemByName("Button_Scroll2") as §2!"§).setComponentState(§>!6§.§5h§);
         }
      }
      
      public function §%K§() : void
      {
         var _loc2_:§?!8§ = null;
         var _loc1_:int = §]_§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §]_§[_loc1_] as §?!8§;
            if(_loc2_)
            {
               _loc2_.clear();
               §]_§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§2!I§("");
      }
      
      public function §9T§() : void
      {
         var _loc1_:§^l§ = null;
         for each(_loc1_ in this.§8a§)
         {
            _loc1_.§9T§();
         }
      }
      
      public function §2!A§() : Array
      {
         if(this.§1W§(this.§?N§) == null)
         {
            §2v§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§1W§(this.§?N§).§?a§();
      }
      
      public function §,O§(param1:Array) : void
      {
         this.§1W§(this.§?N§).§,O§(param1);
      }
      
      public function §;G§(param1:Number) : void
      {
         this.§1W§(this.§?N§).§;G§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§0!Q§ = null;
         this.§8a§ = null;
         this.§<k§ = null;
      }
   }
}
