package §2!1§
{
   import §"-§.§%C§;
   import §#V§.§,!W§;
   import §,H§.§;!9§;
   import §,H§.DisplayObject;
   import §,H§.Sprite;
   import §,Y§.Texture;
   import §-A§.§%9§;
   import §-A§.§package§;
   import §2!4§.§3&§;
   import §2!4§.§5T§;
   import §2!4§.§>5§;
   import §2!P§.§6=§;
   import §;S§.§>!^§;
   import §^n§.§[!0§;
   import starling.events.Event;
   
   public class §]Q§
   {
       
      
      protected var §^W§:int;
      
      private var §=r§:int;
      
      protected var §+E§:Number;
      
      private var §3O§:Boolean;
      
      protected var §=#§:Sprite;
      
      private var §0b§:Array;
      
      private var §5!4§:Boolean = true;
      
      private var §^!2§:§5T§;
      
      private var §<v§:Sprite;
      
      private var §7!9§:Sprite;
      
      public function §]Q§(param1:§[!0§, param2:Sprite, param3:§5T§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§>5§ = null;
         this.§0b§ = [];
         super();
         this.§^!2§ = param3;
         this.§=#§ = param2;
         this.§+E§ = param1.§var §;
         this.§3O§ = param1.§0!Y§;
         var _loc5_:Number = 1;
         if(param1.§case § != 0)
         {
            _loc5_ = param1.§case §;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §3&§.§'g§(param1.mName,this.§^!2§,param1.§6!#§)))
         {
            _loc7_ = (_loc13_ = param3.§]N§(param1.mName)).pivotY;
            if(!this.§3O§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§^W§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§^W§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§1!Q§.bottom;
            _loc8_ = (_loc10_.§1!Q§.left + _loc10_.§1!Q§.right) / 2;
         }
         if(this.§^W§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§^W§ = Math.round(this.§^W§);
         if(param1.§??§)
         {
            this.§=r§ = 2 + §%9§.§+!X§ * 1.5 / (this.§^W§ * param4);
         }
         else
         {
            this.§=r§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§=r§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §3&§.§'g§(param1.mName,this.§^!2§,param1.§6!#§);
               }
               else
               {
                  _loc10_ = new §;!9§(_loc6_,false,param1.§6!#§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§^W§ + (-_loc8_ * _loc5_ + param1.§,c§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§93§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§0V§(param1,(_loc12_ - 1) * this.§^W§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§=#§.addChild(_loc11_);
         if(this.§<v§)
         {
            if(this.§<v§.numChildren > 0)
            {
               this.§=#§.addChild(this.§<v§);
            }
            else
            {
               this.§<v§.dispose();
            }
         }
         if(this.§7!9§)
         {
            if(this.§7!9§.numChildren > 0)
            {
               this.§=#§.addChildAt(this.§7!9§,0);
            }
            else
            {
               this.§7!9§.dispose();
            }
         }
         this.§=#§.addEventListener(Event.ADDED_TO_STAGE,this.§%$§);
      }
      
      public function get include() : Boolean
      {
         return this.§3O§;
      }
      
      private function §0V§(param1:§[!0§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§package§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§0b§)
         {
            if((_loc4_ = §>!^§.§8!F§(_loc3_.id,this.§^!2§)) && _loc4_.§6!D§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§,c§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §6=§.§6>§.add(_loc4_);
               this.§0b§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§7!9§)
                  {
                     this.§7!9§ = new Sprite();
                  }
                  this.§7!9§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§<v§)
                  {
                     this.§<v§ = new Sprite();
                  }
                  this.§<v§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§>!#§(1 / 20);
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
         var _loc1_:§%C§ = null;
         this.§=#§.§>1§(0,-1,true);
         this.§=#§.removeEventListener(Event.ADDED_TO_STAGE,this.§%$§);
         for each(_loc1_ in this.§0b§)
         {
            §6=§.§6>§.§=!M§(_loc1_);
            _loc1_.dispose();
         }
         this.§0b§ = [];
         this.§7!9§ = null;
         this.§<v§ = null;
      }
      
      private function §%$§(param1:Event) : void
      {
         this.§[!7§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§+E§ * param1;
         this.§=#§.x = -_loc3_;
         this.§=#§.y = -param2;
         this.§&J§();
      }
      
      private function §[!7§() : void
      {
         var _loc1_:§%C§ = null;
         if(!this.§5!4§ || !this.§=#§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§0b§)
         {
            §6=§.§6>§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §,j§() : void
      {
         var _loc1_:§%C§ = null;
         for each(_loc1_ in this.§0b§)
         {
            §6=§.§6>§.§=!M§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §?!§(param1:Boolean) : void
      {
         if(param1 == this.§5!4§)
         {
            return;
         }
         this.§5!4§ = param1;
         if(this.§5!4§)
         {
            this.§[!7§();
         }
         else
         {
            this.§,j§();
         }
      }
      
      protected function §&J§() : void
      {
         if(this.§=r§ == 1 || this.§0b§.length > 0)
         {
            return;
         }
         while(§,!W§.§[!L§ + (this.§=#§.x - this.§^W§) * §,!W§.§+!R§ > 0)
         {
            this.§=#§.x -= this.§^W§;
         }
         this.§1Q§();
      }
      
      private function §1Q§() : void
      {
      }
   }
}
