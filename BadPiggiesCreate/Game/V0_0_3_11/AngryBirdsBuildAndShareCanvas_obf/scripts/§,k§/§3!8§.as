package §,k§
{
   import §0P§.§!!l§;
   import §1!Y§.§8C§;
   import §1!Y§.DisplayObject;
   import §1!Y§.Sprite;
   import §1!v§.§8>§;
   import §1!v§.§@%§;
   import §1"3§.§`"0§;
   import §6d§.§,"9§;
   import §="6§.§@!U§;
   import §[_§.§%!X§;
   import §[_§.§'!N§;
   import §[_§.§2!B§;
   import §[n§.§`c§;
   import §^i§.Texture;
   import starling.events.Event;
   
   public class §3!8§
   {
       
      
      protected var §[!!§:int;
      
      private var §4!L§:int;
      
      protected var §9U§:Number;
      
      private var §2!n§:Boolean;
      
      protected var § "5§:Sprite;
      
      private var §'!W§:Array;
      
      private var §-!I§:Boolean = true;
      
      private var §3!W§:§2!B§;
      
      private var §10§:Sprite;
      
      private var §9M§:Sprite;
      
      public function §3!8§(param1:§,"9§, param2:Sprite, param3:§2!B§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§'!N§ = null;
         this.§'!W§ = [];
         super();
         this.§3!W§ = param3;
         this.§ "5§ = param2;
         this.§9U§ = param1.§2!8§;
         this.§2!n§ = param1.§&!G§;
         var _loc5_:Number = 1;
         if(param1.§"!f§ != 0)
         {
            _loc5_ = param1.§"!f§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §%!X§.§?!3§(param1.mName,this.§3!W§,param1.§79§)))
         {
            _loc7_ = (_loc13_ = param3.§+!p§(param1.mName)).pivotY;
            if(!this.§2!n§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§[!!§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§[!!§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§,8§.bottom;
            _loc8_ = (_loc10_.§,8§.left + _loc10_.§,8§.right) / 2;
         }
         if(this.§[!!§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§[!!§ = Math.round(this.§[!!§);
         if(param1.§`!a§)
         {
            this.§4!L§ = 2 + §@%§.§]H§ * 1.5 / (this.§[!!§ * param4);
         }
         else
         {
            this.§4!L§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§4!L§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §%!X§.§?!3§(param1.mName,this.§3!W§,param1.§79§);
               }
               else
               {
                  _loc10_ = new §8C§(_loc6_,false,param1.§79§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§[!!§ + (-_loc8_ * _loc5_ + param1.§7s§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§'I§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§&!<§(param1,(_loc12_ - 1) * this.§[!!§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§ "5§.addChild(_loc11_);
         if(this.§10§)
         {
            if(this.§10§.numChildren > 0)
            {
               this.§ "5§.addChild(this.§10§);
            }
            else
            {
               this.§10§.dispose();
            }
         }
         if(this.§9M§)
         {
            if(this.§9M§.numChildren > 0)
            {
               this.§ "5§.addChildAt(this.§9M§,0);
            }
            else
            {
               this.§9M§.dispose();
            }
         }
         this.§ "5§.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      public function get §8T§() : Boolean
      {
         return this.§2!n§;
      }
      
      private function §&!<§(param1:§,"9§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§8>§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§'!W§)
         {
            if((_loc4_ = §`c§.§8! §(_loc3_.id,this.§3!W§)) && _loc4_.§^!f§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§7s§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §!!l§.§]<§.add(_loc4_);
               this.§'!W§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§9M§)
                  {
                     this.§9M§ = new Sprite();
                  }
                  this.§9M§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§10§)
                  {
                     this.§10§ = new Sprite();
                  }
                  this.§10§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§^5§(1 / 20);
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
         var _loc1_:§@!U§ = null;
         this.§ "5§.removeChildren(0,-1,true);
         this.§ "5§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         for each(_loc1_ in this.§'!W§)
         {
            §!!l§.§]<§.§=N§(_loc1_);
            _loc1_.dispose();
         }
         this.§'!W§ = [];
         this.§9M§ = null;
         this.§10§ = null;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§4!<§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§9U§ * param1;
         this.§ "5§.x = -_loc3_;
         this.§ "5§.y = -param2;
         this.§9" §();
      }
      
      private function §4!<§() : void
      {
         var _loc1_:§@!U§ = null;
         if(!this.§-!I§ || !this.§ "5§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§'!W§)
         {
            §!!l§.§]<§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §%"5§() : void
      {
         var _loc1_:§@!U§ = null;
         for each(_loc1_ in this.§'!W§)
         {
            §!!l§.§]<§.§=N§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §'8§(param1:Boolean) : void
      {
         if(param1 == this.§-!I§)
         {
            return;
         }
         this.§-!I§ = param1;
         if(this.§-!I§)
         {
            this.§4!<§();
         }
         else
         {
            this.§%"5§();
         }
      }
      
      protected function §9" §() : void
      {
         if(this.§4!L§ == 1 || this.§'!W§.length > 0)
         {
            return;
         }
         while(§`"0§.§+!N§ + (this.§ "5§.x - this.§[!!§) * §`"0§.§;!G§ > 0)
         {
            this.§ "5§.x -= this.§[!!§;
         }
         this.§`!I§();
      }
      
      private function §`!I§() : void
      {
      }
   }
}
