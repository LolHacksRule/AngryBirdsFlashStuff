package §class§
{
   import §+!"§.§5!<§;
   import §-!F§.§&!A§;
   import §-!F§.§,J§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §<!G§.§^3§;
   import com.rovio.assets.§'!H§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §use § extends §3C§
   {
      
      public static const §#^§:int = 0;
      
      public static const §+i§:int = 1;
      
      public static const §,?§:int = 2;
       
      
      public var §1l§:String;
      
      public var §7h§:Class;
      
      public var §@b§:String = null;
      
      public var §`!0§:Vector.<§,J§>;
      
      public var §--§:int;
      
      public var §"<§:Number;
      
      public var §!?§:Number;
      
      public var §+!1§:Number;
      
      public var §=!<§:Number;
      
      public var §7!B§:Number;
      
      public var §3'§:Number;
      
      public var §&!+§:Number;
      
      public var §-!>§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §6l§:int;
      
      public var §5!6§:Number;
      
      public var §@!0§:String = "";
      
      public var §"B§:int;
      
      public var §77§:int;
      
      public var §>m§:GlowFilter;
      
      public var §3F§:Boolean = true;
      
      public var § !>§:int;
      
      public var §0!§:int;
      
      public var §[W§:Number = 0;
      
      public var §-+§:Number = 0;
      
      public var §++§:Number = 0;
      
      public var §1B§:Number = 0;
      
      public var §^1§:Boolean = false;
      
      public var §!'§:Boolean = false;
      
      public var §2!B§:MovieClip = null;
      
      public function §use §(param1:XML, param2:§3C§, param3:§^3§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§1l§ = param1.@button;
         if(this.§1l§.length > 0)
         {
            this.§7h§ = §'!H§.§&!G§(this.§1l§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§@b§ = _loc5_;
         }
         this.§"B§ = §#^§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§"B§ = §+i§;
            }
         }
         this.§77§ = §,?§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§77§ = §#^§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§>m§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §3! §.push(new §?q§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §3! §.push(new §?q§(_loc18_,this));
         }
         this.§"<§ = mClip.getChildByName("Surface").x;
         this.§!?§ = mClip.getChildByName("Surface").y;
         this.§+!1§ = mClip.getChildByName("Surface").width;
         this.§=!<§ = mClip.getChildByName("Surface").height;
         this.§7!B§ = mClip.getChildByName("Button_Area1").x - this.§"<§;
         this.§3'§ = mClip.getChildByName("Button_Area1").y - this.§!?§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§"<§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§!?§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§5!6§ = _loc9_.bottom - this.§!?§ - this.§3'§;
         this.§&!+§ = _loc7_ - this.§7!B§;
         this.§-!>§ = _loc8_ - this.§3'§;
         if(Math.abs(this.§&!+§) < 3)
         {
            this.§&!+§ = 0;
         }
         if(Math.abs(this.§-!>§) < 3)
         {
            this.§-!>§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§&!+§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§7!B§ - this.§7!B§) / this.§&!+§;
         }
         if(this.§-!>§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§3'§ - this.§3'§) / this.§-!>§;
         }
         this.§--§ = Math.min(_loc10_,_loc11_);
         this.§3F§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§ !>§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§ !>§ = this.§--§;
         }
         this.§6l§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§"<§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§!?§;
            this.mButtonMarginX2 = _loc19_ - this.§7!B§;
            this.mButtonMarginY2 = _loc20_ - this.§3'§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§3F§)
            {
               this.§6l§ = 1 + (mClip.getChildByName("Surface").height - this.§3'§ - this.§3'§) / this.mButtonMarginY2;
            }
            else
            {
               this.§6l§ = 1 + (mClip.getChildByName("Surface").width - this.§7!B§ - this.§7!B§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§2!B§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§++§ = this.§2!B§.x - mClip.getChildByName("Surface").x;
            this.§1B§ = this.§2!B§.y - mClip.getChildByName("Surface").y;
            this.§[W§ = this.§2!B§.x + this.§2!B§.width - (this.§2!B§.x + mClip.getChildByName("Surface").width);
            this.§-+§ = this.§2!B§.y + this.§2!B§.height - (this.§2!B§.y + mClip.getChildByName("Surface").height);
            this.§^1§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§!'§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§0!§ = §,J§.§?'§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§0!§ = §,J§.§"N§;
            }
         }
         this.§"!0§();
      }
      
      public function §"!0§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§0=§ = null;
         var _loc8_:§,J§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§'3§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §'3§;
         }
         this.§`!0§ = new Vector.<§,J§>();
         this.§+!E§();
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
            _loc7_ = new §0=§(_loc6_,this,null,_loc5_);
            §3! §.push(_loc7_);
            _loc8_ = new §,J§(this.§0!§,_loc4_);
            this.§`!0§.push(_loc8_);
            _loc9_ = this.§7!B§;
            _loc10_ = this.§--§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§77§ == §#^§)
            {
               _loc9_ = (this.§+!1§ - (_loc10_ - 1) * this.§&!+§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§3! §.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§3! §.push(new param2(_loc12_,_loc7_,new this.§7h§() as MovieClip));
               }
               _loc13_ = _loc7_.§3! §[_loc7_.§3! §.length - 1] as §'3§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§;!G§(_loc14_,this.§@b§);
                  if(this.§"B§ == §+i§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§@b§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§6l§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§&!+§;
                  _loc13_.y = this.§3'§ + _loc11_ * this.§-!>§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§--§ * this.§6l§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§--§ * this.§6l§) / this.§--§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§--§ * this.§6l§) % this.§--§;
                  if(this.§3F§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§&!+§ + _loc16_ * this.§--§ * this.§&!+§;
                     _loc13_.y = this.§3'§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§3'§ + _loc18_ * this.§-!>§ + _loc16_ * this.§--§ * this.§-!>§;
                  }
               }
               _loc8_.§6i§(_loc13_);
               _loc11_++;
            }
            _loc8_.§,4§("");
            _loc7_.§,D§(this.§--§,this.§"<§,this.§!?§,this.§ !>§ * this.§&!+§,this.§ !>§ * this.§-!>§,this.§6l§,this.§ !>§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §=o§() : int
      {
         return this.§--§;
      }
      
      public function get §`o§() : int
      {
         if(this.§=o§ == 0)
         {
            return 0;
         }
         return this.§,&§(this.§@!0§).§9!>§.length / this.§=o§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc5_:§,J§ = null;
         var _loc4_:§0=§ = getItemByName(this.§@!0§) as §0=§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§5V§(_loc4_.§[!6§ - 1);
               this.§!"§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§5V§(_loc4_.§[!6§ + 1);
               this.§!"§();
            }
         }
         else if(param2.length > 0 && (param1 == §^h§.LISTENER_EVENT_MOUSE_DOWN || param1 == §^h§.LISTENER_EVENT_MOUSE_UP) && param3 is §&!A§)
         {
            if((_loc5_ = this.§,&§((param3 as §&!A§).mParentContainer.mName.toUpperCase())) && param3 is §'3§)
            {
               _loc5_.§,4§((param3 as §&!A§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §1+§(param1:String, param2:int) : void
      {
         var _loc3_:§0=§ = getItemByName(param1) as §0=§;
         if(_loc3_)
         {
            _loc3_.§5V§(param2);
            this.§!"§();
         }
      }
      
      public function §,&§(param1:String) : §,J§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!0§.length)
         {
            if(param1.toUpperCase() == (this.§`!0§[_loc2_] as §,J§).mName.toUpperCase())
            {
               return this.§`!0§[_loc2_] as §,J§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §>!?§(param1:String) : void
      {
         this.§@!0§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §3! §.length)
         {
            if(§3! §[_loc2_] is §0=§)
            {
               if((§3! §[_loc2_] as §0=§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§3! §[_loc2_] as §0=§).setActiveStatus(true);
                  if(this.§^1§)
                  {
                     this.§2!B§.x = (§3! §[_loc2_] as §0=§).x + this.§++§;
                     this.§2!B§.width = (§3! §[_loc2_] as §0=§).width + this.§[W§;
                  }
                  if(this.§!'§)
                  {
                     this.§2!B§.y = (§3! §[_loc2_] as §0=§).y + this.§1B§;
                     this.§2!B§.height = (§3! §[_loc2_] as §0=§).height + this.§-+§;
                  }
               }
               else
               {
                  (§3! §[_loc2_] as §0=§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§!"§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§,J§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§`!0§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §!"§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§0=§ = getItemByName(this.§@!0§) as §0=§;
         if(_loc1_)
         {
            if(_loc1_.§[!6§ > 0)
            {
               (getItemByName("Button_Scroll1") as §?q§).setComponentState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §?q§).setComponentState(§`!&§.§9I§);
            }
            if(_loc1_.§[!6§ < _loc1_.§4!1§ - 1)
            {
               (getItemByName("Button_Scroll2") as §?q§).setComponentState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §?q§).setComponentState(§`!&§.§9I§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §?q§).setComponentState(§`!&§.§9I§);
            (getItemByName("Button_Scroll2") as §?q§).setComponentState(§`!&§.§9I§);
         }
      }
      
      public function §+!E§() : void
      {
         var _loc2_:§0=§ = null;
         var _loc1_:int = §3! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §3! §[_loc1_] as §0=§;
            if(_loc2_)
            {
               _loc2_.clear();
               §3! §.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§>!?§("");
      }
      
      public function §2!D§() : void
      {
         var _loc1_:§,J§ = null;
         for each(_loc1_ in this.§`!0§)
         {
            _loc1_.§2!D§();
         }
      }
      
      public function §`!,§() : Array
      {
         if(this.§,&§(this.§@!0§) == null)
         {
            §5!<§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§,&§(this.§@!0§).§8j§();
      }
      
      public function §8R§(param1:Array) : void
      {
         this.§,&§(this.§@!0§).§8R§(param1);
      }
      
      public function §0!1§(param1:Number) : void
      {
         this.§,&§(this.§@!0§).§0!1§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§7h§ = null;
         this.§`!0§ = null;
         this.§>m§ = null;
      }
   }
}
