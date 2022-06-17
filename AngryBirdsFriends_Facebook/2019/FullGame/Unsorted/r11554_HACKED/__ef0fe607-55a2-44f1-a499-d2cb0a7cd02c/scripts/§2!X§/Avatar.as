package §2!X§
{
   import § #s§.§%§;
   import § #s§.Item;
   import § #s§.§`c§;
   import §&!P§.§@#m§;
   import §?!N§.AvatarCreatorPopup;
   import §^$'§.§2$§;
   import com.rovio.assets.§2"O§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class Avatar extends Sprite
   {
      
      public static const §6H§:Number = 0.5;
      
      public static const §9!e§:Boolean = false;
      
      public static const §,#m§:String = "avatar_equip";
      
      public static const §=!1§:String = "avatar_character";
       
      
      public var §;#R§:Object;
      
      private var §,#r§:MovieClip;
      
      private var §>§:MovieClip;
      
      private var §?!C§:MovieClip;
      
      private var §6z§:Number = 0.5;
      
      private var §+!v§:§`c§ = null;
      
      public function Avatar(param1:§`c§)
      {
         super();
         this.§+!v§ = param1;
         this.§;#R§ = new Object();
         this.§6z§ = this.§+!v§.§1u§;
         var _loc2_:Class = §2"O§.§`>§("BackgroundContainer");
         this.§>§ = new _loc2_();
         this.§>§.stop();
         addChild(this.§>§);
         var _loc3_:Class = §2"O§.§`>§(param1.mId + "_Animations");
         this.§,#r§ = new _loc3_();
         this.§,#r§.stop();
         this.§%e§();
         this.§,#r§.scaleX = this.§6z§;
         this.§,#r§.scaleY = this.§6z§;
         this.addChild(this.§,#r§);
         var _loc4_:Class = §2"O§.§`>§("ForegroundContainer");
         this.§?!C§ = new _loc4_();
         this.§?!C§.stop();
         addChild(this.§?!C§);
      }
      
      public function §6§() : void
      {
         this.§>§.visible = false;
         this.§?!C§.visible = false;
      }
      
      public function §1s§(param1:String) : void
      {
         this.§>§.gotoAndStop(param1.toLowerCase());
         this.§?!C§.gotoAndStop(param1.toLowerCase());
         this.§>"#§(§@#m§.§?q§.items.getItem(param1));
      }
      
      public function §!#G§() : void
      {
         var _loc1_:§%#5§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §@#m§.§?q§.items.§%#Z§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §@#m§.§?q§.items.§%Z§(_loc1_.name);
               _loc2_ = this.§+$3§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§ !l§(_loc1_.name);
               }
               else
               {
                  this.§>"#§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §+$3§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(AvatarCreatorPopup.§>"_§(_loc3_.mId))
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
         this.setScale(this.§@"e§().§3!s§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §%e§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,#r§.numChildren)
         {
            _loc3_ = this.§,#r§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §@#m§.§?q§.items.§-%§)
         {
            this.§?"q§(_loc2_);
         }
      }
      
      public function §?"q§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§,#r§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §5w§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < §@#m§.§?q§.items.§%#Z§.length)
         {
            _loc2_ = §@#m§.§?q§.items.§%#Z§[_loc1_].name;
            _loc3_ = this.§<#6§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§,#r§.getChildByName("Items_" + _loc3_.§;$7§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.mId);
               }
            }
            _loc1_++;
         }
      }
      
      public function §-?§() : void
      {
         var _loc1_:§%#5§ = null;
         for each(_loc1_ in §@#m§.§?q§.items.§%#Z§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§ !l§(_loc1_.name);
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§6z§ = param1;
         this.§,#r§.scaleX = this.§6z§;
         this.§,#r§.scaleY = this.§6z§;
      }
      
      public function §>"<§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§;#R§)
         {
            this.§>"#§(_loc1_);
         }
      }
      
      public function §>"#§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§;#R§[param1.§1! §.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§9!e§)
            {
               this.§ !l§(param1.§1! §);
            }
            return;
         }
         this.§ !l§(param1.§1! §);
         this.§;#R§[param1.§1! §.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§,#r§.getChildByName("Items_" + param1.§;$7§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.mId);
            if(_loc3_.currentLabel != "Item_" + param1.mId)
            {
               this.§ !l§(param1.§;$7§);
            }
            else
            {
               this.§9##§("Items_" + param1.§;$7§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP" && param1.mId != "HeadBand")
            {
               this.§,!;§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§-!U§();
         }
      }
      
      private function §-!U§() : void
      {
         var _loc1_:MovieClip = this.§,#r§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc1_)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §,!;§() : void
      {
         var _loc1_:MovieClip = this.§,#r§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §<#6§(param1:String) : Item
      {
         return this.§;#R§[param1.toUpperCase()];
      }
      
      public function §'!>§() : Object
      {
         return this.§;#R§;
      }
      
      public function § !l§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§;#R§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§,#r§.getChildByName("Items_" + _loc2_.§;$7§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§-!U§();
               }
            }
         }
         delete this.§;#R§[param1.toUpperCase()];
      }
      
      public function §9##§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§,#r§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§,#r§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§,#r§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §'#z§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §@"e§() : §`c§
      {
         return this.§+!v§;
      }
      
      public function §+"5§() : String
      {
         var _loc1_:Array = [];
         {"list":_loc1_};
         _loc1_ = this.§6# §();
         return §2$§.§<"z§(_loc1_);
      }
      
      public function §6# §() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§;#R§)
         {
            _loc1_.push({
               "itemId":_loc2_.mId,
               "category":_loc2_.§1! §,
               "sId":_loc2_.sId,
               "name":_loc2_.§-!O§,
               "categorySID":_loc2_.§+"8§
            });
         }
         return _loc1_;
      }
      
      public function § !y§() : Number
      {
         return this.§6z§;
      }
      
      public function §#@§() : MovieClip
      {
         return this.§,#r§;
      }
      
      public function §3!9§() : void
      {
         this.§,#r§.visible = false;
      }
   }
}
