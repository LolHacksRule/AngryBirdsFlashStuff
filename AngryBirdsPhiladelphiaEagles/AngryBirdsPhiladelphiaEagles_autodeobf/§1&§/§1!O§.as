package §1&§
{
   import § N§.§1!A§;
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §#e§.§%Y§;
   import §#e§.§'?§;
   import §#e§.§`!9§;
   import §,O§.ParticleDesignerPS;
   import §-!O§.§?Z§;
   import §4?§.ParticleManager;
   import §5!G§.§4!$§;
   import §5Z§.§[Z§;
   import §8z§.Texture;
   import §9T§.§1r§;
   import §9T§.§['§;
   import starling.events.Event;
   
   public class §1!O§
   {
       
      
      protected var §7=§:int;
      
      private var §>!4§:int;
      
      protected var §#V§:Number;
      
      private var §`4§:Boolean;
      
      protected var §8A§:Sprite;
      
      private var §5b§:Array;
      
      private var §&9§:Boolean = true;
      
      private var §2"§:§'?§;
      
      private var §!0§:Sprite;
      
      private var §0I§:Sprite;
      
      public function §1!O§(param1:§4!$§, param2:Sprite, param3:§'?§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§`!9§ = null;
         this.§5b§ = [];
         super();
         this.§2"§ = param3;
         this.§8A§ = param2;
         this.§#V§ = param1.§`!;§;
         this.§`4§ = param1.§6!0§;
         var _loc5_:Number = 1;
         if(param1.§6-§ != 0)
         {
            _loc5_ = param1.§6-§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §%Y§.§3k§(param1.mName,this.§2"§,param1.§[[§)))
         {
            _loc7_ = (_loc13_ = param3.§&! §(param1.mName)).pivotY;
            if(!this.§`4§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§7=§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§7=§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§>P§.bottom;
            _loc8_ = (_loc10_.§>P§.left + _loc10_.§>P§.right) / 2;
         }
         if(this.§7=§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§7=§ = Math.round(this.§7=§);
         if(param1.§"M§)
         {
            this.§>!4§ = 2 + §1r§.§'6§ * 1.5 / (this.§7=§ * param4);
         }
         else
         {
            this.§>!4§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§>!4§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §%Y§.§3k§(param1.mName,this.§2"§,param1.§[[§);
               }
               else
               {
                  _loc10_ = new §1!A§(_loc6_,false,param1.§[[§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§7=§ + (-_loc8_ * _loc5_ + param1.§7x§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§3!6§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§=E§(param1,(_loc12_ - 1) * this.§7=§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§8A§.addChild(_loc11_);
         if(this.§!0§)
         {
            if(this.§!0§.numChildren > 0)
            {
               this.§8A§.addChild(this.§!0§);
            }
            else
            {
               this.§!0§.dispose();
            }
         }
         if(this.§0I§)
         {
            if(this.§0I§.numChildren > 0)
            {
               this.§8A§.addChildAt(this.§0I§,0);
            }
            else
            {
               this.§0I§.dispose();
            }
         }
         this.§8A§.addEventListener(Event.ADDED_TO_STAGE,this.§+!F§);
      }
      
      public function get §;!J§() : Boolean
      {
         return this.§`4§;
      }
      
      private function §=E§(param1:§4!$§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§['§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§5b§)
         {
            if((_loc4_ = ParticleManager.§0p§(_loc3_.id,this.§2"§)) && _loc4_.§6!,§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§7x§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §[Z§.§[A§.add(_loc4_);
               this.§5b§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§0I§)
                  {
                     this.§0I§ = new Sprite();
                  }
                  this.§0I§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§!0§)
                  {
                     this.§!0§ = new Sprite();
                  }
                  this.§!0§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§^m§(1 / 20);
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
         this.§8A§.§5a§(0,-1,true);
         this.§8A§.removeEventListener(Event.ADDED_TO_STAGE,this.§+!F§);
         for each(_loc1_ in this.§5b§)
         {
            §[Z§.§[A§.§2!&§(_loc1_);
            _loc1_.dispose();
         }
         this.§5b§ = [];
         this.§0I§ = null;
         this.§!0§ = null;
      }
      
      private function §+!F§(param1:Event) : void
      {
         this.§=U§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§#V§ * param1;
         this.§8A§.x = -_loc3_;
         this.§8A§.y = -param2;
         this.§'8§();
      }
      
      private function §=U§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§&9§ || !this.§8A§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§5b§)
         {
            §[Z§.§[A§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §9y§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§5b§)
         {
            §[Z§.§[A§.§2!&§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §!Y§(param1:Boolean) : void
      {
         if(param1 == this.§&9§)
         {
            return;
         }
         this.§&9§ = param1;
         if(this.§&9§)
         {
            this.§=U§();
         }
         else
         {
            this.§9y§();
         }
      }
      
      protected function §'8§() : void
      {
         if(this.§>!4§ == 1 || this.§5b§.length > 0)
         {
            return;
         }
         while(§?Z§.§#!#§ + (this.§8A§.x - this.§7=§) * §?Z§.levelScale > 0)
         {
            this.§8A§.x -= this.§7=§;
         }
         this.§`!$§();
      }
      
      private function §`!$§() : void
      {
      }
   }
}
