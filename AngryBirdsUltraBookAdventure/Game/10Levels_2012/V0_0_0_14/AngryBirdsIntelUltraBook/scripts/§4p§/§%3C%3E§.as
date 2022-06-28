package §4p§
{
   import §!!9§.Texture;
   import §!!X§.§&!E§;
   import §'!`§.ParticleDesignerPS;
   import §+!r§.§'!S§;
   import §+&§.§"F§;
   import §+&§.§-!7§;
   import §,6§.§!o§;
   import §,6§.§4d§;
   import §,6§.§5z§;
   import §9E§.§;!U§;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   import §<$§.ParticleManager;
   import §@4§.§,!]§;
   import starling.events.Event;
   
   public class §<>§
   {
       
      
      private var §9!m§:int;
      
      private var §'r§:int;
      
      private var §%!G§:Number;
      
      private var §!Z§:Boolean;
      
      private var §8!9§:Sprite;
      
      private var § !N§:Array;
      
      private var §5C§:Boolean = true;
      
      private var §3!L§:§!o§;
      
      private var §?!§:Sprite;
      
      private var §`3§:Sprite;
      
      public function §<>§(param1:§'!S§, param2:Sprite, param3:§!o§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§5z§ = null;
         this.§ !N§ = [];
         super();
         this.§3!L§ = param3;
         this.§8!9§ = param2;
         this.§%!G§ = param1.§9j§;
         this.§!Z§ = param1.§]K§;
         var _loc5_:Number = 1;
         if(param1.§!+§ != 0)
         {
            _loc5_ = param1.§!+§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §4d§.§,b§(param1.mName,this.§3!L§,param1.§"2§)))
         {
            _loc7_ = (_loc13_ = param3.§`F§(param1.mName)).pivotY;
            if(!this.§!Z§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§9!m§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§9!m§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§,l§.bottom;
            _loc8_ = (_loc10_.§,l§.left + _loc10_.§,l§.right) / 2;
         }
         if(this.§9!m§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§9!m§ = Math.round(this.§9!m§);
         if(param1.§5!=§)
         {
            this.§'r§ = 2 + §-!7§.§!l§ * 1.5 / (this.§9!m§ * param4);
         }
         else
         {
            this.§'r§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§'r§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §4d§.§,b§(param1.mName,this.§3!L§,param1.§"2§);
               }
               else
               {
                  _loc10_ = new §;!U§(_loc6_,false,param1.§"2§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§9!m§ + (-_loc8_ * _loc5_ + param1.§+5§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§5!B§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§ set§(param1,(_loc12_ - 1) * this.§9!m§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§8!9§.addChild(_loc11_);
         if(this.§?!§)
         {
            if(this.§?!§.numChildren > 0)
            {
               this.§8!9§.addChild(this.§?!§);
            }
            else
            {
               this.§?!§.dispose();
            }
         }
         if(this.§`3§)
         {
            if(this.§`3§.numChildren > 0)
            {
               this.§8!9§.addChildAt(this.§`3§,0);
            }
            else
            {
               this.§`3§.dispose();
            }
         }
         this.§8!9§.addEventListener(Event.ADDED_TO_STAGE,this.§-8§);
      }
      
      public function get §@!B§() : Boolean
      {
         return this.§!Z§;
      }
      
      private function § set§(param1:§'!S§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§"F§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§ !N§)
         {
            if((_loc4_ = ParticleManager.§"m§(_loc3_.id,this.§3!L§)) && _loc4_.§&J§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§+5§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §,!]§.§+!Z§.add(_loc4_);
               this.§ !N§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§`3§)
                  {
                     this.§`3§ = new Sprite();
                  }
                  this.§`3§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§?!§)
                  {
                     this.§?!§ = new Sprite();
                  }
                  this.§?!§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§7Y§(1 / 20);
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
         this.§8!9§.§[!G§(0,-1,true);
         this.§8!9§.removeEventListener(Event.ADDED_TO_STAGE,this.§-8§);
         for each(_loc1_ in this.§ !N§)
         {
            §,!]§.§+!Z§.§ !L§(_loc1_);
            _loc1_.dispose();
         }
         this.§ !N§ = [];
         this.§`3§ = null;
         this.§?!§ = null;
      }
      
      private function §-8§(param1:Event) : void
      {
         this.§<!§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%!G§ * param1;
         this.§8!9§.x = -_loc3_;
         this.§8!9§.y = -param2;
         this.§7M§();
      }
      
      private function §<!§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§5C§ || !this.§8!9§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§ !N§)
         {
            §,!]§.§+!Z§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §;_§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§ !N§)
         {
            §,!]§.§+!Z§.§ !L§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §0g§(param1:Boolean) : void
      {
         if(param1 == this.§5C§)
         {
            return;
         }
         this.§5C§ = param1;
         if(this.§5C§)
         {
            this.§<!§();
         }
         else
         {
            this.§;_§();
         }
      }
      
      private function §7M§() : void
      {
         if(this.§'r§ == 1 || this.§ !N§.length > 0)
         {
            return;
         }
         while(§&!E§.§1!t§ + (this.§8!9§.x - this.§9!m§) * §&!E§.§+!a§ > 0)
         {
            this.§8!9§.x -= this.§9!m§;
         }
         this.§5!G§();
      }
      
      private function §5!G§() : void
      {
      }
   }
}
