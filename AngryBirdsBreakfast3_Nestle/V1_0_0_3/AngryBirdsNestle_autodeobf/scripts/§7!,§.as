package
{
   import §&Y§.§ !j§;
   import §+c§.§6y§;
   import §+c§.§9D§;
   import §0!Y§.§#"5§;
   import §0!Y§.DisplayObject;
   import §0!Y§.Sprite;
   import §5!W§.§>P§;
   import §6!?§.§0+§;
   import §6!?§.§6B§;
   import §6!?§.§`!O§;
   import §?!c§.§+T§;
   import §@"1§.§"h§;
   import §@"1§.§^!"§;
   import flash.geom.Rectangle;
   
   public class §7!,§
   {
       
      
      private var §<D§:int;
      
      private var §2m§:Number;
      
      private var §&&§:Boolean;
      
      protected var §<q§:Sprite;
      
      private var §#![§:Array;
      
      private var §6$§:Boolean = true;
      
      private var §#=§:§`!O§;
      
      private var §]!L§:Sprite;
      
      private var §8q§:Sprite;
      
      private var §^!R§:Number;
      
      private var §[t§:Number;
      
      protected var §>s§:Number = 1.0;
      
      protected var §=i§:Number = 0.0;
      
      protected var §6!A§:Number = 0.0;
      
      protected var §1+§:Number = 0.0;
      
      protected var §?!<§:Number = 0.0;
      
      protected var §+f§:Number = 0.0;
      
      protected var §99§:Number = 0.0;
      
      protected var §]>§:Boolean;
      
      public function §7!,§(param1:§6y§, param2:Sprite, param3:§`!O§, param4:Number)
      {
         this.§#![§ = [];
         super();
         this.§#=§ = param3;
         this.§<q§ = param2;
         this.§2m§ = param1.speed;
         this.§&&§ = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get §40§() : Number
      {
         return this.§2m§;
      }
      
      public function get §]p§() : Boolean
      {
         return this.§&&§;
      }
      
      protected function get §4!]§() : Number
      {
         return this.§<D§;
      }
      
      protected function §36§(param1:§6B§) : void
      {
         this.§6!A§ = param1.pivotY;
         if(!this.§&&§)
         {
            this.§=i§ = param1.pivotX;
         }
         else
         {
            this.§=i§ = 0;
         }
      }
      
      protected function §'!X§(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§]1§;
         this.§6!A§ = _loc2_.bottom;
         this.§=i§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §7]§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§6B§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §0+§.§9!+§(param1,this.§#=§,param2)))
         {
            if(!(_loc5_ = this.§#=§.§=!'§(param1)))
            {
               return;
            }
            this.§>s§ = param3 * _loc5_.scale;
            this.§36§(_loc5_);
            this.§<D§ = _loc5_.width - 2;
         }
         else
         {
            this.§>s§ = param3;
            this.§'!X§(_loc4_);
            this.§<D§ = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.§<D§ = Math.round(this.§<D§);
      }
      
      protected function §?!1§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§8s§(param1,param2)).x = (_loc6_ - 1) * this.§<D§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§0+§.§`X§(param1))
         {
            _loc8_ = this.§"!k§(_loc5_);
            _loc5_.§'l§();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §"!k§(param1:Sprite) : Sprite
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
      
      protected function §8s§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§6B§ = null;
         var _loc3_:DisplayObject = §0+§.§9!+§(param1,this.§#=§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§#=§.§=!'§(param1);
            _loc3_ = new §#"5§(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function §<6§(param1:Number, param2:int) : int
      {
         return (2 + §"h§.§[!C§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§6y§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§>s§ = param1.scale;
         }
         else
         {
            this.§>s§ = 1;
         }
         this.§7]§(param1.§"z§,param1.highQuality,this.§>s§);
         if(this.§<D§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.§<6§(param2,this.§<D§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§]>§ = true;
         }
         this.§+f§ = param1.xOffset;
         this.§99§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§[!0§(param1,_loc5_ * this.§<D§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§?!1§(param1.§"z§,param1.highQuality,_loc3_,_loc4_);
         this.§<q§.addChild(_loc6_);
         this.§3!^§();
         this.§#!E§();
      }
      
      private function §3!^§() : void
      {
         if(this.§]!L§)
         {
            if(this.§]!L§.numChildren > 0)
            {
               this.§<q§.addChild(this.§]!L§);
            }
            else
            {
               this.§]!L§.dispose();
               this.§]!L§ = null;
            }
         }
         if(this.§8q§)
         {
            if(this.§8q§.numChildren > 0)
            {
               this.§<q§.addChildAt(this.§8q§,0);
            }
            else
            {
               this.§8q§.dispose();
               this.§8q§ = null;
            }
         }
      }
      
      private function §[!0§(param1:§6y§, param2:Number) : void
      {
         var _loc4_:§9D§ = null;
         var _loc5_:§^!"§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§&"3§)
         {
            _loc4_ = param1.§`'§(_loc3_);
            if((_loc5_ = § !j§.§-k§(_loc4_.id,this.§#=§)) && _loc5_.§"!]§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               §>P§.§'8§.add(_loc5_);
               this.§#![§.push(_loc5_);
               if(_loc4_.§,!L§)
               {
                  if(!this.§8q§)
                  {
                     this.§8q§ = new Sprite();
                  }
                  this.§8q§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§]!L§)
                  {
                     this.§]!L§ = new Sprite();
                  }
                  this.§]!L§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§;#§(1 / 20);
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
         var _loc1_:§+T§ = null;
         this.§<q§.§'l§(0,-1,true);
         for each(_loc1_ in this.§#![§)
         {
            §>P§.§'8§.§>!3§(_loc1_);
            _loc1_.dispose();
         }
         this.§#![§ = [];
         this.§8q§ = null;
         this.§]!L§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§^!R§ = param1;
         this.§[t§ = param2;
         this.§<q§.scaleX = this.§>s§;
         this.§<q§.scaleY = this.§>s§;
         this.§<q§.x = -param1 * this.§2m§ - this.§=i§ * this.§>s§ + this.§+f§;
         this.§<q§.y = -param2 - this.§6!A§ * this.§>s§ + this.§99§;
      }
      
      private function §#!E§() : void
      {
         var _loc1_:§+T§ = null;
         for each(_loc1_ in this.§#![§)
         {
            §>P§.§'8§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §=R§() : void
      {
         var _loc1_:§+T§ = null;
         for each(_loc1_ in this.§#![§)
         {
            §>P§.§'8§.§>!3§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §>"§(param1:Boolean) : void
      {
         if(param1 == this.§6$§)
         {
            return;
         }
         this.§6$§ = param1;
         if(this.§6$§)
         {
            this.§#!E§();
         }
         else
         {
            this.§=R§();
         }
      }
   }
}
