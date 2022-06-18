package §"§
{
   import § I§.§^!0§;
   import §-R§.ParticleDesignerPS;
   import §9!2§.§7N§;
   import §9!?§.§^]§;
   import §9!?§.§`$§;
   import §<-§.Texture;
   import §<k§.§"!=§;
   import §<k§.DisplayObject;
   import §<k§.Sprite;
   import §[+§.§'!6§;
   import §[n§.§#H§;
   import §[n§.§%U§;
   import §[n§.§?+§;
   import §`4§.ParticleManager;
   import starling.events.Event;
   
   public class §5T§
   {
       
      
      private var §<!'§:int;
      
      private var §1!§:int;
      
      private var §@L§:Number;
      
      private var §2#§:Boolean;
      
      private var §8!!§:Sprite;
      
      private var §`o§:Array;
      
      private var §4N§:Boolean = true;
      
      private var §^s§:§?+§;
      
      private var §&;§:Sprite;
      
      private var § !§:Sprite;
      
      public function §5T§(param1:§^!0§, param2:Sprite, param3:§?+§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§#H§ = null;
         this.§`o§ = [];
         super();
         this.§^s§ = param3;
         this.§8!!§ = param2;
         this.§@L§ = param1.§<w§;
         this.§2#§ = param1.§'?§;
         var _loc5_:Number = 1;
         if(param1.§@]§ != 0)
         {
            _loc5_ = param1.§@]§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §%U§.§^5§(param1.mName,this.§^s§,false)))
         {
            _loc7_ = (_loc13_ = param3.§&P§(param1.mName)).pivotY;
            if(!this.§2#§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§<!'§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§<!'§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§0D§.bottom;
            _loc8_ = (_loc10_.§0D§.left + _loc10_.§0D§.right) / 2;
         }
         if(this.§<!'§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§<!'§ = Math.round(this.§<!'§);
         if(param1.§0U§)
         {
            this.§1!§ = 2 + §^]§.§true § * 1.5 / (this.§<!'§ * param4);
         }
         else
         {
            this.§1!§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§1!§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §%U§.§^5§(param1.mName,this.§^s§,false);
               }
               else
               {
                  _loc10_ = new §"!=§(_loc6_,false,false);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§<!'§ + (-_loc8_ * _loc5_ + param1.§"r§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§15§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§<D§(param1,(_loc12_ - 1) * this.§<!'§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§8!!§.addChild(_loc11_);
         if(this.§&;§)
         {
            if(this.§&;§.numChildren > 0)
            {
               this.§8!!§.addChild(this.§&;§);
            }
            else
            {
               this.§&;§.dispose();
            }
         }
         if(this.§ !§)
         {
            if(this.§ !§.numChildren > 0)
            {
               this.§8!!§.addChildAt(this.§ !§,0);
            }
            else
            {
               this.§ !§.dispose();
            }
         }
         this.§8!!§.addEventListener(Event.ADDED_TO_STAGE,this.§!H§);
      }
      
      public function get §`!+§() : Boolean
      {
         return this.§2#§;
      }
      
      private function §<D§(param1:§^!0§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§`$§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§`o§)
         {
            if((_loc4_ = ParticleManager.§?!A§(_loc3_.id,this.§^s§)) && _loc4_.§?b§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§"r§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §7N§.§<Y§.add(_loc4_);
               this.§`o§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§ !§)
                  {
                     this.§ !§ = new Sprite();
                  }
                  this.§ !§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§&;§)
                  {
                     this.§&;§ = new Sprite();
                  }
                  this.§&;§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§+s§(1 / 20);
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
         this.§8!!§.§>V§(0,-1,true);
         this.§8!!§.removeEventListener(Event.ADDED_TO_STAGE,this.§!H§);
         for each(_loc1_ in this.§`o§)
         {
            §7N§.§<Y§.§+M§(_loc1_);
            _loc1_.dispose();
         }
         this.§`o§ = [];
         this.§ !§ = null;
         this.§&;§ = null;
      }
      
      private function §!H§(param1:Event) : void
      {
         this.§@h§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§@L§ * param1;
         this.§8!!§.x = -_loc3_;
         this.§8!!§.y = -param2;
         this.§&U§();
      }
      
      private function §@h§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§4N§ || !this.§8!!§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§`o§)
         {
            §7N§.§<Y§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §6`§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§`o§)
         {
            §7N§.§<Y§.§+M§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §>R§(param1:Boolean) : void
      {
         if(param1 == this.§4N§)
         {
            return;
         }
         this.§4N§ = param1;
         if(this.§4N§)
         {
            this.§@h§();
         }
         else
         {
            this.§6`§();
         }
      }
      
      private function §&U§() : void
      {
         if(this.§1!§ == 1 || this.§`o§.length > 0)
         {
            return;
         }
         while(§'!6§.§9]§ + (this.§8!!§.x - this.§<!'§) * §'!6§.§#u§ > 0)
         {
            this.§8!!§.x -= this.§<!'§;
         }
         this.§8%§();
      }
      
      private function §8%§() : void
      {
      }
   }
}
