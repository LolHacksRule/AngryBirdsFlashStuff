package §-X§
{
   import § !$§.§75§;
   import § 2§.§3!l§;
   import § 2§.§=+§;
   import §!C§.§!!c§;
   import §0!_§.§!!G§;
   import §0!_§.§%;§;
   import §0!_§.§19§;
   import §0"1§.§4!y§;
   import §0"1§.§set §;
   import §=!d§.§5!5§;
   import §`!B§.§ l§;
   import §`!B§.DisplayObject;
   import §`!B§.Sprite;
   import flash.geom.Rectangle;
   
   public class §3!@§
   {
       
      
      private var §<!O§:int;
      
      private var §>!P§:Number;
      
      private var §@G§:Boolean;
      
      protected var § C§:Sprite;
      
      private var §0!7§:Array;
      
      private var §+S§:Boolean = true;
      
      private var §=!Q§:§!!G§;
      
      private var §6h§:Sprite;
      
      private var §%!6§:Sprite;
      
      private var §[!Z§:Number;
      
      private var §use§:Number;
      
      protected var §0y§:Number = 1.0;
      
      protected var §0!x§:Number = 0.0;
      
      protected var §7L§:Number = 0.0;
      
      protected var §"!i§:Number = 0.0;
      
      protected var §5"5§:Number = 0.0;
      
      protected var §8g§:Number = 0.0;
      
      protected var §0!"§:Number = 0.0;
      
      protected var §1Z§:Boolean;
      
      public function §3!@§(param1:§set §, param2:Sprite, param3:§!!G§, param4:Number)
      {
         this.§0!7§ = [];
         super();
         this.§=!Q§ = param3;
         this.§ C§ = param2;
         this.§>!P§ = param1.speed;
         this.§@G§ = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get §0T§() : Number
      {
         return this.§>!P§;
      }
      
      public function get §;-§() : Boolean
      {
         return this.§@G§;
      }
      
      protected function get §^!E§() : Number
      {
         return this.§<!O§;
      }
      
      protected function §=!q§(param1:§19§) : void
      {
         this.§7L§ = param1.pivotY;
         if(!this.§@G§)
         {
            this.§0!x§ = param1.pivotX;
         }
         else
         {
            this.§0!x§ = 0;
         }
      }
      
      protected function §>!B§(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§3!P§;
         this.§7L§ = _loc2_.bottom;
         this.§0!x§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §>H§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§19§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §%;§.§7"2§(param1,this.§=!Q§,param2)))
         {
            if(!(_loc5_ = this.§=!Q§.§<!z§(param1)))
            {
               return;
            }
            this.§0y§ = param3 * _loc5_.scale;
            this.§=!q§(_loc5_);
            this.§<!O§ = _loc5_.width - 2;
         }
         else
         {
            this.§0y§ = param3;
            this.§>!B§(_loc4_);
            this.§<!O§ = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.§<!O§ = Math.round(this.§<!O§);
      }
      
      protected function §&"§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§-!3§(param1,param2)).x = _loc6_ * this.§<!O§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§%;§.§^!M§(param1))
         {
            _loc8_ = this.§+!E§(_loc5_);
            _loc5_.§!,§();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §+!E§(param1:Sprite) : Sprite
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
      
      protected function §-!3§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§19§ = null;
         var _loc3_:DisplayObject = §%;§.§7"2§(param1,this.§=!Q§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§=!Q§.§<!z§(param1);
            _loc3_ = new § l§(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function §-h§(param1:Number, param2:int) : int
      {
         return (2 + §=+§.§1!h§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§set §, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§0y§ = param1.scale;
         }
         else
         {
            this.§0y§ = 1;
         }
         this.§>H§(param1.§1!_§,param1.highQuality,this.§0y§);
         if(this.§<!O§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.§-h§(param2,this.§<!O§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§1Z§ = true;
         }
         this.§8g§ = param1.xOffset;
         this.§0!"§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§1d§(param1,_loc5_ * this.§<!O§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§&"§(param1.§1!_§,param1.highQuality,_loc3_,_loc4_);
         this.§ C§.addChild(_loc6_);
         this.§=Z§();
         this.§<" §();
      }
      
      private function §"!?§(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren <= 0)
            {
               param1.dispose();
               return false;
            }
            param1.scaleX = 1 / this.§0y§;
            param1.scaleY = 1 / this.§0y§;
            param1.x = this.§0!x§ - this.§8g§ / this.§0y§;
            param1.y = this.§7L§ - this.§0!"§ / this.§0y§;
            if(param2 < 0)
            {
               this.§ C§.addChild(param1);
            }
            else
            {
               this.§ C§.addChildAt(param1,param2);
            }
         }
         return true;
      }
      
      private function §=Z§() : void
      {
         if(!this.§"!?§(this.§6h§))
         {
            this.§6h§ = null;
         }
         if(!this.§"!?§(this.§%!6§,0))
         {
            this.§%!6§ = null;
         }
      }
      
      private function §1d§(param1:§set §, param2:Number) : void
      {
         var _loc4_:§4!y§ = null;
         var _loc5_:§3!l§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§#!`§)
         {
            _loc4_ = param1.§@!g§(_loc3_);
            if((_loc5_ = §75§.§@!K§(_loc4_.id,this.§=!Q§)) && _loc5_.§6T§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               §5!5§.§>F§.add(_loc5_);
               this.§0!7§.push(_loc5_);
               if(_loc4_.§9Y§)
               {
                  if(!this.§%!6§)
                  {
                     this.§%!6§ = new Sprite();
                  }
                  this.§%!6§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§6h§)
                  {
                     this.§6h§ = new Sprite();
                  }
                  this.§6h§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§!A§(1 / 20);
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
         var _loc1_:§!!c§ = null;
         this.§ C§.§!,§(0,-1,true);
         for each(_loc1_ in this.§0!7§)
         {
            §5!5§.§>F§.§#"%§(_loc1_);
            _loc1_.dispose();
         }
         this.§0!7§ = [];
         this.§%!6§ = null;
         this.§6h§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§[!Z§ = param1;
         this.§use§ = param2;
         this.§ C§.scaleX = this.§0y§;
         this.§ C§.scaleY = this.§0y§;
         this.§ C§.x = -param1 * this.§>!P§ - this.§0!x§ * this.§0y§ + this.§8g§;
         this.§ C§.y = -param2 - this.§7L§ * this.§0y§ + this.§0!"§;
      }
      
      private function §<" §() : void
      {
         var _loc1_:§!!c§ = null;
         for each(_loc1_ in this.§0!7§)
         {
            §5!5§.§>F§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §1V§() : void
      {
         var _loc1_:§!!c§ = null;
         for each(_loc1_ in this.§0!7§)
         {
            §5!5§.§>F§.§#"%§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §;![§(param1:Boolean) : void
      {
         if(param1 == this.§+S§)
         {
            return;
         }
         this.§+S§ = param1;
         if(this.§+S§)
         {
            this.§<" §();
         }
         else
         {
            this.§1V§();
         }
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
