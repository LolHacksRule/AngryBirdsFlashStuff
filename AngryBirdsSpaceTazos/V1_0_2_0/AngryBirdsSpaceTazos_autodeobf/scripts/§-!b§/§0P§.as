package §-!b§
{
   import §'!&§.§9!c§;
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §,§.§!P§;
   import §,§.§["6§;
   import §2P§.§37§;
   import §3!4§.§ ![§;
   import §8o§.§!">§;
   import §8o§.§5"%§;
   import §8o§.§]" §;
   import §?!<§.§'!1§;
   import §?!<§.§,!6§;
   import §?]§.§#"0§;
   import flash.geom.Rectangle;
   
   public class §0P§
   {
       
      
      private var §="7§:int;
      
      private var §@!"§:Number;
      
      private var §2!9§:Boolean;
      
      protected var §>#§:Sprite;
      
      private var §[!f§:Array;
      
      private var §!!S§:Boolean = true;
      
      private var §3'§:§5"%§;
      
      private var §1"<§:Sprite;
      
      private var §^!#§:Sprite;
      
      private var § !$§:Number;
      
      private var §#]§:Number;
      
      protected var §-!Y§:Number = 1.0;
      
      protected var §=!b§:Number = 0.0;
      
      protected var §+"#§:Number = 0.0;
      
      protected var §2!u§:Number = 0.0;
      
      protected var §^M§:Number = 0.0;
      
      protected var §7h§:Number = 0.0;
      
      protected var §2u§:Number = 0.0;
      
      protected var §'§:Boolean;
      
      public function §0P§(param1:§!P§, param2:Sprite, param3:§5"%§, param4:Number)
      {
         this.§[!f§ = [];
         super();
         this.§3'§ = param3;
         this.§>#§ = param2;
         this.§@!"§ = param1.speed;
         this.§2!9§ = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get §1"C§() : Number
      {
         return this.§@!"§;
      }
      
      public function get §<!j§() : Boolean
      {
         return this.§2!9§;
      }
      
      protected function get §35§() : Number
      {
         return this.§="7§;
      }
      
      protected function initializePivotFromTexture(param1:§!">§) : void
      {
         this.§+"#§ = param1.pivotY;
         if(!this.§2!9§)
         {
            this.§=!b§ = param1.pivotX;
         }
         else
         {
            this.§=!b§ = 0;
         }
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§@!!§;
         this.§+"#§ = _loc2_.bottom;
         this.§=!b§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §4^§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§!">§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §]" §.§6?§(param1,this.§3'§,param2)))
         {
            if(!(_loc5_ = this.§3'§.getTexture(param1)))
            {
               return;
            }
            this.§-!Y§ = param3 * _loc5_.scale;
            this.initializePivotFromTexture(_loc5_);
            this.§="7§ = _loc5_.width - 2;
         }
         else
         {
            this.§-!Y§ = param3;
            this.initializePivotFromComposite(_loc4_);
            this.§="7§ = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.§="7§ = Math.round(this.§="7§);
      }
      
      protected function §#"3§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§8"4§(param1,param2)).x = _loc6_ * this.§="7§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§]" §.§8S§(param1))
         {
            _loc8_ = this.§ W§(_loc5_);
            _loc5_.§&G§();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function § W§(param1:Sprite) : Sprite
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc2_:Sprite = new Sprite();
         if(param1.numChildren > 0 && param1.getChildAt(0) is Sprite)
         {
            _loc3_ = Sprite(param1.getChildAt(0)).numChildren;
            _loc4_ = _loc3_ - 1;
            while(_loc4_ >= 0)
            {
               _loc5_ = 0;
               while(_loc5_ < param1.numChildren)
               {
                  if(_loc6_ = param1.getChildAt(_loc5_) as Sprite)
                  {
                     _loc7_ = _loc6_.getChildAt(_loc4_);
                     _loc2_.addChildAt(_loc7_,0);
                     _loc7_.x += _loc6_.x;
                  }
                  _loc5_++;
               }
               _loc4_--;
            }
         }
         return _loc2_;
      }
      
      protected function §8"4§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§!">§ = null;
         var _loc3_:DisplayObject = §]" §.§6?§(param1,this.§3'§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§3'§.getTexture(param1);
            _loc3_ = new §9!c§(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         return (2 + §'!1§.§,o§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§!P§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§-!Y§ = param1.scale;
         }
         else
         {
            this.§-!Y§ = 1;
         }
         this.§4^§(param1.spriteName,param1.highQuality,this.§-!Y§);
         if(this.§="7§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.getRepeatCount(param2,this.§="7§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§'§ = true;
         }
         this.§7h§ = param1.xOffset;
         this.§2u§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§,!8§(param1,_loc5_ * this.§="7§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§#"3§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
         this.§>#§.addChild(_loc6_);
         this.§1K§();
         this.§7$§();
      }
      
      private function §1K§() : void
      {
         if(this.§1"<§)
         {
            if(this.§1"<§.numChildren > 0)
            {
               this.§>#§.addChild(this.§1"<§);
            }
            else
            {
               this.§1"<§.dispose();
               this.§1"<§ = null;
            }
         }
         if(this.§^!#§)
         {
            if(this.§^!#§.numChildren > 0)
            {
               this.§>#§.addChildAt(this.§^!#§,0);
            }
            else
            {
               this.§^!#§.dispose();
               this.§^!#§ = null;
            }
         }
      }
      
      private function §,!8§(param1:§!P§, param2:Number) : void
      {
         var _loc4_:§["6§ = null;
         var _loc5_:§,!6§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§6!B§)
         {
            _loc4_ = param1.§%"A§(_loc3_);
            if((_loc5_ = §37§.§,u§(_loc4_.id,this.§3'§)) && _loc5_.§!"1§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               § ![§.§7`§.add(_loc5_);
               this.§[!f§.push(_loc5_);
               if(_loc4_.§`,§)
               {
                  if(!this.§^!#§)
                  {
                     this.§^!#§ = new Sprite();
                  }
                  this.§^!#§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§1"<§)
                  {
                     this.§1"<§ = new Sprite();
                  }
                  this.§1"<§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§`!&§(1 / 20);
                  _loc6_++;
               }
            }
            else if(_loc5_)
            {
               _loc5_.dispose();
            }
            _loc3_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§#"0§ = null;
         this.§>#§.§&G§(0,-1,true);
         for each(_loc1_ in this.§[!f§)
         {
            § ![§.§7`§.§9!>§(_loc1_);
            _loc1_.dispose();
         }
         this.§[!f§ = [];
         this.§^!#§ = null;
         this.§1"<§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§ !$§ = param1;
         this.§#]§ = param2;
         this.§>#§.scaleX = this.§-!Y§;
         this.§>#§.scaleY = this.§-!Y§;
         this.§>#§.x = -param1 * this.§@!"§ - this.§=!b§ * this.§-!Y§ + this.§7h§;
         this.§>#§.y = -param2 - this.§+"#§ * this.§-!Y§ + this.§2u§;
      }
      
      private function §7$§() : void
      {
         var _loc1_:§#"0§ = null;
         for each(_loc1_ in this.§[!f§)
         {
            § ![§.§7`§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §`;§() : void
      {
         var _loc1_:§#"0§ = null;
         for each(_loc1_ in this.§[!f§)
         {
            § ![§.§7`§.§9!>§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §<4§(param1:Boolean) : void
      {
         if(param1 == this.§!!S§)
         {
            return;
         }
         this.§!!S§ = param1;
         if(this.§!!S§)
         {
            this.§7$§();
         }
         else
         {
            this.§`;§();
         }
      }
   }
}
