package §4#,§
{
   import § o§.AvatarCreatorPopup;
   import §%#!§.§4,§;
   import §%#!§.§=$7§;
   import §%#!§.Item;
   import §<"@§.§8y§;
   import §[$8§.§2%§;
   import com.rovio.assets.§+$#§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class Avatar extends Sprite
   {
      
      public static const §7"J§:Number = 0.5;
      
      public static const §["v§:Boolean = false;
      
      public static const §>! §:String = "avatar_equip";
      
      public static const §5"@§:String = "avatar_character";
       
      
      public var §<"j§:Object;
      
      private var §6!7§:MovieClip;
      
      private var §=!;§:MovieClip;
      
      private var §5!r§:MovieClip;
      
      private var § "A§:Number = 0.5;
      
      private var §3!%§:§4,§ = null;
      
      public function Avatar(param1:§4,§)
      {
         super();
         this.§3!%§ = param1;
         this.§<"j§ = new Object();
         this.§ "A§ = this.§3!%§.§&!j§;
         var _loc2_:Class = §+$#§.§["`§("BackgroundContainer");
         this.§=!;§ = new _loc2_();
         this.§=!;§.stop();
         addChild(this.§=!;§);
         var _loc3_:Class = §+$#§.§["`§(param1.mId + "_Animations");
         this.§6!7§ = new _loc3_();
         this.§6!7§.stop();
         this.§4$8§();
         this.§6!7§.scaleX = this.§ "A§;
         this.§6!7§.scaleY = this.§ "A§;
         this.addChild(this.§6!7§);
         var _loc4_:Class = §+$#§.§["`§("ForegroundContainer");
         this.§5!r§ = new _loc4_();
         this.§5!r§.stop();
         addChild(this.§5!r§);
      }
      
      public function §]"^§() : void
      {
         this.§=!;§.visible = false;
         this.§5!r§.visible = false;
      }
      
      public function §,#q§(param1:String) : void
      {
         this.§=!;§.gotoAndStop(param1.toLowerCase());
         this.§5!r§.gotoAndStop(param1.toLowerCase());
         this.§%#§(§8y§.§ "D§.items.getItem(param1));
      }
      
      public function §0">§() : void
      {
         var _loc1_:§=$7§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §8y§.§ "D§.items.§+2§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §8y§.§ "D§.items.§%#,§(_loc1_.name);
               _loc2_ = this.§3!f§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§return§(_loc1_.name);
               }
               else
               {
                  this.§%#§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §3!f§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(AvatarCreatorPopup.§!D§(_loc3_.mId))
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function show(param1:int, param2:int) : void
      {
         this.x = param1;
         this.y = param2;
         this.setScale(this.§9#T§().§>"Q§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §4$8§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6!7§.numChildren)
         {
            _loc3_ = this.§6!7§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §8y§.§ "D§.items.§0"e§)
         {
            this.§ !G§(_loc2_);
         }
      }
      
      public function § !G§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§6!7§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §>"§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < §8y§.§ "D§.items.§+2§.length)
         {
            _loc2_ = §8y§.§ "D§.items.§+2§[_loc1_].name;
            _loc3_ = this.§#"&§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§6!7§.getChildByName("Items_" + _loc3_.§`$5§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.mId);
               }
            }
            _loc1_++;
         }
      }
      
      public function §@! §() : void
      {
         var _loc1_:§=$7§ = null;
         for each(_loc1_ in §8y§.§ "D§.items.§+2§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§return§(_loc1_.name);
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§ "A§ = param1;
         this.§6!7§.scaleX = this.§ "A§;
         this.§6!7§.scaleY = this.§ "A§;
      }
      
      public function §7s§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§<"j§)
         {
            this.§%#§(_loc1_);
         }
      }
      
      public function §%#§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§<"j§[param1.§8!G§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§["v§)
            {
               this.§return§(param1.§8!G§);
            }
            return;
         }
         this.§return§(param1.§8!G§);
         this.§<"j§[param1.§8!G§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§6!7§.getChildByName("Items_" + param1.§`$5§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.mId);
            if(_loc3_.currentLabel != "Item_" + param1.mId)
            {
               this.§return§(param1.§`$5§);
            }
            else
            {
               this.§4#6§("Items_" + param1.§`$5§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP" && param1.mId != "HeadBand")
            {
               this.§4#y§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§="H§();
         }
      }
      
      private function §="H§() : void
      {
         var _loc1_:MovieClip = this.§6!7§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc1_)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §4#y§() : void
      {
         var _loc1_:MovieClip = this.§6!7§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §#"&§(param1:String) : Item
      {
         return this.§<"j§[param1.toUpperCase()];
      }
      
      public function §2#§() : Object
      {
         return this.§<"j§;
      }
      
      public function §return§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§<"j§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§6!7§.getChildByName("Items_" + _loc2_.§`$5§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§="H§();
               }
            }
         }
         delete this.§<"j§[param1.toUpperCase()];
      }
      
      public function §4#6§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§6!7§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§6!7§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§6!7§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §9"l§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §9#T§() : §4,§
      {
         return this.§3!%§;
      }
      
      public function §"R§() : String
      {
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§=!y§();
         return §2%§.§96§(_loc1_);
      }
      
      public function §=!y§() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§<"j§)
         {
            _loc1_.push({
               "itemId":_loc2_.mId,
               "category":_loc2_.§8!G§,
               "sId":_loc2_.sId,
               "name":_loc2_.§;!p§,
               "categorySID":_loc2_.§9"-§
            });
         }
         return _loc1_;
      }
      
      public function §2#S§() : Number
      {
         return this.§ "A§;
      }
      
      public function §@J§() : MovieClip
      {
         return this.§6!7§;
      }
      
      public function §-<§() : void
      {
         this.§6!7§.visible = false;
      }
   }
}
