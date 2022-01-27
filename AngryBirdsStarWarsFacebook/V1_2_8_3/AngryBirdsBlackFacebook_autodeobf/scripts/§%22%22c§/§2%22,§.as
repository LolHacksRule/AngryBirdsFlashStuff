package §""c§
{
   import § "-§.§6!R§;
   import §!!k§.§'!j§;
   import §!!k§.§0!B§;
   import §!!k§.§;m§;
   import §"§.§;!E§;
   import §"§.§?"`§;
   import §9##§.§`"0§;
   import §<"[§.§%5§;
   import §`!v§.§9"w§;
   import §`!v§.§;!d§;
   import flash.geom.Rectangle;
   import §use§.§,!u§;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §2",§
   {
       
      
      private var §=!>§:int;
      
      private var §+h§:Number;
      
      private var §&4§:Boolean;
      
      protected var §0v§:Sprite;
      
      private var §?w§:Array;
      
      private var §]J§:Boolean = true;
      
      private var §9!G§:§0!B§;
      
      private var §"l§:Sprite;
      
      private var §0"Y§:Sprite;
      
      private var §#6§:Number;
      
      private var §8"]§:Number;
      
      protected var §#"5§:Number = 1.0;
      
      protected var §["2§:Number = 0.0;
      
      protected var §?!_§:Number = 0.0;
      
      protected var §?!O§:Number = 0.0;
      
      protected var §0"e§:Number = 0.0;
      
      protected var §=!+§:Number = 0.0;
      
      protected var §&]§:Number = 0.0;
      
      protected var §+"d§:Boolean;
      
      public function §2",§(param1:§;!d§, param2:Sprite, param3:§0!B§, param4:Number)
      {
         this.§?w§ = [];
         super();
         this.§9!G§ = param3;
         this.§0v§ = param2;
         this.§+h§ = param1.speed;
         this.§&4§ = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get §2+§() : Number
      {
         return this.§+h§;
      }
      
      public function get §&!b§() : Boolean
      {
         return this.§&4§;
      }
      
      protected function get §>P§() : Number
      {
         return this.§=!>§;
      }
      
      protected function initializePivotFromTexture(param1:§'!j§) : void
      {
         this.§?!_§ = param1.pivotY;
         if(!this.§&4§)
         {
            this.§["2§ = param1.pivotX;
         }
         else
         {
            this.§["2§ = 0;
         }
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§&"r§;
         this.§?!_§ = _loc2_.bottom;
         this.§["2§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §?!r§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§'!j§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §;m§.§-"p§(param1,this.§9!G§,param2)))
         {
            if(!(_loc5_ = this.§9!G§.getTexture(param1)))
            {
               return;
            }
            this.§#"5§ = param3 * _loc5_.scale;
            this.initializePivotFromTexture(_loc5_);
            this.§=!>§ = _loc5_.width - 2;
         }
         else
         {
            this.§#"5§ = param3;
            this.initializePivotFromComposite(_loc4_);
            this.§=!>§ = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.§=!>§ = Math.round(this.§=!>§);
      }
      
      protected function §2p§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§=!p§(param1,param2)).x = _loc6_ * this.§=!>§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§;m§.§^!`§(param1))
         {
            _loc8_ = this.§8!+§(_loc5_);
            _loc5_.§]"X§();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §8!+§(param1:Sprite) : Sprite
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
      
      protected function §=!p§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§'!j§ = null;
         var _loc3_:DisplayObject = §;m§.§-"p§(param1,this.§9!G§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§9!G§.getTexture(param1);
            _loc3_ = new §,!u§(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         return (2 + §;!E§.§;#&§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§;!d§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§#"5§ = param1.scale;
         }
         else
         {
            this.§#"5§ = 1;
         }
         this.§?!r§(param1.spriteName,param1.highQuality,this.§#"5§);
         if(this.§=!>§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.getRepeatCount(param2,this.§=!>§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§+"d§ = true;
         }
         this.§=!+§ = param1.xOffset;
         this.§&]§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§`A§(param1,_loc5_ * this.§=!>§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§2p§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
         this.§0v§.addChild(_loc6_);
         this.§`"O§();
         this.§=w§();
      }
      
      private function §#!8§(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren <= 0)
            {
               param1.dispose();
               return false;
            }
            param1.scaleX = 1 / this.§#"5§;
            param1.scaleY = 1 / this.§#"5§;
            param1.x = this.§["2§ - this.§=!+§ / this.§#"5§;
            param1.y = this.§?!_§ - this.§&]§ / this.§#"5§;
            if(param2 < 0)
            {
               this.§0v§.addChild(param1);
            }
            else
            {
               this.§0v§.addChildAt(param1,param2);
            }
         }
         return true;
      }
      
      private function §`"O§() : void
      {
         if(!this.§#!8§(this.§"l§))
         {
            this.§"l§ = null;
         }
         if(!this.§#!8§(this.§0"Y§,0))
         {
            this.§0"Y§ = null;
         }
      }
      
      private function §`A§(param1:§;!d§, param2:Number) : void
      {
         var _loc4_:§9"w§ = null;
         var _loc5_:§?"`§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§`g§)
         {
            _loc4_ = param1.§#!4§(_loc3_);
            if((_loc5_ = §`"0§.§'0§(_loc4_.id,this.§9!G§)) && _loc5_.§'!O§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               §6!R§.§6!V§.add(_loc5_);
               this.§?w§.push(_loc5_);
               if(_loc4_.§9"N§)
               {
                  if(!this.§0"Y§)
                  {
                     this.§0"Y§ = new Sprite();
                  }
                  this.§0"Y§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§"l§)
                  {
                     this.§"l§ = new Sprite();
                  }
                  this.§"l§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§&w§(1 / 20);
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
         var _loc1_:§%5§ = null;
         this.§0v§.§]"X§(0,-1,true);
         for each(_loc1_ in this.§?w§)
         {
            §6!R§.§6!V§.§=!1§(_loc1_);
            _loc1_.dispose();
         }
         this.§?w§ = [];
         this.§0"Y§ = null;
         this.§"l§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§#6§ = param1;
         this.§8"]§ = param2;
         this.§0v§.scaleX = this.§#"5§;
         this.§0v§.scaleY = this.§#"5§;
         this.§0v§.x = -param1 * this.§+h§ - this.§["2§ * this.§#"5§ + this.§=!+§;
         this.§0v§.y = -param2 - this.§?!_§ * this.§#"5§ + this.§&]§;
      }
      
      private function §=w§() : void
      {
         var _loc1_:§%5§ = null;
         for each(_loc1_ in this.§?w§)
         {
            §6!R§.§6!V§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §^!L§() : void
      {
         var _loc1_:§%5§ = null;
         for each(_loc1_ in this.§?w§)
         {
            §6!R§.§6!V§.§=!1§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §]c§(param1:Boolean) : void
      {
         if(param1 == this.§]J§)
         {
            return;
         }
         this.§]J§ = param1;
         if(this.§]J§)
         {
            this.§=w§();
         }
         else
         {
            this.§^!L§();
         }
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
