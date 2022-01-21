package §>G§
{
   import §"%§.§+!&§;
   import §"%§.§,!n§;
   import §"%§.§9E§;
   import §"%§.§9j§;
   import §7!d§.§'!5§;
   import §=<§.§1+§;
   import §@`§.§>!S§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §>U§ extends §]f§
   {
      
      public static const §!]§:int = 0;
      
      public static const §2!b§:int = 1;
      
      public static const §%!$§:int = 2;
       
      
      public var §^j§:String;
      
      public var §71§:Class;
      
      public var §=$§:String = null;
      
      public var §'t§:Vector.<§9E§>;
      
      public var §,Y§:int;
      
      public var §&t§:Number;
      
      public var §2N§:Number;
      
      public var §?!K§:Number;
      
      public var §>!I§:Number;
      
      public var §+y§:Number;
      
      public var §5!W§:Number;
      
      public var §&o§:Number;
      
      public var §8W§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §"m§:int;
      
      public var §>0§:Number;
      
      public var §5!J§:String = "";
      
      public var §?!l§:int;
      
      public var §]X§:int;
      
      public var §+i§:GlowFilter;
      
      public var §"d§:Boolean = true;
      
      public var §5C§:int;
      
      public var §]]§:int;
      
      public var §7!b§:Number = 0;
      
      public var §^!S§:Number = 0;
      
      public var §'G§:Number = 0;
      
      public var §]s§:Number = 0;
      
      public var §5!`§:Boolean = false;
      
      public var §!`§:Boolean = false;
      
      public var §!!4§:MovieClip = null;
      
      public function §>U§(param1:XML, param2:§]f§, param3:§>!S§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§^j§ = param1.@button;
         if(this.§^j§.length > 0)
         {
            this.§71§ = §'!5§.§-!P§(this.§^j§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§=$§ = _loc5_;
         }
         this.§?!l§ = §!]§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§?!l§ = §2!b§;
            }
         }
         this.§]X§ = §%!$§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§]X§ = §!]§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§+i§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §17§.push(new §0Q§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §17§.push(new §0Q§(_loc18_,this));
         }
         this.§&t§ = mClip.getChildByName("Surface").x;
         this.§2N§ = mClip.getChildByName("Surface").y;
         this.§?!K§ = mClip.getChildByName("Surface").width;
         this.§>!I§ = mClip.getChildByName("Surface").height;
         this.§+y§ = mClip.getChildByName("Button_Area1").x - this.§&t§;
         this.§5!W§ = mClip.getChildByName("Button_Area1").y - this.§2N§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§&t§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§2N§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§>0§ = _loc9_.bottom - this.§2N§ - this.§5!W§;
         this.§&o§ = _loc7_ - this.§+y§;
         this.§8W§ = _loc8_ - this.§5!W§;
         if(Math.abs(this.§&o§) < 3)
         {
            this.§&o§ = 0;
         }
         if(Math.abs(this.§8W§) < 3)
         {
            this.§8W§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§&o§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§+y§ - this.§+y§) / this.§&o§;
         }
         if(this.§8W§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§5!W§ - this.§5!W§) / this.§8W§;
         }
         this.§,Y§ = Math.min(_loc10_,_loc11_);
         this.§"d§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§5C§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§5C§ = this.§,Y§;
         }
         this.§"m§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§&t§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§2N§;
            this.mButtonMarginX2 = _loc19_ - this.§+y§;
            this.mButtonMarginY2 = _loc20_ - this.§5!W§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§"d§)
            {
               this.§"m§ = 1 + (mClip.getChildByName("Surface").height - this.§5!W§ - this.§5!W§) / this.mButtonMarginY2;
            }
            else
            {
               this.§"m§ = 1 + (mClip.getChildByName("Surface").width - this.§+y§ - this.§+y§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§!!4§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§'G§ = this.§!!4§.x - mClip.getChildByName("Surface").x;
            this.§]s§ = this.§!!4§.y - mClip.getChildByName("Surface").y;
            this.§7!b§ = this.§!!4§.x + this.§!!4§.width - (this.§!!4§.x + mClip.getChildByName("Surface").width);
            this.§^!S§ = this.§!!4§.y + this.§!!4§.height - (this.§!!4§.y + mClip.getChildByName("Surface").height);
            this.§5!`§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§!`§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§]]§ = §9E§.§0![§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§]]§ = §9E§.§6!9§;
            }
         }
         this.§;!I§();
      }
      
      public function §;!I§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§<w§ = null;
         var _loc8_:§9E§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§!Z§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §!Z§;
         }
         this.§'t§ = new Vector.<§9E§>();
         this.§=!?§();
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
            _loc7_ = new §<w§(_loc6_,this,null,_loc5_);
            §17§.push(_loc7_);
            _loc8_ = new §9E§(this.§]]§,_loc4_);
            this.§'t§.push(_loc8_);
            _loc9_ = this.§+y§;
            _loc10_ = this.§,Y§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§]X§ == §!]§)
            {
               _loc9_ = (this.§?!K§ - (_loc10_ - 1) * this.§&o§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§17§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§17§.push(new param2(_loc12_,_loc7_,new this.§71§() as MovieClip));
               }
               _loc13_ = _loc7_.§17§[_loc7_.§17§.length - 1] as §!Z§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§'3§(_loc14_,this.§=$§);
                  if(this.§?!l§ == §2!b§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§=$§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§"m§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§&o§;
                  _loc13_.y = this.§5!W§ + _loc11_ * this.§8W§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§,Y§ * this.§"m§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§,Y§ * this.§"m§) / this.§,Y§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§,Y§ * this.§"m§) % this.§,Y§;
                  if(this.§"d§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§&o§ + _loc16_ * this.§,Y§ * this.§&o§;
                     _loc13_.y = this.§5!W§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§5!W§ + _loc18_ * this.§8W§ + _loc16_ * this.§,Y§ * this.§8W§;
                  }
               }
               _loc8_.§`j§(_loc13_);
               _loc11_++;
            }
            _loc8_.§1!O§("");
            _loc7_.§&!W§(this.§,Y§,this.§&t§,this.§2N§,this.§5C§ * this.§&o§,this.§5C§ * this.§8W§,this.§"m§,this.§5C§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §;,§() : int
      {
         return this.§,Y§;
      }
      
      public function get §3!F§() : int
      {
         if(this.§;,§ == 0)
         {
            return 0;
         }
         return this.§9!h§(this.§5!J§).§83§.length / this.§;,§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§,!n§) : void
      {
         var _loc5_:§9E§ = null;
         var _loc4_:§<w§ = getItemByName(this.§5!J§) as §<w§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§<J§(_loc4_.§9!`§ - 1);
               this.§#!_§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§<J§(_loc4_.§9!`§ + 1);
               this.§#!_§();
            }
         }
         else if(param2.length > 0 && (param1 == §,!n§.LISTENER_EVENT_MOUSE_DOWN || param1 == §,!n§.LISTENER_EVENT_MOUSE_UP) && param3 is §+!&§)
         {
            if((_loc5_ = this.§9!h§((param3 as §+!&§).mParentContainer.mName.toUpperCase())) && param3 is §!Z§)
            {
               _loc5_.§1!O§((param3 as §+!&§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §`!"§(param1:String, param2:int) : void
      {
         var _loc3_:§<w§ = getItemByName(param1) as §<w§;
         if(_loc3_)
         {
            _loc3_.§<J§(param2);
            this.§#!_§();
         }
      }
      
      public function §9!h§(param1:String) : §9E§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§'t§.length)
         {
            if(param1.toUpperCase() == (this.§'t§[_loc2_] as §9E§).mName.toUpperCase())
            {
               return this.§'t§[_loc2_] as §9E§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §;!N§(param1:String) : void
      {
         this.§5!J§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §17§.length)
         {
            if(§17§[_loc2_] is §<w§)
            {
               if((§17§[_loc2_] as §<w§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§17§[_loc2_] as §<w§).setActiveStatus(true);
                  if(this.§5!`§)
                  {
                     this.§!!4§.x = (§17§[_loc2_] as §<w§).x + this.§'G§;
                     this.§!!4§.width = (§17§[_loc2_] as §<w§).width + this.§7!b§;
                  }
                  if(this.§!`§)
                  {
                     this.§!!4§.y = (§17§[_loc2_] as §<w§).y + this.§]s§;
                     this.§!!4§.height = (§17§[_loc2_] as §<w§).height + this.§^!S§;
                  }
               }
               else
               {
                  (§17§[_loc2_] as §<w§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§#!_§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§9E§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§'t§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §#!_§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§<w§ = getItemByName(this.§5!J§) as §<w§;
         if(_loc1_)
         {
            if(_loc1_.§9!`§ > 0)
            {
               (getItemByName("Button_Scroll1") as §0Q§).setComponentState(§9j§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §0Q§).setComponentState(§9j§.§^^§);
            }
            if(_loc1_.§9!`§ < _loc1_.§ !J§ - 1)
            {
               (getItemByName("Button_Scroll2") as §0Q§).setComponentState(§9j§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §0Q§).setComponentState(§9j§.§^^§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §0Q§).setComponentState(§9j§.§^^§);
            (getItemByName("Button_Scroll2") as §0Q§).setComponentState(§9j§.§^^§);
         }
      }
      
      public function §=!?§() : void
      {
         var _loc2_:§<w§ = null;
         var _loc1_:int = §17§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §17§[_loc1_] as §<w§;
            if(_loc2_)
            {
               _loc2_.clear();
               §17§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§;!N§("");
      }
      
      public function §2i§() : void
      {
         var _loc1_:§9E§ = null;
         for each(_loc1_ in this.§'t§)
         {
            _loc1_.§2i§();
         }
      }
      
      public function § !L§() : Array
      {
         if(this.§9!h§(this.§5!J§) == null)
         {
            §1+§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§9!h§(this.§5!J§).§,!5§();
      }
      
      public function §6!#§(param1:Array) : void
      {
         this.§9!h§(this.§5!J§).§6!#§(param1);
      }
      
      public function §7R§(param1:Number) : void
      {
         this.§9!h§(this.§5!J§).§7R§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§71§ = null;
         this.§'t§ = null;
         this.§+i§ = null;
      }
   }
}
