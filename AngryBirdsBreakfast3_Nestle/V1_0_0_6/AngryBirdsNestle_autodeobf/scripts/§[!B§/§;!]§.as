package §[!B§
{
   import §,!q§.§+Q§;
   import §,!q§.DisplayObject;
   import §,!q§.Sprite;
   import §-!Y§.§%!%§;
   import §-!b§.§=!T§;
   import §-!b§.§[!3§;
   import §-!b§.§[E§;
   import §5[§.§-"4§;
   import §@&§.§%T§;
   import §@&§.§9!J§;
   import §]!i§.§`f§;
   import §]k§.§<S§;
   import §]k§.§`Q§;
   import flash.geom.Rectangle;
   
   public class §;!]§
   {
       
      
      private var §?!4§:int;
      
      private var §]@§:Number;
      
      private var §6q§:Boolean;
      
      protected var §2!&§:Sprite;
      
      private var §;! §:Array;
      
      private var §8T§:Boolean = true;
      
      private var §@=§:§[E§;
      
      private var §!!B§:Sprite;
      
      private var §each §:Sprite;
      
      private var §+!=§:Number;
      
      private var §&!F§:Number;
      
      protected var §?!C§:Number = 1.0;
      
      protected var §&!#§:Number = 0.0;
      
      protected var §?3§:Number = 0.0;
      
      protected var §8#§:Number = 0.0;
      
      protected var §9z§:Number = 0.0;
      
      protected var §39§:Number = 0.0;
      
      protected var §4F§:Number = 0.0;
      
      protected var §@!3§:Boolean;
      
      public function §;!]§(param1:§%T§, param2:Sprite, param3:§[E§, param4:Number)
      {
         this.§;! § = [];
         super();
         this.§@=§ = param3;
         this.§2!&§ = param2;
         this.§]@§ = param1.speed;
         this.§6q§ = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get §]!5§() : Number
      {
         return this.§]@§;
      }
      
      public function get §]!d§() : Boolean
      {
         return this.§6q§;
      }
      
      protected function get §^""§() : Number
      {
         return this.§?!4§;
      }
      
      protected function §9$§(param1:§=!T§) : void
      {
         this.§?3§ = param1.pivotY;
         if(!this.§6q§)
         {
            this.§&!#§ = param1.pivotX;
         }
         else
         {
            this.§&!#§ = 0;
         }
      }
      
      protected function §]R§(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§<!<§;
         this.§?3§ = _loc2_.bottom;
         this.§&!#§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §-,§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§=!T§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §[!3§.§9!w§(param1,this.§@=§,param2)))
         {
            if(!(_loc5_ = this.§@=§.§^"§(param1)))
            {
               return;
            }
            this.§?!C§ = param3 * _loc5_.scale;
            this.§9$§(_loc5_);
            this.§?!4§ = _loc5_.width - 2;
         }
         else
         {
            this.§?!C§ = param3;
            this.§]R§(_loc4_);
            this.§?!4§ = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.§?!4§ = Math.round(this.§?!4§);
      }
      
      protected function §0![§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§,2§(param1,param2)).x = (_loc6_ - 1) * this.§?!4§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§[!3§.§&!6§(param1))
         {
            _loc8_ = this.§`!u§(_loc5_);
            _loc5_.§-H§();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §`!u§(param1:Sprite) : Sprite
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
      
      protected function §,2§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§=!T§ = null;
         var _loc3_:DisplayObject = §[!3§.§9!w§(param1,this.§@=§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§@=§.§^"§(param1);
            _loc3_ = new §+Q§(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function §;9§(param1:Number, param2:int) : int
      {
         return (2 + §<S§.§7!y§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§%T§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§?!C§ = param1.scale;
         }
         else
         {
            this.§?!C§ = 1;
         }
         this.§-,§(param1.§&!9§,param1.highQuality,this.§?!C§);
         if(this.§?!4§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.§;9§(param2,this.§?!4§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§@!3§ = true;
         }
         this.§39§ = param1.xOffset;
         this.§4F§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§%" §(param1,_loc5_ * this.§?!4§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§0![§(param1.§&!9§,param1.highQuality,_loc3_,_loc4_);
         this.§2!&§.addChild(_loc6_);
         this.§+!n§();
         this.§@!e§();
      }
      
      private function §+!n§() : void
      {
         if(this.§!!B§)
         {
            if(this.§!!B§.numChildren > 0)
            {
               this.§2!&§.addChild(this.§!!B§);
            }
            else
            {
               this.§!!B§.dispose();
               this.§!!B§ = null;
            }
         }
         if(this.§each §)
         {
            if(this.§each §.numChildren > 0)
            {
               this.§2!&§.addChildAt(this.§each §,0);
            }
            else
            {
               this.§each §.dispose();
               this.§each § = null;
            }
         }
      }
      
      private function §%" §(param1:§%T§, param2:Number) : void
      {
         var _loc4_:§9!J§ = null;
         var _loc5_:§`Q§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§>[§)
         {
            _loc4_ = param1.§?i§(_loc3_);
            if((_loc5_ = §-"4§.§#I§(_loc4_.id,this.§@=§)) && _loc5_.§&"1§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               §%!%§.§8B§.add(_loc5_);
               this.§;! §.push(_loc5_);
               if(_loc4_.§;!$§)
               {
                  if(!this.§each §)
                  {
                     this.§each § = new Sprite();
                  }
                  this.§each §.addChild(_loc5_);
               }
               else
               {
                  if(!this.§!!B§)
                  {
                     this.§!!B§ = new Sprite();
                  }
                  this.§!!B§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§^r§(1 / 20);
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
         var _loc1_:§`f§ = null;
         this.§2!&§.§-H§(0,-1,true);
         for each(_loc1_ in this.§;! §)
         {
            §%!%§.§8B§.§2!u§(_loc1_);
            _loc1_.dispose();
         }
         this.§;! § = [];
         this.§each § = null;
         this.§!!B§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§+!=§ = param1;
         this.§&!F§ = param2;
         this.§2!&§.scaleX = this.§?!C§;
         this.§2!&§.scaleY = this.§?!C§;
         this.§2!&§.x = -param1 * this.§]@§ - this.§&!#§ * this.§?!C§ + this.§39§;
         this.§2!&§.y = -param2 - this.§?3§ * this.§?!C§ + this.§4F§;
      }
      
      private function §@!e§() : void
      {
         var _loc1_:§`f§ = null;
         for each(_loc1_ in this.§;! §)
         {
            §%!%§.§8B§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §1" §() : void
      {
         var _loc1_:§`f§ = null;
         for each(_loc1_ in this.§;! §)
         {
            §%!%§.§8B§.§2!u§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §!!T§(param1:Boolean) : void
      {
         if(param1 == this.§8T§)
         {
            return;
         }
         this.§8T§ = param1;
         if(this.§8T§)
         {
            this.§@!e§();
         }
         else
         {
            this.§1" §();
         }
      }
   }
}
