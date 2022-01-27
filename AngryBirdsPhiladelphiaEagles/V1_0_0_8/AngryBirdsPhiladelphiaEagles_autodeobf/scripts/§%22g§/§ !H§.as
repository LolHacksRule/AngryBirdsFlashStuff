package §"g§
{
   import §%T§.§1O§;
   import §'!3§.§&!H§;
   import §+4§.ParticleManager;
   import §,T§.§1!P§;
   import §,T§.§[-§;
   import §,]§.Texture;
   import §-!'§.§3!1§;
   import §-!'§.DisplayObject;
   import §-!'§.Sprite;
   import §5!6§.§&!!§;
   import §6o§.ParticleDesignerPS;
   import §<A§.§'K§;
   import §<A§.§8<§;
   import §<A§.§^!9§;
   import starling.events.Event;
   
   public class § !H§
   {
       
      
      protected var §!f§:int;
      
      private var §99§:int;
      
      protected var §09§:Number;
      
      private var §8I§:Boolean;
      
      protected var §46§:Sprite;
      
      private var §'b§:Array;
      
      private var §1;§:Boolean = true;
      
      private var §@!8§:§'K§;
      
      private var §]W§:Sprite;
      
      private var §3P§:Sprite;
      
      public function § !H§(param1:§1O§, param2:Sprite, param3:§'K§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§8<§ = null;
         this.§'b§ = [];
         super();
         this.§@!8§ = param3;
         this.§46§ = param2;
         this.§09§ = param1.§2!P§;
         this.§8I§ = param1.§;F§;
         var _loc5_:Number = 1;
         if(param1.§ R§ != 0)
         {
            _loc5_ = param1.§ R§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §^!9§.§=E§(param1.mName,this.§@!8§,param1.§"2§)))
         {
            _loc7_ = (_loc13_ = param3.§@y§(param1.mName)).pivotY;
            if(!this.§8I§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§!f§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§!f§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§+!8§.bottom;
            _loc8_ = (_loc10_.§+!8§.left + _loc10_.§+!8§.right) / 2;
         }
         if(this.§!f§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§!f§ = Math.round(this.§!f§);
         if(param1.§3!B§)
         {
            this.§99§ = 2 + §[-§.§?q§ * 1.5 / (this.§!f§ * param4);
         }
         else
         {
            this.§99§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§99§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §^!9§.§=E§(param1.mName,this.§@!8§,param1.§"2§);
               }
               else
               {
                  _loc10_ = new §3!1§(_loc6_,false,param1.§"2§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§!f§ + (-_loc8_ * _loc5_ + param1.§;Z§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§<^§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§9! §(param1,(_loc12_ - 1) * this.§!f§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§46§.addChild(_loc11_);
         if(this.§]W§)
         {
            if(this.§]W§.numChildren > 0)
            {
               this.§46§.addChild(this.§]W§);
            }
            else
            {
               this.§]W§.dispose();
            }
         }
         if(this.§3P§)
         {
            if(this.§3P§.numChildren > 0)
            {
               this.§46§.addChildAt(this.§3P§,0);
            }
            else
            {
               this.§3P§.dispose();
            }
         }
         this.§46§.addEventListener(Event.ADDED_TO_STAGE,this.§`B§);
      }
      
      public function get §3F§() : Boolean
      {
         return this.§8I§;
      }
      
      private function §9! §(param1:§1O§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§1!P§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§'b§)
         {
            if((_loc4_ = ParticleManager.§[P§(_loc3_.id,this.§@!8§)) && _loc4_.§?W§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§;Z§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §&!H§.§9o§.add(_loc4_);
               this.§'b§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§3P§)
                  {
                     this.§3P§ = new Sprite();
                  }
                  this.§3P§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§]W§)
                  {
                     this.§]W§ = new Sprite();
                  }
                  this.§]W§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§3!-§(1 / 20);
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
         this.§46§.§=e§(0,-1,true);
         this.§46§.removeEventListener(Event.ADDED_TO_STAGE,this.§`B§);
         for each(_loc1_ in this.§'b§)
         {
            §&!H§.§9o§.§@!"§(_loc1_);
            _loc1_.dispose();
         }
         this.§'b§ = [];
         this.§3P§ = null;
         this.§]W§ = null;
      }
      
      private function §`B§(param1:Event) : void
      {
         this.§&'§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§09§ * param1;
         this.§46§.x = -_loc3_;
         this.§46§.y = -param2;
         this.§3!N§();
      }
      
      private function §&'§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§1;§ || !this.§46§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§'b§)
         {
            §&!H§.§9o§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §!$§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§'b§)
         {
            §&!H§.§9o§.§@!"§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §!_§(param1:Boolean) : void
      {
         if(param1 == this.§1;§)
         {
            return;
         }
         this.§1;§ = param1;
         if(this.§1;§)
         {
            this.§&'§();
         }
         else
         {
            this.§!$§();
         }
      }
      
      protected function §3!N§() : void
      {
         if(this.§99§ == 1 || this.§'b§.length > 0)
         {
            return;
         }
         while(§&!!§.§1!7§ + (this.§46§.x - this.§!f§) * §&!!§.levelScale > 0)
         {
            this.§46§.x -= this.§!f§;
         }
         this.§ -§();
      }
      
      private function § -§() : void
      {
      }
   }
}
