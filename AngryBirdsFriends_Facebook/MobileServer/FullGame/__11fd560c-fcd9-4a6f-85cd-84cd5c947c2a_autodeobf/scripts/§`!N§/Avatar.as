package §`!N§
{
   import §-!T§.§6#g§;
   import §-!T§.Item;
   import §-!T§.§[#D§;
   import §-"V§.§^#y§;
   import §=A§.§[`§;
   import §?P§.AvatarCreatorPopup;
   import com.rovio.assets.§!"f§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class Avatar extends Sprite
   {
      
      public static const §&#D§:Number = 0.5;
      
      public static const §9!;§:Boolean = false;
      
      public static const §="x§:String = "avatar_equip";
      
      public static const §;#Q§:String = "avatar_character";
       
      
      public var §"!,§:Object;
      
      private var §?!g§:MovieClip;
      
      private var §"R§:MovieClip;
      
      private var §4Y§:MovieClip;
      
      private var §^#5§:Number = 0.5;
      
      private var §^F§:§6#g§ = null;
      
      public function Avatar(param1:§6#g§)
      {
         super();
         this.§^F§ = param1;
         this.§"!,§ = new Object();
         this.§^#5§ = this.§^F§.§&!J§;
         var _loc2_:Class = §!"f§.§##?§("BackgroundContainer");
         this.§"R§ = new _loc2_();
         this.§"R§.stop();
         addChild(this.§"R§);
         var _loc3_:Class = §!"f§.§##?§(param1.mId + "_Animations");
         this.§?!g§ = new _loc3_();
         this.§?!g§.stop();
         this.§3m§();
         this.§?!g§.scaleX = this.§^#5§;
         this.§?!g§.scaleY = this.§^#5§;
         this.addChild(this.§?!g§);
         var _loc4_:Class = §!"f§.§##?§("ForegroundContainer");
         this.§4Y§ = new _loc4_();
         this.§4Y§.stop();
         addChild(this.§4Y§);
      }
      
      public function §%c§() : void
      {
         this.§"R§.visible = false;
         this.§4Y§.visible = false;
      }
      
      public function §86§(param1:String) : void
      {
         this.§"R§.gotoAndStop(param1.toLowerCase());
         this.§4Y§.gotoAndStop(param1.toLowerCase());
         this.§-!M§(§^#y§.§6!§.items.getItem(param1));
      }
      
      public function §#!q§() : void
      {
         var _loc1_:§[#D§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §^#y§.§6!§.items.§[!m§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §^#y§.§6!§.items.§1#2§(_loc1_.name);
               _loc2_ = this.§@M§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§"#Z§(_loc1_.name);
               }
               else
               {
                  this.§-!M§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §@M§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(AvatarCreatorPopup.§2#l§(_loc3_.mId))
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
         this.setScale(this.§%Z§().§!i§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §3m§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§?!g§.numChildren)
         {
            _loc3_ = this.§?!g§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §^#y§.§6!§.items.§#t§)
         {
            this.§3""§(_loc2_);
         }
      }
      
      public function §3""§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§?!g§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §0!Z§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < §^#y§.§6!§.items.§[!m§.length)
         {
            _loc2_ = §^#y§.§6!§.items.§[!m§[_loc1_].name;
            _loc3_ = this.§'M§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§?!g§.getChildByName("Items_" + _loc3_.§ =§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.mId);
               }
            }
            _loc1_++;
         }
      }
      
      public function §9"8§() : void
      {
         var _loc1_:§[#D§ = null;
         for each(_loc1_ in §^#y§.§6!§.items.§[!m§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§"#Z§(_loc1_.name);
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§^#5§ = param1;
         this.§?!g§.scaleX = this.§^#5§;
         this.§?!g§.scaleY = this.§^#5§;
      }
      
      public function § u§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§"!,§)
         {
            this.§-!M§(_loc1_);
         }
      }
      
      public function §-!M§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§"!,§[param1.§=#s§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§9!;§)
            {
               this.§"#Z§(param1.§=#s§);
            }
            return;
         }
         this.§"#Z§(param1.§=#s§);
         this.§"!,§[param1.§=#s§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§?!g§.getChildByName("Items_" + param1.§ =§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.mId);
            if(_loc3_.currentLabel != "Item_" + param1.mId)
            {
               this.§"#Z§(param1.§ =§);
            }
            else
            {
               this.§<"F§("Items_" + param1.§ =§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP" && param1.mId != "HeadBand")
            {
               this.§%!Y§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§'D§();
         }
      }
      
      private function §'D§() : void
      {
         var _loc1_:MovieClip = this.§?!g§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc1_)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §%!Y§() : void
      {
         var _loc1_:MovieClip = this.§?!g§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §'M§(param1:String) : Item
      {
         return this.§"!,§[param1.toUpperCase()];
      }
      
      public function §##=§() : Object
      {
         return this.§"!,§;
      }
      
      public function §"#Z§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§"!,§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§?!g§.getChildByName("Items_" + _loc2_.§ =§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§'D§();
               }
            }
         }
         delete this.§"!,§[param1.toUpperCase()];
      }
      
      public function §<"F§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§?!g§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§?!g§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§?!g§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §&!s§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §%Z§() : §6#g§
      {
         return this.§^F§;
      }
      
      public function §0";§() : String
      {
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§^!+§();
         return §[`§.§,!L§(_loc1_);
      }
      
      public function §^!+§() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§"!,§)
         {
            _loc1_.push({
               "itemId":_loc2_.mId,
               "category":_loc2_.§=#s§,
               "sId":_loc2_.sId,
               "name":_loc2_.§=q§,
               "categorySID":_loc2_.§?"A§
            });
         }
         return _loc1_;
      }
      
      public function §]!,§() : Number
      {
         return this.§^#5§;
      }
      
      public function §,"=§() : MovieClip
      {
         return this.§?!g§;
      }
      
      public function §&"m§() : void
      {
         this.§?!g§.visible = false;
      }
   }
}
