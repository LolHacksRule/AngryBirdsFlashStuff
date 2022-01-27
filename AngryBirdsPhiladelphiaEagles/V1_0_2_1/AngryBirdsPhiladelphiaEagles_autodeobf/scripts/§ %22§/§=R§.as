package § "§
{
   import §%"§.§ do§;
   import §%"§.§ try§;
   import §'D§.§3h§;
   import §'v§.ParticleManager;
   import §,!O§.§@y§;
   import §7x§.ParticleDesignerPS;
   import §<!N§.§&M§;
   import §<!N§.DisplayObject;
   import §<!N§.Sprite;
   import §@M§.Texture;
   import §^'§.§ !C§;
   import §^'§.§!!M§;
   import §^'§.§"'§;
   import §^h§.§2l§;
   import starling.events.Event;
   
   public class §=R§
   {
       
      
      protected var §2=§:int;
      
      private var §%!7§:int;
      
      protected var §8W§:Number;
      
      private var §?!&§:Boolean;
      
      protected var §=!"§:Sprite;
      
      private var §'4§:Array;
      
      private var §"A§:Boolean = true;
      
      private var §1$§:§ !C§;
      
      private var §!!N§:Sprite;
      
      private var §0]§:Sprite;
      
      public function §=R§(param1:§@y§, param2:Sprite, param3:§ !C§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§!!M§ = null;
         this.§'4§ = [];
         super();
         this.§1$§ = param3;
         this.§=!"§ = param2;
         this.§8W§ = param1.§1!@§;
         this.§?!&§ = param1.§[B§;
         var _loc5_:Number = 1;
         if(param1.§"!3§ != 0)
         {
            _loc5_ = param1.§"!3§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §"'§.§'C§(param1.mName,this.§1$§,param1.§&m§)))
         {
            _loc7_ = (_loc13_ = param3.§@h§(param1.mName)).pivotY;
            if(!this.§?!&§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§2=§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§2=§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§=C§.bottom;
            _loc8_ = (_loc10_.§=C§.left + _loc10_.§=C§.right) / 2;
         }
         if(this.§2=§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§2=§ = Math.round(this.§2=§);
         if(param1.§@!4§)
         {
            this.§%!7§ = 2 + § do§.§39§ * 1.5 / (this.§2=§ * param4);
         }
         else
         {
            this.§%!7§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§%!7§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §"'§.§'C§(param1.mName,this.§1$§,param1.§&m§);
               }
               else
               {
                  _loc10_ = new §&M§(_loc6_,false,param1.§&m§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§2=§ + (-_loc8_ * _loc5_ + param1.§`!+§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§@1§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§^a§(param1,(_loc12_ - 1) * this.§2=§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§=!"§.addChild(_loc11_);
         if(this.§!!N§)
         {
            if(this.§!!N§.numChildren > 0)
            {
               this.§=!"§.addChild(this.§!!N§);
            }
            else
            {
               this.§!!N§.dispose();
            }
         }
         if(this.§0]§)
         {
            if(this.§0]§.numChildren > 0)
            {
               this.§=!"§.addChildAt(this.§0]§,0);
            }
            else
            {
               this.§0]§.dispose();
            }
         }
         this.§=!"§.addEventListener(Event.ADDED_TO_STAGE,this.§"!0§);
      }
      
      public function get §`o§() : Boolean
      {
         return this.§?!&§;
      }
      
      private function §^a§(param1:§@y§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§ try§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§'4§)
         {
            if((_loc4_ = ParticleManager.§>Q§(_loc3_.id,this.§1$§)) && _loc4_.§#!F§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§`!+§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §2l§.§9!'§.add(_loc4_);
               this.§'4§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§0]§)
                  {
                     this.§0]§ = new Sprite();
                  }
                  this.§0]§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§!!N§)
                  {
                     this.§!!N§ = new Sprite();
                  }
                  this.§!!N§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§&#§(1 / 20);
                  _loc5_++;
               }
            }
            else if(_loc4_)
            {
               _loc4_.dispose();
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         this.§=!"§.§0l§(0,-1,true);
         this.§=!"§.removeEventListener(Event.ADDED_TO_STAGE,this.§"!0§);
         for each(_loc1_ in this.§'4§)
         {
            §2l§.§9!'§.§;8§(_loc1_);
            _loc1_.dispose();
         }
         this.§'4§ = [];
         this.§0]§ = null;
         this.§!!N§ = null;
      }
      
      private function §"!0§(param1:Event) : void
      {
         this.§7J§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§8W§ * param1;
         this.§=!"§.x = -_loc3_;
         this.§=!"§.y = -param2;
         this.§9Q§();
      }
      
      private function §7J§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§"A§ || !this.§=!"§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§'4§)
         {
            §2l§.§9!'§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §"p§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§'4§)
         {
            §2l§.§9!'§.§;8§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §#U§(param1:Boolean) : void
      {
         if(param1 == this.§"A§)
         {
            return;
         }
         this.§"A§ = param1;
         if(this.§"A§)
         {
            this.§7J§();
         }
         else
         {
            this.§"p§();
         }
      }
      
      protected function §9Q§() : void
      {
         if(this.§%!7§ == 1 || this.§'4§.length > 0)
         {
            return;
         }
         while(§3h§.§?!=§ + (this.§=!"§.x - this.§2=§) * §3h§.levelScale > 0)
         {
            this.§=!"§.x -= this.§2=§;
         }
         this.§'!0§();
      }
      
      private function §'!0§() : void
      {
      }
   }
}
