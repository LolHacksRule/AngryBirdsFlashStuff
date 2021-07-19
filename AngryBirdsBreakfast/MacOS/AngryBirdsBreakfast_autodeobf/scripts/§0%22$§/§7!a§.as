package §0"$§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §,L§.§;[§;
   import §,L§.§;k§;
   import §7!§.§2W§;
   import com.rovio.assets.§<V§;
   import each.§!!'§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §7!a§ extends §"!a§
   {
      
      public static const §]`§:int = 0;
      
      public static const §5!b§:int = 1;
      
      public static const §7U§:int = 2;
       
      
      public var §^2§:String;
      
      public var §%[§:Class;
      
      public var §^G§:String = null;
      
      public var §2!Y§:Vector.<§;k§>;
      
      public var §9l§:int;
      
      public var §8E§:Number;
      
      public var §`!]§:Number;
      
      public var §%"&§:Number;
      
      public var §]!H§:Number;
      
      public var §];§:Number;
      
      public var §[k§:Number;
      
      public var §`M§:Number;
      
      public var §5"#§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §2!3§:int;
      
      public var §7!m§:Number;
      
      public var §!g§:String = "";
      
      public var §<"-§:int;
      
      public var §05§:int;
      
      public var §[!s§:GlowFilter;
      
      public var §8!f§:Boolean = true;
      
      public var §=6§:int;
      
      public var §^w§:int;
      
      public var §?!S§:Number = 0;
      
      public var §-§:Number = 0;
      
      public var §5j§:Number = 0;
      
      public var §8p§:Number = 0;
      
      public var §1!L§:Boolean = false;
      
      public var §]!$§:Boolean = false;
      
      public var §`q§:MovieClip = null;
      
      public function §7!a§(param1:XML, param2:§"!a§, param3:§2W§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§^2§ = param1.@button;
         if(this.§^2§.length > 0)
         {
            this.§%[§ = §<V§.§"!,§(this.§^2§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§^G§ = _loc5_;
         }
         this.§<"-§ = §]`§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§<"-§ = §5!b§;
            }
         }
         this.§05§ = §7U§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§05§ = §]`§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§[!s§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §<C§.push(new §;§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §<C§.push(new §;§(_loc18_,this));
         }
         this.§8E§ = mClip.getChildByName("Surface").x;
         this.§`!]§ = mClip.getChildByName("Surface").y;
         this.§%"&§ = mClip.getChildByName("Surface").width;
         this.§]!H§ = mClip.getChildByName("Surface").height;
         this.§];§ = mClip.getChildByName("Button_Area1").x - this.§8E§;
         this.§[k§ = mClip.getChildByName("Button_Area1").y - this.§`!]§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§8E§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§`!]§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§7!m§ = _loc9_.bottom - this.§`!]§ - this.§[k§;
         this.§`M§ = _loc7_ - this.§];§;
         this.§5"#§ = _loc8_ - this.§[k§;
         if(Math.abs(this.§`M§) < 3)
         {
            this.§`M§ = 0;
         }
         if(Math.abs(this.§5"#§) < 3)
         {
            this.§5"#§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§`M§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§];§ - this.§];§) / this.§`M§;
         }
         if(this.§5"#§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§[k§ - this.§[k§) / this.§5"#§;
         }
         this.§9l§ = Math.min(_loc10_,_loc11_);
         this.§8!f§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§=6§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§=6§ = this.§9l§;
         }
         this.§2!3§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§8E§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§`!]§;
            this.mButtonMarginX2 = _loc19_ - this.§];§;
            this.mButtonMarginY2 = _loc20_ - this.§[k§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§8!f§)
            {
               this.§2!3§ = 1 + (mClip.getChildByName("Surface").height - this.§[k§ - this.§[k§) / this.mButtonMarginY2;
            }
            else
            {
               this.§2!3§ = 1 + (mClip.getChildByName("Surface").width - this.§];§ - this.§];§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§`q§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§5j§ = this.§`q§.x - mClip.getChildByName("Surface").x;
            this.§8p§ = this.§`q§.y - mClip.getChildByName("Surface").y;
            this.§?!S§ = this.§`q§.x + this.§`q§.width - (this.§`q§.x + mClip.getChildByName("Surface").width);
            this.§-§ = this.§`q§.y + this.§`q§.height - (this.§`q§.y + mClip.getChildByName("Surface").height);
            this.§1!L§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§]!$§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§^w§ = §;k§.§,h§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§^w§ = §;k§.§=!;§;
            }
         }
         this.§=p§();
      }
      
      public function §=p§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§0U§ = null;
         var _loc8_:§;k§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§%!M§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §%!M§;
         }
         this.§2!Y§ = new Vector.<§;k§>();
         this.§7j§();
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
            _loc7_ = new §0U§(_loc6_,this,null,_loc5_);
            §<C§.push(_loc7_);
            _loc8_ = new §;k§(this.§^w§,_loc4_);
            this.§2!Y§.push(_loc8_);
            _loc9_ = this.§];§;
            _loc10_ = this.§9l§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§05§ == §]`§)
            {
               _loc9_ = (this.§%"&§ - (_loc10_ - 1) * this.§`M§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§<C§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§<C§.push(new param2(_loc12_,_loc7_,new this.§%[§() as MovieClip));
               }
               _loc13_ = _loc7_.§<C§[_loc7_.§<C§.length - 1] as §%!M§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§ j§(_loc14_,this.§^G§);
                  if(this.§<"-§ == §5!b§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§^G§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§2!3§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§`M§;
                  _loc13_.y = this.§[k§ + _loc11_ * this.§5"#§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§9l§ * this.§2!3§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§9l§ * this.§2!3§) / this.§9l§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§9l§ * this.§2!3§) % this.§9l§;
                  if(this.§8!f§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§`M§ + _loc16_ * this.§9l§ * this.§`M§;
                     _loc13_.y = this.§[k§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§[k§ + _loc18_ * this.§5"#§ + _loc16_ * this.§9l§ * this.§5"#§;
                  }
               }
               _loc8_.§7!W§(_loc13_);
               _loc11_++;
            }
            _loc8_.§?!Y§("");
            _loc7_.§<!u§(this.§9l§,this.§8E§,this.§`!]§,this.§=6§ * this.§`M§,this.§=6§ * this.§5"#§,this.§2!3§,this.§=6§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §'!?§() : int
      {
         return this.§9l§;
      }
      
      public function get §!a§() : int
      {
         if(this.§'!?§ == 0)
         {
            return 0;
         }
         return this.§+"&§(this.§!g§).§9t§.length / this.§'!?§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§6!W§, param4:Event = null) : void
      {
         var _loc6_:§;k§ = null;
         var _loc5_:§0U§ = getItemByName(this.§!g§) as §0U§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§&p§(_loc5_.§!b§ - 1);
               this.§@I§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§&p§(_loc5_.§!b§ + 1);
               this.§@I§();
            }
         }
         else if(param2.length > 0 && (param1 == §6!W§.LISTENER_EVENT_MOUSE_DOWN || param1 == §6!W§.LISTENER_EVENT_MOUSE_UP) && param3 is §;[§)
         {
            if((_loc6_ = this.§+"&§((param3 as §;[§).mParentContainer.mName.toUpperCase())) && param3 is §%!M§)
            {
               _loc6_.§?!Y§((param3 as §;[§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §7§(param1:String, param2:int) : void
      {
         var _loc3_:§0U§ = getItemByName(param1) as §0U§;
         if(_loc3_)
         {
            _loc3_.§&p§(param2);
            this.§@I§();
         }
      }
      
      public function §+"&§(param1:String) : §;k§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2!Y§.length)
         {
            if(param1.toUpperCase() == (this.§2!Y§[_loc2_] as §;k§).mName.toUpperCase())
            {
               return this.§2!Y§[_loc2_] as §;k§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §=! §(param1:String) : void
      {
         this.§!g§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §<C§.length)
         {
            if(§<C§[_loc2_] is §0U§)
            {
               if((§<C§[_loc2_] as §0U§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§<C§[_loc2_] as §0U§).setActiveStatus(true);
                  if(this.§1!L§)
                  {
                     this.§`q§.x = (§<C§[_loc2_] as §0U§).x + this.§5j§;
                     this.§`q§.width = (§<C§[_loc2_] as §0U§).width + this.§?!S§;
                  }
                  if(this.§]!$§)
                  {
                     this.§`q§.y = (§<C§[_loc2_] as §0U§).y + this.§8p§;
                     this.§`q§.height = (§<C§[_loc2_] as §0U§).height + this.§-§;
                  }
               }
               else
               {
                  (§<C§[_loc2_] as §0U§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§@I§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§;k§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§2!Y§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §@I§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§0U§ = getItemByName(this.§!g§) as §0U§;
         if(_loc1_)
         {
            if(_loc1_.§!b§ > 0)
            {
               (getItemByName("Button_Scroll1") as §;§).setComponentState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §;§).setComponentState(§%J§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§!b§ < _loc1_.§`!T§ - 1)
            {
               (getItemByName("Button_Scroll2") as §;§).setComponentState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §;§).setComponentState(§%J§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §;§).setComponentState(§%J§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §;§).setComponentState(§%J§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §7j§() : void
      {
         var _loc2_:§0U§ = null;
         var _loc1_:int = §<C§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §<C§[_loc1_] as §0U§;
            if(_loc2_)
            {
               _loc2_.clear();
               §<C§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§=! §("");
      }
      
      public function §+&§() : void
      {
         var _loc1_:§;k§ = null;
         for each(_loc1_ in this.§2!Y§)
         {
            _loc1_.§+&§();
         }
      }
      
      public function §!!z§() : Array
      {
         if(this.§+"&§(this.§!g§) == null)
         {
            §!!'§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§+"&§(this.§!g§).§!!n§();
      }
      
      public function §=5§(param1:Array) : void
      {
         this.§+"&§(this.§!g§).§=5§(param1);
      }
      
      public function §4!L§(param1:Number) : void
      {
         this.§+"&§(this.§!g§).§4!L§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§%[§ = null;
         this.§2!Y§ = null;
         this.§[!s§ = null;
      }
   }
}
