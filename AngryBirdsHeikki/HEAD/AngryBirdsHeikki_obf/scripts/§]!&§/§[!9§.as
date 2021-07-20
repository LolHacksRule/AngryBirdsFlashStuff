package §]!&§
{
   import §&!b§.§ c§;
   import §+!M§.§#!-§;
   import §+!M§.§7!0§;
   import §+!M§.§^<§;
   import §+!M§.§`q§;
   import §-!f§.§ else§;
   import §?v§.§&!h§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §[!9§ extends §5!5§
   {
      
      public static const §]![§:int = 0;
      
      public static const §8o§:int = 1;
      
      public static const §1!&§:int = 2;
       
      
      public var §,![§:String;
      
      public var §;!6§:Class;
      
      public var §"J§:String = null;
      
      public var §<!I§:Vector.<§#!-§>;
      
      public var §48§:int;
      
      public var §0!A§:Number;
      
      public var §`Y§:Number;
      
      public var §@j§:Number;
      
      public var §@m§:Number;
      
      public var §%k§:Number;
      
      public var §!U§:Number;
      
      public var §#!T§:Number;
      
      public var §3!Q§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §3u§:int;
      
      public var §3;§:Number;
      
      public var §[S§:String = "";
      
      public var §!!G§:int;
      
      public var §4R§:int;
      
      public var §"!0§:GlowFilter;
      
      public var §5! §:Boolean = true;
      
      public var §2V§:int;
      
      public var §2N§:int;
      
      public var §^!$§:Number = 0;
      
      public var §;!V§:Number = 0;
      
      public var §&!Q§:Number = 0;
      
      public var §"s§:Number = 0;
      
      public var §5!^§:Boolean = false;
      
      public var §[p§:Boolean = false;
      
      public var §#V§:MovieClip = null;
      
      public function §[!9§(param1:XML, param2:§5!5§, param3:§ else§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§,![§ = param1.@button;
         if(this.§,![§.length > 0)
         {
            this.§;!6§ = §&!h§.§#Q§(this.§,![§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§"J§ = _loc5_;
         }
         this.§!!G§ = §]![§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§!!G§ = §8o§;
            }
         }
         this.§4R§ = §1!&§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§4R§ = §]![§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§"!0§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §@!F§.push(new §^!g§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §@!F§.push(new §^!g§(_loc18_,this));
         }
         this.§0!A§ = mClip.getChildByName("Surface").x;
         this.§`Y§ = mClip.getChildByName("Surface").y;
         this.§@j§ = mClip.getChildByName("Surface").width;
         this.§@m§ = mClip.getChildByName("Surface").height;
         this.§%k§ = mClip.getChildByName("Button_Area1").x - this.§0!A§;
         this.§!U§ = mClip.getChildByName("Button_Area1").y - this.§`Y§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§0!A§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§`Y§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§3;§ = _loc9_.bottom - this.§`Y§ - this.§!U§;
         this.§#!T§ = _loc7_ - this.§%k§;
         this.§3!Q§ = _loc8_ - this.§!U§;
         if(Math.abs(this.§#!T§) < 3)
         {
            this.§#!T§ = 0;
         }
         if(Math.abs(this.§3!Q§) < 3)
         {
            this.§3!Q§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§#!T§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§%k§ - this.§%k§) / this.§#!T§;
         }
         if(this.§3!Q§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§!U§ - this.§!U§) / this.§3!Q§;
         }
         this.§48§ = Math.min(_loc10_,_loc11_);
         this.§5! § = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§2V§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§2V§ = this.§48§;
         }
         this.§3u§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§0!A§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§`Y§;
            this.mButtonMarginX2 = _loc19_ - this.§%k§;
            this.mButtonMarginY2 = _loc20_ - this.§!U§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§5! §)
            {
               this.§3u§ = 1 + (mClip.getChildByName("Surface").height - this.§!U§ - this.§!U§) / this.mButtonMarginY2;
            }
            else
            {
               this.§3u§ = 1 + (mClip.getChildByName("Surface").width - this.§%k§ - this.§%k§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§#V§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§&!Q§ = this.§#V§.x - mClip.getChildByName("Surface").x;
            this.§"s§ = this.§#V§.y - mClip.getChildByName("Surface").y;
            this.§^!$§ = this.§#V§.x + this.§#V§.width - (this.§#V§.x + mClip.getChildByName("Surface").width);
            this.§;!V§ = this.§#V§.y + this.§#V§.height - (this.§#V§.y + mClip.getChildByName("Surface").height);
            this.§5!^§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§[p§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§2N§ = §#!-§.§1B§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§2N§ = §#!-§.§ !E§;
            }
         }
         this.§8[§();
      }
      
      public function §8[§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§9N§ = null;
         var _loc8_:§#!-§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§,!"§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §,!"§;
         }
         this.§<!I§ = new Vector.<§#!-§>();
         this.§]x§();
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
            _loc7_ = new §9N§(_loc6_,this,null,_loc5_);
            §@!F§.push(_loc7_);
            _loc8_ = new §#!-§(this.§2N§,_loc4_);
            this.§<!I§.push(_loc8_);
            _loc9_ = this.§%k§;
            _loc10_ = this.§48§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§4R§ == §]![§)
            {
               _loc9_ = (this.§@j§ - (_loc10_ - 1) * this.§#!T§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§@!F§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§@!F§.push(new param2(_loc12_,_loc7_,new this.§;!6§() as MovieClip));
               }
               _loc13_ = _loc7_.§@!F§[_loc7_.§@!F§.length - 1] as §,!"§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§%!h§(_loc14_,this.§"J§);
                  if(this.§!!G§ == §8o§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§"J§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§3u§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§#!T§;
                  _loc13_.y = this.§!U§ + _loc11_ * this.§3!Q§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§48§ * this.§3u§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§48§ * this.§3u§) / this.§48§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§48§ * this.§3u§) % this.§48§;
                  if(this.§5! §)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§#!T§ + _loc16_ * this.§48§ * this.§#!T§;
                     _loc13_.y = this.§!U§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§!U§ + _loc18_ * this.§3!Q§ + _loc16_ * this.§48§ * this.§3!Q§;
                  }
               }
               _loc8_.§2!3§(_loc13_);
               _loc11_++;
            }
            _loc8_.§1!L§("");
            _loc7_.§^!f§(this.§48§,this.§0!A§,this.§`Y§,this.§2V§ * this.§#!T§,this.§2V§ * this.§3!Q§,this.§3u§,this.§2V§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §><§() : int
      {
         return this.§48§;
      }
      
      public function get §`j§() : int
      {
         if(this.§><§ == 0)
         {
            return 0;
         }
         return this.§4i§(this.§[S§).§[2§.length / this.§><§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§7!0§) : void
      {
         var _loc5_:§#!-§ = null;
         var _loc4_:§9N§ = getItemByName(this.§[S§) as §9N§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§!0§(_loc4_.§1b§ - 1);
               this.§3!-§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§!0§(_loc4_.§1b§ + 1);
               this.§3!-§();
            }
         }
         else if(param2.length > 0 && (param1 == §7!0§.LISTENER_EVENT_MOUSE_DOWN || param1 == §7!0§.LISTENER_EVENT_MOUSE_UP) && param3 is §`q§)
         {
            if((_loc5_ = this.§4i§((param3 as §`q§).mParentContainer.mName.toUpperCase())) && param3 is §,!"§)
            {
               _loc5_.§1!L§((param3 as §`q§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §'q§(param1:String, param2:int) : void
      {
         var _loc3_:§9N§ = getItemByName(param1) as §9N§;
         if(_loc3_)
         {
            _loc3_.§!0§(param2);
            this.§3!-§();
         }
      }
      
      public function §4i§(param1:String) : §#!-§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!I§.length)
         {
            if(param1.toUpperCase() == (this.§<!I§[_loc2_] as §#!-§).mName.toUpperCase())
            {
               return this.§<!I§[_loc2_] as §#!-§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §+!1§(param1:String) : void
      {
         this.§[S§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §@!F§.length)
         {
            if(§@!F§[_loc2_] is §9N§)
            {
               if((§@!F§[_loc2_] as §9N§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§@!F§[_loc2_] as §9N§).setActiveStatus(true);
                  if(this.§5!^§)
                  {
                     this.§#V§.x = (§@!F§[_loc2_] as §9N§).x + this.§&!Q§;
                     this.§#V§.width = (§@!F§[_loc2_] as §9N§).width + this.§^!$§;
                  }
                  if(this.§[p§)
                  {
                     this.§#V§.y = (§@!F§[_loc2_] as §9N§).y + this.§"s§;
                     this.§#V§.height = (§@!F§[_loc2_] as §9N§).height + this.§;!V§;
                  }
               }
               else
               {
                  (§@!F§[_loc2_] as §9N§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§3!-§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§#!-§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§<!I§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §3!-§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§9N§ = getItemByName(this.§[S§) as §9N§;
         if(_loc1_)
         {
            if(_loc1_.§1b§ > 0)
            {
               (getItemByName("Button_Scroll1") as §^!g§).setComponentState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §^!g§).setComponentState(§^<§.§-!O§);
            }
            if(_loc1_.§1b§ < _loc1_.§0;§ - 1)
            {
               (getItemByName("Button_Scroll2") as §^!g§).setComponentState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §^!g§).setComponentState(§^<§.§-!O§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §^!g§).setComponentState(§^<§.§-!O§);
            (getItemByName("Button_Scroll2") as §^!g§).setComponentState(§^<§.§-!O§);
         }
      }
      
      public function §]x§() : void
      {
         var _loc2_:§9N§ = null;
         var _loc1_:int = §@!F§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §@!F§[_loc1_] as §9N§;
            if(_loc2_)
            {
               _loc2_.clear();
               §@!F§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§+!1§("");
      }
      
      public function §7I§() : void
      {
         var _loc1_:§#!-§ = null;
         for each(_loc1_ in this.§<!I§)
         {
            _loc1_.§7I§();
         }
      }
      
      public function §+!`§() : Array
      {
         if(this.§4i§(this.§[S§) == null)
         {
            § c§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§4i§(this.§[S§).§>G§();
      }
      
      public function §3!V§(param1:Array) : void
      {
         this.§4i§(this.§[S§).§3!V§(param1);
      }
      
      public function §4>§(param1:Number) : void
      {
         this.§4i§(this.§[S§).§4>§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§;!6§ = null;
         this.§<!I§ = null;
         this.§"!0§ = null;
      }
   }
}
