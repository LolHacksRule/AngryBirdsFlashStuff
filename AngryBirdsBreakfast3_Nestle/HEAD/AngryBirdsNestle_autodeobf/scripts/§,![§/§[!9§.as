package §,![§
{
   import §!!!§.§6!l§;
   import §#!q§.§!%§;
   import §2`§.§%!!§;
   import §2`§.§5E§;
   import §2`§.§6y§;
   import §3!J§.§4!2§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   import §;n§.§<"5§;
   import §>z§.§#U§;
   import §>z§.§5!?§;
   import §@V§.§#=§;
   import §@V§.§1"-§;
   import flash.geom.Rectangle;
   
   public class §[!9§
   {
       
      
      private var §!"'§:int;
      
      private var §#m§:Number;
      
      private var §"z§:Boolean;
      
      protected var §&%§:Sprite;
      
      private var §1!;§:Array;
      
      private var §?!2§:Boolean = true;
      
      private var §,%§:§%!!§;
      
      private var §@!?§:Sprite;
      
      private var §4!c§:Sprite;
      
      private var §-!o§:Number;
      
      private var §>!]§:Number;
      
      protected var §2c§:Number = 1.0;
      
      protected var §6!f§:Number = 0.0;
      
      protected var §<!C§:Number = 0.0;
      
      protected var §2!y§:Number = 0.0;
      
      protected var §!a§:Number = 0.0;
      
      protected var §0!F§:Number = 0.0;
      
      protected var §1!!§:Number = 0.0;
      
      protected var §"§:Boolean;
      
      public function §[!9§(param1:§5!?§, param2:Sprite, param3:§%!!§, param4:Number)
      {
         this.§1!;§ = [];
         super();
         this.§,%§ = param3;
         this.§&%§ = param2;
         this.§#m§ = param1.speed;
         this.§"z§ = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get §=!1§() : Number
      {
         return this.§#m§;
      }
      
      public function get §6!6§() : Boolean
      {
         return this.§"z§;
      }
      
      protected function get §4!e§() : Number
      {
         return this.§!"'§;
      }
      
      protected function §^#§(param1:§5E§) : void
      {
         this.§<!C§ = param1.pivotY;
         if(!this.§"z§)
         {
            this.§6!f§ = param1.pivotX;
         }
         else
         {
            this.§6!f§ = 0;
         }
      }
      
      protected function §2!,§(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§4j§;
         this.§<!C§ = _loc2_.bottom;
         this.§6!f§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §!!u§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§5E§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §6y§.§=!0§(param1,this.§,%§,param2)))
         {
            if(!(_loc5_ = this.§,%§.§5!X§(param1)))
            {
               return;
            }
            this.§2c§ = param3 * _loc5_.scale;
            this.§^#§(_loc5_);
            this.§!"'§ = _loc5_.width - 2;
         }
         else
         {
            this.§2c§ = param3;
            this.§2!,§(_loc4_);
            this.§!"'§ = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.§!"'§ = Math.round(this.§!"'§);
      }
      
      protected function §%!'§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§%!a§(param1,param2)).x = _loc6_ * this.§!"'§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§6y§.§'!L§(param1))
         {
            _loc8_ = this.§;3§(_loc5_);
            _loc5_.§8V§();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §;3§(param1:Sprite) : Sprite
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
      
      protected function §%!a§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§5E§ = null;
         var _loc3_:DisplayObject = §6y§.§=!0§(param1,this.§,%§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§,%§.§5!X§(param1);
            _loc3_ = new §4!2§(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function §>"§(param1:Number, param2:int) : int
      {
         return (2 + §#=§.§5B§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§5!?§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§2c§ = param1.scale;
         }
         else
         {
            this.§2c§ = 1;
         }
         this.§!!u§(param1.§-Q§,param1.highQuality,this.§2c§);
         if(this.§!"'§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.§>"§(param2,this.§!"'§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§"§ = true;
         }
         this.§0!F§ = param1.xOffset;
         this.§1!!§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§"!-§(param1,_loc5_ * this.§!"'§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§%!'§(param1.§-Q§,param1.highQuality,_loc3_,_loc4_);
         this.§&%§.addChild(_loc6_);
         this.§@!'§();
         this.§^!A§();
      }
      
      private function §=v§(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren <= 0)
            {
               param1.dispose();
               return false;
            }
            param1.scaleX = 1 / this.§2c§;
            param1.scaleY = 1 / this.§2c§;
            param1.x = this.§6!f§ - this.§0!F§ / this.§2c§;
            param1.y = this.§<!C§ - this.§1!!§ / this.§2c§;
            if(param2 < 0)
            {
               this.§&%§.addChild(param1);
            }
            else
            {
               this.§&%§.addChildAt(param1,param2);
            }
         }
         return true;
      }
      
      private function §@!'§() : void
      {
         if(!this.§=v§(this.§@!?§))
         {
            this.§@!?§ = null;
         }
         if(!this.§=v§(this.§4!c§,0))
         {
            this.§4!c§ = null;
         }
      }
      
      private function §"!-§(param1:§5!?§, param2:Number) : void
      {
         var _loc4_:§#U§ = null;
         var _loc5_:§1"-§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§ w§)
         {
            _loc4_ = param1.§2D§(_loc3_);
            if((_loc5_ = §!%§.§!y§(_loc4_.id,this.§,%§)) && _loc5_.§#!f§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               §6!l§.§-f§.add(_loc5_);
               this.§1!;§.push(_loc5_);
               if(_loc4_.§?K§)
               {
                  if(!this.§4!c§)
                  {
                     this.§4!c§ = new Sprite();
                  }
                  this.§4!c§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§@!?§)
                  {
                     this.§@!?§ = new Sprite();
                  }
                  this.§@!?§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§>!s§(1 / 20);
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
         var _loc1_:§<"5§ = null;
         this.§&%§.§8V§(0,-1,true);
         for each(_loc1_ in this.§1!;§)
         {
            §6!l§.§-f§.native(_loc1_);
            _loc1_.dispose();
         }
         this.§1!;§ = [];
         this.§4!c§ = null;
         this.§@!?§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§-!o§ = param1;
         this.§>!]§ = param2;
         this.§&%§.scaleX = this.§2c§;
         this.§&%§.scaleY = this.§2c§;
         this.§&%§.x = -param1 * this.§#m§ - this.§6!f§ * this.§2c§ + this.§0!F§;
         this.§&%§.y = -param2 - this.§<!C§ * this.§2c§ + this.§1!!§;
      }
      
      private function §^!A§() : void
      {
         var _loc1_:§<"5§ = null;
         for each(_loc1_ in this.§1!;§)
         {
            §6!l§.§-f§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §+8§() : void
      {
         var _loc1_:§<"5§ = null;
         for each(_loc1_ in this.§1!;§)
         {
            §6!l§.§-f§.native(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §'"%§(param1:Boolean) : void
      {
         if(param1 == this.§?!2§)
         {
            return;
         }
         this.§?!2§ = param1;
         if(this.§?!2§)
         {
            this.§^!A§();
         }
         else
         {
            this.§+8§();
         }
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
