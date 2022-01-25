package §1p§
{
   import §#!a§.Texture;
   import §#h§.§8#§;
   import §'!J§.§6'§;
   import §''§.§3!$§;
   import §+R§.§0O§;
   import §3!W§.§5!Q§;
   import §5!?§.§%0§;
   import §5!?§.§>"§;
   import §8r§.§-!$§;
   import §8r§.§5Q§;
   import §8r§.§@V§;
   import §;t§.§=_§;
   import §;t§.DisplayObject;
   import §;t§.Sprite;
   import starling.events.Event;
   
   public class §8p§
   {
       
      
      private var §25§:int;
      
      private var §9!2§:int;
      
      private var §+p§:Number;
      
      private var §6!J§:Boolean;
      
      private var §8q§:Sprite;
      
      private var §]![§:Array;
      
      private var §^!%§:Boolean = true;
      
      private var § u§:§@V§;
      
      private var §5^§:Sprite;
      
      private var §1D§:Sprite;
      
      public function §8p§(param1:§8#§, param2:Sprite, param3:§@V§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§-!$§ = null;
         this.§]![§ = [];
         super();
         this.§ u§ = param3;
         this.§8q§ = param2;
         this.§+p§ = param1.§8j§;
         this.§6!J§ = param1.§;U§;
         var _loc5_:Number = 1;
         if(param1.§`z§ != 0)
         {
            _loc5_ = param1.§`z§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §5Q§.§=X§(param1.mName,this.§ u§,param1.§1!W§)))
         {
            _loc7_ = (_loc13_ = param3.§1!I§(param1.mName)).pivotY;
            if(!this.§6!J§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§25§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§25§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§#!"§.bottom;
            _loc8_ = (_loc10_.§#!"§.left + _loc10_.§#!"§.right) / 2;
         }
         if(this.§25§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§25§ = Math.round(this.§25§);
         if(param1.§7!W§)
         {
            this.§9!2§ = 2 + §>"§.§8!H§ * 1.5 / (this.§25§ * param4);
         }
         else
         {
            this.§9!2§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§9!2§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §5Q§.§=X§(param1.mName,this.§ u§,param1.§1!W§);
               }
               else
               {
                  _loc10_ = new §=_§(_loc6_,false,param1.§1!W§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§25§ + (-_loc8_ * _loc5_ + param1.§'[§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§@![§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§]G§(param1,(_loc12_ - 1) * this.§25§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§8q§.addChild(_loc11_);
         if(this.§5^§)
         {
            if(this.§5^§.numChildren > 0)
            {
               this.§8q§.addChild(this.§5^§);
            }
            else
            {
               this.§5^§.dispose();
            }
         }
         if(this.§1D§)
         {
            if(this.§1D§.numChildren > 0)
            {
               this.§8q§.addChildAt(this.§1D§,0);
            }
            else
            {
               this.§1D§.dispose();
            }
         }
         this.§8q§.addEventListener(Event.ADDED_TO_STAGE,this.§3W§);
      }
      
      public function get §%!Q§() : Boolean
      {
         return this.§6!J§;
      }
      
      private function §]G§(param1:§8#§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§%0§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§]![§)
         {
            if((_loc4_ = §3!$§.§1t§(_loc3_.id,this.§ u§)) && _loc4_.§7+§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§'[§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §0O§.§&H§.add(_loc4_);
               this.§]![§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§1D§)
                  {
                     this.§1D§ = new Sprite();
                  }
                  this.§1D§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§5^§)
                  {
                     this.§5^§ = new Sprite();
                  }
                  this.§5^§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§+!I§(1 / 20);
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
         var _loc1_:§6'§ = null;
         this.§8q§.§;u§(0,-1,true);
         this.§8q§.removeEventListener(Event.ADDED_TO_STAGE,this.§3W§);
         for each(_loc1_ in this.§]![§)
         {
            §0O§.§&H§.§!M§(_loc1_);
            _loc1_.dispose();
         }
         this.§]![§ = [];
         this.§1D§ = null;
         this.§5^§ = null;
      }
      
      private function §3W§(param1:Event) : void
      {
         this.§@F§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§+p§ * param1;
         this.§8q§.x = -_loc3_;
         this.§8q§.y = -param2;
         this.§!e§();
      }
      
      private function §@F§() : void
      {
         var _loc1_:§6'§ = null;
         if(!this.§^!%§ || !this.§8q§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§]![§)
         {
            §0O§.§&H§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §0'§() : void
      {
         var _loc1_:§6'§ = null;
         for each(_loc1_ in this.§]![§)
         {
            §0O§.§&H§.§!M§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §%a§(param1:Boolean) : void
      {
         if(param1 == this.§^!%§)
         {
            return;
         }
         this.§^!%§ = param1;
         if(this.§^!%§)
         {
            this.§@F§();
         }
         else
         {
            this.§0'§();
         }
      }
      
      private function §!e§() : void
      {
         if(this.§9!2§ == 1 || this.§]![§.length > 0)
         {
            return;
         }
         while(§5!Q§.§"!U§ + (this.§8q§.x - this.§25§) * §5!Q§.§8!>§ > 0)
         {
            this.§8q§.x -= this.§25§;
         }
         this.§<Z§();
      }
      
      private function §<Z§() : void
      {
      }
   }
}
