package §7!S§
{
   import §+"f§.§!r§;
   import §+"f§.§`!Z§;
   import §1"M§.§;!q§;
   import §1"s§.§-i§;
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §3"$§.§&"0§;
   import §3"$§.§&§;
   import §3"$§.§]!h§;
   import §5!q§.§0C§;
   import §5!q§.§3"X§;
   import §9!!§.§=!S§;
   import §<v§.§>!@§;
   import flash.geom.Rectangle;
   
   public class §@=§
   {
       
      
      private var § !N§:int;
      
      private var §`"l§:Number;
      
      private var §#!8§:Boolean;
      
      protected var § "6§:Sprite;
      
      private var §'!I§:Array;
      
      private var §1"u§:Boolean = true;
      
      private var §-#7§:§&"0§;
      
      private var §4!_§:Sprite;
      
      private var §4"M§:Sprite;
      
      private var §;S§:Number;
      
      private var §;!0§:Number;
      
      protected var §"r§:Number = 1.0;
      
      protected var §?d§:Number = 0.0;
      
      protected var §@!p§:Number = 0.0;
      
      protected var §`!y§:Number = 0.0;
      
      protected var §^"t§:Number = 0.0;
      
      protected var §5!5§:Number = 0.0;
      
      protected var §,"j§:Number = 0.0;
      
      protected var §1!#§:Boolean;
      
      public function §@=§(param1:§!r§, param2:Sprite, param3:§&"0§, param4:Number)
      {
         this.§'!I§ = [];
         super();
         this.§-#7§ = param3;
         this.§ "6§ = param2;
         this.§`"l§ = param1.speed;
         this.§#!8§ = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get §5!3§() : Number
      {
         return this.§`"l§;
      }
      
      public function get §%"7§() : Boolean
      {
         return this.§#!8§;
      }
      
      protected function get §5!Z§() : Number
      {
         return this.§ !N§;
      }
      
      protected function initializePivotFromTexture(param1:§]!h§) : void
      {
         this.§@!p§ = param1.pivotY;
         if(!this.§#!8§)
         {
            this.§?d§ = param1.pivotX;
         }
         else
         {
            this.§?d§ = 0;
         }
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§8!V§;
         this.§@!p§ = _loc2_.bottom;
         this.§?d§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §7!z§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§]!h§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §&#7§.§@"G§(param1,this.§-#7§,param2)))
         {
            if(!(_loc5_ = this.§-#7§.getTexture(param1)))
            {
               return;
            }
            this.§"r§ = param3 * _loc5_.scale;
            this.initializePivotFromTexture(_loc5_);
            this.§ !N§ = _loc5_.width - 2;
         }
         else
         {
            this.§"r§ = param3;
            this.initializePivotFromComposite(_loc4_);
            this.§ !N§ = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.§ !N§ = Math.round(this.§ !N§);
      }
      
      protected function §4"P§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§9H§(param1,param2)).x = _loc6_ * this.§ !N§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§&#7§.§0!n§(param1))
         {
            _loc8_ = this.§4"V§(_loc5_);
            _loc5_.§%!2§();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §4"V§(param1:Sprite) : Sprite
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
      
      protected function §9H§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§]!h§ = null;
         var _loc3_:DisplayObject = §&#7§.§@"G§(param1,this.§-#7§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§-#7§.getTexture(param1);
            _loc3_ = new §-i§(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         return (2 + §3"X§.§6"t§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§!r§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§"r§ = param1.scale;
         }
         else
         {
            this.§"r§ = 1;
         }
         this.§7!z§(param1.spriteName,param1.highQuality,this.§"r§);
         if(this.§ !N§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.getRepeatCount(param2,this.§ !N§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§1!#§ = true;
         }
         this.§5!5§ = param1.xOffset;
         this.§,"j§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§%"k§(param1,_loc5_ * this.§ !N§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§4"P§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
         this.§ "6§.addChild(_loc6_);
         this.§^"T§();
         this.§7g§();
      }
      
      private function §%!&§(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren <= 0)
            {
               param1.dispose();
               return false;
            }
            param1.scaleX = 1 / this.§"r§;
            param1.scaleY = 1 / this.§"r§;
            param1.x = this.§?d§ - this.§5!5§ / this.§"r§;
            param1.y = this.§@!p§ - this.§,"j§ / this.§"r§;
            if(param2 < 0)
            {
               this.§ "6§.addChild(param1);
            }
            else
            {
               this.§ "6§.addChildAt(param1,param2);
            }
         }
         return true;
      }
      
      private function §^"T§() : void
      {
         if(!this.§%!&§(this.§4!_§))
         {
            this.§4!_§ = null;
         }
         if(!this.§%!&§(this.§4"M§,0))
         {
            this.§4"M§ = null;
         }
      }
      
      private function §%"k§(param1:§!r§, param2:Number) : void
      {
         var _loc4_:§`!Z§ = null;
         var _loc5_:§0C§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§5# §)
         {
            _loc4_ = param1.§<"t§(_loc3_);
            if((_loc5_ = §;!q§.§3!7§(_loc4_.id,this.§-#7§)) && _loc5_.§<#§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               §=!S§.§ #"§.add(_loc5_);
               this.§'!I§.push(_loc5_);
               if(_loc4_.§7"v§)
               {
                  if(!this.§4"M§)
                  {
                     this.§4"M§ = new Sprite();
                  }
                  this.§4"M§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§4!_§)
                  {
                     this.§4!_§ = new Sprite();
                  }
                  this.§4!_§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§]'§(1 / 20);
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
         var _loc1_:§>!@§ = null;
         this.§ "6§.§%!2§(0,-1,true);
         for each(_loc1_ in this.§'!I§)
         {
            §=!S§.§ #"§.§##&§(_loc1_);
            _loc1_.dispose();
         }
         this.§'!I§ = [];
         this.§4"M§ = null;
         this.§4!_§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§;S§ = param1;
         this.§;!0§ = param2;
         this.§ "6§.scaleX = this.§"r§;
         this.§ "6§.scaleY = this.§"r§;
         this.§ "6§.x = -param1 * this.§`"l§ - this.§?d§ * this.§"r§ + this.§5!5§;
         this.§ "6§.y = -param2 - this.§@!p§ * this.§"r§ + this.§,"j§;
      }
      
      private function §7g§() : void
      {
         var _loc1_:§>!@§ = null;
         for each(_loc1_ in this.§'!I§)
         {
            §=!S§.§ #"§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §@j§() : void
      {
         var _loc1_:§>!@§ = null;
         for each(_loc1_ in this.§'!I§)
         {
            §=!S§.§ #"§.§##&§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §&U§(param1:Boolean) : void
      {
         if(param1 == this.§1"u§)
         {
            return;
         }
         this.§1"u§ = param1;
         if(this.§1"u§)
         {
            this.§7g§();
         }
         else
         {
            this.§@j§();
         }
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
