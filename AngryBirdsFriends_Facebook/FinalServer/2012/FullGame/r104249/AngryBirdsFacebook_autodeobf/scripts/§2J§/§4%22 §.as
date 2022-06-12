package §2J§
{
   import §!9§.§%y§;
   import §#M§.§^0§;
   import §-B§.§<"$§;
   import §0!,§.§^"B§;
   import §<9§.§ ">§;
   import §=#§.§5!S§;
   import §`!?§.Item;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   
   public class §4" § extends §^0§
   {
       
      
      public function §4" §(param1:§5!S§)
      {
         super(param1);
      }
      
      public static function §>'§(param1:Number) : String
      {
         return § ">§.§"!]§.§`!T§(param1);
      }
      
      override public function activateView() : void
      {
         super.activateView();
      }
      
      public function §!i§() : void
      {
         var _loc4_:String = null;
         §7^§("Repeater_Items","Repeater_Items_Tab_0");
         var _loc1_:§<"$§ = getItemByName("Repeater_Items") as §<"$§;
         var _loc2_:§<"$§ = getItemByName("Repeater_Tabs") as §<"$§;
         if(§%y§.§1[§.items.§+!Z§.length > 0)
         {
            _loc2_.§>%§("Repeater_Tabs_Tab_0").§%"5§(§%y§.§1[§.items.§+!Z§[0].name as String);
         }
         §7^§("Repeater_Tabs","Repeater_Tabs_Tab_0");
         var _loc3_:int = 0;
         while(_loc3_ < §%y§.§1[§.items.§+!Z§.length)
         {
            _loc4_ = §%y§.§1[§.items.§+!Z§[_loc3_].name;
            _loc1_.§>%§("Repeater_Items_Tab_" + _loc3_).§%"5§(_loc4_);
            _loc3_++;
         }
      }
      
      public function §%"6§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §%y§.§1[§.items.§+!Z§.length)
         {
            if(param1.toUpperCase() == §%y§.§1[§.items.§+!Z§[_loc2_].name.toUpperCase())
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      override public function getRepeaterDataXML(param1:String) : Array
      {
         if(param1.toUpperCase() == "Repeater_Tabs".toUpperCase())
         {
            return this.§"!D§();
         }
         if(param1.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return this.§&k§();
         }
         return null;
      }
      
      public function §"!D§() : Array
      {
         var _loc2_:XML = null;
         var _loc3_:MovieClip = null;
         var _loc4_:Class = null;
         var _loc6_:String = null;
         var _loc1_:Array = new Array();
         _loc1_[0] = new Array();
         var _loc5_:int = 0;
         while(_loc5_ < §%y§.§1[§.items.§+!Z§.length)
         {
            _loc6_ = §%y§.§1[§.items.§+!Z§[_loc5_].name;
            _loc3_ = new (_loc4_ = §>"5§.§6s§("Icon_" + _loc6_))();
            _loc3_.x = 29 - _loc3_.width * 0.5;
            _loc3_.y = 31 - _loc3_.height * 0.5;
            if(_loc5_ == 0)
            {
               _loc3_.gotoAndStop("over");
            }
            else
            {
               _loc3_.gotoAndStop("out");
            }
            _loc2_ = <Button/>;
            _loc2_.@name = _loc6_;
            _loc2_.@MouseOver = "Over" + _loc6_;
            _loc2_.@MouseOut = "Out" + _loc6_;
            _loc2_.@MouseUp = _loc6_;
            _loc2_.@scaleOnMouseOver = "True";
            (_loc1_[0] as Array).push(new Array(_loc2_,_loc3_));
            _loc5_++;
         }
         return _loc1_;
      }
      
      public function §&k§() : Array
      {
         var _loc1_:XML = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = null;
         var _loc14_:String = null;
         var _loc15_:Array = null;
         var _loc16_:Number = NaN;
         var _loc17_:Item = null;
         var _loc18_:Boolean = false;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:Boolean = false;
         var _loc22_:MovieClip = null;
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Class = §>"5§.§6s§("Repeater_Button_Editor_Items");
         var _loc7_:Class = §>"5§.§6s§("Repeater_Button_Editor_Items_Buy");
         var _loc8_:Class = §>"5§.§6s§("Repeater_Button_Editor_Items_LimitedTime");
         var _loc9_:Class = §>"5§.§6s§("Repeater_Button_Editor_Items_StarLimit");
         var _loc10_:Class = §>"5§.§6s§("Repeater_Button_Editor_Items_OnSale");
         var _loc11_:int = §,"I§.§?!v§.getTotalStars();
         var _loc12_:Number = 0;
         while(_loc12_ < §%y§.§1[§.items.§+!Z§.length)
         {
            _loc14_ = §%y§.§1[§.items.§+!Z§[_loc12_].name as String;
            _loc15_ = §%y§.§1[§.items.§"!%§(_loc14_);
            _loc4_[_loc12_] = [];
            _loc5_[_loc12_] = [];
            _loc16_ = 0;
            while(_loc16_ < _loc15_.length)
            {
               _loc17_ = _loc15_[_loc16_];
               if(§^"B§.§,">§(_loc17_.§3!9§))
               {
                  _loc2_ = _loc17_.§`"8§();
                  _loc2_.mouseEnabled = false;
                  _loc2_.mouseChildren = false;
                  _loc2_.x = -_loc2_.width * 0.5;
                  _loc2_.y = -_loc2_.height - 3;
                  _loc2_.stop();
                  _loc1_ = <Button/>;
                  _loc1_.@name = _loc17_.§3!9§;
                  _loc1_.@MouseUp = _loc17_.§3!9§;
                  _loc18_ = §^"B§.§"%§(_loc17_.§3!9§);
                  _loc19_ = §^"B§.§5!0§(_loc17_.§3!9§);
                  _loc20_ = §^"B§.§[u§(_loc17_.§3!9§);
                  _loc21_ = §^"B§.§?"C§(_loc17_.§3!9§);
                  if(_loc19_ == 0 && (_loc20_ == 0 || _loc20_ <= _loc11_))
                  {
                     _loc22_ = new _loc6_();
                  }
                  else if(_loc19_ > 0)
                  {
                     if(!_loc18_)
                     {
                        if(_loc21_)
                        {
                           _loc22_ = new _loc10_();
                        }
                        else
                        {
                           _loc22_ = new _loc7_();
                        }
                        _loc22_.itemPrice.text = §>'§(_loc19_);
                        _loc1_.@childIndex = 1;
                     }
                     else
                     {
                        (_loc22_ = new _loc8_()).itemPrice.text = §>'§(_loc19_);
                        _loc1_.@childIndex = 1;
                     }
                  }
                  else
                  {
                     _loc22_ = new _loc9_();
                     _loc1_.@MouseUp = null;
                     _loc22_.itemPrice.text = _loc20_;
                     _loc1_.@childIndex = 1;
                  }
                  if(_loc19_ == 0 && _loc20_ == 0)
                  {
                     _loc4_[_loc12_].push(new Array(_loc1_,_loc2_,_loc22_));
                  }
                  else if(_loc18_ || _loc21_)
                  {
                     _loc5_[_loc12_].unshift(new Array(_loc1_,_loc2_,_loc22_));
                  }
                  else
                  {
                     _loc5_[_loc12_].push(new Array(_loc1_,_loc2_,_loc22_));
                  }
               }
               _loc16_++;
            }
            if(_loc14_ != "CategoryBirds" && _loc14_ != "CategoryBackgrounds")
            {
               _loc3_ = §>"5§.§6s§("Inventory_Item_None");
               _loc2_ = new _loc3_();
               _loc2_.x = -_loc2_.width * 0.5 + 2;
               _loc2_.y = -_loc2_.height + 7;
               _loc2_.stop();
               _loc22_ = new _loc6_();
               _loc1_ = <Button/>;
               _loc1_.@name = _loc14_;
               _loc1_.@MouseUp = "REMOVE_" + _loc14_;
               _loc4_[_loc12_].unshift(new Array(_loc1_,_loc2_,_loc22_));
            }
            _loc12_++;
         }
         return this.§<!-§(_loc4_,_loc5_);
      }
      
      private function §<!-§(param1:Array, param2:Array) : Array
      {
         var _loc3_:int = Math.max(param1.length,param2.length);
         var _loc4_:Array = [];
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_[_loc5_] = param1[_loc5_].concat(param2[_loc5_]);
            _loc5_++;
         }
         return _loc4_;
      }
   }
}
