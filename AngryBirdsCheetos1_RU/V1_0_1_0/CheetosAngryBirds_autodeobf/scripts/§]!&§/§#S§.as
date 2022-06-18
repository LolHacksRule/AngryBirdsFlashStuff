package §]!&§
{
   import §%t§.§@!%§;
   import §<K§.§0e§;
   import §]!5§.§-!3§;
   import §]!5§.§1k§;
   import §]!5§.§=j§;
   import §]!5§.§`!J§;
   import §]!Y§.§5W§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §#S§ extends §]!K§
   {
      
      public static const §'$§:int = 0;
      
      public static const §2!!§:int = 1;
      
      public static const §`K§:int = 2;
       
      
      public var §?a§:String;
      
      public var §=Q§:Class;
      
      public var §1<§:String = null;
      
      public var §%!4§:Vector.<§`!J§>;
      
      public var §4U§:int;
      
      public var §!!>§:Number;
      
      public var §9! §:Number;
      
      public var §%!!§:Number;
      
      public var §^K§:Number;
      
      public var §[R§:Number;
      
      public var §8!Y§:Number;
      
      public var §^_§:Number;
      
      public var §52§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §!>§:int;
      
      public var §#c§:Number;
      
      public var §for§:String = "";
      
      public var §>O§:int;
      
      public var §@!7§:int;
      
      public var §<!H§:GlowFilter;
      
      public var §2r§:Boolean = true;
      
      public var §6!W§:int;
      
      public var §^!A§:int;
      
      public var §;k§:Number = 0;
      
      public var §1^§:Number = 0;
      
      public var §^!Y§:Number = 0;
      
      public var §,0§:Number = 0;
      
      public var §8T§:Boolean = false;
      
      public var §]!F§:Boolean = false;
      
      public var §%!+§:MovieClip = null;
      
      public function §#S§(param1:XML, param2:§]!K§, param3:§5W§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§?a§ = param1.@button;
         if(this.§?a§.length > 0)
         {
            this.§=Q§ = §0e§.§#!!§(this.§?a§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§1<§ = _loc5_;
         }
         this.§>O§ = §'$§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§>O§ = §2!!§;
            }
         }
         this.§@!7§ = §`K§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§@!7§ = §'$§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§<!H§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §0!R§.push(new §#?§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §0!R§.push(new §#?§(_loc18_,this));
         }
         this.§!!>§ = mClip.getChildByName("Surface").x;
         this.§9! § = mClip.getChildByName("Surface").y;
         this.§%!!§ = mClip.getChildByName("Surface").width;
         this.§^K§ = mClip.getChildByName("Surface").height;
         this.§[R§ = mClip.getChildByName("Button_Area1").x - this.§!!>§;
         this.§8!Y§ = mClip.getChildByName("Button_Area1").y - this.§9! §;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§!!>§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§9! §;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§#c§ = _loc9_.bottom - this.§9! § - this.§8!Y§;
         this.§^_§ = _loc7_ - this.§[R§;
         this.§52§ = _loc8_ - this.§8!Y§;
         if(Math.abs(this.§^_§) < 3)
         {
            this.§^_§ = 0;
         }
         if(Math.abs(this.§52§) < 3)
         {
            this.§52§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§^_§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§[R§ - this.§[R§) / this.§^_§;
         }
         if(this.§52§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§8!Y§ - this.§8!Y§) / this.§52§;
         }
         this.§4U§ = Math.min(_loc10_,_loc11_);
         this.§2r§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§6!W§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§6!W§ = this.§4U§;
         }
         this.§!>§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§!!>§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§9! §;
            this.mButtonMarginX2 = _loc19_ - this.§[R§;
            this.mButtonMarginY2 = _loc20_ - this.§8!Y§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§2r§)
            {
               this.§!>§ = 1 + (mClip.getChildByName("Surface").height - this.§8!Y§ - this.§8!Y§) / this.mButtonMarginY2;
            }
            else
            {
               this.§!>§ = 1 + (mClip.getChildByName("Surface").width - this.§[R§ - this.§[R§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§%!+§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§^!Y§ = this.§%!+§.x - mClip.getChildByName("Surface").x;
            this.§,0§ = this.§%!+§.y - mClip.getChildByName("Surface").y;
            this.§;k§ = this.§%!+§.x + this.§%!+§.width - (this.§%!+§.x + mClip.getChildByName("Surface").width);
            this.§1^§ = this.§%!+§.y + this.§%!+§.height - (this.§%!+§.y + mClip.getChildByName("Surface").height);
            this.§8T§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§]!F§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§^!A§ = §`!J§.§;9§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§^!A§ = §`!J§.§@h§;
            }
         }
         this.§ g§();
      }
      
      public function § g§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§7z§ = null;
         var _loc8_:§`!J§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§ '§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = § '§;
         }
         this.§%!4§ = new Vector.<§`!J§>();
         this.§2j§();
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
            _loc7_ = new §7z§(_loc6_,this,null,_loc5_);
            §0!R§.push(_loc7_);
            _loc8_ = new §`!J§(this.§^!A§,_loc4_);
            this.§%!4§.push(_loc8_);
            _loc9_ = this.§[R§;
            _loc10_ = this.§4U§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§@!7§ == §'$§)
            {
               _loc9_ = (this.§%!!§ - (_loc10_ - 1) * this.§^_§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§0!R§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§0!R§.push(new param2(_loc12_,_loc7_,new this.§=Q§() as MovieClip));
               }
               _loc13_ = _loc7_.§0!R§[_loc7_.§0!R§.length - 1] as § '§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§#O§(_loc14_,this.§1<§);
                  if(this.§>O§ == §2!!§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§1<§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§!>§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§^_§;
                  _loc13_.y = this.§8!Y§ + _loc11_ * this.§52§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§4U§ * this.§!>§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§4U§ * this.§!>§) / this.§4U§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§4U§ * this.§!>§) % this.§4U§;
                  if(this.§2r§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§^_§ + _loc16_ * this.§4U§ * this.§^_§;
                     _loc13_.y = this.§8!Y§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§8!Y§ + _loc18_ * this.§52§ + _loc16_ * this.§4U§ * this.§52§;
                  }
               }
               _loc8_.§1X§(_loc13_);
               _loc11_++;
            }
            _loc8_.§%!`§("");
            _loc7_.§0j§(this.§4U§,this.§!!>§,this.§9! §,this.§6!W§ * this.§^_§,this.§6!W§ * this.§52§,this.§!>§,this.§6!W§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §86§() : int
      {
         return this.§4U§;
      }
      
      public function get §8!S§() : int
      {
         if(this.§86§ == 0)
         {
            return 0;
         }
         return this.§`!Y§(this.§for§).§ case§.length / this.§86§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§-!3§) : void
      {
         var _loc5_:§`!J§ = null;
         var _loc4_:§7z§ = getItemByName(this.§for§) as §7z§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§'3§(_loc4_.§'x§ - 1);
               this.§1!%§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§'3§(_loc4_.§'x§ + 1);
               this.§1!%§();
            }
         }
         else if(param2.length > 0 && (param1 == §-!3§.LISTENER_EVENT_MOUSE_DOWN || param1 == §-!3§.LISTENER_EVENT_MOUSE_UP) && param3 is §1k§)
         {
            if((_loc5_ = this.§`!Y§((param3 as §1k§).mParentContainer.mName.toUpperCase())) && param3 is § '§)
            {
               _loc5_.§%!`§((param3 as §1k§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §5!;§(param1:String, param2:int) : void
      {
         var _loc3_:§7z§ = getItemByName(param1) as §7z§;
         if(_loc3_)
         {
            _loc3_.§'3§(param2);
            this.§1!%§();
         }
      }
      
      public function §`!Y§(param1:String) : §`!J§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!4§.length)
         {
            if(param1.toUpperCase() == (this.§%!4§[_loc2_] as §`!J§).mName.toUpperCase())
            {
               return this.§%!4§[_loc2_] as §`!J§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §[3§(param1:String) : void
      {
         this.§for§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §0!R§.length)
         {
            if(§0!R§[_loc2_] is §7z§)
            {
               if((§0!R§[_loc2_] as §7z§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§0!R§[_loc2_] as §7z§).setActiveStatus(true);
                  if(this.§8T§)
                  {
                     this.§%!+§.x = (§0!R§[_loc2_] as §7z§).x + this.§^!Y§;
                     this.§%!+§.width = (§0!R§[_loc2_] as §7z§).width + this.§;k§;
                  }
                  if(this.§]!F§)
                  {
                     this.§%!+§.y = (§0!R§[_loc2_] as §7z§).y + this.§,0§;
                     this.§%!+§.height = (§0!R§[_loc2_] as §7z§).height + this.§1^§;
                  }
               }
               else
               {
                  (§0!R§[_loc2_] as §7z§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§1!%§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§`!J§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§%!4§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §1!%§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§7z§ = getItemByName(this.§for§) as §7z§;
         if(_loc1_)
         {
            if(_loc1_.§'x§ > 0)
            {
               (getItemByName("Button_Scroll1") as §#?§).setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §#?§).setComponentState(§=j§.§in §);
            }
            if(_loc1_.§'x§ < _loc1_.§5C§ - 1)
            {
               (getItemByName("Button_Scroll2") as §#?§).setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §#?§).setComponentState(§=j§.§in §);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §#?§).setComponentState(§=j§.§in §);
            (getItemByName("Button_Scroll2") as §#?§).setComponentState(§=j§.§in §);
         }
      }
      
      public function §2j§() : void
      {
         var _loc2_:§7z§ = null;
         var _loc1_:int = §0!R§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §0!R§[_loc1_] as §7z§;
            if(_loc2_)
            {
               _loc2_.clear();
               §0!R§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§[3§("");
      }
      
      public function §]!]§() : void
      {
         var _loc1_:§`!J§ = null;
         for each(_loc1_ in this.§%!4§)
         {
            _loc1_.§]!]§();
         }
      }
      
      public function §"!7§() : Array
      {
         if(this.§`!Y§(this.§for§) == null)
         {
            §@!%§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§`!Y§(this.§for§).§,!Q§();
      }
      
      public function §]Z§(param1:Array) : void
      {
         this.§`!Y§(this.§for§).§]Z§(param1);
      }
      
      public function §=I§(param1:Number) : void
      {
         this.§`!Y§(this.§for§).§=I§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§=Q§ = null;
         this.§%!4§ = null;
         this.§<!H§ = null;
      }
   }
}
