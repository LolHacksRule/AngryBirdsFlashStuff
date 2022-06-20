package §,!F§
{
   import §#!p§.§]!"§;
   import §-"-§.§@!t§;
   import §8!-§.§9!e§;
   import §8!-§.Item;
   import §8!-§.§["<§;
   import §["@§.§["%§;
   import com.rovio.assets.§#!J§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §@"B§ extends Sprite
   {
      
      public static const §6!L§:Number = 0.5;
      
      public static const § O§:Boolean = false;
      
      public static const §?";§:String = "avatar_equip";
      
      public static const §-!`§:String = "avatar_character";
       
      
      public var §7!Z§:Object;
      
      private var §>]§:MovieClip;
      
      private var §"!W§:MovieClip;
      
      private var §-+§:MovieClip;
      
      private var §6!l§:Number = 0.5;
      
      private var §?!q§:§["<§ = null;
      
      public function §@"B§(param1:§["<§)
      {
         super();
         this.§?!q§ = param1;
         this.§7!Z§ = new Object();
         this.§6!l§ = this.§?!q§.§ !+§;
         var _loc2_:Class = §#!J§.§1!Y§("BackgroundContainer");
         this.§"!W§ = new _loc2_();
         this.§"!W§.stop();
         addChild(this.§"!W§);
         var _loc3_:Class = §#!J§.§1!Y§(param1.§4W§ + "_Animations");
         this.§>]§ = new _loc3_();
         this.§>]§.stop();
         this.§<!m§();
         this.§>]§.scaleX = this.§6!l§;
         this.§>]§.scaleY = this.§6!l§;
         this.addChild(this.§>]§);
         var _loc4_:Class = §#!J§.§1!Y§("ForegroundContainer");
         this.§-+§ = new _loc4_();
         this.§-+§.stop();
         addChild(this.§-+§);
      }
      
      public function §`M§() : void
      {
         this.§"!W§.visible = false;
         this.§-+§.visible = false;
      }
      
      public function §&&§(param1:String) : void
      {
         this.§"!W§.gotoAndStop(param1.toLowerCase());
         this.§-+§.gotoAndStop(param1.toLowerCase());
         this.§,"1§(§@!t§.§8c§.items.§8!]§(param1));
      }
      
      public function §6!s§() : void
      {
         var _loc1_:§9!e§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §@!t§.§8c§.items.§"!d§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §@!t§.§8c§.items.§;_§(_loc1_.name);
               _loc2_ = this.§1Z§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§2i§(_loc1_.name);
               }
               else
               {
                  this.§,"1§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §1Z§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(§]!"§.§#"$§(_loc3_.§4W§))
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
         this.setScale(this.§"L§().§0"4§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §<!m§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>]§.numChildren)
         {
            _loc3_ = this.§>]§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §@!t§.§8c§.items.§8!P§)
         {
            this.§ ;§(_loc2_);
         }
      }
      
      public function § ;§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§>]§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §^!`§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < §@!t§.§8c§.items.§"!d§.length)
         {
            _loc2_ = §@!t§.§8c§.items.§"!d§[_loc1_].name;
            _loc3_ = this.§>e§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§>]§.getChildByName("Items_" + _loc3_.§3c§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.§4W§);
               }
            }
            _loc1_++;
         }
      }
      
      public function §#!x§() : void
      {
         var _loc1_:§9!e§ = null;
         for each(_loc1_ in §@!t§.§8c§.items.§"!d§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§2i§(_loc1_.name);
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§6!l§ = param1;
         this.§>]§.scaleX = this.§6!l§;
         this.§>]§.scaleY = this.§6!l§;
      }
      
      public function §1!l§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§7!Z§)
         {
            this.§,"1§(_loc1_);
         }
      }
      
      public function §,"1§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§7!Z§[param1.§;F§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§ O§)
            {
               this.§2i§(param1.§;F§);
            }
            return;
         }
         this.§2i§(param1.§;F§);
         this.§7!Z§[param1.§;F§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§>]§.getChildByName("Items_" + param1.§3c§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.§4W§);
            if(_loc3_.currentLabel != "Item_" + param1.§4W§)
            {
               this.§2i§(param1.§3c§);
            }
            else
            {
               this.§2I§("Items_" + param1.§3c§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP")
            {
               this.§?"9§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§;!k§();
         }
      }
      
      private function §;!k§() : void
      {
         var _loc1_:MovieClip = this.§>]§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = true;
      }
      
      private function §?"9§() : void
      {
         var _loc1_:MovieClip = this.§>]§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = false;
      }
      
      public function §>e§(param1:String) : Item
      {
         return this.§7!Z§[param1.toUpperCase()];
      }
      
      public function §[7§() : Object
      {
         return this.§7!Z§;
      }
      
      public function §2i§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§7!Z§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§>]§.getChildByName("Items_" + _loc2_.§3c§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§;!k§();
               }
            }
         }
         delete this.§7!Z§[param1.toUpperCase()];
      }
      
      public function §2I§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§>]§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§>]§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§>]§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §=!m§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §"L§() : §["<§
      {
         return this.§?!q§;
      }
      
      public function §9!p§() : String
      {
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§-"C§();
         return §["%§.§9[§(_loc1_);
      }
      
      public function §-"C§() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§7!Z§)
         {
            _loc1_.push({
               "itemId":_loc2_.§4W§,
               "category":_loc2_.§;F§,
               "sId":_loc2_.sId
            });
         }
         return _loc1_;
      }
      
      public function §"m§() : Number
      {
         return this.§6!l§;
      }
      
      public function §`![§() : MovieClip
      {
         return this.§>]§;
      }
   }
}
