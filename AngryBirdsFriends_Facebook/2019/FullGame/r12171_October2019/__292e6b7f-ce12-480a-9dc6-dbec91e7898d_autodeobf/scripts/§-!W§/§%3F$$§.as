package §-!W§
{
   import § "L§.§!U§;
   import §";§.§%"X§;
   import §4§.§7j§;
   import §?Q§.AvatarCreatorPopup;
   import §@`§.Item;
   import §[c§.§ #a§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   
   public class §?$$§ extends §%"X§
   {
       
      
      public function §?$$§(param1:§ #a§)
      {
         super(param1);
      }
      
      public static function §]!3§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §7j§.§+!,§.items.§]"<§.length)
         {
            if(param1.toUpperCase() == §7j§.§+!,§.items.§]"<§[_loc2_].name.toUpperCase())
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §%">§(param1:String) : Array
      {
         if(param1.toUpperCase() == "Repeater_Tabs".toUpperCase())
         {
            return §1"$§();
         }
         if(param1.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return §-!j§();
         }
         return null;
      }
      
      public static function §1"$§() : Array
      {
         var _loc2_:XML = null;
         var _loc3_:MovieClip = null;
         var _loc4_:Class = null;
         var _loc6_:String = null;
         var _loc1_:Array = new Array();
         _loc1_[0] = new Array();
         var _loc5_:int = 0;
         while(_loc5_ < §7j§.§+!,§.items.§]"<§.length)
         {
            _loc6_ = §7j§.§+!,§.items.§]"<§[_loc5_].name;
            _loc3_ = new (_loc4_ = §[a§.§8#k§("Icon_" + _loc6_))();
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
      
      public static function §-!j§() : Array
      {
         var _loc1_:XML = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = null;
         var _loc15_:String = null;
         var _loc16_:Array = null;
         var _loc17_:Object = null;
         var _loc18_:Item = null;
         var _loc19_:Number = NaN;
         var _loc20_:Boolean = false;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = false;
         var _loc25_:MovieClip = null;
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Class = §[a§.§8#k§("Repeater_Button_Editor_Items");
         var _loc7_:Class = §[a§.§8#k§("Repeater_Button_Editor_Items_Buy");
         var _loc8_:Class = §[a§.§8#k§("Repeater_Button_Editor_Items_LimitedTime");
         var _loc9_:Class = §[a§.§8#k§("Repeater_Button_Editor_Items_StarLimit");
         var _loc10_:Class = §[a§.§8#k§("Repeater_Button_Editor_Items_OnSale");
         var _loc11_:Class = §[a§.§8#k§("Tag_New");
         var _loc12_:int = §@z§.§<"I§.getTotalStars();
         var _loc13_:Number = 0;
         while(_loc13_ < §7j§.§+!,§.items.§]"<§.length)
         {
            _loc15_ = §7j§.§+!,§.items.§]"<§[_loc13_].name as String;
            _loc16_ = §7j§.§+!,§.items.§'$C§(_loc15_);
            _loc4_[_loc13_] = [];
            _loc5_[_loc13_] = [];
            for each(_loc17_ in AvatarCreatorPopup.§>!D§)
            {
               _loc18_ = null;
               _loc19_ = 0;
               while(_loc19_ < _loc16_.length)
               {
                  _loc18_ = _loc16_[_loc19_];
                  if(_loc17_.itemId == _loc18_.mId)
                  {
                     _loc2_ = _loc18_.§6"J§();
                     _loc2_.mouseEnabled = false;
                     _loc2_.mouseChildren = false;
                     _loc2_.x = -_loc2_.width * 0.5;
                     _loc2_.y = -_loc2_.height - 3;
                     _loc2_.stop();
                     _loc1_ = <Button/>;
                     _loc1_.@name = _loc18_.mId;
                     _loc1_.@MouseUp = _loc18_.mId;
                     _loc20_ = AvatarCreatorPopup.§##K§(_loc18_.mId);
                     _loc21_ = AvatarCreatorPopup.§^$§(_loc18_.mId);
                     _loc22_ = AvatarCreatorPopup.§3!b§(_loc18_.mId);
                     _loc23_ = AvatarCreatorPopup.§>!1§(_loc18_.mId);
                     _loc24_ = AvatarCreatorPopup.§0!`§(_loc18_.mId);
                     if(_loc21_ == 0 && (_loc22_ == 0 || _loc22_ <= _loc12_))
                     {
                        _loc25_ = new _loc6_();
                     }
                     else if(_loc21_ > 0)
                     {
                        if(!_loc20_)
                        {
                           if(_loc23_)
                           {
                              _loc25_ = new _loc10_();
                           }
                           else
                           {
                              _loc25_ = new _loc7_();
                           }
                           _loc25_.itemPrice.text = _loc21_ + "";
                           _loc1_.@childIndex = 1;
                        }
                        else
                        {
                           (_loc25_ = new _loc8_()).itemPrice.text = _loc21_ + "";
                           _loc1_.@childIndex = 1;
                        }
                     }
                     else
                     {
                        _loc25_ = new _loc9_();
                        _loc1_.@MouseUp = null;
                        _loc25_.itemPrice.text = _loc22_;
                        _loc1_.@childIndex = 1;
                     }
                     if(_loc21_ == 0 && _loc22_ == 0)
                     {
                        _loc4_[_loc13_].push(new Array(_loc1_,_loc2_,_loc25_));
                     }
                     else
                     {
                        if(_loc24_)
                        {
                           _loc25_.addChild(new _loc11_());
                        }
                        if(_loc20_ || _loc23_)
                        {
                           _loc5_[_loc13_].unshift(new Array(_loc1_,_loc2_,_loc25_));
                        }
                        else
                        {
                           _loc5_[_loc13_].push(new Array(_loc1_,_loc2_,_loc25_));
                        }
                     }
                  }
                  _loc19_++;
               }
            }
            if(_loc15_ != "CategoryBirds" && _loc15_ != "CategoryBackgrounds")
            {
               _loc3_ = §[a§.§8#k§("Inventory_Item_None");
               _loc2_ = new _loc3_();
               _loc2_.x = -_loc2_.width * 0.5 + 2;
               _loc2_.y = -_loc2_.height + 7;
               _loc2_.stop();
               _loc25_ = new _loc6_();
               _loc1_ = <Button/>;
               _loc1_.@name = _loc15_;
               _loc1_.@MouseUp = "REMOVE_" + _loc15_;
               _loc4_[_loc13_].unshift(new Array(_loc1_,_loc2_,_loc25_));
            }
            _loc13_++;
         }
         return §]">§(_loc4_,_loc5_);
      }
      
      private static function §]">§(param1:Array, param2:Array) : Array
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
      
      override public function activateView() : void
      {
         super.activateView();
      }
      
      public function §"!G§() : void
      {
         var _loc4_:String = null;
         §=!M§("Repeater_Items","Repeater_Items_Tab_0");
         var _loc1_:§!U§ = getItemByName("Repeater_Items") as §!U§;
         var _loc2_:§!U§ = getItemByName("Repeater_Tabs") as §!U§;
         if(§7j§.§+!,§.items.§]"<§.length > 0)
         {
            _loc2_.§&"C§("Repeater_Tabs_Tab_0").§-"c§(§7j§.§+!,§.items.§]"<§[0].name as String);
         }
         §=!M§("Repeater_Tabs","Repeater_Tabs_Tab_0");
         var _loc3_:int = 0;
         while(_loc3_ < §7j§.§+!,§.items.§]"<§.length)
         {
            _loc4_ = §7j§.§+!,§.items.§]"<§[_loc3_].name;
            _loc1_.§&"C§("Repeater_Items_Tab_" + _loc3_).§-"c§(_loc4_);
            _loc3_++;
         }
      }
   }
}
