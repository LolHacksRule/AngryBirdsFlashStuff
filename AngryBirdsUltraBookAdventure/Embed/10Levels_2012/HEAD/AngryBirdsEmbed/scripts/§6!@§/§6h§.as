package §6!@§
{
   import §"D§.ParticleManager;
   import §%$§.§"r§;
   import §%-§.§%!,§;
   import §%-§.DisplayObject;
   import §%-§.Sprite;
   import §%x§.§#;§;
   import §%x§.§^F§;
   import §&p§.§'_§;
   import §0!F§.ParticleDesignerPS;
   import §4>§.§[F§;
   import §<h§.§-!0§;
   import §<h§.§;@§;
   import §<h§.§]^§;
   import §?!"§.Texture;
   import starling.events.Event;
   
   public class §6h§
   {
       
      
      private var §3^§:int;
      
      private var §#6§:int;
      
      private var §>=§:Number;
      
      private var §7#§:Boolean;
      
      private var §0W§:Sprite;
      
      private var §;A§:Array;
      
      private var §?z§:Boolean = true;
      
      private var § 7§:§;@§;
      
      private var §1,§:Sprite;
      
      private var §=!E§:Sprite;
      
      public function §6h§(param1:§"r§, param2:Sprite, param3:§;@§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§]^§ = null;
         this.§;A§ = [];
         super();
         this.§ 7§ = param3;
         this.§0W§ = param2;
         this.§>=§ = param1.§4p§;
         this.§7#§ = param1.§[!C§;
         var _loc5_:Number = 1;
         if(param1.§=!%§ != 0)
         {
            _loc5_ = param1.§=!%§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §-!0§.§"1§(param1.mName,this.§ 7§,param1.§>&§)))
         {
            _loc7_ = (_loc13_ = param3.§-+§(param1.mName)).pivotY;
            if(!this.§7#§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§3^§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§3^§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§=_§.bottom;
            _loc8_ = (_loc10_.§=_§.left + _loc10_.§=_§.right) / 2;
         }
         if(this.§3^§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§3^§ = Math.round(this.§3^§);
         if(param1.§"V§)
         {
            this.§#6§ = 2 + §#;§.§9!7§ * 1.5 / (this.§3^§ * param4);
         }
         else
         {
            this.§#6§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§#6§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §-!0§.§"1§(param1.mName,this.§ 7§,param1.§>&§);
               }
               else
               {
                  _loc10_ = new §%!,§(_loc6_,false,param1.§>&§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§3^§ + (-_loc8_ * _loc5_ + param1.§"z§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§,k§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§use §(param1,(_loc12_ - 1) * this.§3^§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§0W§.addChild(_loc11_);
         if(this.§1,§)
         {
            if(this.§1,§.numChildren > 0)
            {
               this.§0W§.addChild(this.§1,§);
            }
            else
            {
               this.§1,§.dispose();
            }
         }
         if(this.§=!E§)
         {
            if(this.§=!E§.numChildren > 0)
            {
               this.§0W§.addChildAt(this.§=!E§,0);
            }
            else
            {
               this.§=!E§.dispose();
            }
         }
         this.§0W§.addEventListener(Event.ADDED_TO_STAGE,this.§6!4§);
      }
      
      public function get §#!5§() : Boolean
      {
         return this.§7#§;
      }
      
      private function §use §(param1:§"r§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§^F§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§;A§)
         {
            if((_loc4_ = ParticleManager.§%X§(_loc3_.id,this.§ 7§)) && _loc4_.§>0§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§"z§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §'_§.§6!"§.add(_loc4_);
               this.§;A§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§=!E§)
                  {
                     this.§=!E§ = new Sprite();
                  }
                  this.§=!E§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§1,§)
                  {
                     this.§1,§ = new Sprite();
                  }
                  this.§1,§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§?_§(1 / 20);
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
         this.§0W§.§#!'§(0,-1,true);
         this.§0W§.removeEventListener(Event.ADDED_TO_STAGE,this.§6!4§);
         for each(_loc1_ in this.§;A§)
         {
            §'_§.§6!"§.§1r§(_loc1_);
            _loc1_.dispose();
         }
         this.§;A§ = [];
         this.§=!E§ = null;
         this.§1,§ = null;
      }
      
      private function §6!4§(param1:Event) : void
      {
         this.§'-§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§>=§ * param1;
         this.§0W§.x = -_loc3_;
         this.§0W§.y = -param2;
         this.§4!"§();
      }
      
      private function §'-§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§?z§ || !this.§0W§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§;A§)
         {
            §'_§.§6!"§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function § P§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§;A§)
         {
            §'_§.§6!"§.§1r§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §#,§(param1:Boolean) : void
      {
         if(param1 == this.§?z§)
         {
            return;
         }
         this.§?z§ = param1;
         if(this.§?z§)
         {
            this.§'-§();
         }
         else
         {
            this.§ P§();
         }
      }
      
      private function §4!"§() : void
      {
         if(this.§#6§ == 1 || this.§;A§.length > 0)
         {
            return;
         }
         while(§[F§.§=z§ + (this.§0W§.x - this.§3^§) * §[F§.§+K§ > 0)
         {
            this.§0W§.x -= this.§3^§;
         }
         this.§#U§();
      }
      
      private function §#U§() : void
      {
      }
   }
}
