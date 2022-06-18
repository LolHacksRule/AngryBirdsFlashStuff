package §[]§
{
   import §&8§.§<O§;
   import §6&§.§9e§;
   import §7L§.§+!$§;
   import §7L§.§,Q§;
   import §7L§.§-!B§;
   import §7L§.§9I§;
   import §=g§.§@!L§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §-`§ extends §`!`§
   {
      
      public static const §8o§:int = 0;
      
      public static const §5<§:int = 1;
      
      public static const §5!H§:int = 2;
       
      
      public var §`Y§:String;
      
      public var §'Y§:Class;
      
      public var §^!O§:String = null;
      
      public var §3!9§:Vector.<§,Q§>;
      
      public var §4B§:int;
      
      public var §6!J§:Number;
      
      public var §;!B§:Number;
      
      public var §'+§:Number;
      
      public var §;l§:Number;
      
      public var §%G§:Number;
      
      public var §<!$§:Number;
      
      public var §3!L§:Number;
      
      public var §%!N§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §+D§:int;
      
      public var §#n§:Number;
      
      public var §<!O§:String = "";
      
      public var §?§:int;
      
      public var §0Q§:int;
      
      public var §]!,§:GlowFilter;
      
      public var §&!-§:Boolean = true;
      
      public var §2S§:int;
      
      public var §<Z§:int;
      
      public var §16§:Number = 0;
      
      public var §+?§:Number = 0;
      
      public var §6C§:Number = 0;
      
      public var §3!U§:Number = 0;
      
      public var §2>§:Boolean = false;
      
      public var § !^§:Boolean = false;
      
      public var §0Z§:MovieClip = null;
      
      public function §-`§(param1:XML, param2:§`!`§, param3:§<O§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§`Y§ = param1.@button;
         if(this.§`Y§.length > 0)
         {
            this.§'Y§ = §9e§.§6!?§(this.§`Y§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§^!O§ = _loc5_;
         }
         this.§?§ = §8o§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§?§ = §5<§;
            }
         }
         this.§0Q§ = §5!H§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§0Q§ = §8o§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§]!,§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §!h§.push(new §+F§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §!h§.push(new §+F§(_loc18_,this));
         }
         this.§6!J§ = mClip.getChildByName("Surface").x;
         this.§;!B§ = mClip.getChildByName("Surface").y;
         this.§'+§ = mClip.getChildByName("Surface").width;
         this.§;l§ = mClip.getChildByName("Surface").height;
         this.§%G§ = mClip.getChildByName("Button_Area1").x - this.§6!J§;
         this.§<!$§ = mClip.getChildByName("Button_Area1").y - this.§;!B§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§6!J§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§;!B§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§#n§ = _loc9_.bottom - this.§;!B§ - this.§<!$§;
         this.§3!L§ = _loc7_ - this.§%G§;
         this.§%!N§ = _loc8_ - this.§<!$§;
         if(Math.abs(this.§3!L§) < 3)
         {
            this.§3!L§ = 0;
         }
         if(Math.abs(this.§%!N§) < 3)
         {
            this.§%!N§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§3!L§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§%G§ - this.§%G§) / this.§3!L§;
         }
         if(this.§%!N§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§<!$§ - this.§<!$§) / this.§%!N§;
         }
         this.§4B§ = Math.min(_loc10_,_loc11_);
         this.§&!-§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§2S§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§2S§ = this.§4B§;
         }
         this.§+D§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§6!J§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§;!B§;
            this.mButtonMarginX2 = _loc19_ - this.§%G§;
            this.mButtonMarginY2 = _loc20_ - this.§<!$§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§&!-§)
            {
               this.§+D§ = 1 + (mClip.getChildByName("Surface").height - this.§<!$§ - this.§<!$§) / this.mButtonMarginY2;
            }
            else
            {
               this.§+D§ = 1 + (mClip.getChildByName("Surface").width - this.§%G§ - this.§%G§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§0Z§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§6C§ = this.§0Z§.x - mClip.getChildByName("Surface").x;
            this.§3!U§ = this.§0Z§.y - mClip.getChildByName("Surface").y;
            this.§16§ = this.§0Z§.x + this.§0Z§.width - (this.§0Z§.x + mClip.getChildByName("Surface").width);
            this.§+?§ = this.§0Z§.y + this.§0Z§.height - (this.§0Z§.y + mClip.getChildByName("Surface").height);
            this.§2>§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§ !^§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§<Z§ = §,Q§.§^_§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§<Z§ = §,Q§.§[f§;
            }
         }
         this.§+$§();
      }
      
      public function §+$§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§31§ = null;
         var _loc8_:§,Q§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§^T§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §^T§;
         }
         this.§3!9§ = new Vector.<§,Q§>();
         this.§'c§();
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
            _loc7_ = new §31§(_loc6_,this,null,_loc5_);
            §!h§.push(_loc7_);
            _loc8_ = new §,Q§(this.§<Z§,_loc4_);
            this.§3!9§.push(_loc8_);
            _loc9_ = this.§%G§;
            _loc10_ = this.§4B§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§0Q§ == §8o§)
            {
               _loc9_ = (this.§'+§ - (_loc10_ - 1) * this.§3!L§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§!h§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§!h§.push(new param2(_loc12_,_loc7_,new this.§'Y§() as MovieClip));
               }
               _loc13_ = _loc7_.§!h§[_loc7_.§!h§.length - 1] as §^T§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§"d§(_loc14_,this.§^!O§);
                  if(this.§?§ == §5<§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§^!O§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§+D§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§3!L§;
                  _loc13_.y = this.§<!$§ + _loc11_ * this.§%!N§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§4B§ * this.§+D§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§4B§ * this.§+D§) / this.§4B§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§4B§ * this.§+D§) % this.§4B§;
                  if(this.§&!-§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§3!L§ + _loc16_ * this.§4B§ * this.§3!L§;
                     _loc13_.y = this.§<!$§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§<!$§ + _loc18_ * this.§%!N§ + _loc16_ * this.§4B§ * this.§%!N§;
                  }
               }
               _loc8_.§=]§(_loc13_);
               _loc11_++;
            }
            _loc8_.§ ![§("");
            _loc7_.§<!R§(this.§4B§,this.§6!J§,this.§;!B§,this.§2S§ * this.§3!L§,this.§2S§ * this.§%!N§,this.§+D§,this.§2S§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §5!`§() : int
      {
         return this.§4B§;
      }
      
      public function get §%! §() : int
      {
         if(this.§5!`§ == 0)
         {
            return 0;
         }
         return this.§%l§(this.§<!O§).§9!7§.length / this.§5!`§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§9I§) : void
      {
         var _loc5_:§,Q§ = null;
         var _loc4_:§31§ = getItemByName(this.§<!O§) as §31§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§3! §(_loc4_.§8!I§ - 1);
               this.§"!!§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§3! §(_loc4_.§8!I§ + 1);
               this.§"!!§();
            }
         }
         else if(param2.length > 0 && (param1 == §9I§.LISTENER_EVENT_MOUSE_DOWN || param1 == §9I§.LISTENER_EVENT_MOUSE_UP) && param3 is §-!B§)
         {
            if((_loc5_ = this.§%l§((param3 as §-!B§).mParentContainer.mName.toUpperCase())) && param3 is §^T§)
            {
               _loc5_.§ ![§((param3 as §-!B§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §]9§(param1:String, param2:int) : void
      {
         var _loc3_:§31§ = getItemByName(param1) as §31§;
         if(_loc3_)
         {
            _loc3_.§3! §(param2);
            this.§"!!§();
         }
      }
      
      public function §%l§(param1:String) : §,Q§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!9§.length)
         {
            if(param1.toUpperCase() == (this.§3!9§[_loc2_] as §,Q§).mName.toUpperCase())
            {
               return this.§3!9§[_loc2_] as §,Q§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §;!@§(param1:String) : void
      {
         this.§<!O§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §!h§.length)
         {
            if(§!h§[_loc2_] is §31§)
            {
               if((§!h§[_loc2_] as §31§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§!h§[_loc2_] as §31§).setActiveStatus(true);
                  if(this.§2>§)
                  {
                     this.§0Z§.x = (§!h§[_loc2_] as §31§).x + this.§6C§;
                     this.§0Z§.width = (§!h§[_loc2_] as §31§).width + this.§16§;
                  }
                  if(this.§ !^§)
                  {
                     this.§0Z§.y = (§!h§[_loc2_] as §31§).y + this.§3!U§;
                     this.§0Z§.height = (§!h§[_loc2_] as §31§).height + this.§+?§;
                  }
               }
               else
               {
                  (§!h§[_loc2_] as §31§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§"!!§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§,Q§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§3!9§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §"!!§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§31§ = getItemByName(this.§<!O§) as §31§;
         if(_loc1_)
         {
            if(_loc1_.§8!I§ > 0)
            {
               (getItemByName("Button_Scroll1") as §+F§).setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §+F§).setComponentState(§+!$§.§2!H§);
            }
            if(_loc1_.§8!I§ < _loc1_.§[+§ - 1)
            {
               (getItemByName("Button_Scroll2") as §+F§).setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §+F§).setComponentState(§+!$§.§2!H§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §+F§).setComponentState(§+!$§.§2!H§);
            (getItemByName("Button_Scroll2") as §+F§).setComponentState(§+!$§.§2!H§);
         }
      }
      
      public function §'c§() : void
      {
         var _loc2_:§31§ = null;
         var _loc1_:int = §!h§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §!h§[_loc1_] as §31§;
            if(_loc2_)
            {
               _loc2_.clear();
               §!h§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§;!@§("");
      }
      
      public function §?G§() : void
      {
         var _loc1_:§,Q§ = null;
         for each(_loc1_ in this.§3!9§)
         {
            _loc1_.§?G§();
         }
      }
      
      public function §4i§() : Array
      {
         if(this.§%l§(this.§<!O§) == null)
         {
            §@!L§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§%l§(this.§<!O§).§3!+§();
      }
      
      public function §;V§(param1:Array) : void
      {
         this.§%l§(this.§<!O§).§;V§(param1);
      }
      
      public function §!m§(param1:Number) : void
      {
         this.§%l§(this.§<!O§).§!m§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§'Y§ = null;
         this.§3!9§ = null;
         this.§]!,§ = null;
      }
   }
}
