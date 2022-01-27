package §#!5§
{
   import §1f§.§9H§;
   import §3%§.§]!a§;
   import §3R§.§!C§;
   import §3R§.§1!R§;
   import §4"@§.§?!0§;
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   import §<!<§.§ !y§;
   import §<!<§.§67§;
   import §?P§.§7"=§;
   import §^e§.§0"1§;
   import §^e§.§7!R§;
   import §^e§.§>b§;
   import flash.geom.Rectangle;
   
   public class §,!^§
   {
       
      
      private var §@!O§:int;
      
      private var §>!v§:Number;
      
      private var §<"#§:Boolean;
      
      protected var §9A§:Sprite;
      
      private var §"P§:Array;
      
      private var §5",§:Boolean = true;
      
      private var §#!v§:§0"1§;
      
      private var §?"4§:Sprite;
      
      private var §;t§:Sprite;
      
      private var §<!8§:Number;
      
      private var §=!U§:Number;
      
      protected var §1!k§:Number = 1.0;
      
      protected var §9!P§:Number = 0.0;
      
      protected var §<$§:Number = 0.0;
      
      protected var §%O§:Number = 0.0;
      
      protected var §'!K§:Number = 0.0;
      
      protected var §8I§:Number = 0.0;
      
      protected var §,D§:Number = 0.0;
      
      protected var §+"F§:Boolean;
      
      public function §,!^§(param1:§67§, param2:Sprite, param3:§0"1§, param4:Number)
      {
         this.§"P§ = [];
         super();
         this.§#!v§ = param3;
         this.§9A§ = param2;
         this.§>!v§ = param1.speed;
         this.§<"#§ = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get §4!O§() : Number
      {
         return this.§>!v§;
      }
      
      public function get §7"2§() : Boolean
      {
         return this.§<"#§;
      }
      
      protected function get §?S§() : Number
      {
         return this.§@!O§;
      }
      
      protected function initializePivotFromTexture(param1:§7!R§) : void
      {
         this.§<$§ = param1.pivotY;
         if(!this.§<"#§)
         {
            this.§9!P§ = param1.pivotX;
         }
         else
         {
            this.§9!P§ = 0;
         }
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§0q§;
         this.§<$§ = _loc2_.bottom;
         this.§9!P§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §-!M§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§7!R§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §>b§.§#2§(param1,this.§#!v§,param2)))
         {
            if(!(_loc5_ = this.§#!v§.getTexture(param1)))
            {
               return;
            }
            this.§1!k§ = param3 * _loc5_.scale;
            this.initializePivotFromTexture(_loc5_);
            this.§@!O§ = _loc5_.width - 2;
         }
         else
         {
            this.§1!k§ = param3;
            this.initializePivotFromComposite(_loc4_);
            this.§@!O§ = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.§@!O§ = Math.round(this.§@!O§);
      }
      
      protected function §-!h§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§[!!§(param1,param2)).x = _loc6_ * this.§@!O§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§>b§.§'!M§(param1))
         {
            _loc8_ = this.§6n§(_loc5_);
            _loc5_.§6S§();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §6n§(param1:Sprite) : Sprite
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
      
      protected function §[!!§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§7!R§ = null;
         var _loc3_:DisplayObject = §>b§.§#2§(param1,this.§#!v§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§#!v§.getTexture(param1);
            _loc3_ = new §?!0§(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         return (2 + §1!R§.§'!v§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§67§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§1!k§ = param1.scale;
         }
         else
         {
            this.§1!k§ = 1;
         }
         this.§-!M§(param1.spriteName,param1.highQuality,this.§1!k§);
         if(this.§@!O§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.getRepeatCount(param2,this.§@!O§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§+"F§ = true;
         }
         this.§8I§ = param1.xOffset;
         this.§,D§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§",§(param1,_loc5_ * this.§@!O§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§-!h§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
         this.§9A§.addChild(_loc6_);
         this.§;!;§();
         this.§9r§();
      }
      
      private function §;!;§() : void
      {
         if(this.§?"4§)
         {
            if(this.§?"4§.numChildren > 0)
            {
               this.§9A§.addChild(this.§?"4§);
            }
            else
            {
               this.§?"4§.dispose();
               this.§?"4§ = null;
            }
         }
         if(this.§;t§)
         {
            if(this.§;t§.numChildren > 0)
            {
               this.§9A§.addChildAt(this.§;t§,0);
            }
            else
            {
               this.§;t§.dispose();
               this.§;t§ = null;
            }
         }
      }
      
      private function §",§(param1:§67§, param2:Number) : void
      {
         var _loc4_:§ !y§ = null;
         var _loc5_:§!C§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§7"@§)
         {
            _loc4_ = param1.§9$§(_loc3_);
            if((_loc5_ = §]!a§.§`!9§(_loc4_.id,this.§#!v§)) && _loc5_.§13§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               §9H§.§6<§.add(_loc5_);
               this.§"P§.push(_loc5_);
               if(_loc4_.§4T§)
               {
                  if(!this.§;t§)
                  {
                     this.§;t§ = new Sprite();
                  }
                  this.§;t§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§?"4§)
                  {
                     this.§?"4§ = new Sprite();
                  }
                  this.§?"4§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§=H§(1 / 20);
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
         var _loc1_:§7"=§ = null;
         this.§9A§.§6S§(0,-1,true);
         for each(_loc1_ in this.§"P§)
         {
            §9H§.§6<§.§[!E§(_loc1_);
            _loc1_.dispose();
         }
         this.§"P§ = [];
         this.§;t§ = null;
         this.§?"4§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§<!8§ = param1;
         this.§=!U§ = param2;
         this.§9A§.scaleX = this.§1!k§;
         this.§9A§.scaleY = this.§1!k§;
         this.§9A§.x = -param1 * this.§>!v§ - this.§9!P§ * this.§1!k§ + this.§8I§;
         this.§9A§.y = -param2 - this.§<$§ * this.§1!k§ + this.§,D§;
      }
      
      private function §9r§() : void
      {
         var _loc1_:§7"=§ = null;
         for each(_loc1_ in this.§"P§)
         {
            §9H§.§6<§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §"!c§() : void
      {
         var _loc1_:§7"=§ = null;
         for each(_loc1_ in this.§"P§)
         {
            §9H§.§6<§.§[!E§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §%!6§(param1:Boolean) : void
      {
         if(param1 == this.§5",§)
         {
            return;
         }
         this.§5",§ = param1;
         if(this.§5",§)
         {
            this.§9r§();
         }
         else
         {
            this.§"!c§();
         }
      }
   }
}
