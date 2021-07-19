package §=!&§
{
   import § ! §.§+D§;
   import § ! §.§5!x§;
   import § ! §.§8-§;
   import §'!3§.§=@§;
   import §,C§.§ "%§;
   import §,C§.§<U§;
   import §6![§.§1!J§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import §8]§.§7!4§;
   import §@L§.§30§;
   import §@L§.§?!'§;
   import §`!a§.§1"&§;
   import flash.geom.Rectangle;
   
   public class §`!3§
   {
       
      
      private var §[=§:int;
      
      private var § 1§:Number;
      
      private var §;]§:Boolean;
      
      protected var §#e§:Sprite;
      
      private var §1!-§:Array;
      
      private var §%9§:Boolean = true;
      
      private var §`8§:§5!x§;
      
      private var §2[§:Sprite;
      
      private var §;!e§:Sprite;
      
      private var §`R§:Number;
      
      private var §#m§:Number;
      
      protected var §6!r§:Number = 1.0;
      
      protected var §=$§:Number = 0.0;
      
      protected var §0I§:Number = 0.0;
      
      protected var §#!A§:Number = 0.0;
      
      protected var §<`§:Number = 0.0;
      
      protected var §7c§:Number = 0.0;
      
      protected var §#!=§:Number = 0.0;
      
      protected var §?H§:Boolean;
      
      public function §`!3§(param1:§ "%§, param2:Sprite, param3:§5!x§, param4:Number)
      {
         this.§1!-§ = [];
         super();
         this.§`8§ = param3;
         this.§#e§ = param2;
         this.§ 1§ = param1.speed;
         this.§;]§ = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get §&!q§() : Number
      {
         return this.§ 1§;
      }
      
      public function get §[!I§() : Boolean
      {
         return this.§;]§;
      }
      
      protected function get §#4§() : Number
      {
         return this.§[=§;
      }
      
      protected function §%h§(param1:§8-§) : void
      {
         this.§0I§ = param1.pivotY;
         if(!this.§;]§)
         {
            this.§=$§ = param1.pivotX;
         }
         else
         {
            this.§=$§ = 0;
         }
      }
      
      protected function §`T§(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§5!&§;
         this.§0I§ = _loc2_.bottom;
         this.§=$§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §7;§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§8-§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §+D§.§<p§(param1,this.§`8§,param2)))
         {
            if(!(_loc5_ = this.§`8§.§`I§(param1)))
            {
               return;
            }
            this.§6!r§ = param3 * _loc5_.scale;
            this.§%h§(_loc5_);
            this.§[=§ = _loc5_.width - 2;
         }
         else
         {
            this.§6!r§ = param3;
            this.§`T§(_loc4_);
            this.§[=§ = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.§[=§ = Math.round(this.§[=§);
      }
      
      protected function §,!1§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§5!L§(param1,param2)).x = _loc6_ * this.§[=§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§+D§.§3,§(param1))
         {
            _loc8_ = this.§@!'§(_loc5_);
            _loc5_.§-8§();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §@!'§(param1:Sprite) : Sprite
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
      
      protected function §5!L§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§8-§ = null;
         var _loc3_:DisplayObject = §+D§.§<p§(param1,this.§`8§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§`8§.§`I§(param1);
            _loc3_ = new §1!J§(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function §1!>§(param1:Number, param2:int) : int
      {
         return (2 + §?!'§.§]2§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§ "%§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§6!r§ = param1.scale;
         }
         else
         {
            this.§6!r§ = 1;
         }
         this.§7;§(param1.§3x§,param1.highQuality,this.§6!r§);
         if(this.§[=§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.§1!>§(param2,this.§[=§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§?H§ = true;
         }
         this.§7c§ = param1.xOffset;
         this.§#!=§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§9!A§(param1,_loc5_ * this.§[=§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§,!1§(param1.§3x§,param1.highQuality,_loc3_,_loc4_);
         this.§#e§.addChild(_loc6_);
         this.§81§();
         this.§`^§();
      }
      
      private function §!M§(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren <= 0)
            {
               param1.dispose();
               return false;
            }
            param1.scaleX = 1 / this.§6!r§;
            param1.scaleY = 1 / this.§6!r§;
            param1.x = this.§=$§ - this.§7c§ / this.§6!r§;
            param1.y = this.§0I§ - this.§#!=§ / this.§6!r§;
            if(param2 < 0)
            {
               this.§#e§.addChild(param1);
            }
            else
            {
               this.§#e§.addChildAt(param1,param2);
            }
         }
         return true;
      }
      
      private function §81§() : void
      {
         if(!this.§!M§(this.§2[§))
         {
            this.§2[§ = null;
         }
         if(!this.§!M§(this.§;!e§,0))
         {
            this.§;!e§ = null;
         }
      }
      
      private function §9!A§(param1:§ "%§, param2:Number) : void
      {
         var _loc4_:§<U§ = null;
         var _loc5_:§30§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§93§)
         {
            _loc4_ = param1.§5p§(_loc3_);
            if((_loc5_ = §7!4§.§5!o§(_loc4_.id,this.§`8§)) && _loc5_.§8!,§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               §1"&§.§"!U§.add(_loc5_);
               this.§1!-§.push(_loc5_);
               if(_loc4_.§^#§)
               {
                  if(!this.§;!e§)
                  {
                     this.§;!e§ = new Sprite();
                  }
                  this.§;!e§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§2[§)
                  {
                     this.§2[§ = new Sprite();
                  }
                  this.§2[§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§^Y§(1 / 20);
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
         var _loc1_:§=@§ = null;
         this.§#e§.§-8§(0,-1,true);
         for each(_loc1_ in this.§1!-§)
         {
            §1"&§.§"!U§.§3O§(_loc1_);
            _loc1_.dispose();
         }
         this.§1!-§ = [];
         this.§;!e§ = null;
         this.§2[§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§`R§ = param1;
         this.§#m§ = param2;
         this.§#e§.scaleX = this.§6!r§;
         this.§#e§.scaleY = this.§6!r§;
         this.§#e§.x = -param1 * this.§ 1§ - this.§=$§ * this.§6!r§ + this.§7c§;
         this.§#e§.y = -param2 - this.§0I§ * this.§6!r§ + this.§#!=§;
      }
      
      private function §`^§() : void
      {
         var _loc1_:§=@§ = null;
         for each(_loc1_ in this.§1!-§)
         {
            §1"&§.§"!U§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §3d§() : void
      {
         var _loc1_:§=@§ = null;
         for each(_loc1_ in this.§1!-§)
         {
            §1"&§.§"!U§.§3O§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §<8§(param1:Boolean) : void
      {
         if(param1 == this.§%9§)
         {
            return;
         }
         this.§%9§ = param1;
         if(this.§%9§)
         {
            this.§`^§();
         }
         else
         {
            this.§3d§();
         }
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
