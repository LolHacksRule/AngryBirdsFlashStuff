package §1"o§
{
   import §1"1§.§3!m§;
   import §4#[§.§6U§;
   import §6#s§.§1"G§;
   import §6#s§.§8#?§;
   import §6#s§.Item;
   import §?"R§.AvatarCreatorPopup;
   import com.rovio.assets.§@`§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class Avatar extends Sprite
   {
      
      public static const §4!^§:Number = 0.5;
      
      public static const §>$%§:Boolean = false;
      
      public static const §8t§:String = "avatar_equip";
      
      public static const §9"1§:String = "avatar_character";
       
      
      public var §0"j§:Object;
      
      private var §#c§:MovieClip;
      
      private var §9#E§:MovieClip;
      
      private var §2$%§:MovieClip;
      
      private var §]"?§:Number = 0.5;
      
      private var §;"u§:§8#?§ = null;
      
      public function Avatar(param1:§8#?§)
      {
         super();
         this.§;"u§ = param1;
         this.§0"j§ = new Object();
         this.§]"?§ = this.§;"u§.§6##§;
         var _loc2_:Class = §@`§.§4!i§("BackgroundContainer");
         this.§9#E§ = new _loc2_();
         this.§9#E§.stop();
         addChild(this.§9#E§);
         var _loc3_:Class = §@`§.§4!i§(param1.mId + "_Animations");
         this.§#c§ = new _loc3_();
         this.§#c§.stop();
         this.§!B§();
         this.§#c§.scaleX = this.§]"?§;
         this.§#c§.scaleY = this.§]"?§;
         this.addChild(this.§#c§);
         var _loc4_:Class = §@`§.§4!i§("ForegroundContainer");
         this.§2$%§ = new _loc4_();
         this.§2$%§.stop();
         addChild(this.§2$%§);
      }
      
      public function §?#l§() : void
      {
         this.§9#E§.visible = false;
         this.§2$%§.visible = false;
      }
      
      public function §-"u§(param1:String) : void
      {
         this.§9#E§.gotoAndStop(param1.toLowerCase());
         this.§2$%§.gotoAndStop(param1.toLowerCase());
         this.§0!G§(§3!m§.§3!]§.items.getItem(param1));
      }
      
      public function §!!P§() : void
      {
         var _loc1_:§1"G§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §3!m§.§3!]§.items.§!&§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §3!m§.§3!]§.items.§9$!§(_loc1_.name);
               _loc2_ = this.§!$0§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§!"l§(_loc1_.name);
               }
               else
               {
                  this.§0!G§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §!$0§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(AvatarCreatorPopup.§!!!§(_loc3_.mId))
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
         this.setScale(this.§%#h§().§ #!§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §!B§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#c§.numChildren)
         {
            _loc3_ = this.§#c§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §3!m§.§3!]§.items.§"I§)
         {
            this.§>!;§(_loc2_);
         }
      }
      
      public function §>!;§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§#c§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §;V§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < §3!m§.§3!]§.items.§!&§.length)
         {
            _loc2_ = §3!m§.§3!]§.items.§!&§[_loc1_].name;
            _loc3_ = this.§7#2§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§#c§.getChildByName("Items_" + _loc3_.§@I§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.mId);
               }
            }
            _loc1_++;
         }
      }
      
      public function §@$ §() : void
      {
         var _loc1_:§1"G§ = null;
         for each(_loc1_ in §3!m§.§3!]§.items.§!&§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§!"l§(_loc1_.name);
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§]"?§ = param1;
         this.§#c§.scaleX = this.§]"?§;
         this.§#c§.scaleY = this.§]"?§;
      }
      
      public function §"!P§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§0"j§)
         {
            this.§0!G§(_loc1_);
         }
      }
      
      public function §0!G§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§0"j§[param1.§3$1§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§>$%§)
            {
               this.§!"l§(param1.§3$1§);
            }
            return;
         }
         this.§!"l§(param1.§3$1§);
         this.§0"j§[param1.§3$1§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§#c§.getChildByName("Items_" + param1.§@I§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.mId);
            if(_loc3_.currentLabel != "Item_" + param1.mId)
            {
               this.§!"l§(param1.§@I§);
            }
            else
            {
               this.§5X§("Items_" + param1.§@I§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP" && param1.mId != "HeadBand")
            {
               this.§#!^§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§4#n§();
         }
      }
      
      private function §4#n§() : void
      {
         var _loc1_:MovieClip = this.§#c§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc1_)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §#!^§() : void
      {
         var _loc1_:MovieClip = this.§#c§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §7#2§(param1:String) : Item
      {
         return this.§0"j§[param1.toUpperCase()];
      }
      
      public function §6!M§() : Object
      {
         return this.§0"j§;
      }
      
      public function §!"l§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§0"j§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§#c§.getChildByName("Items_" + _loc2_.§@I§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§4#n§();
               }
            }
         }
         delete this.§0"j§[param1.toUpperCase()];
      }
      
      public function §5X§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§#c§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§#c§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§#c§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §^M§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §%#h§() : §8#?§
      {
         return this.§;"u§;
      }
      
      public function §!#>§() : String
      {
         var _loc1_:Array = [];
         {"list":_loc1_};
         _loc1_ = this.§6"§();
         return §6U§.§]p§(_loc1_);
      }
      
      public function §6"§() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§0"j§)
         {
            _loc1_.push({
               "itemId":_loc2_.mId,
               "category":_loc2_.§3$1§,
               "sId":_loc2_.sId,
               "name":_loc2_.§2!4§,
               "categorySID":_loc2_.§;#I§
            });
         }
         return _loc1_;
      }
      
      public function §9d§() : Number
      {
         return this.§]"?§;
      }
      
      public function §3"Y§() : MovieClip
      {
         return this.§#c§;
      }
      
      public function §3"N§() : void
      {
         this.§#c§.visible = false;
      }
   }
}
