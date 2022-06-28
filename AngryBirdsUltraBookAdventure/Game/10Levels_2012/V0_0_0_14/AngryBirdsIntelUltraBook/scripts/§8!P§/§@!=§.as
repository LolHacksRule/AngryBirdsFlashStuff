package §8!P§
{
   import §&=§.§#!5§;
   import §&=§.§>!-§;
   import §&=§.Item;
   import §<z§.§`G§;
   import §@_§.§!T§;
   import §^c§.§+-§;
   import com.rovio.assets.§9!N§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §@!=§ extends Sprite
   {
      
      public static const §@5§:Number = 0.5;
      
      public static const §for§:Boolean = false;
      
      public static const §+R§:String = "avatar_equip";
      
      public static const §`l§:String = "avatar_character";
       
      
      public var §+!?§:Object;
      
      private var §9-§:MovieClip;
      
      private var §+!N§:MovieClip;
      
      private var §;[§:MovieClip;
      
      private var §!+§:Number = 0.5;
      
      private var §^'§:§#!5§ = null;
      
      public function §@!=§(param1:§#!5§)
      {
         super();
         this.§^'§ = param1;
         this.§+!?§ = new Object();
         this.§!+§ = this.§^'§.§'!%§;
         var _loc2_:Class = §9!N§.§0!k§("BackgroundContainer");
         this.§+!N§ = new _loc2_();
         this.§+!N§.stop();
         addChild(this.§+!N§);
         var _loc3_:Class = §9!N§.§0!k§(param1.§49§ + "_Animations");
         this.§9-§ = new _loc3_();
         this.§9-§.stop();
         this.§-!H§();
         this.§9-§.scaleX = this.§!+§;
         this.§9-§.scaleY = this.§!+§;
         this.addChild(this.§9-§);
         var _loc4_:Class = §9!N§.§0!k§("ForegroundContainer");
         this.§;[§ = new _loc4_();
         this.§;[§.stop();
         addChild(this.§;[§);
      }
      
      public function §1!U§() : void
      {
         this.§+!N§.visible = false;
         this.§;[§.visible = false;
      }
      
      public function §<d§(param1:String) : void
      {
         this.§+!N§.gotoAndStop(param1.toLowerCase());
         this.§;[§.gotoAndStop(param1.toLowerCase());
         this.§%D§(§+-§.§?!9§().§ !`§(param1));
      }
      
      public function §]L§() : void
      {
         var _loc1_:§>!-§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §+-§.§?!9§().§1K§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §+-§.§?!9§().§#$§(_loc1_.name);
               _loc2_ = this.§4!8§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§'P§(_loc1_.name);
               }
               else
               {
                  this.§%D§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §4!8§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(§!T§.§+!q§(_loc3_.§49§))
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
         this.§&O§(this.§>!!§().§'[§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §-!H§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         while(_loc1_ < this.§9-§.numChildren)
         {
            _loc3_ = this.§9-§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §+-§.§?!9§().§"!n§)
         {
            this.§5,§(_loc2_);
         }
      }
      
      public function §5,§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§9-§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §89§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:Number = 0;
         while(_loc1_ < §+-§.§?!9§().§1K§.length)
         {
            _loc2_ = §+-§.§?!9§().§1K§[_loc1_].name;
            _loc3_ = this.§=!<§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§9-§.getChildByName("Items_" + _loc3_.§]!C§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.§49§);
               }
            }
            _loc1_++;
         }
      }
      
      public function §1S§() : void
      {
         var _loc1_:§>!-§ = null;
         for each(_loc1_ in §+-§.§?!9§().§1K§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§'P§(_loc1_.name);
            }
         }
      }
      
      public function §&O§(param1:Number) : void
      {
         this.§!+§ = param1;
         this.§9-§.scaleX = this.§!+§;
         this.§9-§.scaleY = this.§!+§;
      }
      
      public function §%q§(param1:§@!=§) : void
      {
         var _loc2_:Item = null;
         var _loc3_:§>!-§ = null;
         var _loc4_:String = null;
         var _loc5_:Item = null;
         for each(_loc3_ in §+-§.§?!9§().§1K§)
         {
            _loc4_ = _loc3_.name;
            _loc2_ = this.§+!?§[_loc4_.toUpperCase()];
            if(_loc5_ = param1.§+!?§[_loc4_.toUpperCase()])
            {
               this.§%D§(_loc5_);
            }
            else
            {
               this.§'P§(_loc4_);
            }
            if(_loc2_)
            {
               param1.§%D§(_loc2_);
            }
            else
            {
               param1.§'P§(_loc4_);
            }
         }
      }
      
      public function §@%§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§+!?§)
         {
            this.§%D§(_loc1_);
         }
      }
      
      public function §%D§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§+!?§[param1.§5H§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§for§)
            {
               this.§'P§(param1.§5H§);
            }
            return;
         }
         this.§'P§(param1.§5H§);
         this.§+!?§[param1.§5H§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§9-§.getChildByName("Items_" + param1.§]!C§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.§49§);
            if(_loc3_.currentLabel != "Item_" + param1.§49§)
            {
               §+-§.§5!0§.§'P§(param1.§]!C§);
            }
            else
            {
               this.§>`§("Items_" + param1.§]!C§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP")
            {
               this.§!O§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§=!h§();
         }
      }
      
      private function §=!h§() : void
      {
         var _loc1_:MovieClip = this.§9-§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = true;
      }
      
      private function §!O§() : void
      {
         var _loc1_:MovieClip = this.§9-§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = false;
      }
      
      public function §=!<§(param1:String) : Item
      {
         return this.§+!?§[param1.toUpperCase()];
      }
      
      public function §4!y§() : Object
      {
         return this.§+!?§;
      }
      
      public function §'P§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§+!?§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§9-§.getChildByName("Items_" + _loc2_.§]!C§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§=!h§();
               }
            }
         }
         delete this.§+!?§[param1.toUpperCase()];
      }
      
      public function §>`§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§9-§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§9-§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§9-§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §9!l§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §>!!§() : §#!5§
      {
         return this.§^'§;
      }
      
      public function §6B§() : String
      {
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§>!I§();
         return §`G§.§,Y§(_loc1_);
      }
      
      public function §>!I§() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§+!?§)
         {
            _loc1_.push({
               "itemId":_loc2_.§49§,
               "category":_loc2_.§5H§,
               "sId":_loc2_.sId
            });
         }
         return _loc1_;
      }
      
      public function §5U§() : Number
      {
         return this.§!+§;
      }
      
      public function §'L§() : MovieClip
      {
         return this.§9-§;
      }
   }
}
