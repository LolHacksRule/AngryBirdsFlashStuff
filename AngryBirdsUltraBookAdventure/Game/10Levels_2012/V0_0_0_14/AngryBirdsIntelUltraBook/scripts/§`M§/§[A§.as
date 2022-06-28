package §`M§
{
   import §1n§.§ C§;
   import §6z§.§[g§;
   import §=R§.§&W§;
   import §=R§.§5!a§;
   import §=R§.§6!M§;
   import §=R§.§7!"§;
   import com.rovio.assets.§9!N§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §[A§ extends §9!#§
   {
      
      public static const §,N§:int = 0;
      
      public static const §%P§:int = 1;
      
      public static const §;!r§:int = 2;
       
      
      public var §]!0§:String;
      
      public var §3&§:Class;
      
      public var §<!$§:String = null;
      
      public var §&z§:Vector.<§6!M§>;
      
      public var §+!n§:int;
      
      public var §@^§:Number;
      
      public var §?!B§:Number;
      
      public var §#!I§:Number;
      
      public var §%F§:Number;
      
      public var §<p§:Number;
      
      public var §@!l§:Number;
      
      public var §1!n§:Number;
      
      public var § !$§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §8f§:int;
      
      public var § !P§:Number;
      
      public var §[N§:String = "";
      
      public var §,[§:int;
      
      public var §""§:int;
      
      public var § !Q§:GlowFilter;
      
      public var §=b§:Boolean = true;
      
      public var §>! §:int;
      
      public var §<!Z§:int;
      
      public var §``§:Number = 0;
      
      public var §40§:Number = 0;
      
      public var §!f§:Number = 0;
      
      public var §''§:Number = 0;
      
      public var §`@§:Boolean = false;
      
      public var §5!Q§:Boolean = false;
      
      public var §<J§:MovieClip = null;
      
      public function §[A§(param1:XML, param2:§9!#§, param3:§ C§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§]!0§ = param1.@button;
         if(this.§]!0§.length > 0)
         {
            this.§3&§ = §9!N§.§0!k§(this.§]!0§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§<!$§ = _loc5_;
         }
         this.§,[§ = §,N§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§,[§ = §%P§;
            }
         }
         this.§""§ = §;!r§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§""§ = §,N§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§ !Q§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §0!i§.push(new §,c§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §0!i§.push(new §,c§(_loc18_,this));
         }
         this.§@^§ = mClip.getChildByName("Surface").x;
         this.§?!B§ = mClip.getChildByName("Surface").y;
         this.§#!I§ = mClip.getChildByName("Surface").width;
         this.§%F§ = mClip.getChildByName("Surface").height;
         this.§<p§ = mClip.getChildByName("Button_Area1").x - this.§@^§;
         this.§@!l§ = mClip.getChildByName("Button_Area1").y - this.§?!B§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§@^§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§?!B§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§ !P§ = _loc9_.bottom - this.§?!B§ - this.§@!l§;
         this.§1!n§ = _loc7_ - this.§<p§;
         this.§ !$§ = _loc8_ - this.§@!l§;
         if(Math.abs(this.§1!n§) < 3)
         {
            this.§1!n§ = 0;
         }
         if(Math.abs(this.§ !$§) < 3)
         {
            this.§ !$§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§1!n§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§<p§ - this.§<p§) / this.§1!n§;
         }
         if(this.§ !$§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§@!l§ - this.§@!l§) / this.§ !$§;
         }
         this.§+!n§ = Math.min(_loc10_,_loc11_);
         this.§=b§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§>! § = param1.@ScrollPerClick;
         }
         else
         {
            this.§>! § = this.§+!n§;
         }
         this.§8f§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§@^§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§?!B§;
            this.mButtonMarginX2 = _loc19_ - this.§<p§;
            this.mButtonMarginY2 = _loc20_ - this.§@!l§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§=b§)
            {
               this.§8f§ = 1 + (mClip.getChildByName("Surface").height - this.§@!l§ - this.§@!l§) / this.mButtonMarginY2;
            }
            else
            {
               this.§8f§ = 1 + (mClip.getChildByName("Surface").width - this.§<p§ - this.§<p§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§<J§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§!f§ = this.§<J§.x - mClip.getChildByName("Surface").x;
            this.§''§ = this.§<J§.y - mClip.getChildByName("Surface").y;
            this.§``§ = this.§<J§.x + this.§<J§.width - (this.§<J§.x + mClip.getChildByName("Surface").width);
            this.§40§ = this.§<J§.y + this.§<J§.height - (this.§<J§.y + mClip.getChildByName("Surface").height);
            this.§`@§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§5!Q§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§<!Z§ = §6!M§.§8!"§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§<!Z§ = §6!M§.§8A§;
            }
         }
         this.§@!+§();
      }
      
      public function §@!+§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§"W§ = null;
         var _loc8_:§6!M§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§>g§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §>g§;
         }
         this.§&z§ = new Vector.<§6!M§>();
         this.§!!5§();
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
            _loc7_ = new §"W§(_loc6_,this,null,_loc5_);
            §0!i§.push(_loc7_);
            _loc8_ = new §6!M§(this.§<!Z§,_loc4_);
            this.§&z§.push(_loc8_);
            _loc9_ = this.§<p§;
            _loc10_ = this.§+!n§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§""§ == §,N§)
            {
               _loc9_ = (this.§#!I§ - (_loc10_ - 1) * this.§1!n§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§0!i§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§0!i§.push(new param2(_loc12_,_loc7_,new this.§3&§() as MovieClip));
               }
               _loc13_ = _loc7_.§0!i§[_loc7_.§0!i§.length - 1] as §>g§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§<!$§);
                  if(this.§,[§ == §%P§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§<!$§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§8f§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§1!n§;
                  _loc13_.y = this.§@!l§ + _loc11_ * this.§ !$§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§+!n§ * this.§8f§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§+!n§ * this.§8f§) / this.§+!n§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§+!n§ * this.§8f§) % this.§+!n§;
                  if(this.§=b§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§1!n§ + _loc16_ * this.§+!n§ * this.§1!n§;
                     _loc13_.y = this.§@!l§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§@!l§ + _loc18_ * this.§ !$§ + _loc16_ * this.§+!n§ * this.§ !$§;
                  }
               }
               _loc8_.§=v§(_loc13_);
               _loc11_++;
            }
            _loc8_.§`?§("");
            _loc7_.§'"§(this.§+!n§,this.§@^§,this.§?!B§,this.§>! § * this.§1!n§,this.§>! § * this.§ !$§,this.§8f§,this.§>! §);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §3!D§() : int
      {
         return this.§+!n§;
      }
      
      public function get §@<§() : int
      {
         if(this.§3!D§ == 0)
         {
            return 0;
         }
         return this.§1l§(this.§[N§).§2m§.length / this.§3!D§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc5_:§6!M§ = null;
         var _loc4_:§"W§ = getItemByName(this.§[N§) as §"W§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§=!_§(_loc4_.§7O§ - 1);
               this.§%E§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§=!_§(_loc4_.§7O§ + 1);
               this.§%E§();
            }
         }
         else if(param2.length > 0 && (param1 == §7!"§.LISTENER_EVENT_MOUSE_DOWN || param1 == §7!"§.LISTENER_EVENT_MOUSE_UP) && param3 is §&W§)
         {
            if((_loc5_ = this.§1l§((param3 as §&W§).mParentContainer.mName.toUpperCase())) && param3 is §>g§)
            {
               _loc5_.§`?§((param3 as §&W§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function § !%§(param1:String, param2:int) : void
      {
         var _loc3_:§"W§ = getItemByName(param1) as §"W§;
         if(_loc3_)
         {
            _loc3_.§=!_§(param2);
            this.§%E§();
         }
      }
      
      public function §1l§(param1:String) : §6!M§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&z§.length)
         {
            if(param1.toUpperCase() == (this.§&z§[_loc2_] as §6!M§).mName.toUpperCase())
            {
               return this.§&z§[_loc2_] as §6!M§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §69§(param1:String) : void
      {
         this.§[N§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §0!i§.length)
         {
            if(§0!i§[_loc2_] is §"W§)
            {
               if((§0!i§[_loc2_] as §"W§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§0!i§[_loc2_] as §"W§).setActiveStatus(true);
                  if(this.§`@§)
                  {
                     this.§<J§.x = (§0!i§[_loc2_] as §"W§).x + this.§!f§;
                     this.§<J§.width = (§0!i§[_loc2_] as §"W§).width + this.§``§;
                  }
                  if(this.§5!Q§)
                  {
                     this.§<J§.y = (§0!i§[_loc2_] as §"W§).y + this.§''§;
                     this.§<J§.height = (§0!i§[_loc2_] as §"W§).height + this.§40§;
                  }
               }
               else
               {
                  (§0!i§[_loc2_] as §"W§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§%E§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§6!M§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§&z§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §%E§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§"W§ = getItemByName(this.§[N§) as §"W§;
         if(_loc1_)
         {
            if(_loc1_.§7O§ > 0)
            {
               (getItemByName("Button_Scroll1") as §,c§).setComponentState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §,c§).setComponentState(§5!a§.§-n§);
            }
            if(_loc1_.§7O§ < _loc1_.§<!Y§ - 1)
            {
               (getItemByName("Button_Scroll2") as §,c§).setComponentState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §,c§).setComponentState(§5!a§.§-n§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §,c§).setComponentState(§5!a§.§-n§);
            (getItemByName("Button_Scroll2") as §,c§).setComponentState(§5!a§.§-n§);
         }
      }
      
      public function §!!5§() : void
      {
         var _loc2_:§"W§ = null;
         var _loc1_:int = §0!i§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §0!i§[_loc1_] as §"W§;
            if(_loc2_)
            {
               _loc2_.clear();
               §0!i§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§69§("");
      }
      
      public function §6!m§() : void
      {
         var _loc1_:§6!M§ = null;
         for each(_loc1_ in this.§&z§)
         {
            _loc1_.§6!m§();
         }
      }
      
      public function §^!q§() : Array
      {
         if(this.§1l§(this.§[N§) == null)
         {
            §[g§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§1l§(this.§[N§).§'<§();
      }
      
      public function §@!1§(param1:Array) : void
      {
         this.§1l§(this.§[N§).§@!1§(param1);
      }
      
      public function §4U§(param1:Number) : void
      {
         this.§1l§(this.§[N§).§4U§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§3&§ = null;
         this.§&z§ = null;
         this.§ !Q§ = null;
      }
   }
}
