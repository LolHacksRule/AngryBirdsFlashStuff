package §=g§
{
   import § !=§.§0F§;
   import § !=§.DisplayObject;
   import § !=§.Sprite;
   import §;L§.§"!X§;
   import §;L§.§?D§;
   import §;L§.§[!H§;
   import §<!n§.§"Z§;
   import §>!z§.§'v§;
   import §>!z§.§=!g§;
   import §@N§.§2!i§;
   import §]A§.§-U§;
   import §]A§.§[d§;
   import §`V§.§;6§;
   import flash.geom.Rectangle;
   
   public class §,6§
   {
       
      
      private var §?!J§:int;
      
      private var §%!J§:Number;
      
      private var §=!I§:Boolean;
      
      protected var §%!D§:Sprite;
      
      private var §@!X§:Array;
      
      private var §`!-§:Boolean = true;
      
      private var §'!2§:§"!X§;
      
      private var §6B§:Sprite;
      
      private var §%!<§:Sprite;
      
      private var §7!3§:Number;
      
      private var §7m§:Number;
      
      protected var §6!p§:Number = 1.0;
      
      protected var §]!E§:Number = 0.0;
      
      protected var §<""§:Number = 0.0;
      
      protected var §<c§:Number = 0.0;
      
      protected var §`!p§:Number = 0.0;
      
      protected var §`e§:Number = 0.0;
      
      protected var §%S§:Number = 0.0;
      
      protected var §=r§:Boolean;
      
      public function §,6§(param1:§'v§, param2:Sprite, param3:§"!X§, param4:Number)
      {
         this.§@!X§ = [];
         super();
         this.§'!2§ = param3;
         this.§%!D§ = param2;
         this.§%!J§ = param1.speed;
         this.§=!I§ = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get §'!W§() : Number
      {
         return this.§%!J§;
      }
      
      public function get §8b§() : Boolean
      {
         return this.§=!I§;
      }
      
      protected function get §7"5§() : Number
      {
         return this.§?!J§;
      }
      
      protected function §?!g§(param1:§[!H§) : void
      {
         this.§<""§ = param1.pivotY;
         if(!this.§=!I§)
         {
            this.§]!E§ = param1.pivotX;
         }
         else
         {
            this.§]!E§ = 0;
         }
      }
      
      protected function §+x§(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§4N§;
         this.§<""§ = _loc2_.bottom;
         this.§]!E§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §[1§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§[!H§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §?D§.§!"3§(param1,this.§'!2§,param2)))
         {
            if(!(_loc5_ = this.§'!2§.§""#§(param1)))
            {
               return;
            }
            this.§6!p§ = param3 * _loc5_.scale;
            this.§?!g§(_loc5_);
            this.§?!J§ = _loc5_.width - 2;
         }
         else
         {
            this.§6!p§ = param3;
            this.§+x§(_loc4_);
            this.§?!J§ = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.§?!J§ = Math.round(this.§?!J§);
      }
      
      protected function §1!b§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§<e§(param1,param2)).x = (_loc6_ - 1) * this.§?!J§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§?D§.§08§(param1))
         {
            _loc8_ = this.§+j§(_loc5_);
            _loc5_.§,!<§();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §+j§(param1:Sprite) : Sprite
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
      
      protected function §<e§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§[!H§ = null;
         var _loc3_:DisplayObject = §?D§.§!"3§(param1,this.§'!2§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§'!2§.§""#§(param1);
            _loc3_ = new §0F§(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function § Y§(param1:Number, param2:int) : int
      {
         return (2 + §[d§.§1!B§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§'v§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§6!p§ = param1.scale;
         }
         else
         {
            this.§6!p§ = 1;
         }
         this.§[1§(param1.§>!s§,param1.highQuality,this.§6!p§);
         if(this.§?!J§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.§ Y§(param2,this.§?!J§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§=r§ = true;
         }
         this.§`e§ = param1.xOffset;
         this.§%S§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§ !z§(param1,_loc5_ * this.§?!J§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§1!b§(param1.§>!s§,param1.highQuality,_loc3_,_loc4_);
         this.§%!D§.addChild(_loc6_);
         this.§5o§();
         this.§&!,§();
      }
      
      private function §5o§() : void
      {
         if(this.§6B§)
         {
            if(this.§6B§.numChildren > 0)
            {
               this.§%!D§.addChild(this.§6B§);
            }
            else
            {
               this.§6B§.dispose();
               this.§6B§ = null;
            }
         }
         if(this.§%!<§)
         {
            if(this.§%!<§.numChildren > 0)
            {
               this.§%!D§.addChildAt(this.§%!<§,0);
            }
            else
            {
               this.§%!<§.dispose();
               this.§%!<§ = null;
            }
         }
      }
      
      private function § !z§(param1:§'v§, param2:Number) : void
      {
         var _loc4_:§=!g§ = null;
         var _loc5_:§-U§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§,!M§)
         {
            _loc4_ = param1.§+z§(_loc3_);
            if((_loc5_ = §"Z§.§4<§(_loc4_.id,this.§'!2§)) && _loc5_.§@!'§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               §;6§.§`"!§.add(_loc5_);
               this.§@!X§.push(_loc5_);
               if(_loc4_.§8!@§)
               {
                  if(!this.§%!<§)
                  {
                     this.§%!<§ = new Sprite();
                  }
                  this.§%!<§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§6B§)
                  {
                     this.§6B§ = new Sprite();
                  }
                  this.§6B§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§;!!§(1 / 20);
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
         var _loc1_:§2!i§ = null;
         this.§%!D§.§,!<§(0,-1,true);
         for each(_loc1_ in this.§@!X§)
         {
            §;6§.§`"!§.§[!X§(_loc1_);
            _loc1_.dispose();
         }
         this.§@!X§ = [];
         this.§%!<§ = null;
         this.§6B§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§7!3§ = param1;
         this.§7m§ = param2;
         this.§%!D§.scaleX = this.§6!p§;
         this.§%!D§.scaleY = this.§6!p§;
         this.§%!D§.x = -param1 * this.§%!J§ - this.§]!E§ * this.§6!p§ + this.§`e§;
         this.§%!D§.y = -param2 - this.§<""§ * this.§6!p§ + this.§%S§;
      }
      
      private function §&!,§() : void
      {
         var _loc1_:§2!i§ = null;
         for each(_loc1_ in this.§@!X§)
         {
            §;6§.§`"!§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §^!§() : void
      {
         var _loc1_:§2!i§ = null;
         for each(_loc1_ in this.§@!X§)
         {
            §;6§.§`"!§.§[!X§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §?!m§(param1:Boolean) : void
      {
         if(param1 == this.§`!-§)
         {
            return;
         }
         this.§`!-§ = param1;
         if(this.§`!-§)
         {
            this.§&!,§();
         }
         else
         {
            this.§^!§();
         }
      }
   }
}
