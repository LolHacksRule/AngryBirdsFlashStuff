package §89§
{
   import §1e§.§5m§;
   import §7r§.§#!q§;
   import §7r§.§?V§;
   import §7r§.Item;
   import §`!%§.§6!_§;
   import com.rovio.assets.§%!G§;
   import §finally§.§4!S§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §7A§ extends Sprite
   {
      
      public static const §]%§:Number = 0.5;
      
      public static const §<v§:Boolean = false;
      
      public static const §8!1§:String = "avatar_equip";
      
      public static const §"4§:String = "avatar_character";
       
      
      public var §]H§:Object;
      
      private var §"!V§:MovieClip;
      
      private var §?!<§:MovieClip;
      
      private var §`&§:MovieClip;
      
      private var §'8§:Number = 0.5;
      
      private var §2!!§:§#!q§ = null;
      
      public function §7A§(param1:§#!q§)
      {
         super();
         this.§2!!§ = param1;
         this.§]H§ = new Object();
         this.§'8§ = this.§2!!§.§2!V§;
         var _loc2_:Class = §%!G§.§^!B§("BackgroundContainer");
         this.§?!<§ = new _loc2_();
         this.§?!<§.stop();
         addChild(this.§?!<§);
         var _loc3_:Class = §%!G§.§^!B§(param1.§&!X§ + "_Animations");
         this.§"!V§ = new _loc3_();
         this.§"!V§.stop();
         this.§#!'§();
         this.§"!V§.scaleX = this.§'8§;
         this.§"!V§.scaleY = this.§'8§;
         this.addChild(this.§"!V§);
         var _loc4_:Class = §%!G§.§^!B§("ForegroundContainer");
         this.§`&§ = new _loc4_();
         this.§`&§.stop();
         addChild(this.§`&§);
      }
      
      public function §1!3§() : void
      {
         this.§?!<§.visible = false;
         this.§`&§.visible = false;
      }
      
      public function §&!x§(param1:String) : void
      {
         this.§?!<§.gotoAndStop(param1.toLowerCase());
         this.§`&§.gotoAndStop(param1.toLowerCase());
         this.§9!r§(§6!_§.§1w§().§1]§(param1));
      }
      
      public function § !5§() : void
      {
         var _loc1_:§?V§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §6!_§.§1w§().§=!b§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §6!_§.§1w§().§ L§(_loc1_.name);
               _loc2_ = this.§=Y§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§'!X§(_loc1_.name);
               }
               else
               {
                  this.§9!r§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §=Y§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(§5m§.§+!d§(_loc3_.§&!X§))
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
         this.§<!K§(this.§6;§().§7!6§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §#!'§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         while(_loc1_ < this.§"!V§.numChildren)
         {
            _loc3_ = this.§"!V§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §6!_§.§1w§().§]n§)
         {
            this.§?!w§(_loc2_);
         }
      }
      
      public function §?!w§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§"!V§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §3$§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:Number = 0;
         while(_loc1_ < §6!_§.§1w§().§=!b§.length)
         {
            _loc2_ = §6!_§.§1w§().§=!b§[_loc1_].name;
            _loc3_ = this.§66§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§"!V§.getChildByName("Items_" + _loc3_.§-^§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.§&!X§);
               }
            }
            _loc1_++;
         }
      }
      
      public function §,!!§() : void
      {
         var _loc1_:§?V§ = null;
         for each(_loc1_ in §6!_§.§1w§().§=!b§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§'!X§(_loc1_.name);
            }
         }
      }
      
      public function §<!K§(param1:Number) : void
      {
         this.§'8§ = param1;
         this.§"!V§.scaleX = this.§'8§;
         this.§"!V§.scaleY = this.§'8§;
      }
      
      public function §8!g§(param1:§7A§) : void
      {
         var _loc2_:Item = null;
         var _loc3_:§?V§ = null;
         var _loc4_:String = null;
         var _loc5_:Item = null;
         for each(_loc3_ in §6!_§.§1w§().§=!b§)
         {
            _loc4_ = _loc3_.name;
            _loc2_ = this.§]H§[_loc4_.toUpperCase()];
            if(_loc5_ = param1.§]H§[_loc4_.toUpperCase()])
            {
               this.§9!r§(_loc5_);
            }
            else
            {
               this.§'!X§(_loc4_);
            }
            if(_loc2_)
            {
               param1.§9!r§(_loc2_);
            }
            else
            {
               param1.§'!X§(_loc4_);
            }
         }
      }
      
      public function §1! §() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§]H§)
         {
            this.§9!r§(_loc1_);
         }
      }
      
      public function §9!r§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§]H§[param1.§@§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§<v§)
            {
               this.§'!X§(param1.§@§);
            }
            return;
         }
         this.§'!X§(param1.§@§);
         this.§]H§[param1.§@§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§"!V§.getChildByName("Items_" + param1.§-^§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.§&!X§);
            if(_loc3_.currentLabel != "Item_" + param1.§&!X§)
            {
               §6!_§.§+!e§.§'!X§(param1.§-^§);
            }
            else
            {
               this.§1-§("Items_" + param1.§-^§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP")
            {
               this.§<!;§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§`C§();
         }
      }
      
      private function §`C§() : void
      {
         var _loc1_:MovieClip = this.§"!V§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = true;
      }
      
      private function §<!;§() : void
      {
         var _loc1_:MovieClip = this.§"!V§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = false;
      }
      
      public function §66§(param1:String) : Item
      {
         return this.§]H§[param1.toUpperCase()];
      }
      
      public function §5]§() : Object
      {
         return this.§]H§;
      }
      
      public function §'!X§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§]H§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§"!V§.getChildByName("Items_" + _loc2_.§-^§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§`C§();
               }
            }
         }
         delete this.§]H§[param1.toUpperCase()];
      }
      
      public function §1-§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§"!V§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§"!V§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§"!V§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §implements§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §6;§() : §#!q§
      {
         return this.§2!!§;
      }
      
      public function §?!_§() : String
      {
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§&@§();
         return §4!S§.§#D§(_loc1_);
      }
      
      public function §&@§() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§]H§)
         {
            _loc1_.push({
               "itemId":_loc2_.§&!X§,
               "category":_loc2_.§@§,
               "sId":_loc2_.sId
            });
         }
         return _loc1_;
      }
      
      public function §1!-§() : Number
      {
         return this.§'8§;
      }
      
      public function §'!'§() : MovieClip
      {
         return this.§"!V§;
      }
   }
}
