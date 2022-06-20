package §;^§
{
   import §!!t§.§,-§;
   import §"",§.§"%§;
   import §#!p§.§]!"§;
   import §-"-§.§@!t§;
   import §8!-§.Item;
   import §]!F§.§"!j§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   
   public class §8"=§ extends §"!j§
   {
       
      
      public function §8"=§(param1:§,-§)
      {
         super(param1);
      }
      
      public static function §?!t§(param1:Number) : String
      {
         param1 /= 10;
         var _loc2_:* = "$" + param1.toString();
         if(param1 != int(param1))
         {
            _loc2_ += "0";
         }
         return _loc2_;
      }
      
      override public function activateView() : void
      {
         super.activateView();
      }
      
      public function §0!K§() : void
      {
         var _loc4_:String = null;
         §]""§("Repeater_Items","Repeater_Items_Tab_0");
         var _loc1_:§"%§ = getItemByName("Repeater_Items") as §"%§;
         var _loc2_:§"%§ = getItemByName("Repeater_Tabs") as §"%§;
         if(§@!t§.§8c§.items.§"!d§.length > 0)
         {
            _loc2_.§>!y§("Repeater_Tabs_Tab_0").§%!`§(§@!t§.§8c§.items.§"!d§[0].name as String);
         }
         §]""§("Repeater_Tabs","Repeater_Tabs_Tab_0");
         var _loc3_:int = 0;
         while(_loc3_ < §@!t§.§8c§.items.§"!d§.length)
         {
            _loc4_ = §@!t§.§8c§.items.§"!d§[_loc3_].name;
            _loc1_.§>!y§("Repeater_Items_Tab_" + _loc3_).§%!`§(_loc4_);
            _loc3_++;
         }
      }
      
      public function §,W§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §@!t§.§8c§.items.§"!d§.length)
         {
            if(param1.toUpperCase() == §@!t§.§8c§.items.§"!d§[_loc2_].name.toUpperCase())
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
            return this.§]!n§();
         }
         if(param1.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return this.§;u§();
         }
         return null;
      }
      
      public function §]!n§() : Array
      {
         var _loc2_:XML = null;
         var _loc3_:MovieClip = null;
         var _loc4_:Class = null;
         var _loc6_:String = null;
         var _loc1_:Array = new Array();
         _loc1_[0] = new Array();
         var _loc5_:int = 0;
         while(_loc5_ < §@!t§.§8c§.items.§"!d§.length)
         {
            _loc6_ = §@!t§.§8c§.items.§"!d§[_loc5_].name;
            _loc3_ = new (_loc4_ = §#!J§.§1!Y§("Icon_" + _loc6_))();
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
      
      public function §;u§() : Array
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
         var _loc6_:Class = §#!J§.§1!Y§("Repeater_Button_Editor_Items");
         var _loc7_:Class = §#!J§.§1!Y§("Repeater_Button_Editor_Items_Buy");
         var _loc8_:Class = §#!J§.§1!Y§("Repeater_Button_Editor_Items_LimitedTime");
         var _loc9_:Class = §#!J§.§1!Y§("Repeater_Button_Editor_Items_StarLimit");
         var _loc10_:Class = §#!J§.§1!Y§("Repeater_Button_Editor_Items_OnSale");
         var _loc11_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         var _loc12_:Number = 0;
         while(_loc12_ < §@!t§.§8c§.items.§"!d§.length)
         {
            _loc14_ = §@!t§.§8c§.items.§"!d§[_loc12_].name as String;
            _loc15_ = §@!t§.§8c§.items.§;_§(_loc14_);
            _loc4_[_loc12_] = [];
            _loc5_[_loc12_] = [];
            _loc16_ = 0;
            while(_loc16_ < _loc15_.length)
            {
               _loc17_ = _loc15_[_loc16_];
               if(§]!"§.§#"$§(_loc17_.§4W§))
               {
                  _loc2_ = _loc17_.§,!J§();
                  _loc2_.mouseEnabled = false;
                  _loc2_.mouseChildren = false;
                  _loc2_.x = -_loc2_.width * 0.5;
                  _loc2_.y = -_loc2_.height - 3;
                  _loc2_.stop();
                  _loc1_ = <Button/>;
                  _loc1_.@name = _loc17_.§4W§;
                  _loc1_.@MouseUp = _loc17_.§4W§;
                  _loc18_ = §]!"§.§6]§(_loc17_.§4W§);
                  _loc19_ = §]!"§.§7!v§(_loc17_.§4W§);
                  _loc20_ = §]!"§.§;!K§(_loc17_.§4W§);
                  _loc21_ = §]!"§.§9!m§(_loc17_.§4W§);
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
                        _loc22_.itemPrice.text = §?!t§(_loc19_);
                        _loc1_.@childIndex = 1;
                     }
                     else
                     {
                        (_loc22_ = new _loc8_()).itemPrice.text = §?!t§(_loc19_);
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
               _loc3_ = §#!J§.§1!Y§("Inventory_Item_None");
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
         return this.§2"2§(_loc4_,_loc5_);
      }
      
      private function §2"2§(param1:Array, param2:Array) : Array
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
