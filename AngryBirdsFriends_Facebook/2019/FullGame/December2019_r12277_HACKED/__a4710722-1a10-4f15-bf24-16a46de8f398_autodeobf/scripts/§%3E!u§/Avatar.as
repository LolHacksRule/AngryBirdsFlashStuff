package §>!u§
{
   import § h§.AvatarCreatorPopup;
   import §'!S§.§<"5§;
   import §,#D§.§;!9§;
   import §^"K§.§5!t§;
   import §^"K§.§9#%§;
   import §^"K§.Item;
   import com.rovio.assets.§=@§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class Avatar extends Sprite
   {
      
      public static const §8r§:Number = 0.5;
      
      public static const §0"b§:Boolean = false;
      
      public static const §5#5§:String = "avatar_equip";
      
      public static const §>A§:String = "avatar_character";
       
      
      public var §0$;§:Object;
      
      private var §6!K§:MovieClip;
      
      private var §8`§:MovieClip;
      
      private var §99§:MovieClip;
      
      private var §6#q§:Number = 0.5;
      
      private var §;#P§:§9#%§ = null;
      
      public function Avatar(param1:§9#%§)
      {
         super();
         this.§;#P§ = param1;
         this.§0$;§ = new Object();
         this.§6#q§ = this.§;#P§.§=!>§;
         var _loc2_:Class = §=@§.§9!x§("BackgroundContainer");
         this.§8`§ = new _loc2_();
         this.§8`§.stop();
         addChild(this.§8`§);
         var _loc3_:Class = §=@§.§9!x§(param1.mId + "_Animations");
         this.§6!K§ = new _loc3_();
         this.§6!K§.stop();
         this.each();
         this.§6!K§.scaleX = this.§6#q§;
         this.§6!K§.scaleY = this.§6#q§;
         this.addChild(this.§6!K§);
         var _loc4_:Class = §=@§.§9!x§("ForegroundContainer");
         this.§99§ = new _loc4_();
         this.§99§.stop();
         addChild(this.§99§);
      }
      
      public function §3!a§() : void
      {
         this.§8`§.visible = false;
         this.§99§.visible = false;
      }
      
      public function §3#F§(param1:String) : void
      {
         this.§8`§.gotoAndStop(param1.toLowerCase());
         this.§99§.gotoAndStop(param1.toLowerCase());
         this.§""Y§(§<"5§.§3"1§.items.getItem(param1));
      }
      
      public function §9!l§() : void
      {
         var _loc1_:§5!t§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §<"5§.§3"1§.items.§4+§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §<"5§.§3"1§.items.§7#6§(_loc1_.name);
               _loc2_ = this.§%#q§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§1"-§(_loc1_.name);
               }
               else
               {
                  this.§""Y§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §%#q§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(AvatarCreatorPopup.§^c§(_loc3_.mId))
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
         this.setScale(this.§9!s§().§4!_§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function each() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6!K§.numChildren)
         {
            _loc3_ = this.§6!K§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §<"5§.§3"1§.items.§#"j§)
         {
            this.§+@§(_loc2_);
         }
      }
      
      public function §+@§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§6!K§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §"!4§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < §<"5§.§3"1§.items.§4+§.length)
         {
            _loc2_ = §<"5§.§3"1§.items.§4+§[_loc1_].name;
            _loc3_ = this.§`!r§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§6!K§.getChildByName("Items_" + _loc3_.§0!^§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.mId);
               }
            }
            _loc1_++;
         }
      }
      
      public function §#!f§() : void
      {
         var _loc1_:§5!t§ = null;
         for each(_loc1_ in §<"5§.§3"1§.items.§4+§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§1"-§(_loc1_.name);
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§6#q§ = param1;
         this.§6!K§.scaleX = this.§6#q§;
         this.§6!K§.scaleY = this.§6#q§;
      }
      
      public function §&!V§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§0$;§)
         {
            this.§""Y§(_loc1_);
         }
      }
      
      public function §""Y§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§0$;§[param1.§7#n§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§0"b§)
            {
               this.§1"-§(param1.§7#n§);
            }
            return;
         }
         this.§1"-§(param1.§7#n§);
         this.§0$;§[param1.§7#n§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§6!K§.getChildByName("Items_" + param1.§0!^§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.mId);
            if(_loc3_.currentLabel != "Item_" + param1.mId)
            {
               this.§1"-§(param1.§0!^§);
            }
            else
            {
               this.§=#g§("Items_" + param1.§0!^§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP" && param1.mId != "HeadBand")
            {
               this.§4"X§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§'$$§();
         }
      }
      
      private function §'$$§() : void
      {
         var _loc1_:MovieClip = this.§6!K§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc1_)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §4"X§() : void
      {
         var _loc1_:MovieClip = this.§6!K§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §`!r§(param1:String) : Item
      {
         return this.§0$;§[param1.toUpperCase()];
      }
      
      public function §,",§() : Object
      {
         return this.§0$;§;
      }
      
      public function §1"-§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§0$;§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§6!K§.getChildByName("Items_" + _loc2_.§0!^§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§'$$§();
               }
            }
         }
         delete this.§0$;§[param1.toUpperCase()];
      }
      
      public function §=#g§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§6!K§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§6!K§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§6!K§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §2"@§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §9!s§() : §9#%§
      {
         return this.§;#P§;
      }
      
      public function §?Y§() : String
      {
         var _loc1_:Array = [];
         {"list":_loc1_};
         _loc1_ = this.§9!j§();
         return §;!9§.§##o§(_loc1_);
      }
      
      public function §9!j§() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§0$;§)
         {
            _loc1_.push({
               "itemId":_loc2_.mId,
               "category":_loc2_.§7#n§,
               "sId":_loc2_.sId,
               "name":_loc2_.§-#3§,
               "categorySID":_loc2_.§0G§
            });
         }
         return _loc1_;
      }
      
      public function §4"8§() : Number
      {
         return this.§6#q§;
      }
      
      public function §=#0§() : MovieClip
      {
         return this.§6!K§;
      }
      
      public function §#!`§() : void
      {
         this.§6!K§.visible = false;
      }
   }
}
