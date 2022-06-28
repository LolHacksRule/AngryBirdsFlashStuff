package §_-Mc§
{
   import §_-1N§.§_-Kz§;
   import §_-4§.Item;
   import §_-4§.§_-044§;
   import §_-4§.§_-nq§;
   import §_-wv§.§_-Pj§;
   import §_-y7§.§_-xe§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-059§ extends Sprite
   {
      
      public static const §_-JT§:Number = 0.5;
      
      public static const §_-SL§:Boolean = false;
      
      public static const §_-UC§:String = "avatar_equip";
      
      public static const §_-nl§:String = "avatar_character";
       
      
      public var §_-fm§:Object;
      
      private var §_-Sj§:MovieClip;
      
      private var §_-vQ§:MovieClip;
      
      private var §_-Z8§:MovieClip;
      
      private var §_-XE§:Number = 0.5;
      
      private var §_-6L§:§_-nq§ = null;
      
      public function §_-059§(param1:§_-nq§)
      {
         super();
         this.§_-6L§ = param1;
         this.§_-fm§ = new Object();
         this.§_-XE§ = this.§_-6L§.§_-RG§;
         var _loc2_:Class = §_-Fc§.§_-YE§("BackgroundContainer");
         this.§_-vQ§ = new _loc2_();
         this.§_-vQ§.stop();
         addChild(this.§_-vQ§);
         var _loc3_:Class = §_-Fc§.§_-YE§(param1.§_-1h§ + "_Animations");
         this.§_-Sj§ = new _loc3_();
         this.§_-Sj§.stop();
         this.§_-00z§();
         this.§_-Sj§.scaleX = this.§_-XE§;
         this.§_-Sj§.scaleY = this.§_-XE§;
         this.addChild(this.§_-Sj§);
         var _loc4_:Class = §_-Fc§.§_-YE§("ForegroundContainer");
         this.§_-Z8§ = new _loc4_();
         this.§_-Z8§.stop();
         addChild(this.§_-Z8§);
      }
      
      public function §_-wf§() : void
      {
         this.§_-vQ§.visible = false;
         this.§_-Z8§.visible = false;
      }
      
      public function §_-QQ§(param1:String) : void
      {
         this.§_-vQ§.gotoAndStop(param1.toLowerCase());
         this.§_-Z8§.gotoAndStop(param1.toLowerCase());
         this.§_-QZ§(§_-xe§.§_-eA§().§_-yf§(param1));
      }
      
      public function §_-0BC§() : void
      {
         var _loc1_:§_-044§ = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in §_-xe§.§_-eA§().§_-05v§)
         {
            if(_loc1_.name.toUpperCase() != "CATEGORYBIRDS" && _loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc2_ = §_-xe§.§_-eA§().§_-ng§(_loc1_.name);
               _loc2_ = this.§_-0b§(_loc2_);
               _loc3_ = Math.random() * (_loc2_.length + 1);
               if(_loc3_ >= _loc2_.length)
               {
                  this.§_-8U§(_loc1_.name);
               }
               else
               {
                  this.§_-QZ§(_loc2_[_loc3_]);
               }
            }
         }
      }
      
      private function §_-0b§(param1:Array) : Array
      {
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(§_-Kz§.§_-AJ§(_loc3_.§_-1h§))
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
         this.§_-3U§(this.§_-SZ§().§_-P9§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §_-00z§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         while(_loc1_ < this.§_-Sj§.numChildren)
         {
            _loc3_ = this.§_-Sj§.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in §_-xe§.§_-eA§().§_-U4§)
         {
            this.§_-ya§(_loc2_);
         }
      }
      
      public function §_-ya§(param1:String) : void
      {
         var _loc2_:MovieClip = this.§_-Sj§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_ && param1.toUpperCase() != "NOHAT")
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
      }
      
      public function §_-rU§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:Number = 0;
         while(_loc1_ < §_-xe§.§_-eA§().§_-05v§.length)
         {
            _loc2_ = §_-xe§.§_-eA§().§_-05v§[_loc1_].name;
            _loc3_ = this.§_-02n§(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.§_-Sj§.getChildByName("Items_" + _loc3_.§_-In§) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.§_-1h§);
               }
            }
            _loc1_++;
         }
      }
      
      public function §_-mI§() : void
      {
         var _loc1_:§_-044§ = null;
         for each(_loc1_ in §_-xe§.§_-eA§().§_-05v§)
         {
            if(!(_loc1_.name.toUpperCase() == "CATEGORYBIRDS" || _loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§_-8U§(_loc1_.name);
            }
         }
      }
      
      public function §_-3U§(param1:Number) : void
      {
         this.§_-XE§ = param1;
         this.§_-Sj§.scaleX = this.§_-XE§;
         this.§_-Sj§.scaleY = this.§_-XE§;
      }
      
      public function §_-015§(param1:§_-059§) : void
      {
         var _loc2_:Item = null;
         var _loc3_:§_-044§ = null;
         var _loc4_:String = null;
         var _loc5_:Item = null;
         for each(_loc3_ in §_-xe§.§_-eA§().§_-05v§)
         {
            _loc4_ = _loc3_.name;
            _loc2_ = this.§_-fm§[_loc4_.toUpperCase()];
            if(_loc5_ = param1.§_-fm§[_loc4_.toUpperCase()])
            {
               this.§_-QZ§(_loc5_);
            }
            else
            {
               this.§_-8U§(_loc4_);
            }
            if(_loc2_)
            {
               param1.§_-QZ§(_loc2_);
            }
            else
            {
               param1.§_-8U§(_loc4_);
            }
         }
      }
      
      public function §_-fs§() : void
      {
         var _loc1_:Item = null;
         for each(_loc1_ in this.§_-fm§)
         {
            this.§_-QZ§(_loc1_);
         }
      }
      
      public function §_-QZ§(param1:Item) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Item = this.§_-fm§[param1.§_-4k§.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(§_-SL§)
            {
               this.§_-8U§(param1.§_-4k§);
            }
            return;
         }
         this.§_-8U§(param1.§_-4k§);
         this.§_-fm§[param1.§_-4k§.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.§_-Sj§.getChildByName("Items_" + param1.§_-In§) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.§_-1h§);
            if(_loc3_.currentLabel != "Item_" + param1.§_-1h§)
            {
               §_-xe§.§_-0Ec§.§_-8U§(param1.§_-In§);
            }
            else
            {
               this.§_-03w§("Items_" + param1.§_-In§ + "_Equip");
            }
            if(param1.category.toUpperCase() == "CATEGORYTOP")
            {
               this.§_-03k§();
            }
         }
         else if(param1.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§_-5g§();
         }
      }
      
      private function §_-5g§() : void
      {
         var _loc1_:MovieClip = this.§_-Sj§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = true;
      }
      
      private function §_-03k§() : void
      {
         var _loc1_:MovieClip = this.§_-Sj§.getChildByName("Items_NoHat") as MovieClip;
         _loc1_.visible = false;
      }
      
      public function §_-02n§(param1:String) : Item
      {
         return this.§_-fm§[param1.toUpperCase()];
      }
      
      public function §_-0m§() : Object
      {
         return this.§_-fm§;
      }
      
      public function §_-8U§(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§_-fm§[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.§_-Sj§.getChildByName("Items_" + _loc2_.§_-In§) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
               if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§_-5g§();
               }
            }
         }
         delete this.§_-fm§[param1.toUpperCase()];
      }
      
      public function §_-03w§(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§_-Sj§.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.§_-Sj§.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.§_-Sj§.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function §_-u§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §_-SZ§() : §_-nq§
      {
         return this.§_-6L§;
      }
      
      public function §_-Fa§() : String
      {
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§_-Jf§();
         return §_-Pj§.§_-qM§(_loc1_);
      }
      
      public function §_-Jf§() : Array
      {
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§_-fm§)
         {
            _loc1_.push({
               "itemId":_loc2_.§_-1h§,
               "category":_loc2_.§_-4k§,
               "sId":_loc2_.sId
            });
         }
         return _loc1_;
      }
      
      public function §_-Dw§() : Number
      {
         return this.§_-XE§;
      }
      
      public function §_-fE§() : MovieClip
      {
         return this.§_-Sj§;
      }
   }
}
