package §!"=§
{
   import §!K§.Item;
   import §!K§.§]q§;
   import §!K§.§use §;
   import §#!H§.§=!F§;
   import §0p§.§3!D§;
   import §@">§.§%!0§;
   import com.rovio.assets.§8B§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §8S§ extends Sprite
   {
      
      public static const §3y§:Number = 0.5;
      
      public static const §9";§:Boolean = false;
      
      public static const §"T§:String = "avatar_equip";
      
      public static const §2!A§:String = "avatar_character";
       
      
      public var §'E§:Object;
      
      private var §^"<§:MovieClip;
      
      private var §@[§:MovieClip;
      
      private var §-§:MovieClip;
      
      private var §[!q§:Number = 0.5;
      
      private var §"<§:§]q§ = null;
      
      public function §8S§(param1:§]q§)
      {
         super();
         this.§"<§ = param1;
         this.§'E§ = new Object();
         this.§[!q§ = this.§"<§.§+h§;
         var _loc2_:Class = §8B§.§6"C§("BackgroundContainer");
         this.§@[§ = new _loc2_();
         this.§@[§.stop();
         addChild(this.§@[§);
         var _loc3_:Class = §8B§.§6"C§(param1.§;!Y§ + "_Animations");
         this.§^"<§ = new _loc3_();
         this.§^"<§.stop();
         this.§`"A§();
         this.§^"<§.scaleX = this.§[!q§;
         this.§^"<§.scaleY = this.§[!q§;
         this.addChild(this.§^"<§);
         var _loc4_:Class = §8B§.§6"C§("ForegroundContainer");
         this.§-§ = new _loc4_();
         this.§-§.stop();
         addChild(this.§-§);
      }
      
      public function §#!K§() : void
      {
         this.§@[§.visible = false;
         this.§-§.visible = false;
      }
      
      public function §6!9§(param1:String) : void
      {
         this.§@[§.gotoAndStop(param1.toLowerCase());
         this.§-§.gotoAndStop(param1.toLowerCase());
         this.§0!L§(§=!F§.§;"§.items.§1!P§(param1));
      }
      
      public function §;J§() : void
      {
         var _loc1_:§use § = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §=!F§.§;"§.items.§-S§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §=!F§.§;"§.items.§8!=§(_loc1_.name);
               _loc2_ = this.§2"D§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§,p§(_loc1_.name);
               }
               else
               {
                  this.§0!L§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §2"D§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(§%!0§.§5!3§(_loc3_.§;!Y§))
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
         this.setScale(this.§&!h§().§;"D§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §`"A§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^"<§.numChildren)
         {
            _loc3_ = this.§^"<§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §=!F§.§;"§.items.§1!2§)
         {
            this.§3&§(_loc2_);
         }
      }
      
      public function §3&§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§^"<§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §8!0§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < §=!F§.§;"§.items.§-S§.length)
         {
            _loc2_ = §=!F§.§;"§.items.§-S§[_loc1_].name;
            _loc3_ = this.§%!^§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§^"<§.getChildByName("Items_" + _loc3_.§=!q§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.§;!Y§);
               }
            }
            _loc1_++;
         }
      }
      
      public function §^!+§() : void
      {
         var _loc1_:§use § = null;
         for each(_loc1_ in §=!F§.§;"§.items.§-S§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§,p§(_loc1_.name);
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§[!q§ = param1;
         this.§^"<§.scaleX = this.§[!q§;
         this.§^"<§.scaleY = this.§[!q§;
      }
      
      public function §#t§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§'E§)
         {
            this.§0!L§(_loc1_);
         }
      }
      
      public function §0!L§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§'E§[param1.§[C§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§9";§)
            {
               this.§,p§(param1.§[C§);
            }
            return;
         }
         this.§,p§(param1.§[C§);
         this.§'E§[param1.§[C§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§^"<§.getChildByName("Items_" + param1.§=!q§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.§;!Y§);
            if(_loc3_.currentLabel != "Item_" + param1.§;!Y§)
            {
               this.§,p§(param1.§=!q§);
            }
            else
            {
               this.§;Z§("Items_" + param1.§=!q§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP")
            {
               this.§4!4§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§,z§();
         }
      }
      
      private function §,z§() : void
      {
         var _loc1_:MovieClip = this.§^"<§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = true;
      }
      
      private function §4!4§() : void
      {
         var _loc1_:MovieClip = this.§^"<§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = false;
      }
      
      public function §%!^§(param1:String) : Item
      {
         return this.§'E§[param1.toUpperCase()];
      }
      
      public function §=!D§() : Object
      {
         return this.§'E§;
      }
      
      public function §,p§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§'E§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§^"<§.getChildByName("Items_" + _loc2_.§=!q§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§,z§();
               }
            }
         }
         delete this.§'E§[param1.toUpperCase()];
      }
      
      public function §;Z§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§^"<§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§^"<§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§^"<§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §?"A§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §&!h§() : §]q§
      {
         return this.§"<§;
      }
      
      public function § "9§() : String
      {
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.include();
         return §3!D§.§7U§(_loc1_);
      }
      
      public function include() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§'E§)
         {
            _loc1_.push({
               "itemId":_loc2_.§;!Y§,
               "category":_loc2_.§[C§,
               "sId":_loc2_.sId
            });
         }
         return _loc1_;
      }
      
      public function §7!_§() : Number
      {
         return this.§[!q§;
      }
      
      public function §^"!§() : MovieClip
      {
         return this.§^"<§;
      }
   }
}
