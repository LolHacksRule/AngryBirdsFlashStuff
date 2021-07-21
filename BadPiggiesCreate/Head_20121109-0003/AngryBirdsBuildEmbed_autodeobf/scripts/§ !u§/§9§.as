package § !u§
{
   import § !r§.§3!X§;
   import §!y§.§2U§;
   import §"!E§.§#!'§;
   import §"!E§.§[!s§;
   import §@!i§.StateLevelEditor;
   import com.rovio.assets.§1F§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §9§
   {
      
      protected static var §'M§:Class = §8!e§;
      
      public static const §8!,§:String = "Button_TabBirds";
      
      public static const §1!v§:String = "Button_TabPigs";
       
      
      private var §3'§:§<k§;
      
      private var §<!D§:Vector.<§9y§>;
      
      private var §6!_§:int = 2;
      
      private var §<!^§:Vector.<MovieClip>;
      
      private var §+!$§:§2U§;
      
      private var §`!f§:Rectangle;
      
      private var §6y§:int = 0;
      
      public function §9§(param1:§2U§)
      {
         super();
         this.§+!$§ = param1;
         this.§3'§ = new §<k§(param1.getItemByName("Container_EditorMenu") as §[!s§);
         this.§7!M§(§3!X§.§3<§(§'M§));
      }
      
      private function §7!M§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§<k§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         for each(_loc2_ in param1.category)
         {
            _loc3_ = this.§ case§(_loc2_.@button,param1.@button);
            for each(_loc4_ in _loc2_.include_category)
            {
               _loc3_.§=!^§(_loc4_.toString());
            }
            for each(_loc5_ in _loc2_.component)
            {
               _loc3_.§9!k§(this.§+!$§.getItemByName(_loc5_.toString()));
            }
            for each(_loc6_ in _loc2_.item)
            {
               _loc3_.addItem(_loc6_.toString());
            }
            for each(_loc7_ in _loc2_.exclude)
            {
               _loc3_.§catch§(_loc7_.toString());
            }
            if(_loc2_.@highlight == "true")
            {
               _loc3_.§+!D§(new §&^§());
            }
            this.§7!M§(_loc2_);
         }
      }
      
      private function § case§(param1:String, param2:String = null) : §<k§
      {
         var _loc3_:§#!'§ = this.§+!$§.getItemByName(param1) as §#!'§;
         var _loc4_:§#!'§ = null;
         if(param2)
         {
            _loc4_ = this.§+!$§.getItemByName(param2) as §#!'§;
         }
         var _loc5_:§<k§;
         if(_loc5_ = this.§3'§.§]!E§(_loc4_))
         {
            return _loc5_.§=_§(_loc3_);
         }
         return null;
      }
      
      public function §''§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§6y§)
         {
            this.§3'§.§''§(param1);
            this.§>!E§();
         }
      }
      
      public function §%8§(param1:int) : void
      {
         this.§''§(this.§3'§.§`!G§() + param1);
      }
      
      public function §?!#§(param1:§#!'§, param2:Boolean = true) : void
      {
         if(param1 == null)
         {
            this.§3'§.§#!q§();
         }
         else
         {
            this.§3'§.§;?§(param1,param2);
            this.§>!E§();
         }
      }
      
      public function §]B§(param1:Boolean = true, param2:int = 1) : void
      {
         this.§3'§.§]B§(param2,param1);
         this.§>!E§();
      }
      
      public function §-!#§(param1:§#!'§) : void
      {
         this.§3'§.§]!E§(param1).§#!q§();
      }
      
      public function §#!%§(param1:Rectangle) : void
      {
         this.§3'§.§>!X§();
         this.§`!f§ = param1;
         this.§''§(Math.min(this.§6y§ - 1,this.§3'§.§`!G§()));
      }
      
      public function §>!E§() : void
      {
         var _loc7_:§9y§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:DisplayObject = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc1_:Vector.<§9y§> = this.§3'§.§8a§();
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:Number = this.§`!f§.width / this.§6!_§;
         var _loc3_:int = Math.max(1,this.§`!f§.height / _loc2_);
         var _loc4_:Number = this.§`!f§.height / _loc3_;
         var _loc5_:int = _loc3_ * this.§6!_§;
         var _loc6_:Vector.<Vector.<Vector.<§9y§>>> = new Vector.<Vector.<Vector.<§9y§>>>();
         for each(_loc7_ in _loc1_)
         {
            this.§?H§(_loc6_,_loc7_,_loc3_,this.§6!_§,_loc2_,_loc2_);
         }
         this.§6y§ = _loc6_.length;
         if(this.§6y§ == 0)
         {
            this.§"H§(0);
            return;
         }
         if(this.§3'§.§`!G§() >= this.§6y§)
         {
            this.§3'§.§''§(this.§6y§ - 1);
         }
         var _loc8_:int = this.§3'§.§`!G§();
         var _loc9_:Vector.<§9y§> = new Vector.<§9y§>();
         var _loc10_:int = 0;
         while(_loc10_ < this.§6!_§)
         {
            _loc11_ = 0;
            while(_loc11_ < _loc3_)
            {
               if(_loc6_[_loc8_][_loc10_][_loc11_] != null && _loc9_.indexOf(_loc6_[_loc8_][_loc10_][_loc11_]) == -1)
               {
                  _loc7_ = _loc6_[_loc8_][_loc10_][_loc11_];
                  _loc9_.push(_loc7_);
                  _loc7_.setActiveStatus(true);
                  _loc7_.setVisibility(true);
                  _loc7_.x = _loc10_ * _loc2_ + this.§`!f§.x;
                  _loc7_.y = _loc11_ * _loc4_ + this.§`!f§.y;
                  _loc12_ = this.§%m§(_loc7_,_loc2_);
                  if(_loc6_[_loc8_].length >= _loc10_ + 2 && _loc6_[_loc8_][_loc10_ + 1][_loc11_] == null)
                  {
                     _loc12_++;
                  }
                  _loc7_.setSize(_loc2_ * _loc12_,_loc4_ * this.§&!A§(_loc7_,_loc2_));
               }
               _loc11_++;
            }
            _loc10_++;
         }
         for each(_loc7_ in _loc9_)
         {
            _loc13_ = _loc7_.§[!?§();
            _loc14_ = Math.min(1,_loc7_.width * (0.7 + this.§%m§(_loc7_,_loc2_) * 0.1) / _loc7_.§2!`§());
            _loc15_ = Math.min(1,_loc7_.height * 0.8 / _loc7_.§ H§());
            if((_loc16_ = Math.min(_loc14_,_loc15_)) < 1)
            {
            }
            _loc7_.§+w§(_loc16_,_loc16_);
         }
         this.§"H§(_loc6_.length);
      }
      
      private function §%m§(param1:§9y§, param2:int) : int
      {
         return Math.min(this.§6!_§,Math.max(1,Math.ceil(param1.§2!`§() * 0.7 / param2)));
      }
      
      private function §&!A§(param1:§9y§, param2:int) : int
      {
         return Math.max(1,Math.ceil(param1.§ H§() * 0.7 / param2));
      }
      
      private function §?H§(param1:Vector.<Vector.<Vector.<§9y§>>>, param2:§9y§, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc14_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = this.§%m§(param2,param5);
         var _loc12_:int = this.§&!A§(param2,param6);
         if(_loc11_ > param4 || _loc12_ > param3)
         {
            return;
         }
         while(!_loc7_)
         {
            if(_loc10_ == param1.length)
            {
               param1.push(this.§4S§(param3,param4));
            }
            if(this.§]!^§(param1[_loc10_],param2,_loc8_,_loc9_,_loc11_,_loc12_))
            {
               _loc7_ = true;
            }
            else if(_loc8_ < param1[_loc10_].length - 1)
            {
               _loc8_++;
            }
            else if(_loc9_ < param1[_loc10_][_loc8_].length - 1)
            {
               _loc9_++;
               _loc8_ = 0;
            }
            else
            {
               _loc10_++;
               _loc8_ = 0;
               _loc9_ = 0;
            }
         }
         var _loc13_:int = _loc8_;
         while(_loc13_ < _loc8_ + _loc11_)
         {
            _loc14_ = _loc9_;
            while(_loc14_ < _loc9_ + _loc12_)
            {
               param1[_loc10_][_loc13_][_loc14_] = param2;
               _loc14_++;
            }
            _loc13_++;
         }
      }
      
      private function §4S§(param1:int, param2:int) : Vector.<Vector.<§9y§>>
      {
         var _loc3_:Vector.<Vector.<§9y§>> = new Vector.<Vector.<§9y§>>(param2);
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_[_loc4_] = new Vector.<§9y§>(param1);
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function §]!^§(param1:Vector.<Vector.<§9y§>>, param2:§9y§, param3:int, param4:int, param5:int, param6:int) : Boolean
      {
         if(param3 >= param1.length || param4 >= param1[param3].length)
         {
            return false;
         }
         if(param1[param3][param4] == param2)
         {
            return true;
         }
         if(param1[param3][param4] != null)
         {
            return false;
         }
         param1[param3][param4] = param2;
         var _loc7_:Boolean = true;
         if(param5 > 1)
         {
            _loc7_ = _loc7_ && this.§]!^§(param1,param2,param3 + 1,param4,param5 - 1,param6);
         }
         if(param6 > 1)
         {
            _loc7_ = _loc7_ && this.§]!^§(param1,param2,param3,param4 + 1,param5,param6 - 1);
         }
         param1[param3][param4] = null;
         return _loc7_;
      }
      
      public function isOpen() : Boolean
      {
         return this.§3'§.§8!9§();
      }
      
      protected function §3!M§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(this.§<!^§[_loc2_] != param1.currentTarget)
         {
            _loc2_++;
         }
         this.§''§(_loc2_);
      }
      
      private function §"H§(param1:int) : void
      {
         var _loc2_:Class = null;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         if(this.§<!^§)
         {
            for each(_loc11_ in this.§<!^§)
            {
               _loc11_.parent.removeChild(_loc11_);
               _loc11_.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!M§);
            }
         }
         var _loc3_:§#!'§ = this.§+!$§.getItemByName("Button_PrevPage") as §#!'§;
         var _loc4_:§#!'§ = this.§+!$§.getItemByName("Button_NextPage") as §#!'§;
         var _loc5_:§[!s§ = this.§+!$§.getItemByName("Container_PageButtons") as §[!s§;
         this.§<!^§ = new Vector.<MovieClip>();
         _loc2_ = §1F§.§"!_§("Button_Dot_Inventory");
         var _loc6_:int = _loc3_.x + _loc3_.width / 2;
         var _loc7_:int;
         var _loc8_:Number = (_loc7_ = _loc4_.x - _loc4_.width / 2) - _loc6_;
         var _loc9_:int = this.§3'§.§`!G§();
         var _loc10_:int = 0;
         while(_loc10_ < param1)
         {
            (_loc12_ = new _loc2_()).tabEnabled = false;
            if(_loc10_ == _loc9_)
            {
               _loc12_.gotoAndStop("Selected");
            }
            else
            {
               _loc12_.gotoAndStop("UnSelected");
            }
            _loc12_.x = _loc6_ + _loc8_ / (param1 + 1) * (_loc10_ + 1);
            _loc12_.y = _loc3_.y;
            _loc5_.mClip.addChild(_loc12_);
            if(_loc10_ != _loc9_)
            {
               _loc12_.buttonMode = true;
               _loc12_.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!M§);
            }
            else
            {
               _loc12_.buttonMode = false;
               _loc12_.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!M§);
            }
            this.§<!^§.push(_loc12_);
            _loc10_++;
         }
         _loc3_.setVisibility(param1 > 0);
         _loc4_.setVisibility(param1 > 0);
         if(_loc9_ > 0)
         {
            _loc3_.setEnabled(true);
            _loc3_.mClip.filters = [];
         }
         else
         {
            _loc3_.setEnabled(false);
            _loc3_.mClip.filters = [StateLevelEditor.§finally§()];
         }
         if(_loc9_ < param1 - 1)
         {
            _loc4_.setEnabled(true);
            _loc4_.mClip.filters = [];
         }
         else
         {
            _loc4_.setEnabled(false);
            _loc4_.mClip.filters = [StateLevelEditor.§finally§()];
         }
      }
   }
}
