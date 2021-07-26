package §4q§
{
   import §%y§.§+!l§;
   import §%y§.§7$@§;
   import §%y§.Item;
   import §'Z§.§<&§;
   import §6"p§.§7§;
   import §>z§.AvatarCreatorPopup;
   import com.rovio.assets.§6$A§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class Avatar extends Sprite
   {
      
      public static const §'!V§:Number = 0.5;
      
      public static const §>;§:Boolean = false;
      
      public static const §]$'§:String = "avatar_equip";
      
      public static const §["4§:String = "avatar_character";
       
      
      public var §?$?§:Object;
      
      private var §^#o§:MovieClip;
      
      private var §""m§:MovieClip;
      
      private var §3N§:MovieClip;
      
      private var §5>§:Number = 0.5;
      
      private var §-"V§:§7$@§ = null;
      
      public function Avatar(param1:§7$@§)
      {
         super();
         this.§-"V§ = param1;
         this.§?$?§ = new Object();
         this.§5>§ = this.§-"V§.§%!$§;
         var _loc2_:Class = §6$A§.§1!m§("BackgroundContainer");
         this.§""m§ = new _loc2_();
         this.§""m§.stop();
         addChild(this.§""m§);
         var _loc3_:Class = §6$A§.§1!m§(param1.mId + "_Animations");
         this.§^#o§ = new _loc3_();
         this.§^#o§.stop();
         this.§]"5§();
         this.§^#o§.scaleX = this.§5>§;
         this.§^#o§.scaleY = this.§5>§;
         this.addChild(this.§^#o§);
         var _loc4_:Class = §6$A§.§1!m§("ForegroundContainer");
         this.§3N§ = new _loc4_();
         this.§3N§.stop();
         addChild(this.§3N§);
      }
      
      public function §""7§() : void
      {
         this.§""m§.visible = false;
         this.§3N§.visible = false;
      }
      
      public function §9!M§(param1:String) : void
      {
         this.§""m§.gotoAndStop(param1.toLowerCase());
         this.§3N§.gotoAndStop(param1.toLowerCase());
         this.§^"L§(§7#8§.§`"H§.items.getItem(param1));
      }
      
      public function §["@§() : void
      {
         var _loc1_:§+!l§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §7#8§.§`"H§.items.§?p§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §7#8§.§`"H§.items.§,!U§(_loc1_.name);
               _loc2_ = this.§;#p§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§^"C§(_loc1_.name);
               }
               else
               {
                  this.§^"L§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §;#p§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(AvatarCreatorPopup.§[#q§(_loc3_.mId))
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
         this.setScale(this.§+"M§().§55§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §]"5§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^#o§.numChildren)
         {
            _loc3_ = this.§^#o§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §7#8§.§`"H§.items.§+?§)
         {
            this.§=S§(_loc2_);
         }
      }
      
      public function §=S§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§^#o§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §<"?§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < §7#8§.§`"H§.items.§?p§.length)
         {
            _loc2_ = §7#8§.§`"H§.items.§?p§[_loc1_].name;
            _loc3_ = this.§+_§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§^#o§.getChildByName("Items_" + _loc3_.§%$A§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.mId);
               }
            }
            _loc1_++;
         }
      }
      
      public function §,$=§() : void
      {
         var _loc1_:§+!l§ = null;
         for each(_loc1_ in §7#8§.§`"H§.items.§?p§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§^"C§(_loc1_.name);
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§5>§ = param1;
         this.§^#o§.scaleX = this.§5>§;
         this.§^#o§.scaleY = this.§5>§;
      }
      
      public function §5"9§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§?$?§)
         {
            this.§^"L§(_loc1_);
         }
      }
      
      public function §^"L§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§?$?§[param1.§>"r§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§>;§)
            {
               this.§^"C§(param1.§>"r§);
            }
            return;
         }
         this.§^"C§(param1.§>"r§);
         this.§?$?§[param1.§>"r§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§^#o§.getChildByName("Items_" + param1.§%$A§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.mId);
            if(_loc3_.currentLabel != "Item_" + param1.mId)
            {
               this.§^"C§(param1.§%$A§);
            }
            else
            {
               this.§-"R§("Items_" + param1.§%$A§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP" && param1.mId != "HeadBand")
            {
               this.§^!E§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§0"+§();
         }
      }
      
      private function §0"+§() : void
      {
         var _loc1_:MovieClip = this.§^#o§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc1_)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §^!E§() : void
      {
         var _loc1_:MovieClip = this.§^#o§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §+_§(param1:String) : Item
      {
         return this.§?$?§[param1.toUpperCase()];
      }
      
      public function §'e§() : Object
      {
         return this.§?$?§;
      }
      
      public function §^"C§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§?$?§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§^#o§.getChildByName("Items_" + _loc2_.§%$A§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§0"+§();
               }
            }
         }
         delete this.§?$?§[param1.toUpperCase()];
      }
      
      public function §-"R§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§^#o§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§^#o§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§^#o§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §4#C§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §+"M§() : §7$@§
      {
         return this.§-"V§;
      }
      
      public function §2$A§() : String
      {
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§<"Q§();
         return §<&§.§[>§(_loc1_);
      }
      
      public function §<"Q§() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§?$?§)
         {
            _loc1_.push({
               "itemId":_loc2_.mId,
               "category":_loc2_.§>"r§,
               "sId":_loc2_.sId,
               "name":_loc2_.§!I§,
               "categorySID":_loc2_.§=!J§
            });
         }
         return _loc1_;
      }
      
      public function §]!U§() : Number
      {
         return this.§5>§;
      }
      
      public function §3#=§() : MovieClip
      {
         return this.§^#o§;
      }
      
      public function §]!n§() : void
      {
         this.§^#o§.visible = false;
      }
   }
}
