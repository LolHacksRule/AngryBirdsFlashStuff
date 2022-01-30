package §!D§
{
   import §4u§.§<!L§;
   import §9!7§.§#p§;
   import §9!7§.§0!`§;
   import §9!7§.§6"0§;
   import §9!7§.§=""§;
   import §?!V§.§ T§;
   import com.rovio.assets.§%"4§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §2!b§ extends § use§
   {
      
      public static const §0G§:int = 0;
      
      public static const §<!d§:int = 1;
      
      public static const §-Z§:int = 2;
       
      
      public var §2^§:String;
      
      public var §5!H§:Class;
      
      public var § !o§:String = null;
      
      public var §&@§:Vector.<§=""§>;
      
      public var §&6§:int;
      
      public var §!z§:Number;
      
      public var §8D§:Number;
      
      public var §[,§:Number;
      
      public var §3!!§:Number;
      
      public var §5^§:Number;
      
      public var §&B§:Number;
      
      public var §2J§:Number;
      
      public var §,J§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §>!'§:int;
      
      public var §%!d§:Number;
      
      public var §@1§:String = "";
      
      public var §+!3§:int;
      
      public var §+",§:int;
      
      public var §"!C§:GlowFilter;
      
      public var §="-§:Boolean = true;
      
      public var §]!Y§:int;
      
      public var §`!H§:int;
      
      public var §5t§:Number = 0;
      
      public var §`!3§:Number = 0;
      
      public var §[m§:Number = 0;
      
      public var §=z§:Number = 0;
      
      public var §=1§:Boolean = false;
      
      public var §`!h§:Boolean = false;
      
      public var §^;§:MovieClip = null;
      
      public function §2!b§(param1:XML, param2:§ use§, param3:§ T§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§2^§ = param1.@button;
         if(this.§2^§.length > 0)
         {
            this.§5!H§ = §%"4§.§>!v§(this.§2^§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§ !o§ = _loc5_;
         }
         this.§+!3§ = §0G§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§+!3§ = §<!d§;
            }
         }
         this.§+",§ = §-Z§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§+",§ = §0G§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§"!C§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §%`§.push(new §3!6§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §%`§.push(new §3!6§(_loc18_,this));
         }
         this.§!z§ = mClip.getChildByName("Surface").x;
         this.§8D§ = mClip.getChildByName("Surface").y;
         this.§[,§ = mClip.getChildByName("Surface").width;
         this.§3!!§ = mClip.getChildByName("Surface").height;
         this.§5^§ = mClip.getChildByName("Button_Area1").x - this.§!z§;
         this.§&B§ = mClip.getChildByName("Button_Area1").y - this.§8D§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§!z§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§8D§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§%!d§ = _loc9_.bottom - this.§8D§ - this.§&B§;
         this.§2J§ = _loc7_ - this.§5^§;
         this.§,J§ = _loc8_ - this.§&B§;
         if(Math.abs(this.§2J§) < 3)
         {
            this.§2J§ = 0;
         }
         if(Math.abs(this.§,J§) < 3)
         {
            this.§,J§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§2J§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§5^§ - this.§5^§) / this.§2J§;
         }
         if(this.§,J§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§&B§ - this.§&B§) / this.§,J§;
         }
         this.§&6§ = Math.min(_loc10_,_loc11_);
         this.§="-§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§]!Y§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§]!Y§ = this.§&6§;
         }
         this.§>!'§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§!z§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§8D§;
            this.mButtonMarginX2 = _loc19_ - this.§5^§;
            this.mButtonMarginY2 = _loc20_ - this.§&B§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§="-§)
            {
               this.§>!'§ = 1 + (mClip.getChildByName("Surface").height - this.§&B§ - this.§&B§) / this.mButtonMarginY2;
            }
            else
            {
               this.§>!'§ = 1 + (mClip.getChildByName("Surface").width - this.§5^§ - this.§5^§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§^;§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§[m§ = this.§^;§.x - mClip.getChildByName("Surface").x;
            this.§=z§ = this.§^;§.y - mClip.getChildByName("Surface").y;
            this.§5t§ = this.§^;§.x + this.§^;§.width - (this.§^;§.x + mClip.getChildByName("Surface").width);
            this.§`!3§ = this.§^;§.y + this.§^;§.height - (this.§^;§.y + mClip.getChildByName("Surface").height);
            this.§=1§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§`!h§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§`!H§ = §=""§.§1<§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§`!H§ = §=""§.§3!A§;
            }
         }
         this.§-W§();
      }
      
      public function §-W§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§'"5§ = null;
         var _loc8_:§=""§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§>"5§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §>"5§;
         }
         this.§&@§ = new Vector.<§=""§>();
         this.§9s§();
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
            _loc7_ = new §'"5§(_loc6_,this,null,_loc5_);
            §%`§.push(_loc7_);
            _loc8_ = new §=""§(this.§`!H§,_loc4_);
            this.§&@§.push(_loc8_);
            _loc9_ = this.§5^§;
            _loc10_ = this.§&6§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§+",§ == §0G§)
            {
               _loc9_ = (this.§[,§ - (_loc10_ - 1) * this.§2J§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§%`§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§%`§.push(new param2(_loc12_,_loc7_,new this.§5!H§() as MovieClip));
               }
               _loc13_ = _loc7_.§%`§[_loc7_.§%`§.length - 1] as §>"5§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§ !o§);
                  if(this.§+!3§ == §<!d§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§ !o§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§>!'§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§2J§;
                  _loc13_.y = this.§&B§ + _loc11_ * this.§,J§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§&6§ * this.§>!'§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§&6§ * this.§>!'§) / this.§&6§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§&6§ * this.§>!'§) % this.§&6§;
                  if(this.§="-§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§2J§ + _loc16_ * this.§&6§ * this.§2J§;
                     _loc13_.y = this.§&B§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§&B§ + _loc18_ * this.§,J§ + _loc16_ * this.§&6§ * this.§,J§;
                  }
               }
               _loc8_.§!+§(_loc13_);
               _loc11_++;
            }
            _loc8_.§@!]§("");
            _loc7_.§-!V§(this.§&6§,this.§!z§,this.§8D§,this.§]!Y§ * this.§2J§,this.§]!Y§ * this.§,J§,this.§>!'§,this.§]!Y§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §8e§() : int
      {
         return this.§&6§;
      }
      
      public function get §6!%§() : int
      {
         if(this.§8e§ == 0)
         {
            return 0;
         }
         return this.§]t§(this.§@1§).§82§.length / this.§8e§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§#p§) : void
      {
         var _loc5_:§=""§ = null;
         var _loc4_:§'"5§ = getItemByName(this.§@1§) as §'"5§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§=2§(_loc4_.§2!`§ - 1);
               this.§6!0§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§=2§(_loc4_.§2!`§ + 1);
               this.§6!0§();
            }
         }
         else if(param2.length > 0 && (param1 == §#p§.LISTENER_EVENT_MOUSE_DOWN || param1 == §#p§.LISTENER_EVENT_MOUSE_UP) && param3 is §0!`§)
         {
            if((_loc5_ = this.§]t§((param3 as §0!`§).mParentContainer.mName.toUpperCase())) && param3 is §>"5§)
            {
               _loc5_.§@!]§((param3 as §0!`§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §#!1§(param1:String, param2:int) : void
      {
         var _loc3_:§'"5§ = getItemByName(param1) as §'"5§;
         if(_loc3_)
         {
            _loc3_.§=2§(param2);
            this.§6!0§();
         }
      }
      
      public function §]t§(param1:String) : §=""§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&@§.length)
         {
            if(param1.toUpperCase() == (this.§&@§[_loc2_] as §=""§).mName.toUpperCase())
            {
               return this.§&@§[_loc2_] as §=""§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,I§(param1:String) : void
      {
         this.§@1§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §%`§.length)
         {
            if(§%`§[_loc2_] is §'"5§)
            {
               if((§%`§[_loc2_] as §'"5§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§%`§[_loc2_] as §'"5§).setActiveStatus(true);
                  if(this.§=1§)
                  {
                     this.§^;§.x = (§%`§[_loc2_] as §'"5§).x + this.§[m§;
                     this.§^;§.width = (§%`§[_loc2_] as §'"5§).width + this.§5t§;
                  }
                  if(this.§`!h§)
                  {
                     this.§^;§.y = (§%`§[_loc2_] as §'"5§).y + this.§=z§;
                     this.§^;§.height = (§%`§[_loc2_] as §'"5§).height + this.§`!3§;
                  }
               }
               else
               {
                  (§%`§[_loc2_] as §'"5§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§6!0§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§=""§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§&@§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §6!0§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§'"5§ = getItemByName(this.§@1§) as §'"5§;
         if(_loc1_)
         {
            if(_loc1_.§2!`§ > 0)
            {
               (getItemByName("Button_Scroll1") as §3!6§).setComponentState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §3!6§).setComponentState(§6"0§.§<>§);
            }
            if(_loc1_.§2!`§ < _loc1_.§[!>§ - 1)
            {
               (getItemByName("Button_Scroll2") as §3!6§).setComponentState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §3!6§).setComponentState(§6"0§.§<>§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §3!6§).setComponentState(§6"0§.§<>§);
            (getItemByName("Button_Scroll2") as §3!6§).setComponentState(§6"0§.§<>§);
         }
      }
      
      public function §9s§() : void
      {
         var _loc2_:§'"5§ = null;
         var _loc1_:int = §%`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §%`§[_loc1_] as §'"5§;
            if(_loc2_)
            {
               _loc2_.clear();
               §%`§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§,I§("");
      }
      
      public function §=R§() : void
      {
         var _loc1_:§=""§ = null;
         for each(_loc1_ in this.§&@§)
         {
            _loc1_.§=R§();
         }
      }
      
      public function §9!;§() : Array
      {
         if(this.§]t§(this.§@1§) == null)
         {
            §<!L§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§]t§(this.§@1§).§35§();
      }
      
      public function §@!k§(param1:Array) : void
      {
         this.§]t§(this.§@1§).§@!k§(param1);
      }
      
      public function §`V§(param1:Number) : void
      {
         this.§]t§(this.§@1§).§`V§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§5!H§ = null;
         this.§&@§ = null;
         this.§"!C§ = null;
      }
   }
}
