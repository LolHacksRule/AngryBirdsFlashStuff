package §2T§
{
   import §7J§.§01§;
   import §7J§.§07§;
   import §7J§.§<!?§;
   import §7J§.§=U§;
   import §?H§.§+!B§;
   import §@!;§.§!!=§;
   import com.rovio.assets.§5R§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §#!'§ extends §&M§
   {
      
      public static const §<Z§:int = 0;
      
      public static const §-I§:int = 1;
      
      public static const §1!#§:int = 2;
       
      
      public var §'!<§:String;
      
      public var §9!D§:Class;
      
      public var §>!L§:String = null;
      
      public var §-L§:Vector.<§01§>;
      
      public var §67§:int;
      
      public var §-k§:Number;
      
      public var §?l§:Number;
      
      public var §5c§:Number;
      
      public var §?!N§:Number;
      
      public var §[!@§:Number;
      
      public var §2D§:Number;
      
      public var §9l§:Number;
      
      public var §9r§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §=3§:int;
      
      public var §,n§:Number;
      
      public var §#z§:String = "";
      
      public var § use§:int;
      
      public var §]V§:int;
      
      public var §"S§:GlowFilter;
      
      public var §?Z§:Boolean = true;
      
      public var §]!3§:int;
      
      public var § #§:int;
      
      public var §+!>§:Number = 0;
      
      public var §7!&§:Number = 0;
      
      public var §'s§:Number = 0;
      
      public var §++§:Number = 0;
      
      public var §&j§:Boolean = false;
      
      public var §0I§:Boolean = false;
      
      public var §'U§:MovieClip = null;
      
      public function §#!'§(param1:XML, param2:§&M§, param3:§+!B§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§'!<§ = param1.@button;
         if(this.§'!<§.length > 0)
         {
            this.§9!D§ = §5R§.§6+§(this.§'!<§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§>!L§ = _loc5_;
         }
         this.§ use§ = §<Z§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§ use§ = §-I§;
            }
         }
         this.§]V§ = §1!#§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§]V§ = §<Z§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§"S§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §]§.push(new §2H§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §]§.push(new §2H§(_loc18_,this));
         }
         this.§-k§ = mClip.getChildByName("Surface").x;
         this.§?l§ = mClip.getChildByName("Surface").y;
         this.§5c§ = mClip.getChildByName("Surface").width;
         this.§?!N§ = mClip.getChildByName("Surface").height;
         this.§[!@§ = mClip.getChildByName("Button_Area1").x - this.§-k§;
         this.§2D§ = mClip.getChildByName("Button_Area1").y - this.§?l§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§-k§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§?l§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§,n§ = _loc9_.bottom - this.§?l§ - this.§2D§;
         this.§9l§ = _loc7_ - this.§[!@§;
         this.§9r§ = _loc8_ - this.§2D§;
         if(Math.abs(this.§9l§) < 3)
         {
            this.§9l§ = 0;
         }
         if(Math.abs(this.§9r§) < 3)
         {
            this.§9r§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§9l§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§[!@§ - this.§[!@§) / this.§9l§;
         }
         if(this.§9r§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§2D§ - this.§2D§) / this.§9r§;
         }
         this.§67§ = Math.min(_loc10_,_loc11_);
         this.§?Z§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§]!3§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§]!3§ = this.§67§;
         }
         this.§=3§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§-k§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§?l§;
            this.mButtonMarginX2 = _loc19_ - this.§[!@§;
            this.mButtonMarginY2 = _loc20_ - this.§2D§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§?Z§)
            {
               this.§=3§ = 1 + (mClip.getChildByName("Surface").height - this.§2D§ - this.§2D§) / this.mButtonMarginY2;
            }
            else
            {
               this.§=3§ = 1 + (mClip.getChildByName("Surface").width - this.§[!@§ - this.§[!@§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§'U§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§'s§ = this.§'U§.x - mClip.getChildByName("Surface").x;
            this.§++§ = this.§'U§.y - mClip.getChildByName("Surface").y;
            this.§+!>§ = this.§'U§.x + this.§'U§.width - (this.§'U§.x + mClip.getChildByName("Surface").width);
            this.§7!&§ = this.§'U§.y + this.§'U§.height - (this.§'U§.y + mClip.getChildByName("Surface").height);
            this.§&j§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§0I§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§ #§ = §01§.§<v§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§ #§ = §01§.§?!-§;
            }
         }
         this.§>]§();
      }
      
      public function §>]§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§[!§ = null;
         var _loc8_:§01§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:include = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = include;
         }
         this.§-L§ = new Vector.<§01§>();
         this.§"!L§();
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
            _loc7_ = new §[!§(_loc6_,this,null,_loc5_);
            §]§.push(_loc7_);
            _loc8_ = new §01§(this.§ #§,_loc4_);
            this.§-L§.push(_loc8_);
            _loc9_ = this.§[!@§;
            _loc10_ = this.§67§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§]V§ == §<Z§)
            {
               _loc9_ = (this.§5c§ - (_loc10_ - 1) * this.§9l§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§]§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§]§.push(new param2(_loc12_,_loc7_,new this.§9!D§() as MovieClip));
               }
               _loc13_ = _loc7_.§]§[_loc7_.§]§.length - 1] as include;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§@r§(_loc14_,this.§>!L§);
                  if(this.§ use§ == §-I§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§>!L§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§=3§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§9l§;
                  _loc13_.y = this.§2D§ + _loc11_ * this.§9r§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§67§ * this.§=3§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§67§ * this.§=3§) / this.§67§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§67§ * this.§=3§) % this.§67§;
                  if(this.§?Z§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§9l§ + _loc16_ * this.§67§ * this.§9l§;
                     _loc13_.y = this.§2D§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§2D§ + _loc18_ * this.§9r§ + _loc16_ * this.§67§ * this.§9r§;
                  }
               }
               _loc8_.§`!0§(_loc13_);
               _loc11_++;
            }
            _loc8_.§]r§("");
            _loc7_.§8R§(this.§67§,this.§-k§,this.§?l§,this.§]!3§ * this.§9l§,this.§]!3§ * this.§9r§,this.§=3§,this.§]!3§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §5!H§() : int
      {
         return this.§67§;
      }
      
      public function get §2_§() : int
      {
         if(this.§5!H§ == 0)
         {
            return 0;
         }
         return this.§ if§(this.§#z§).§09§.length / this.§5!H§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§<!?§) : void
      {
         var _loc5_:§01§ = null;
         var _loc4_:§[!§ = getItemByName(this.§#z§) as §[!§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§0L§(_loc4_.§6q§ - 1);
               this.§case §();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§0L§(_loc4_.§6q§ + 1);
               this.§case §();
            }
         }
         else if(param2.length > 0 && (param1 == §<!?§.LISTENER_EVENT_MOUSE_DOWN || param1 == §<!?§.LISTENER_EVENT_MOUSE_UP) && param3 is §07§)
         {
            if((_loc5_ = this.§ if§((param3 as §07§).mParentContainer.mName.toUpperCase())) && param3 is include)
            {
               _loc5_.§]r§((param3 as §07§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §>i§(param1:String, param2:int) : void
      {
         var _loc3_:§[!§ = getItemByName(param1) as §[!§;
         if(_loc3_)
         {
            _loc3_.§0L§(param2);
            this.§case §();
         }
      }
      
      public function § if§(param1:String) : §01§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-L§.length)
         {
            if(param1.toUpperCase() == (this.§-L§[_loc2_] as §01§).mName.toUpperCase())
            {
               return this.§-L§[_loc2_] as §01§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §2e§(param1:String) : void
      {
         this.§#z§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §]§.length)
         {
            if(§]§[_loc2_] is §[!§)
            {
               if((§]§[_loc2_] as §[!§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§]§[_loc2_] as §[!§).setActiveStatus(true);
                  if(this.§&j§)
                  {
                     this.§'U§.x = (§]§[_loc2_] as §[!§).x + this.§'s§;
                     this.§'U§.width = (§]§[_loc2_] as §[!§).width + this.§+!>§;
                  }
                  if(this.§0I§)
                  {
                     this.§'U§.y = (§]§[_loc2_] as §[!§).y + this.§++§;
                     this.§'U§.height = (§]§[_loc2_] as §[!§).height + this.§7!&§;
                  }
               }
               else
               {
                  (§]§[_loc2_] as §[!§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§case §();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§01§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§-L§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §case §() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§[!§ = getItemByName(this.§#z§) as §[!§;
         if(_loc1_)
         {
            if(_loc1_.§6q§ > 0)
            {
               (getItemByName("Button_Scroll1") as §2H§).setComponentState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §2H§).setComponentState(§=U§.§ S§);
            }
            if(_loc1_.§6q§ < _loc1_.§3!1§ - 1)
            {
               (getItemByName("Button_Scroll2") as §2H§).setComponentState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §2H§).setComponentState(§=U§.§ S§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §2H§).setComponentState(§=U§.§ S§);
            (getItemByName("Button_Scroll2") as §2H§).setComponentState(§=U§.§ S§);
         }
      }
      
      public function §"!L§() : void
      {
         var _loc2_:§[!§ = null;
         var _loc1_:int = §]§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §]§[_loc1_] as §[!§;
            if(_loc2_)
            {
               _loc2_.clear();
               §]§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§2e§("");
      }
      
      public function §8A§() : void
      {
         var _loc1_:§01§ = null;
         for each(_loc1_ in this.§-L§)
         {
            _loc1_.§8A§();
         }
      }
      
      public function §^!"§() : Array
      {
         if(this.§ if§(this.§#z§) == null)
         {
            §!!=§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§ if§(this.§#z§).§=!;§();
      }
      
      public function §^J§(param1:Array) : void
      {
         this.§ if§(this.§#z§).§^J§(param1);
      }
      
      public function §'q§(param1:Number) : void
      {
         this.§ if§(this.§#z§).§'q§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§9!D§ = null;
         this.§-L§ = null;
         this.§"S§ = null;
      }
   }
}
