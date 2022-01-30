package §@U§
{
   import §-![§.§3!i§;
   import §-![§.DisplayObject;
   import §-![§.Sprite;
   import §5!P§.§9"7§;
   import §6`§.§2a§;
   import §6`§.§8"&§;
   import §6`§.§[!h§;
   import §9G§.§2F§;
   import §9G§.§`!i§;
   import §9i§.§[!3§;
   import §=!6§.§+8§;
   import §>D§.§3!L§;
   import §>D§.§^§;
   import flash.geom.Rectangle;
   
   public class §3!Q§
   {
       
      
      private var §6c§:int;
      
      private var §2!$§:Number;
      
      private var §8a§:Boolean;
      
      protected var §[<§:Sprite;
      
      private var §-`§:Array;
      
      private var §%!`§:Boolean = true;
      
      private var §1!5§:§2a§;
      
      private var §'>§:Sprite;
      
      private var §8T§:Sprite;
      
      private var §30§:Number;
      
      private var §#!U§:Number;
      
      protected var §1+§:Number = 1.0;
      
      protected var §'<§:Number = 0.0;
      
      protected var §1!Q§:Number = 0.0;
      
      protected var §%>§:Number = 0.0;
      
      protected var §""7§:Number = 0.0;
      
      protected var § !,§:Number = 0.0;
      
      protected var §-!g§:Number = 0.0;
      
      protected var §7!v§:Boolean;
      
      public function §3!Q§(param1:§^§, param2:Sprite, param3:§2a§, param4:Number)
      {
         this.§-`§ = [];
         super();
         this.§1!5§ = param3;
         this.§[<§ = param2;
         this.§2!$§ = param1.speed;
         this.§8a§ = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get §&V§() : Number
      {
         return this.§2!$§;
      }
      
      public function get §""4§() : Boolean
      {
         return this.§8a§;
      }
      
      protected function get §>!R§() : Number
      {
         return this.§6c§;
      }
      
      protected function §2!y§(param1:§8"&§) : void
      {
         this.§1!Q§ = param1.pivotY;
         if(!this.§8a§)
         {
            this.§'<§ = param1.pivotX;
         }
         else
         {
            this.§'<§ = 0;
         }
      }
      
      protected function §#!T§(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§[!t§;
         this.§1!Q§ = _loc2_.bottom;
         this.§'<§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §3!F§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§8"&§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §[!h§.§7S§(param1,this.§1!5§,param2)))
         {
            if(!(_loc5_ = this.§1!5§.§&l§(param1)))
            {
               return;
            }
            this.§1+§ = param3 * _loc5_.scale;
            this.§2!y§(_loc5_);
            this.§6c§ = _loc5_.width - 2;
         }
         else
         {
            this.§1+§ = param3;
            this.§#!T§(_loc4_);
            this.§6c§ = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.§6c§ = Math.round(this.§6c§);
      }
      
      protected function §+!§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§ !5§(param1,param2)).x = _loc6_ * this.§6c§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§[!h§.§""&§(param1))
         {
            _loc8_ = this.§4!V§(_loc5_);
            _loc5_.§&J§();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §4!V§(param1:Sprite) : Sprite
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
      
      protected function § !5§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§8"&§ = null;
         var _loc3_:DisplayObject = §[!h§.§7S§(param1,this.§1!5§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§1!5§.§&l§(param1);
            _loc3_ = new §3!i§(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function §9!>§(param1:Number, param2:int) : int
      {
         return (2 + §2F§.§&",§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§^§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§1+§ = param1.scale;
         }
         else
         {
            this.§1+§ = 1;
         }
         this.§3!F§(param1.§'w§,param1.highQuality,this.§1+§);
         if(this.§6c§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.§9!>§(param2,this.§6c§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§7!v§ = true;
         }
         this.§ !,§ = param1.xOffset;
         this.§-!g§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§%i§(param1,_loc5_ * this.§6c§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§+!§(param1.§'w§,param1.highQuality,_loc3_,_loc4_);
         this.§[<§.addChild(_loc6_);
         this.§,j§();
         this.§&q§();
      }
      
      private function § !n§(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren <= 0)
            {
               param1.dispose();
               return false;
            }
            param1.scaleX = 1 / this.§1+§;
            param1.scaleY = 1 / this.§1+§;
            param1.x = this.§'<§ - this.§ !,§ / this.§1+§;
            param1.y = this.§1!Q§ - this.§-!g§ / this.§1+§;
            if(param2 < 0)
            {
               this.§[<§.addChild(param1);
            }
            else
            {
               this.§[<§.addChildAt(param1,param2);
            }
         }
         return true;
      }
      
      private function §,j§() : void
      {
         if(!this.§ !n§(this.§'>§))
         {
            this.§'>§ = null;
         }
         if(!this.§ !n§(this.§8T§,0))
         {
            this.§8T§ = null;
         }
      }
      
      private function §%i§(param1:§^§, param2:Number) : void
      {
         var _loc4_:§3!L§ = null;
         var _loc5_:§`!i§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§1,§)
         {
            _loc4_ = param1.§@!=§(_loc3_);
            if((_loc5_ = §9"7§.§-!]§(_loc4_.id,this.§1!5§)) && _loc5_.§9!9§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               §+8§.§@%§.add(_loc5_);
               this.§-`§.push(_loc5_);
               if(_loc4_.§9J§)
               {
                  if(!this.§8T§)
                  {
                     this.§8T§ = new Sprite();
                  }
                  this.§8T§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§'>§)
                  {
                     this.§'>§ = new Sprite();
                  }
                  this.§'>§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§<!I§(1 / 20);
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
         var _loc1_:§[!3§ = null;
         this.§[<§.§&J§(0,-1,true);
         for each(_loc1_ in this.§-`§)
         {
            §+8§.§@%§.§`!g§(_loc1_);
            _loc1_.dispose();
         }
         this.§-`§ = [];
         this.§8T§ = null;
         this.§'>§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§30§ = param1;
         this.§#!U§ = param2;
         this.§[<§.scaleX = this.§1+§;
         this.§[<§.scaleY = this.§1+§;
         this.§[<§.x = -param1 * this.§2!$§ - this.§'<§ * this.§1+§ + this.§ !,§;
         this.§[<§.y = -param2 - this.§1!Q§ * this.§1+§ + this.§-!g§;
      }
      
      private function §&q§() : void
      {
         var _loc1_:§[!3§ = null;
         for each(_loc1_ in this.§-`§)
         {
            §+8§.§@%§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §+!9§() : void
      {
         var _loc1_:§[!3§ = null;
         for each(_loc1_ in this.§-`§)
         {
            §+8§.§@%§.§`!g§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §;!7§(param1:Boolean) : void
      {
         if(param1 == this.§%!`§)
         {
            return;
         }
         this.§%!`§ = param1;
         if(this.§%!`§)
         {
            this.§&q§();
         }
         else
         {
            this.§+!9§();
         }
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
