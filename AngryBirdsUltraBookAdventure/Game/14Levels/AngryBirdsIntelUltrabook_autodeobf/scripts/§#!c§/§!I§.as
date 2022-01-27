package §#!c§
{
   import §"+§.§6" §;
   import §#!o§.§5#§;
   import §#!o§.§>!,§;
   import §#!o§.Item;
   import §0!B§.§%9§;
   import §;#§.§;?§;
   import com.rovio.assets.§,!j§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §!I§ extends Sprite
   {
      
      public static const §;"!§:Number = 0.5;
      
      public static const §3e§:Boolean = false;
      
      public static const §1Z§:String = "avatar_equip";
      
      public static const §<!"§:String = "avatar_character";
       
      
      public var §6!d§:Object;
      
      private var §9+§:MovieClip;
      
      private var §@V§:MovieClip;
      
      private var §?>§:MovieClip;
      
      private var §?z§:Number = 0.5;
      
      private var §8X§:§5#§ = null;
      
      public function §!I§(param1:§5#§)
      {
         super();
         this.§8X§ = param1;
         this.§6!d§ = new Object();
         this.§?z§ = this.§8X§.§#q§;
         var _loc2_:Class = §,!j§.§!!N§("BackgroundContainer");
         this.§@V§ = new _loc2_();
         this.§@V§.stop();
         addChild(this.§@V§);
         var _loc3_:Class = §,!j§.§!!N§(param1.§9!^§ + "_Animations");
         this.§9+§ = new _loc3_();
         this.§9+§.stop();
         this.§%h§();
         this.§9+§.scaleX = this.§?z§;
         this.§9+§.scaleY = this.§?z§;
         this.addChild(this.§9+§);
         var _loc4_:Class = §,!j§.§!!N§("ForegroundContainer");
         this.§?>§ = new _loc4_();
         this.§?>§.stop();
         addChild(this.§?>§);
      }
      
      public function §6Q§() : void
      {
         this.§@V§.visible = false;
         this.§?>§.visible = false;
      }
      
      public function §3!p§(param1:String) : void
      {
         this.§@V§.gotoAndStop(param1.toLowerCase());
         this.§?>§.gotoAndStop(param1.toLowerCase());
         this.§'<§(§;?§.§]0§().§`!H§(param1));
      }
      
      public function §6[§() : void
      {
         var _loc1_:§>!,§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §;?§.§]0§().§>!J§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §;?§.§]0§().§7!§(_loc1_.name);
               _loc2_ = this.§1!5§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§`!I§(_loc1_.name);
               }
               else
               {
                  this.§'<§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §1!5§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(§6" §.§=?§(_loc3_.§9!^§))
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
         this.setScale(this.§&o§().§[x§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §%h§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         while(_loc1_ < this.§9+§.numChildren)
         {
            _loc3_ = this.§9+§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §;?§.§]0§().§9!B§)
         {
            this.§<![§(_loc2_);
         }
      }
      
      public function §<![§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§9+§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §3[§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:Number = 0;
         while(_loc1_ < §;?§.§]0§().§>!J§.length)
         {
            _loc2_ = §;?§.§]0§().§>!J§[_loc1_].name;
            _loc3_ = this.§-I§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§9+§.getChildByName("Items_" + _loc3_.§>!i§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.§9!^§);
               }
            }
            _loc1_++;
         }
      }
      
      public function §2<§() : void
      {
         var _loc1_:§>!,§ = null;
         for each(_loc1_ in §;?§.§]0§().§>!J§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§`!I§(_loc1_.name);
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§?z§ = param1;
         this.§9+§.scaleX = this.§?z§;
         this.§9+§.scaleY = this.§?z§;
      }
      
      public function §=!]§(param1:§!I§) : void
      {
         var _loc2_:Item = null;
         var _loc3_:§>!,§ = null;
         var _loc4_:String = null;
         var _loc5_:Item = null;
         for each(_loc3_ in §;?§.§]0§().§>!J§)
         {
            _loc4_ = _loc3_.name;
            _loc2_ = this.§6!d§[_loc4_.toUpperCase()];
            if(_loc5_ = param1.§6!d§[_loc4_.toUpperCase()])
            {
               this.§'<§(_loc5_);
            }
            else
            {
               this.§`!I§(_loc4_);
            }
            if(_loc2_)
            {
               param1.§'<§(_loc2_);
            }
            else
            {
               param1.§`!I§(_loc4_);
            }
         }
      }
      
      public function §@!R§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§6!d§)
         {
            this.§'<§(_loc1_);
         }
      }
      
      public function §'<§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§6!d§[param1.§^w§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§3e§)
            {
               this.§`!I§(param1.§^w§);
            }
            return;
         }
         this.§`!I§(param1.§^w§);
         this.§6!d§[param1.§^w§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§9+§.getChildByName("Items_" + param1.§>!i§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.§9!^§);
            if(_loc3_.currentLabel != "Item_" + param1.§9!^§)
            {
               §;?§.§,K§.§`!I§(param1.§>!i§);
            }
            else
            {
               this.§>U§("Items_" + param1.§>!i§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP")
            {
               this.§9!=§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§7B§();
         }
      }
      
      private function §7B§() : void
      {
         var _loc1_:MovieClip = this.§9+§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = true;
      }
      
      private function §9!=§() : void
      {
         var _loc1_:MovieClip = this.§9+§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = false;
      }
      
      public function §-I§(param1:String) : Item
      {
         return this.§6!d§[param1.toUpperCase()];
      }
      
      public function §=6§() : Object
      {
         return this.§6!d§;
      }
      
      public function §`!I§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§6!d§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§9+§.getChildByName("Items_" + _loc2_.§>!i§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§7B§();
               }
            }
         }
         delete this.§6!d§[param1.toUpperCase()];
      }
      
      public function §>U§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§9+§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§9+§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§9+§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §[!l§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §&o§() : §5#§
      {
         return this.§8X§;
      }
      
      public function §1n§() : String
      {
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§@3§();
         return §%9§.§?_§(_loc1_);
      }
      
      public function §@3§() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§6!d§)
         {
            _loc1_.push({
               "itemId":_loc2_.§9!^§,
               "category":_loc2_.§^w§,
               "sId":_loc2_.sId
            });
         }
         return _loc1_;
      }
      
      public function §!F§() : Number
      {
         return this.§?z§;
      }
      
      public function §=!s§() : MovieClip
      {
         return this.§9+§;
      }
   }
}
