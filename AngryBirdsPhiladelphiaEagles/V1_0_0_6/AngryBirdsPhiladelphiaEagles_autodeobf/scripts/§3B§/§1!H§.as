package §3B§
{
   import §4!-§.§%o§;
   import §4!-§.§4w§;
   import §4!0§.§#^§;
   import §4!0§.§3§;
   import §4!0§.§5!P§;
   import §6h§.§?!I§;
   import §6i§.ParticleDesignerPS;
   import §8!2§.ParticleManager;
   import §86§.§?5§;
   import §86§.DisplayObject;
   import §86§.Sprite;
   import §@g§.§4!@§;
   import §[!A§.Texture;
   import §^?§.§;!"§;
   import starling.events.Event;
   
   public class §1!H§
   {
       
      
      private var §1!,§:int;
      
      private var § %§:int;
      
      private var §1q§:Number;
      
      private var §;!§:Boolean;
      
      private var §+!N§:Sprite;
      
      private var §"X§:Array;
      
      private var §=]§:Boolean = true;
      
      private var §"P§:§3§;
      
      private var §<!?§:Sprite;
      
      private var § k§:Sprite;
      
      public function §1!H§(param1:§;!"§, param2:Sprite, param3:§3§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§#^§ = null;
         this.§"X§ = [];
         super();
         this.§"P§ = param3;
         this.§+!N§ = param2;
         this.§1q§ = param1.§8!3§;
         this.§;!§ = param1.§>!<§;
         var _loc5_:Number = 1;
         if(param1.§"[§ != 0)
         {
            _loc5_ = param1.§"[§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §5!P§.§`;§(param1.mName,this.§"P§,param1.§8!'§)))
         {
            _loc7_ = (_loc13_ = param3.§2L§(param1.mName)).pivotY;
            if(!this.§;!§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§1!,§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§1!,§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§!^§.bottom;
            _loc8_ = (_loc10_.§!^§.left + _loc10_.§!^§.right) / 2;
         }
         if(this.§1!,§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§1!,§ = Math.round(this.§1!,§);
         if(param1.§]k§)
         {
            this.§ %§ = 2 + §%o§.§3V§ * 1.5 / (this.§1!,§ * param4);
         }
         else
         {
            this.§ %§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§ %§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §5!P§.§`;§(param1.mName,this.§"P§,param1.§8!'§);
               }
               else
               {
                  _loc10_ = new §?5§(_loc6_,false,param1.§8!'§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§1!,§ + (-_loc8_ * _loc5_ + param1.§,<§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§&Q§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§ ! §(param1,(_loc12_ - 1) * this.§1!,§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§+!N§.addChild(_loc11_);
         if(this.§<!?§)
         {
            if(this.§<!?§.numChildren > 0)
            {
               this.§+!N§.addChild(this.§<!?§);
            }
            else
            {
               this.§<!?§.dispose();
            }
         }
         if(this.§ k§)
         {
            if(this.§ k§.numChildren > 0)
            {
               this.§+!N§.addChildAt(this.§ k§,0);
            }
            else
            {
               this.§ k§.dispose();
            }
         }
         this.§+!N§.addEventListener(Event.ADDED_TO_STAGE,this.§"!2§);
      }
      
      public function get §58§() : Boolean
      {
         return this.§;!§;
      }
      
      private function § ! §(param1:§;!"§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§4w§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§"X§)
         {
            if((_loc4_ = ParticleManager.§9!?§(_loc3_.id,this.§"P§)) && _loc4_.§<d§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§,<§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §4!@§.§<!!§.add(_loc4_);
               this.§"X§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§ k§)
                  {
                     this.§ k§ = new Sprite();
                  }
                  this.§ k§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§<!?§)
                  {
                     this.§<!?§ = new Sprite();
                  }
                  this.§<!?§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§6!E§(1 / 20);
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
         this.§+!N§.§`h§(0,-1,true);
         this.§+!N§.removeEventListener(Event.ADDED_TO_STAGE,this.§"!2§);
         for each(_loc1_ in this.§"X§)
         {
            §4!@§.§<!!§.§else§(_loc1_);
            _loc1_.dispose();
         }
         this.§"X§ = [];
         this.§ k§ = null;
         this.§<!?§ = null;
      }
      
      private function §"!2§(param1:Event) : void
      {
         this.§5K§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§1q§ * param1;
         this.§+!N§.x = -_loc3_;
         this.§+!N§.y = -param2;
         this.§-!§();
      }
      
      private function §5K§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§=]§ || !this.§+!N§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§"X§)
         {
            §4!@§.§<!!§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §9F§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§"X§)
         {
            §4!@§.§<!!§.§else§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §'!%§(param1:Boolean) : void
      {
         if(param1 == this.§=]§)
         {
            return;
         }
         this.§=]§ = param1;
         if(this.§=]§)
         {
            this.§5K§();
         }
         else
         {
            this.§9F§();
         }
      }
      
      private function §-!§() : void
      {
         if(this.§ %§ == 1 || this.§"X§.length > 0)
         {
            return;
         }
         while(§?!I§.§3^§ + (this.§+!N§.x - this.§1!,§) * §?!I§.levelScale > 0)
         {
            this.§+!N§.x -= this.§1!,§;
         }
         this.§1I§();
      }
      
      private function §1I§() : void
      {
      }
   }
}
