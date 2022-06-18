package §2$§
{
   import §!I§.ParticleManager;
   import §+6§.§4j§;
   import §6"§.§>!5§;
   import §6u§.§!B§;
   import §6u§.§&K§;
   import §6u§.§3W§;
   import §8!#§.§<n§;
   import §8`§.ParticleDesignerPS;
   import §>u§.Texture;
   import §]!6§.§>T§;
   import §]!6§.DisplayObject;
   import §]!6§.Sprite;
   import §`i§.§2W§;
   import §`i§.§`%§;
   import starling.events.Event;
   
   public class §2R§
   {
       
      
      private var §,! §:int;
      
      private var §-!#§:int;
      
      private var §!!B§:Number;
      
      private var §,!1§:Boolean;
      
      private var §^!>§:Sprite;
      
      private var §>! §:Array;
      
      private var §9!7§:Boolean = true;
      
      private var §[!C§:§3W§;
      
      private var §8x§:Sprite;
      
      private var §&!7§:Sprite;
      
      public function §2R§(param1:§>!5§, param2:Sprite, param3:§3W§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§!B§ = null;
         this.§>! § = [];
         super();
         this.§[!C§ = param3;
         this.§^!>§ = param2;
         this.§!!B§ = param1.§+j§;
         this.§,!1§ = param1.§"y§;
         var _loc5_:Number = 1;
         if(param1.§[2§ != 0)
         {
            _loc5_ = param1.§[2§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §&K§.§#!!§(param1.mName,this.§[!C§,param1.§9P§)))
         {
            _loc7_ = (_loc13_ = param3.§ 8§(param1.mName)).pivotY;
            if(!this.§,!1§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§,! § = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§,! § = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§5`§.bottom;
            _loc8_ = (_loc10_.§5`§.left + _loc10_.§5`§.right) / 2;
         }
         if(this.§,! § <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§,! § = Math.round(this.§,! §);
         if(param1.§81§)
         {
            this.§-!#§ = 2 + §2W§.§9^§ * 1.5 / (this.§,! § * param4);
         }
         else
         {
            this.§-!#§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§-!#§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §&K§.§#!!§(param1.mName,this.§[!C§,param1.§9P§);
               }
               else
               {
                  _loc10_ = new §>T§(_loc6_,false,param1.§9P§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§,! § + (-_loc8_ * _loc5_ + param1.§ S§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§9E§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§5t§(param1,(_loc12_ - 1) * this.§,! §);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§^!>§.addChild(_loc11_);
         if(this.§8x§)
         {
            if(this.§8x§.numChildren > 0)
            {
               this.§^!>§.addChild(this.§8x§);
            }
            else
            {
               this.§8x§.dispose();
            }
         }
         if(this.§&!7§)
         {
            if(this.§&!7§.numChildren > 0)
            {
               this.§^!>§.addChildAt(this.§&!7§,0);
            }
            else
            {
               this.§&!7§.dispose();
            }
         }
         this.§^!>§.addEventListener(Event.ADDED_TO_STAGE,this.§?k§);
      }
      
      public function get §4!&§() : Boolean
      {
         return this.§,!1§;
      }
      
      private function §5t§(param1:§>!5§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§`%§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§>! §)
         {
            if((_loc4_ = ParticleManager.§;l§(_loc3_.id,this.§[!C§)) && _loc4_.§!!§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§ S§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §<n§.§6f§.add(_loc4_);
               this.§>! §.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§&!7§)
                  {
                     this.§&!7§ = new Sprite();
                  }
                  this.§&!7§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§8x§)
                  {
                     this.§8x§ = new Sprite();
                  }
                  this.§8x§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§5@§(1 / 20);
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
         this.§^!>§.§try§(0,-1,true);
         this.§^!>§.removeEventListener(Event.ADDED_TO_STAGE,this.§?k§);
         for each(_loc1_ in this.§>! §)
         {
            §<n§.§6f§.§4D§(_loc1_);
            _loc1_.dispose();
         }
         this.§>! § = [];
         this.§&!7§ = null;
         this.§8x§ = null;
      }
      
      private function §?k§(param1:Event) : void
      {
         this.§&!2§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§!!B§ * param1;
         this.§^!>§.x = -_loc3_;
         this.§^!>§.y = -param2;
         this.§+,§();
      }
      
      private function §&!2§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§9!7§ || !this.§^!>§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§>! §)
         {
            §<n§.§6f§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §<?§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§>! §)
         {
            §<n§.§6f§.§4D§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §@S§(param1:Boolean) : void
      {
         if(param1 == this.§9!7§)
         {
            return;
         }
         this.§9!7§ = param1;
         if(this.§9!7§)
         {
            this.§&!2§();
         }
         else
         {
            this.§<?§();
         }
      }
      
      private function §+,§() : void
      {
         if(this.§-!#§ == 1 || this.§>! §.length > 0)
         {
            return;
         }
         while(§4j§.§#5§ + (this.§^!>§.x - this.§,! §) * §4j§.§`@§ > 0)
         {
            this.§^!>§.x -= this.§,! §;
         }
         this.§>W§();
      }
      
      private function §>W§() : void
      {
      }
   }
}
