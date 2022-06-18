package §2u§
{
   import §#!@§.§0V§;
   import §#!@§.DisplayObject;
   import §#!@§.Sprite;
   import §+!'§.ParticleManager;
   import §1#§.Texture;
   import §5Y§.§ W§;
   import §7!§.§,L§;
   import §9s§.§&=§;
   import §9s§.§^9§;
   import §@!+§.§+_§;
   import §[v§.§'P§;
   import §[v§.§0&§;
   import §[v§.§<D§;
   import starling.events.Event;
   import §var §.ParticleDesignerPS;
   
   public class §&!M§
   {
       
      
      protected var §`'§:int;
      
      private var §#A§:int;
      
      protected var §9#§:Number;
      
      private var §3Z§:Boolean;
      
      protected var §;e§:Sprite;
      
      private var §-V§:Array;
      
      private var §,I§:Boolean = true;
      
      private var §4d§:§0&§;
      
      private var §8&§:Sprite;
      
      private var §16§:Sprite;
      
      public function §&!M§(param1:§ W§, param2:Sprite, param3:§0&§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§'P§ = null;
         this.§-V§ = [];
         super();
         this.§4d§ = param3;
         this.§;e§ = param2;
         this.§9#§ = param1.§^§;
         this.§3Z§ = param1.§?!9§;
         var _loc5_:Number = 1;
         if(param1.§%g§ != 0)
         {
            _loc5_ = param1.§%g§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §<D§.§!?§(param1.mName,this.§4d§,param1.§3C§)))
         {
            _loc7_ = (_loc13_ = param3.§4`§(param1.mName)).pivotY;
            if(!this.§3Z§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§`'§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§`'§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§<N§.bottom;
            _loc8_ = (_loc10_.§<N§.left + _loc10_.§<N§.right) / 2;
         }
         if(this.§`'§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§`'§ = Math.round(this.§`'§);
         if(param1.§%!H§)
         {
            this.§#A§ = 2 + §^9§.§@o§ * 1.5 / (this.§`'§ * param4);
         }
         else
         {
            this.§#A§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§#A§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §<D§.§!?§(param1.mName,this.§4d§,param1.§3C§);
               }
               else
               {
                  _loc10_ = new §0V§(_loc6_,false,param1.§3C§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§`'§ + (-_loc8_ * _loc5_ + param1.§7;§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§`!F§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§=e§(param1,(_loc12_ - 1) * this.§`'§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§;e§.addChild(_loc11_);
         if(this.§8&§)
         {
            if(this.§8&§.numChildren > 0)
            {
               this.§;e§.addChild(this.§8&§);
            }
            else
            {
               this.§8&§.dispose();
            }
         }
         if(this.§16§)
         {
            if(this.§16§.numChildren > 0)
            {
               this.§;e§.addChildAt(this.§16§,0);
            }
            else
            {
               this.§16§.dispose();
            }
         }
         this.§;e§.addEventListener(Event.ADDED_TO_STAGE,this.§@U§);
      }
      
      public function get §#!H§() : Boolean
      {
         return this.§3Z§;
      }
      
      private function §=e§(param1:§ W§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§&=§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§-V§)
         {
            if((_loc4_ = ParticleManager.§]e§(_loc3_.id,this.§4d§)) && _loc4_.§%!3§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§7;§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §,L§.§5I§.add(_loc4_);
               this.§-V§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§16§)
                  {
                     this.§16§ = new Sprite();
                  }
                  this.§16§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§8&§)
                  {
                     this.§8&§ = new Sprite();
                  }
                  this.§8&§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§`!4§(1 / 20);
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
         this.§;e§.§>C§(0,-1,true);
         this.§;e§.removeEventListener(Event.ADDED_TO_STAGE,this.§@U§);
         for each(_loc1_ in this.§-V§)
         {
            §,L§.§5I§.§+b§(_loc1_);
            _loc1_.dispose();
         }
         this.§-V§ = [];
         this.§16§ = null;
         this.§8&§ = null;
      }
      
      private function §@U§(param1:Event) : void
      {
         this.§#"§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§9#§ * param1;
         this.§;e§.x = -_loc3_;
         this.§;e§.y = -param2;
         this.§class§();
      }
      
      private function §#"§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§,I§ || !this.§;e§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§-V§)
         {
            §,L§.§5I§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §2A§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§-V§)
         {
            §,L§.§5I§.§+b§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §=!F§(param1:Boolean) : void
      {
         if(param1 == this.§,I§)
         {
            return;
         }
         this.§,I§ = param1;
         if(this.§,I§)
         {
            this.§#"§();
         }
         else
         {
            this.§2A§();
         }
      }
      
      protected function §class§() : void
      {
         if(this.§#A§ == 1 || this.§-V§.length > 0)
         {
            return;
         }
         while(§+_§.§-!%§ + (this.§;e§.x - this.§`'§) * §+_§.§=]§ > 0)
         {
            this.§;e§.x -= this.§`'§;
         }
         this.§!!H§();
      }
      
      private function §!!H§() : void
      {
      }
   }
}
