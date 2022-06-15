package §]!w§
{
   import §!"@§.§]"1§;
   import §,%§.§<D§;
   import §4y§.§0"H§;
   import §4y§.Item;
   import §4y§.§]"6§;
   import §5!&§.§+"@§;
   import com.rovio.assets.§?q§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §[!X§ extends Sprite
   {
      
      public static const §"<§:Number = 0.5;
      
      public static const §^d§:Boolean = false;
      
      public static const §!"<§:String = "avatar_equip";
      
      public static const §@c§:String = "avatar_character";
       
      
      public var § 2§:Object;
      
      private var §@"J§:MovieClip;
      
      private var §,w§:MovieClip;
      
      private var §;"$§:MovieClip;
      
      private var §<[§:Number = 0.5;
      
      private var §"!E§:§0"H§ = null;
      
      public function §[!X§(param1:§0"H§)
      {
         super();
         this.§"!E§ = param1;
         this.§ 2§ = new Object();
         this.§<[§ = this.§"!E§.§`k§;
         var _loc2_:Class = §?q§.§ q§("BackgroundContainer");
         this.§,w§ = new _loc2_();
         this.§,w§.stop();
         addChild(this.§,w§);
         var _loc3_:Class = §?q§.§ q§(param1.§&N§ + "_Animations");
         this.§@"J§ = new _loc3_();
         this.§@"J§.stop();
         this.§9x§();
         this.§@"J§.scaleX = this.§<[§;
         this.§@"J§.scaleY = this.§<[§;
         this.addChild(this.§@"J§);
         var _loc4_:Class = §?q§.§ q§("ForegroundContainer");
         this.§;"$§ = new _loc4_();
         this.§;"$§.stop();
         addChild(this.§;"$§);
      }
      
      public function §2!1§() : void
      {
         this.§,w§.visible = false;
         this.§;"$§.visible = false;
      }
      
      public function §^!'§(param1:String) : void
      {
         this.§,w§.gotoAndStop(param1.toLowerCase());
         this.§;"$§.gotoAndStop(param1.toLowerCase());
         this.§]"A§(§]"1§.§&"5§.items.§3"[§(param1));
      }
      
      public function §!"7§() : void
      {
         var _loc1_:§]"6§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §]"1§.§&"5§.items.§`!s§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §]"1§.§&"5§.items.§&!w§(_loc1_.name);
               _loc2_ = this.§6"4§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§8O§(_loc1_.name);
               }
               else
               {
                  this.§]"A§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §6"4§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(§+"@§.§4"M§(_loc3_.§&N§))
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
         this.setScale(this.§=!J§().§'&§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §9x§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@"J§.numChildren)
         {
            _loc3_ = this.§@"J§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §]"1§.§&"5§.items.§"!o§)
         {
            this.§@!V§(_loc2_);
         }
      }
      
      public function §@!V§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§@"J§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §1"X§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < §]"1§.§&"5§.items.§`!s§.length)
         {
            _loc2_ = §]"1§.§&"5§.items.§`!s§[_loc1_].name;
            _loc3_ = this.§>$§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§@"J§.getChildByName("Items_" + _loc3_.§5!L§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.§&N§);
               }
            }
            _loc1_++;
         }
      }
      
      public function §[!p§() : void
      {
         var _loc1_:§]"6§ = null;
         for each(_loc1_ in §]"1§.§&"5§.items.§`!s§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§8O§(_loc1_.name);
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§<[§ = param1;
         this.§@"J§.scaleX = this.§<[§;
         this.§@"J§.scaleY = this.§<[§;
      }
      
      public function § null§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§ 2§)
         {
            this.§]"A§(_loc1_);
         }
      }
      
      public function §]"A§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§ 2§[param1.§;"V§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§^d§)
            {
               this.§8O§(param1.§;"V§);
            }
            return;
         }
         this.§8O§(param1.§;"V§);
         this.§ 2§[param1.§;"V§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§@"J§.getChildByName("Items_" + param1.§5!L§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.§&N§);
            if(_loc3_.currentLabel != "Item_" + param1.§&N§)
            {
               this.§8O§(param1.§5!L§);
            }
            else
            {
               this.§ I§("Items_" + param1.§5!L§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP")
            {
               this.§+b§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§<"#§();
         }
      }
      
      private function §<"#§() : void
      {
         var _loc1_:MovieClip = this.§@"J§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = true;
      }
      
      private function §+b§() : void
      {
         var _loc1_:MovieClip = this.§@"J§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = false;
      }
      
      public function §>$§(param1:String) : Item
      {
         return this.§ 2§[param1.toUpperCase()];
      }
      
      public function §^W§() : Object
      {
         return this.§ 2§;
      }
      
      public function §8O§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§ 2§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§@"J§.getChildByName("Items_" + _loc2_.§5!L§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§<"#§();
               }
            }
         }
         delete this.§ 2§[param1.toUpperCase()];
      }
      
      public function § I§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§@"J§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§@"J§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§@"J§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §5!o§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §=!J§() : §0"H§
      {
         return this.§"!E§;
      }
      
      public function §9" §() : String
      {
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§2W§();
         return §<D§.§[V§(_loc1_);
      }
      
      public function §2W§() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§ 2§)
         {
            _loc1_.push({
               "itemId":_loc2_.§&N§,
               "category":_loc2_.§;"V§,
               "sId":_loc2_.sId,
               "name":_loc2_.mName,
               "categorySID":_loc2_.§6b§
            });
         }
         return _loc1_;
      }
      
      public function §+"+§() : Number
      {
         return this.§<[§;
      }
      
      public function §0!8§() : MovieClip
      {
         return this.§@"J§;
      }
   }
}
