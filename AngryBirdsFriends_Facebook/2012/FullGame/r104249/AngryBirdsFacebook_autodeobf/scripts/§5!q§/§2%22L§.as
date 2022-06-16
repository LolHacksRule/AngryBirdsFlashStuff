package §5!q§
{
   import § !i§.§=?§;
   import §!9§.§%y§;
   import §0!,§.§^"B§;
   import §`!?§.§%"3§;
   import §`!?§.§;!`§;
   import §`!?§.Item;
   import com.rovio.assets.§>"5§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §2"L§ extends Sprite
   {
      
      public static const §5"3§:Number = 0.5;
      
      public static const §[!#§:Boolean = false;
      
      public static const §"!N§:String = "avatar_equip";
      
      public static const §12§:String = "avatar_character";
       
      
      public var §&v§:Object;
      
      private var §3",§:MovieClip;
      
      private var §<^§:MovieClip;
      
      private var §%"+§:MovieClip;
      
      private var §%""§:Number = 0.5;
      
      private var §#!L§:§;!`§ = null;
      
      public function §2"L§(param1:§;!`§)
      {
         super();
         this.§#!L§ = param1;
         this.§&v§ = new Object();
         this.§%""§ = this.§#!L§.§&!Q§;
         var _loc2_:Class = §>"5§.§6s§("BackgroundContainer");
         this.§<^§ = new _loc2_();
         this.§<^§.stop();
         addChild(this.§<^§);
         var _loc3_:Class = §>"5§.§6s§(param1.§3!9§ + "_Animations");
         this.§3",§ = new _loc3_();
         this.§3",§.stop();
         this.§`!4§();
         this.§3",§.scaleX = this.§%""§;
         this.§3",§.scaleY = this.§%""§;
         this.addChild(this.§3",§);
         var _loc4_:Class = §>"5§.§6s§("ForegroundContainer");
         this.§%"+§ = new _loc4_();
         this.§%"+§.stop();
         addChild(this.§%"+§);
      }
      
      public function §<"2§() : void
      {
         this.§<^§.visible = false;
         this.§%"+§.visible = false;
      }
      
      public function §,d§(param1:String) : void
      {
         this.§<^§.gotoAndStop(param1.toLowerCase());
         this.§%"+§.gotoAndStop(param1.toLowerCase());
         this.§&"&§(§%y§.§1[§.items.§0@§(param1));
      }
      
      public function §#!]§() : void
      {
         var _loc1_:§%"3§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §%y§.§1[§.items.§+!Z§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §%y§.§1[§.items.§"!%§(_loc1_.name);
               _loc2_ = this.§8'§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§-W§(_loc1_.name);
               }
               else
               {
                  this.§&"&§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §8'§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(§^"B§.§,">§(_loc3_.§3!9§))
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
         this.setScale(this.§8S§().§ !S§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §`!4§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3",§.numChildren)
         {
            _loc3_ = this.§3",§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §%y§.§1[§.items.§'!h§)
         {
            this.§-1§(_loc2_);
         }
      }
      
      public function §-1§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§3",§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §3!V§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < §%y§.§1[§.items.§+!Z§.length)
         {
            _loc2_ = §%y§.§1[§.items.§+!Z§[_loc1_].name;
            _loc3_ = this.§'M§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§3",§.getChildByName("Items_" + _loc3_.§-"H§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.§3!9§);
               }
            }
            _loc1_++;
         }
      }
      
      public function §else§() : void
      {
         var _loc1_:§%"3§ = null;
         for each(_loc1_ in §%y§.§1[§.items.§+!Z§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§-W§(_loc1_.name);
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§%""§ = param1;
         this.§3",§.scaleX = this.§%""§;
         this.§3",§.scaleY = this.§%""§;
      }
      
      public function §class§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§&v§)
         {
            this.§&"&§(_loc1_);
         }
      }
      
      public function §&"&§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§&v§[param1.§;!g§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§[!#§)
            {
               this.§-W§(param1.§;!g§);
            }
            return;
         }
         this.§-W§(param1.§;!g§);
         this.§&v§[param1.§;!g§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§3",§.getChildByName("Items_" + param1.§-"H§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.§3!9§);
            if(_loc3_.currentLabel != "Item_" + param1.§3!9§)
            {
               this.§-W§(param1.§-"H§);
            }
            else
            {
               this.§?!5§("Items_" + param1.§-"H§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP")
            {
               this.§&!D§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§@!8§();
         }
      }
      
      private function §@!8§() : void
      {
         var _loc1_:MovieClip = this.§3",§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = true;
      }
      
      private function §&!D§() : void
      {
         var _loc1_:MovieClip = this.§3",§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = false;
      }
      
      public function §'M§(param1:String) : Item
      {
         return this.§&v§[param1.toUpperCase()];
      }
      
      public function §2! §() : Object
      {
         return this.§&v§;
      }
      
      public function §-W§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§&v§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§3",§.getChildByName("Items_" + _loc2_.§-"H§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§@!8§();
               }
            }
         }
         delete this.§&v§[param1.toUpperCase()];
      }
      
      public function §?!5§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§3",§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§3",§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§3",§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §`!s§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §8S§() : §;!`§
      {
         return this.§#!L§;
      }
      
      public function §0!c§() : String
      {
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§+!u§();
         return §=?§.§`!r§(_loc1_);
      }
      
      public function §+!u§() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§&v§)
         {
            _loc1_.push({
               "itemId":_loc2_.§3!9§,
               "category":_loc2_.§;!g§,
               "sId":_loc2_.sId
            });
         }
         return _loc1_;
      }
      
      public function §%Z§() : Number
      {
         return this.§%""§;
      }
      
      public function §&E§() : MovieClip
      {
         return this.§3",§;
      }
   }
}
