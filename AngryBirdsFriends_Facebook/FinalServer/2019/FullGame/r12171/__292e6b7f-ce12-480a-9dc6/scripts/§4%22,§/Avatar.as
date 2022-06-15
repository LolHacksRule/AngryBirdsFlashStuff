package §4",§
{
   import §4§.§7j§;
   import §>#l§.§=#j§;
   import §?Q§.AvatarCreatorPopup;
   import §@`§.§'$8§;
   import §@`§.§7a§;
   import §@`§.Item;
   import com.rovio.assets.§[a§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class Avatar extends Sprite
   {
      
      public static const § G§:Number = 0.5;
      
      public static const §&#X§:Boolean = false;
      
      public static const §8#d§:String = "avatar_equip";
      
      public static const §?#x§:String = "avatar_character";
       
      
      public var §;"E§:Object;
      
      private var §]s§:MovieClip;
      
      private var §`$8§:MovieClip;
      
      private var §!#t§:MovieClip;
      
      private var §#!1§:Number = 0.5;
      
      private var §&y§:§'$8§ = null;
      
      public function Avatar(param1:§'$8§)
      {
         super();
         this.§&y§ = param1;
         this.§;"E§ = new Object();
         this.§#!1§ = this.§&y§.§6F§;
         var _loc2_:Class = §[a§.§8#k§("BackgroundContainer");
         this.§`$8§ = new _loc2_();
         this.§`$8§.stop();
         addChild(this.§`$8§);
         var _loc3_:Class = §[a§.§8#k§(param1.mId + "_Animations");
         this.§]s§ = new _loc3_();
         this.§]s§.stop();
         this.§""%§();
         this.§]s§.scaleX = this.§#!1§;
         this.§]s§.scaleY = this.§#!1§;
         this.addChild(this.§]s§);
         var _loc4_:Class = §[a§.§8#k§("ForegroundContainer");
         this.§!#t§ = new _loc4_();
         this.§!#t§.stop();
         addChild(this.§!#t§);
      }
      
      public function §;!Z§() : void
      {
         this.§`$8§.visible = false;
         this.§!#t§.visible = false;
      }
      
      public function §8C§(param1:String) : void
      {
         this.§`$8§.gotoAndStop(param1.toLowerCase());
         this.§!#t§.gotoAndStop(param1.toLowerCase());
         this.§9t§(§7j§.§+!,§.items.getItem(param1));
      }
      
      public function §%!r§() : void
      {
         var _loc1_:§7a§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §7j§.§+!,§.items.§]"<§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §7j§.§+!,§.items.§'$C§(_loc1_.name);
               _loc2_ = this.§!"S§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§`"u§(_loc1_.name);
               }
               else
               {
                  this.§9t§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §!"S§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(AvatarCreatorPopup.§[#Y§(_loc3_.mId))
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
         this.setScale(this.§@"$§().§5"`§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §""%§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]s§.numChildren)
         {
            _loc3_ = this.§]s§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §7j§.§+!,§.items.§-#s§)
         {
            this.§!$%§(_loc2_);
         }
      }
      
      public function §!$%§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§]s§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §5i§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < §7j§.§+!,§.items.§]"<§.length)
         {
            _loc2_ = §7j§.§+!,§.items.§]"<§[_loc1_].name;
            _loc3_ = this.§^"B§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§]s§.getChildByName("Items_" + _loc3_.§^F§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.mId);
               }
            }
            _loc1_++;
         }
      }
      
      public function §-R§() : void
      {
         var _loc1_:§7a§ = null;
         for each(_loc1_ in §7j§.§+!,§.items.§]"<§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§`"u§(_loc1_.name);
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§#!1§ = param1;
         this.§]s§.scaleX = this.§#!1§;
         this.§]s§.scaleY = this.§#!1§;
      }
      
      public function §;+§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§;"E§)
         {
            this.§9t§(_loc1_);
         }
      }
      
      public function §9t§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§;"E§[param1.§'!P§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§&#X§)
            {
               this.§`"u§(param1.§'!P§);
            }
            return;
         }
         this.§`"u§(param1.§'!P§);
         this.§;"E§[param1.§'!P§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§]s§.getChildByName("Items_" + param1.§^F§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.mId);
            if(_loc3_.currentLabel != "Item_" + param1.mId)
            {
               this.§`"u§(param1.§^F§);
            }
            else
            {
               this.§8$7§("Items_" + param1.§^F§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP" && param1.mId != "HeadBand")
            {
               this.§&#t§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§%!G§();
         }
      }
      
      private function §%!G§() : void
      {
         var _loc1_:MovieClip = this.§]s§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc1_)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §&#t§() : void
      {
         var _loc1_:MovieClip = this.§]s§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §^"B§(param1:String) : Item
      {
         return this.§;"E§[param1.toUpperCase()];
      }
      
      public function §'"r§() : Object
      {
         return this.§;"E§;
      }
      
      public function §`"u§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§;"E§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§]s§.getChildByName("Items_" + _loc2_.§^F§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§%!G§();
               }
            }
         }
         delete this.§;"E§[param1.toUpperCase()];
      }
      
      public function §8$7§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§]s§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§]s§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§]s§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §1!g§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §@"$§() : §'$8§
      {
         return this.§&y§;
      }
      
      public function §-C§() : String
      {
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§7x§();
         return §=#j§.§0$-§(_loc1_);
      }
      
      public function §7x§() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§;"E§)
         {
            _loc1_.push({
               "itemId":_loc2_.mId,
               "category":_loc2_.§'!P§,
               "sId":_loc2_.sId,
               "name":_loc2_.§&$"§,
               "categorySID":_loc2_.§@!P§
            });
         }
         return _loc1_;
      }
      
      public function §5!p§() : Number
      {
         return this.§#!1§;
      }
      
      public function §<N§() : MovieClip
      {
         return this.§]s§;
      }
      
      public function §1!L§() : void
      {
         this.§]s§.visible = false;
      }
   }
}
