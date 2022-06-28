package §[N§
{
   import §"D§.§#v§;
   import §4;§.§5n§;
   import §8!6§.§"!K§;
   import §8!6§.§&!S§;
   import §8!6§.Item;
   import §[!I§.§<-§;
   import com.rovio.assets.§`!t§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §<!b§ extends Sprite
   {
      
      public static const §,!R§:Number = 0.5;
      
      public static const §#!i§:Boolean = false;
      
      public static const §?!;§:String = "avatar_equip";
      
      public static const §<!8§:String = "avatar_character";
       
      
      public var §^q§:Object;
      
      private var §]f§:MovieClip;
      
      private var §<!r§:MovieClip;
      
      private var §?6§:MovieClip;
      
      private var §'!I§:Number = 0.5;
      
      private var §5u§:§&!S§ = null;
      
      public function §<!b§(param1:§&!S§)
      {
         super();
         this.§5u§ = param1;
         this.§^q§ = new Object();
         this.§'!I§ = this.§5u§.§>N§;
         var _loc2_:Class = §`!t§.§=J§("BackgroundContainer");
         this.§<!r§ = new _loc2_();
         this.§<!r§.stop();
         addChild(this.§<!r§);
         var _loc3_:Class = §`!t§.§=J§(param1.§@H§ + "_Animations");
         this.§]f§ = new _loc3_();
         this.§]f§.stop();
         this.§%!h§();
         this.§]f§.scaleX = this.§'!I§;
         this.§]f§.scaleY = this.§'!I§;
         this.addChild(this.§]f§);
         var _loc4_:Class = §`!t§.§=J§("ForegroundContainer");
         this.§?6§ = new _loc4_();
         this.§?6§.stop();
         addChild(this.§?6§);
      }
      
      public function §`<§() : void
      {
         this.§<!r§.visible = false;
         this.§?6§.visible = false;
      }
      
      public function §,U§(param1:String) : void
      {
         this.§<!r§.gotoAndStop(param1.toLowerCase());
         this.§?6§.gotoAndStop(param1.toLowerCase());
         this.§1!!§(§5n§.§0?§().§4!^§(param1));
      }
      
      public function §1!<§() : void
      {
         var _loc1_:§"!K§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §5n§.§0?§().§]!Q§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §5n§.§0?§().§-!h§(_loc1_.name);
               _loc2_ = this.§9L§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§+2§(_loc1_.name);
               }
               else
               {
                  this.§1!!§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §9L§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(§<-§.§6,§(_loc3_.§@H§))
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
         this.§+!s§(this.§^6§().§;Y§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §%!h§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         while(_loc1_ < this.§]f§.numChildren)
         {
            _loc3_ = this.§]f§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §5n§.§0?§().§;!`§)
         {
            this.§%K§(_loc2_);
         }
      }
      
      public function §%K§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§]f§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §#K§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:Number = 0;
         while(_loc1_ < §5n§.§0?§().§]!Q§.length)
         {
            _loc2_ = §5n§.§0?§().§]!Q§[_loc1_].name;
            _loc3_ = this.§9!V§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§]f§.getChildByName("Items_" + _loc3_.§^!,§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.§@H§);
               }
            }
            _loc1_++;
         }
      }
      
      public function §3c§() : void
      {
         var _loc1_:§"!K§ = null;
         for each(_loc1_ in §5n§.§0?§().§]!Q§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§+2§(_loc1_.name);
            }
         }
      }
      
      public function §+!s§(param1:Number) : void
      {
         this.§'!I§ = param1;
         this.§]f§.scaleX = this.§'!I§;
         this.§]f§.scaleY = this.§'!I§;
      }
      
      public function §'c§(param1:§<!b§) : void
      {
         var _loc2_:Item = null;
         var _loc3_:§"!K§ = null;
         var _loc4_:String = null;
         var _loc5_:Item = null;
         for each(_loc3_ in §5n§.§0?§().§]!Q§)
         {
            _loc4_ = _loc3_.name;
            _loc2_ = this.§^q§[_loc4_.toUpperCase()];
            if(_loc5_ = param1.§^q§[_loc4_.toUpperCase()])
            {
               this.§1!!§(_loc5_);
            }
            else
            {
               this.§+2§(_loc4_);
            }
            if(_loc2_)
            {
               param1.§1!!§(_loc2_);
            }
            else
            {
               param1.§+2§(_loc4_);
            }
         }
      }
      
      public function §0!m§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§^q§)
         {
            this.§1!!§(_loc1_);
         }
      }
      
      public function §1!!§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§^q§[param1.§0!R§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§#!i§)
            {
               this.§+2§(param1.§0!R§);
            }
            return;
         }
         this.§+2§(param1.§0!R§);
         this.§^q§[param1.§0!R§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§]f§.getChildByName("Items_" + param1.§^!,§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.§@H§);
            if(_loc3_.currentLabel != "Item_" + param1.§@H§)
            {
               §5n§.§%!_§.§+2§(param1.§^!,§);
            }
            else
            {
               this.§;!H§("Items_" + param1.§^!,§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP")
            {
               this.§3p§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§3z§();
         }
      }
      
      private function §3z§() : void
      {
         var _loc1_:MovieClip = this.§]f§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = true;
      }
      
      private function §3p§() : void
      {
         var _loc1_:MovieClip = this.§]f§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = false;
      }
      
      public function §9!V§(param1:String) : Item
      {
         return this.§^q§[param1.toUpperCase()];
      }
      
      public function §%S§() : Object
      {
         return this.§^q§;
      }
      
      public function §+2§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§^q§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§]f§.getChildByName("Items_" + _loc2_.§^!,§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§3z§();
               }
            }
         }
         delete this.§^q§[param1.toUpperCase()];
      }
      
      public function §;!H§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§]f§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§]f§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§]f§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §6-§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §^6§() : §&!S§
      {
         return this.§5u§;
      }
      
      public function §6!`§() : String
      {
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§3j§();
         return §#v§.§3!9§(_loc1_);
      }
      
      public function §3j§() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§^q§)
         {
            _loc1_.push({
               "itemId":_loc2_.§@H§,
               "category":_loc2_.§0!R§,
               "sId":_loc2_.sId
            });
         }
         return _loc1_;
      }
      
      public function §^!N§() : Number
      {
         return this.§'!I§;
      }
      
      public function §'!d§() : MovieClip
      {
         return this.§]f§;
      }
   }
}
