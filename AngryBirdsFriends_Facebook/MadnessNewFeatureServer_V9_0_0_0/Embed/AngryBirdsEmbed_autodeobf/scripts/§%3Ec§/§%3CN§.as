package §>c§
{
   import §#?§.§%C§;
   import §#?§.§6!4§;
   import §#?§.§^@§;
   import §%!E§.§-§;
   import §&`§.ParticleManager;
   import §,!,§.§2t§;
   import §1!K§.§ M§;
   import §21§.Texture;
   import §9!>§.ParticleDesignerPS;
   import §90§.§8S§;
   import §90§.DisplayObject;
   import §90§.Sprite;
   import §`!4§.§6!M§;
   import §`!4§.§6l§;
   import starling.events.Event;
   
   public class §<N§
   {
       
      
      protected var §<!!§:int;
      
      private var §;N§:int;
      
      protected var §+K§:Number;
      
      private var §`!F§:Boolean;
      
      protected var §`8§:Sprite;
      
      private var §7b§:Array;
      
      private var § !&§:Boolean = true;
      
      private var §[E§:§6!4§;
      
      private var §"I§:Sprite;
      
      private var §6S§:Sprite;
      
      public function §<N§(param1:§ M§, param2:Sprite, param3:§6!4§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§^@§ = null;
         this.§7b§ = [];
         super();
         this.§[E§ = param3;
         this.§`8§ = param2;
         this.§+K§ = param1.§'c§;
         this.§`!F§ = param1.§%p§;
         var _loc5_:Number = 1;
         if(param1.§,!F§ != 0)
         {
            _loc5_ = param1.§,!F§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §%C§.§ N§(param1.mName,this.§[E§,param1.§!&§)))
         {
            _loc7_ = (_loc13_ = param3.§>]§(param1.mName)).pivotY;
            if(!this.§`!F§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§<!!§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§<!!§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§+=§.bottom;
            _loc8_ = (_loc10_.§+=§.left + _loc10_.§+=§.right) / 2;
         }
         if(this.§<!!§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§<!!§ = Math.round(this.§<!!§);
         if(param1.§-!-§)
         {
            this.§;N§ = 2 + §6l§.§!!M§ * 1.5 / (this.§<!!§ * param4);
         }
         else
         {
            this.§;N§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§;N§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §%C§.§ N§(param1.mName,this.§[E§,param1.§!&§);
               }
               else
               {
                  _loc10_ = new §8S§(_loc6_,false,param1.§!&§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§<!!§ + (-_loc8_ * _loc5_ + param1.§3!;§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§+,§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§ G§(param1,(_loc12_ - 1) * this.§<!!§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§`8§.addChild(_loc11_);
         if(this.§"I§)
         {
            if(this.§"I§.numChildren > 0)
            {
               this.§`8§.addChild(this.§"I§);
            }
            else
            {
               this.§"I§.dispose();
            }
         }
         if(this.§6S§)
         {
            if(this.§6S§.numChildren > 0)
            {
               this.§`8§.addChildAt(this.§6S§,0);
            }
            else
            {
               this.§6S§.dispose();
            }
         }
         this.§`8§.addEventListener(Event.ADDED_TO_STAGE,this.§^k§);
      }
      
      public function get §if §() : Boolean
      {
         return this.§`!F§;
      }
      
      private function § G§(param1:§ M§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§6!M§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§7b§)
         {
            if((_loc4_ = ParticleManager.§6h§(_loc3_.id,this.§[E§)) && _loc4_.§1v§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§3!;§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §2t§.§^!!§.add(_loc4_);
               this.§7b§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§6S§)
                  {
                     this.§6S§ = new Sprite();
                  }
                  this.§6S§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§"I§)
                  {
                     this.§"I§ = new Sprite();
                  }
                  this.§"I§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§84§(1 / 20);
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
         this.§`8§.§2k§(0,-1,true);
         this.§`8§.removeEventListener(Event.ADDED_TO_STAGE,this.§^k§);
         for each(_loc1_ in this.§7b§)
         {
            §2t§.§^!!§.§"!A§(_loc1_);
            _loc1_.dispose();
         }
         this.§7b§ = [];
         this.§6S§ = null;
         this.§"I§ = null;
      }
      
      private function §^k§(param1:Event) : void
      {
         this.§+!O§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§+K§ * param1;
         this.§`8§.x = -_loc3_;
         this.§`8§.y = -param2;
         this.§?f§();
      }
      
      private function §+!O§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§ !&§ || !this.§`8§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§7b§)
         {
            §2t§.§^!!§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §1t§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§7b§)
         {
            §2t§.§^!!§.§"!A§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §?m§(param1:Boolean) : void
      {
         if(param1 == this.§ !&§)
         {
            return;
         }
         this.§ !&§ = param1;
         if(this.§ !&§)
         {
            this.§+!O§();
         }
         else
         {
            this.§1t§();
         }
      }
      
      protected function §?f§() : void
      {
         if(this.§;N§ == 1 || this.§7b§.length > 0)
         {
            return;
         }
         while(§-§.§#w§ + (this.§`8§.x - this.§<!!§) * §-§.§1A§ > 0)
         {
            this.§`8§.x -= this.§<!!§;
         }
         this.§set §();
      }
      
      private function §set §() : void
      {
      }
   }
}
