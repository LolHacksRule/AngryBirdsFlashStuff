package §2K§
{
   import § N§.§]M§;
   import §,&§.§7$§;
   import §6!K§.§#![§;
   import §6!K§.§#!c§;
   import §6!K§.§3l§;
   import §6!K§.§7!!§;
   import §>!D§.§;,§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §7&§ extends §,!@§
   {
      
      public static const §6!?§:int = 0;
      
      public static const §8!3§:int = 1;
      
      public static const §5s§:int = 2;
       
      
      public var §-!^§:String;
      
      public var §=!c§:Class;
      
      public var §3! §:String = null;
      
      public var §78§:Vector.<§#!c§>;
      
      public var §5y§:int;
      
      public var §%!E§:Number;
      
      public var §!!4§:Number;
      
      public var §,-§:Number;
      
      public var §<4§:Number;
      
      public var §4!c§:Number;
      
      public var §%!9§:Number;
      
      public var §>u§:Number;
      
      public var §>!O§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §[!9§:int;
      
      public var §`$§:Number;
      
      public var §=r§:String = "";
      
      public var §<!!§:int;
      
      public var §continue§:int;
      
      public var §;!`§:GlowFilter;
      
      public var §!A§:Boolean = true;
      
      public var §^!W§:int;
      
      public var §1!6§:int;
      
      public var §?!%§:Number = 0;
      
      public var §>!I§:Number = 0;
      
      public var §-x§:Number = 0;
      
      public var §0^§:Number = 0;
      
      public var §9i§:Boolean = false;
      
      public var §`y§:Boolean = false;
      
      public var §5o§:MovieClip = null;
      
      public function §7&§(param1:XML, param2:§,!@§, param3:§;,§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§-!^§ = param1.@button;
         if(this.§-!^§.length > 0)
         {
            this.§=!c§ = §7$§.§,W§(this.§-!^§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§3! § = _loc5_;
         }
         this.§<!!§ = §6!?§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§<!!§ = §8!3§;
            }
         }
         this.§continue§ = §5s§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§continue§ = §6!?§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§;!`§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §<G§.push(new § 3§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §<G§.push(new § 3§(_loc18_,this));
         }
         this.§%!E§ = mClip.getChildByName("Surface").x;
         this.§!!4§ = mClip.getChildByName("Surface").y;
         this.§,-§ = mClip.getChildByName("Surface").width;
         this.§<4§ = mClip.getChildByName("Surface").height;
         this.§4!c§ = mClip.getChildByName("Button_Area1").x - this.§%!E§;
         this.§%!9§ = mClip.getChildByName("Button_Area1").y - this.§!!4§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§%!E§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§!!4§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§`$§ = _loc9_.bottom - this.§!!4§ - this.§%!9§;
         this.§>u§ = _loc7_ - this.§4!c§;
         this.§>!O§ = _loc8_ - this.§%!9§;
         if(Math.abs(this.§>u§) < 3)
         {
            this.§>u§ = 0;
         }
         if(Math.abs(this.§>!O§) < 3)
         {
            this.§>!O§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§>u§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§4!c§ - this.§4!c§) / this.§>u§;
         }
         if(this.§>!O§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§%!9§ - this.§%!9§) / this.§>!O§;
         }
         this.§5y§ = Math.min(_loc10_,_loc11_);
         this.§!A§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§^!W§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§^!W§ = this.§5y§;
         }
         this.§[!9§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§%!E§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§!!4§;
            this.mButtonMarginX2 = _loc19_ - this.§4!c§;
            this.mButtonMarginY2 = _loc20_ - this.§%!9§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§!A§)
            {
               this.§[!9§ = 1 + (mClip.getChildByName("Surface").height - this.§%!9§ - this.§%!9§) / this.mButtonMarginY2;
            }
            else
            {
               this.§[!9§ = 1 + (mClip.getChildByName("Surface").width - this.§4!c§ - this.§4!c§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§5o§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§-x§ = this.§5o§.x - mClip.getChildByName("Surface").x;
            this.§0^§ = this.§5o§.y - mClip.getChildByName("Surface").y;
            this.§?!%§ = this.§5o§.x + this.§5o§.width - (this.§5o§.x + mClip.getChildByName("Surface").width);
            this.§>!I§ = this.§5o§.y + this.§5o§.height - (this.§5o§.y + mClip.getChildByName("Surface").height);
            this.§9i§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§`y§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§1!6§ = §#!c§.§!M§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§1!6§ = §#!c§.§=W§;
            }
         }
         this.§[l§();
      }
      
      public function §[l§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§8!c§ = null;
         var _loc8_:§#!c§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§#1§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §#1§;
         }
         this.§78§ = new Vector.<§#!c§>();
         this.§7!4§();
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
            _loc7_ = new §8!c§(_loc6_,this,null,_loc5_);
            §<G§.push(_loc7_);
            _loc8_ = new §#!c§(this.§1!6§,_loc4_);
            this.§78§.push(_loc8_);
            _loc9_ = this.§4!c§;
            _loc10_ = this.§5y§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§continue§ == §6!?§)
            {
               _loc9_ = (this.§,-§ - (_loc10_ - 1) * this.§>u§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§<G§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§<G§.push(new param2(_loc12_,_loc7_,new this.§=!c§() as MovieClip));
               }
               _loc13_ = _loc7_.§<G§[_loc7_.§<G§.length - 1] as §#1§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§@!#§(_loc14_,this.§3! §);
                  if(this.§<!!§ == §8!3§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§3! § == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§[!9§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§>u§;
                  _loc13_.y = this.§%!9§ + _loc11_ * this.§>!O§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§5y§ * this.§[!9§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§5y§ * this.§[!9§) / this.§5y§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§5y§ * this.§[!9§) % this.§5y§;
                  if(this.§!A§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§>u§ + _loc16_ * this.§5y§ * this.§>u§;
                     _loc13_.y = this.§%!9§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§%!9§ + _loc18_ * this.§>!O§ + _loc16_ * this.§5y§ * this.§>!O§;
                  }
               }
               _loc8_.§'!Q§(_loc13_);
               _loc11_++;
            }
            _loc8_.§?[§("");
            _loc7_.§-!H§(this.§5y§,this.§%!E§,this.§!!4§,this.§^!W§ * this.§>u§,this.§^!W§ * this.§>!O§,this.§[!9§,this.§^!W§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §9b§() : int
      {
         return this.§5y§;
      }
      
      public function get §[!J§() : int
      {
         if(this.§9b§ == 0)
         {
            return 0;
         }
         return this.§1O§(this.§=r§).§2!S§.length / this.§9b§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§#![§) : void
      {
         var _loc5_:§#!c§ = null;
         var _loc4_:§8!c§ = getItemByName(this.§=r§) as §8!c§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§2!9§(_loc4_.§`^§ - 1);
               this.§5T§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§2!9§(_loc4_.§`^§ + 1);
               this.§5T§();
            }
         }
         else if(param2.length > 0 && (param1 == §#![§.LISTENER_EVENT_MOUSE_DOWN || param1 == §#![§.LISTENER_EVENT_MOUSE_UP) && param3 is §7!!§)
         {
            if((_loc5_ = this.§1O§((param3 as §7!!§).mParentContainer.mName.toUpperCase())) && param3 is §#1§)
            {
               _loc5_.§?[§((param3 as §7!!§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function § F§(param1:String, param2:int) : void
      {
         var _loc3_:§8!c§ = getItemByName(param1) as §8!c§;
         if(_loc3_)
         {
            _loc3_.§2!9§(param2);
            this.§5T§();
         }
      }
      
      public function §1O§(param1:String) : §#!c§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§78§.length)
         {
            if(param1.toUpperCase() == (this.§78§[_loc2_] as §#!c§).mName.toUpperCase())
            {
               return this.§78§[_loc2_] as §#!c§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §&?§(param1:String) : void
      {
         this.§=r§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §<G§.length)
         {
            if(§<G§[_loc2_] is §8!c§)
            {
               if((§<G§[_loc2_] as §8!c§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§<G§[_loc2_] as §8!c§).setActiveStatus(true);
                  if(this.§9i§)
                  {
                     this.§5o§.x = (§<G§[_loc2_] as §8!c§).x + this.§-x§;
                     this.§5o§.width = (§<G§[_loc2_] as §8!c§).width + this.§?!%§;
                  }
                  if(this.§`y§)
                  {
                     this.§5o§.y = (§<G§[_loc2_] as §8!c§).y + this.§0^§;
                     this.§5o§.height = (§<G§[_loc2_] as §8!c§).height + this.§>!I§;
                  }
               }
               else
               {
                  (§<G§[_loc2_] as §8!c§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§5T§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§#!c§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§78§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §5T§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§8!c§ = getItemByName(this.§=r§) as §8!c§;
         if(_loc1_)
         {
            if(_loc1_.§`^§ > 0)
            {
               (getItemByName("Button_Scroll1") as § 3§).setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as § 3§).setComponentState(§3l§.§,!8§);
            }
            if(_loc1_.§`^§ < _loc1_.§;3§ - 1)
            {
               (getItemByName("Button_Scroll2") as § 3§).setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as § 3§).setComponentState(§3l§.§,!8§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as § 3§).setComponentState(§3l§.§,!8§);
            (getItemByName("Button_Scroll2") as § 3§).setComponentState(§3l§.§,!8§);
         }
      }
      
      public function §7!4§() : void
      {
         var _loc2_:§8!c§ = null;
         var _loc1_:int = §<G§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §<G§[_loc1_] as §8!c§;
            if(_loc2_)
            {
               _loc2_.clear();
               §<G§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§&?§("");
      }
      
      public function §@h§() : void
      {
         var _loc1_:§#!c§ = null;
         for each(_loc1_ in this.§78§)
         {
            _loc1_.§@h§();
         }
      }
      
      public function § !Y§() : Array
      {
         if(this.§1O§(this.§=r§) == null)
         {
            §]M§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§1O§(this.§=r§).§+%§();
      }
      
      public function §^!T§(param1:Array) : void
      {
         this.§1O§(this.§=r§).§^!T§(param1);
      }
      
      public function §^!-§(param1:Number) : void
      {
         this.§1O§(this.§=r§).§^!-§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§=!c§ = null;
         this.§78§ = null;
         this.§;!`§ = null;
      }
   }
}
