package §""d§
{
   import §0"I§.§5!s§;
   import §4##§.§5!9§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §4##§.§]!I§;
   import §^!`§.§6"!§;
   import com.rovio.assets.§5"]§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §>"x§ extends §,m§
   {
      
      public static const §"!p§:int = 0;
      
      public static const §<p§:int = 1;
      
      public static const §]"k§:int = 2;
       
      
      public var §9S§:String;
      
      public var §9"^§:Class;
      
      public var §6#'§:String = null;
      
      public var §,!n§:Vector.<§]!I§>;
      
      public var §;!T§:int;
      
      public var §!"5§:Number;
      
      public var §-+§:Number;
      
      public var §]M§:Number;
      
      public var §^C§:Number;
      
      public var §6!h§:Number;
      
      public var §6!5§:Number;
      
      public var §#y§:Number;
      
      public var §8#'§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §2"j§:int;
      
      public var §8!^§:Number;
      
      public var §1#,§:String = "";
      
      public var §?k§:int;
      
      public var §!b§:int;
      
      public var §1!D§:GlowFilter;
      
      public var §!![§:Boolean = true;
      
      public var §6"L§:int;
      
      public var §=!M§:int;
      
      public var §,"&§:Number = 0;
      
      public var §[!=§:Number = 0;
      
      public var §3!j§:Number = 0;
      
      public var §!">§:Number = 0;
      
      public var §6"D§:Boolean = false;
      
      public var §1!y§:Boolean = false;
      
      public var §0#'§:MovieClip = null;
      
      public function §>"x§(param1:XML, param2:§,m§, param3:§6"!§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§9S§ = param1.@button;
         if(this.§9S§.length > 0)
         {
            this.§9"^§ = §5"]§.§4!K§(this.§9S§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§6#'§ = _loc5_;
         }
         this.§?k§ = §"!p§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§?k§ = §<p§;
            }
         }
         this.§!b§ = §]"k§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§!b§ = §"!p§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§1!D§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §+!C§.push(new §2"8§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §+!C§.push(new §2"8§(_loc18_,this));
         }
         this.§!"5§ = mClip.getChildByName("Surface").x;
         this.§-+§ = mClip.getChildByName("Surface").y;
         this.§]M§ = mClip.getChildByName("Surface").width;
         this.§^C§ = mClip.getChildByName("Surface").height;
         this.§6!h§ = mClip.getChildByName("Button_Area1").x - this.§!"5§;
         this.§6!5§ = mClip.getChildByName("Button_Area1").y - this.§-+§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§!"5§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§-+§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§8!^§ = _loc9_.bottom - this.§-+§ - this.§6!5§;
         this.§#y§ = _loc7_ - this.§6!h§;
         this.§8#'§ = _loc8_ - this.§6!5§;
         if(Math.abs(this.§#y§) < 3)
         {
            this.§#y§ = 0;
         }
         if(Math.abs(this.§8#'§) < 3)
         {
            this.§8#'§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§#y§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§6!h§ - this.§6!h§) / this.§#y§;
         }
         if(this.§8#'§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§6!5§ - this.§6!5§) / this.§8#'§;
         }
         this.§;!T§ = Math.min(_loc10_,_loc11_);
         this.§!![§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§6"L§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§6"L§ = this.§;!T§;
         }
         this.§2"j§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§!"5§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§-+§;
            this.mButtonMarginX2 = _loc19_ - this.§6!h§;
            this.mButtonMarginY2 = _loc20_ - this.§6!5§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§!![§)
            {
               this.§2"j§ = 1 + (mClip.getChildByName("Surface").height - this.§6!5§ - this.§6!5§) / this.mButtonMarginY2;
            }
            else
            {
               this.§2"j§ = 1 + (mClip.getChildByName("Surface").width - this.§6!h§ - this.§6!h§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§0#'§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§3!j§ = this.§0#'§.x - mClip.getChildByName("Surface").x;
            this.§!">§ = this.§0#'§.y - mClip.getChildByName("Surface").y;
            this.§,"&§ = this.§0#'§.x + this.§0#'§.width - (this.§0#'§.x + mClip.getChildByName("Surface").width);
            this.§[!=§ = this.§0#'§.y + this.§0#'§.height - (this.§0#'§.y + mClip.getChildByName("Surface").height);
            this.§6"D§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§1!y§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§=!M§ = §]!I§.§&A§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§=!M§ = §]!I§.§[!4§;
            }
         }
         this.§+!1§();
      }
      
      public function §+!1§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§!!s§ = null;
         var _loc8_:§]!I§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§96§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §96§;
         }
         this.§,!n§ = new Vector.<§]!I§>();
         this.§^t§();
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
            _loc7_ = new §!!s§(_loc6_,this,null,_loc5_);
            §+!C§.push(_loc7_);
            _loc8_ = new §]!I§(this.§=!M§,_loc4_);
            this.§,!n§.push(_loc8_);
            _loc9_ = this.§6!h§;
            _loc10_ = this.§;!T§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§!b§ == §"!p§)
            {
               _loc9_ = (this.§]M§ - (_loc10_ - 1) * this.§#y§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§+!C§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§+!C§.push(new param2(_loc12_,_loc7_,new this.§9"^§() as MovieClip));
               }
               _loc13_ = _loc7_.§+!C§[_loc7_.§+!C§.length - 1] as §96§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§=!$§(_loc14_,this.§6#'§);
                  if(this.§?k§ == §<p§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§6#'§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§2"j§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§#y§;
                  _loc13_.y = this.§6!5§ + _loc11_ * this.§8#'§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§;!T§ * this.§2"j§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§;!T§ * this.§2"j§) / this.§;!T§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§;!T§ * this.§2"j§) % this.§;!T§;
                  if(this.§!![§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§#y§ + _loc16_ * this.§;!T§ * this.§#y§;
                     _loc13_.y = this.§6!5§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§6!5§ + _loc18_ * this.§8#'§ + _loc16_ * this.§;!T§ * this.§8#'§;
                  }
               }
               _loc8_.addButton(_loc13_);
               _loc11_++;
            }
            _loc8_.§,"f§("");
            _loc7_.§8!v§(this.§;!T§,this.§!"5§,this.§-+§,this.§6"L§ * this.§#y§,this.§6"L§ * this.§8#'§,this.§2"j§,this.§6"L§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §&";§() : int
      {
         return this.§;!T§;
      }
      
      public function get § "F§() : int
      {
         if(this.§&";§ == 0)
         {
            return 0;
         }
         return this.§;"6§(this.§1#,§).§@"_§.length / this.§&";§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§7!B§, param4:Event = null) : void
      {
         var _loc6_:§]!I§ = null;
         var _loc5_:§!!s§ = getItemByName(this.§1#,§) as §!!s§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§!"$§(_loc5_.§8"l§ - 1);
               this.§'E§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§!"$§(_loc5_.§8"l§ + 1);
               this.§'E§();
            }
         }
         else if(param2.length > 0 && (param1 == §7!B§.LISTENER_EVENT_MOUSE_DOWN || param1 == §7!B§.LISTENER_EVENT_MOUSE_UP) && param3 is §5!9§)
         {
            if((_loc6_ = this.§;"6§((param3 as §5!9§).mParentContainer.mName.toUpperCase())) && param3 is §96§)
            {
               _loc6_.§,"f§((param3 as §5!9§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §1#+§(param1:String, param2:int) : void
      {
         var _loc3_:§!!s§ = getItemByName(param1) as §!!s§;
         if(_loc3_)
         {
            _loc3_.§!"$§(param2);
            this.§'E§();
         }
      }
      
      public function §;"6§(param1:String) : §]!I§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!n§.length)
         {
            if(param1.toUpperCase() == (this.§,!n§[_loc2_] as §]!I§).mName.toUpperCase())
            {
               return this.§,!n§[_loc2_] as §]!I§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §;"]§(param1:String) : void
      {
         this.§1#,§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §+!C§.length)
         {
            if(§+!C§[_loc2_] is §!!s§)
            {
               if((§+!C§[_loc2_] as §!!s§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§+!C§[_loc2_] as §!!s§).setActiveStatus(true);
                  if(this.§6"D§)
                  {
                     this.§0#'§.x = (§+!C§[_loc2_] as §!!s§).x + this.§3!j§;
                     this.§0#'§.width = (§+!C§[_loc2_] as §!!s§).width + this.§,"&§;
                  }
                  if(this.§1!y§)
                  {
                     this.§0#'§.y = (§+!C§[_loc2_] as §!!s§).y + this.§!">§;
                     this.§0#'§.height = (§+!C§[_loc2_] as §!!s§).height + this.§[!=§;
                  }
               }
               else
               {
                  (§+!C§[_loc2_] as §!!s§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§'E§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§]!I§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§,!n§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §'E§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§!!s§ = getItemByName(this.§1#,§) as §!!s§;
         if(_loc1_)
         {
            if(_loc1_.§8"l§ > 0)
            {
               (getItemByName("Button_Scroll1") as §2"8§).setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §2"8§).setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§8"l§ < _loc1_.§^"§ - 1)
            {
               (getItemByName("Button_Scroll2") as §2"8§).setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §2"8§).setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §2"8§).setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §2"8§).setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §^t§() : void
      {
         var _loc2_:§!!s§ = null;
         var _loc1_:int = §+!C§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §+!C§[_loc1_] as §!!s§;
            if(_loc2_)
            {
               _loc2_.clear();
               §+!C§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§;"]§("");
      }
      
      public function §^_§() : void
      {
         var _loc1_:§]!I§ = null;
         for each(_loc1_ in this.§,!n§)
         {
            _loc1_.§^_§();
         }
      }
      
      public function §4#$§() : Array
      {
         if(this.§;"6§(this.§1#,§) == null)
         {
            §5!s§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§;"6§(this.§1#,§).§2!,§();
      }
      
      public function §["=§(param1:Array) : void
      {
         this.§;"6§(this.§1#,§).§["=§(param1);
      }
      
      public function §6!A§(param1:Number) : void
      {
         this.§;"6§(this.§1#,§).§6!A§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§9"^§ = null;
         this.§,!n§ = null;
         this.§1!D§ = null;
      }
   }
}
