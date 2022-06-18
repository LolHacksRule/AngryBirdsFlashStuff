package §-!'§
{
   import §!^§.§ >§;
   import §!^§.§"%§;
   import §!^§.§+!5§;
   import §!^§.§^0§;
   import §3v§.§1a§;
   import §^s§.§&"§;
   import com.rovio.assets.§''§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §#7§ extends §in §
   {
      
      public static const §?J§:int = 0;
      
      public static const §,S§:int = 1;
      
      public static const §#!F§:int = 2;
       
      
      public var §9!9§:String;
      
      public var §7+§:Class;
      
      public var §>!>§:String = null;
      
      public var §'O§:Vector.<§^0§>;
      
      public var §,y§:int;
      
      public var §^!$§:Number;
      
      public var §+U§:Number;
      
      public var §1!,§:Number;
      
      public var §`!"§:Number;
      
      public var §"9§:Number;
      
      public var §`3§:Number;
      
      public var §`u§:Number;
      
      public var §?Q§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var § H§:int;
      
      public var §,m§:Number;
      
      public var §4!E§:String = "";
      
      public var §7P§:int;
      
      public var §6R§:int;
      
      public var §#R§:GlowFilter;
      
      public var §5!>§:Boolean = true;
      
      public var §5m§:int;
      
      public var §4M§:int;
      
      public var §6!A§:Number = 0;
      
      public var §^>§:Number = 0;
      
      public var §1d§:Number = 0;
      
      public var §^!1§:Number = 0;
      
      public var §!N§:Boolean = false;
      
      public var §#_§:Boolean = false;
      
      public var §[c§:MovieClip = null;
      
      public function §#7§(param1:XML, param2:§in §, param3:§&"§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§9!9§ = param1.@button;
         if(this.§9!9§.length > 0)
         {
            this.§7+§ = §''§.§-C§(this.§9!9§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§>!>§ = _loc5_;
         }
         this.§7P§ = §?J§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§7P§ = §,S§;
            }
         }
         this.§6R§ = §#!F§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§6R§ = §?J§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§#R§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §%!;§.push(new §;f§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §%!;§.push(new §;f§(_loc18_,this));
         }
         this.§^!$§ = mClip.getChildByName("Surface").x;
         this.§+U§ = mClip.getChildByName("Surface").y;
         this.§1!,§ = mClip.getChildByName("Surface").width;
         this.§`!"§ = mClip.getChildByName("Surface").height;
         this.§"9§ = mClip.getChildByName("Button_Area1").x - this.§^!$§;
         this.§`3§ = mClip.getChildByName("Button_Area1").y - this.§+U§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§^!$§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§+U§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§,m§ = _loc9_.bottom - this.§+U§ - this.§`3§;
         this.§`u§ = _loc7_ - this.§"9§;
         this.§?Q§ = _loc8_ - this.§`3§;
         if(Math.abs(this.§`u§) < 3)
         {
            this.§`u§ = 0;
         }
         if(Math.abs(this.§?Q§) < 3)
         {
            this.§?Q§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§`u§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§"9§ - this.§"9§) / this.§`u§;
         }
         if(this.§?Q§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§`3§ - this.§`3§) / this.§?Q§;
         }
         this.§,y§ = Math.min(_loc10_,_loc11_);
         this.§5!>§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§5m§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§5m§ = this.§,y§;
         }
         this.§ H§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§^!$§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§+U§;
            this.mButtonMarginX2 = _loc19_ - this.§"9§;
            this.mButtonMarginY2 = _loc20_ - this.§`3§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§5!>§)
            {
               this.§ H§ = 1 + (mClip.getChildByName("Surface").height - this.§`3§ - this.§`3§) / this.mButtonMarginY2;
            }
            else
            {
               this.§ H§ = 1 + (mClip.getChildByName("Surface").width - this.§"9§ - this.§"9§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§[c§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§1d§ = this.§[c§.x - mClip.getChildByName("Surface").x;
            this.§^!1§ = this.§[c§.y - mClip.getChildByName("Surface").y;
            this.§6!A§ = this.§[c§.x + this.§[c§.width - (this.§[c§.x + mClip.getChildByName("Surface").width);
            this.§^>§ = this.§[c§.y + this.§[c§.height - (this.§[c§.y + mClip.getChildByName("Surface").height);
            this.§!N§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§#_§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§4M§ = §^0§.§+"§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§4M§ = §^0§.§^[§;
            }
         }
         this.§'A§();
      }
      
      public function §'A§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§]]§ = null;
         var _loc8_:§^0§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§;;§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §;;§;
         }
         this.§'O§ = new Vector.<§^0§>();
         this.§4E§();
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
            _loc7_ = new §]]§(_loc6_,this,null,_loc5_);
            §%!;§.push(_loc7_);
            _loc8_ = new §^0§(this.§4M§,_loc4_);
            this.§'O§.push(_loc8_);
            _loc9_ = this.§"9§;
            _loc10_ = this.§,y§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§6R§ == §?J§)
            {
               _loc9_ = (this.§1!,§ - (_loc10_ - 1) * this.§`u§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§%!;§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§%!;§.push(new param2(_loc12_,_loc7_,new this.§7+§() as MovieClip));
               }
               _loc13_ = _loc7_.§%!;§[_loc7_.§%!;§.length - 1] as §;;§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§%!H§(_loc14_,this.§>!>§);
                  if(this.§7P§ == §,S§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§>!>§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§ H§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§`u§;
                  _loc13_.y = this.§`3§ + _loc11_ * this.§?Q§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§,y§ * this.§ H§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§,y§ * this.§ H§) / this.§,y§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§,y§ * this.§ H§) % this.§,y§;
                  if(this.§5!>§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§`u§ + _loc16_ * this.§,y§ * this.§`u§;
                     _loc13_.y = this.§`3§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§`3§ + _loc18_ * this.§?Q§ + _loc16_ * this.§,y§ * this.§?Q§;
                  }
               }
               _loc8_.§5f§(_loc13_);
               _loc11_++;
            }
            _loc8_.§+x§("");
            _loc7_.§4Y§(this.§,y§,this.§^!$§,this.§+U§,this.§5m§ * this.§`u§,this.§5m§ * this.§?Q§,this.§ H§,this.§5m§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §]!2§() : int
      {
         return this.§,y§;
      }
      
      public function get §[l§() : int
      {
         if(this.§]!2§ == 0)
         {
            return 0;
         }
         return this.§1-§(this.§4!E§).§%U§.length / this.§]!2§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§"%§) : void
      {
         var _loc5_:§^0§ = null;
         var _loc4_:§]]§ = getItemByName(this.§4!E§) as §]]§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§3J§(_loc4_.§=X§ - 1);
               this.§2Z§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§3J§(_loc4_.§=X§ + 1);
               this.§2Z§();
            }
         }
         else if(param2.length > 0 && (param1 == §"%§.LISTENER_EVENT_MOUSE_DOWN || param1 == §"%§.LISTENER_EVENT_MOUSE_UP) && param3 is § >§)
         {
            if((_loc5_ = this.§1-§((param3 as § >§).mParentContainer.mName.toUpperCase())) && param3 is §;;§)
            {
               _loc5_.§+x§((param3 as § >§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §@!0§(param1:String, param2:int) : void
      {
         var _loc3_:§]]§ = getItemByName(param1) as §]]§;
         if(_loc3_)
         {
            _loc3_.§3J§(param2);
            this.§2Z§();
         }
      }
      
      public function §1-§(param1:String) : §^0§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§'O§.length)
         {
            if(param1.toUpperCase() == (this.§'O§[_loc2_] as §^0§).mName.toUpperCase())
            {
               return this.§'O§[_loc2_] as §^0§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §&7§(param1:String) : void
      {
         this.§4!E§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §%!;§.length)
         {
            if(§%!;§[_loc2_] is §]]§)
            {
               if((§%!;§[_loc2_] as §]]§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§%!;§[_loc2_] as §]]§).setActiveStatus(true);
                  if(this.§!N§)
                  {
                     this.§[c§.x = (§%!;§[_loc2_] as §]]§).x + this.§1d§;
                     this.§[c§.width = (§%!;§[_loc2_] as §]]§).width + this.§6!A§;
                  }
                  if(this.§#_§)
                  {
                     this.§[c§.y = (§%!;§[_loc2_] as §]]§).y + this.§^!1§;
                     this.§[c§.height = (§%!;§[_loc2_] as §]]§).height + this.§^>§;
                  }
               }
               else
               {
                  (§%!;§[_loc2_] as §]]§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§2Z§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§^0§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§'O§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §2Z§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§]]§ = getItemByName(this.§4!E§) as §]]§;
         if(_loc1_)
         {
            if(_loc1_.§=X§ > 0)
            {
               (getItemByName("Button_Scroll1") as §;f§).setComponentState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §;f§).setComponentState(§+!5§.§ !G§);
            }
            if(_loc1_.§=X§ < _loc1_.§3!>§ - 1)
            {
               (getItemByName("Button_Scroll2") as §;f§).setComponentState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §;f§).setComponentState(§+!5§.§ !G§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §;f§).setComponentState(§+!5§.§ !G§);
            (getItemByName("Button_Scroll2") as §;f§).setComponentState(§+!5§.§ !G§);
         }
      }
      
      public function §4E§() : void
      {
         var _loc2_:§]]§ = null;
         var _loc1_:int = §%!;§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §%!;§[_loc1_] as §]]§;
            if(_loc2_)
            {
               _loc2_.clear();
               §%!;§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§&7§("");
      }
      
      public function §`#§() : void
      {
         var _loc1_:§^0§ = null;
         for each(_loc1_ in this.§'O§)
         {
            _loc1_.§`#§();
         }
      }
      
      public function §;n§() : Array
      {
         if(this.§1-§(this.§4!E§) == null)
         {
            §1a§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§1-§(this.§4!E§).§@k§();
      }
      
      public function §!b§(param1:Array) : void
      {
         this.§1-§(this.§4!E§).§!b§(param1);
      }
      
      public function §[&§(param1:Number) : void
      {
         this.§1-§(this.§4!E§).§[&§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§7+§ = null;
         this.§'O§ = null;
         this.§#R§ = null;
      }
   }
}
