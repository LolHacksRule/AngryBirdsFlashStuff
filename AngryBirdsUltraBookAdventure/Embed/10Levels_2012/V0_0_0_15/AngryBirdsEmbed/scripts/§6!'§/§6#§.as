package §6!'§
{
   import §#!;§.§;T§;
   import §'k§.§ >§;
   import §'k§.§2v§;
   import §'k§.§<f§;
   import §5!%§.§4D§;
   import §5!@§.Texture;
   import §9W§.§6!0§;
   import §9W§.DisplayObject;
   import §9W§.Sprite;
   import §=s§.ParticleDesignerPS;
   import §?b§.§,S§;
   import §?b§.§7!,§;
   import §@!!§.§=_§;
   import §`>§.ParticleManager;
   import starling.events.Event;
   
   public class §6#§
   {
       
      
      private var §'I§:int;
      
      private var §catch§:int;
      
      private var §[!@§:Number;
      
      private var §#"§:Boolean;
      
      private var §[0§:Sprite;
      
      private var §4!B§:Array;
      
      private var §'!5§:Boolean = true;
      
      private var §`!8§:§ >§;
      
      private var §@8§:Sprite;
      
      private var §7!8§:Sprite;
      
      public function §6#§(param1:§4D§, param2:Sprite, param3:§ >§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§2v§ = null;
         this.§4!B§ = [];
         super();
         this.§`!8§ = param3;
         this.§[0§ = param2;
         this.§[!@§ = param1.§6;§;
         this.§#"§ = param1.§[p§;
         var _loc5_:Number = 1;
         if(param1.§!!%§ != 0)
         {
            _loc5_ = param1.§!!%§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §<f§.§;!2§(param1.mName,this.§`!8§,param1.§&%§)))
         {
            _loc7_ = (_loc13_ = param3.§8!<§(param1.mName)).pivotY;
            if(!this.§#"§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§'I§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§'I§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§5S§.bottom;
            _loc8_ = (_loc10_.§5S§.left + _loc10_.§5S§.right) / 2;
         }
         if(this.§'I§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§'I§ = Math.round(this.§'I§);
         if(param1.§^!?§)
         {
            this.§catch§ = 2 + §7!,§.§[>§ * 1.5 / (this.§'I§ * param4);
         }
         else
         {
            this.§catch§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§catch§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §<f§.§;!2§(param1.mName,this.§`!8§,param1.§&%§);
               }
               else
               {
                  _loc10_ = new §6!0§(_loc6_,false,param1.§&%§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§'I§ + (-_loc8_ * _loc5_ + param1.§2L§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§4j§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§,;§(param1,(_loc12_ - 1) * this.§'I§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§[0§.addChild(_loc11_);
         if(this.§@8§)
         {
            if(this.§@8§.numChildren > 0)
            {
               this.§[0§.addChild(this.§@8§);
            }
            else
            {
               this.§@8§.dispose();
            }
         }
         if(this.§7!8§)
         {
            if(this.§7!8§.numChildren > 0)
            {
               this.§[0§.addChildAt(this.§7!8§,0);
            }
            else
            {
               this.§7!8§.dispose();
            }
         }
         this.§[0§.addEventListener(Event.ADDED_TO_STAGE,this.§7!%§);
      }
      
      public function get §;W§() : Boolean
      {
         return this.§#"§;
      }
      
      private function §,;§(param1:§4D§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§,S§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§4!B§)
         {
            if((_loc4_ = ParticleManager.§try §(_loc3_.id,this.§`!8§)) && _loc4_.§%!%§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§2L§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §;T§.§1I§.add(_loc4_);
               this.§4!B§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§7!8§)
                  {
                     this.§7!8§ = new Sprite();
                  }
                  this.§7!8§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§@8§)
                  {
                     this.§@8§ = new Sprite();
                  }
                  this.§@8§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§<!+§(1 / 20);
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
         this.§[0§.§9_§(0,-1,true);
         this.§[0§.removeEventListener(Event.ADDED_TO_STAGE,this.§7!%§);
         for each(_loc1_ in this.§4!B§)
         {
            §;T§.§1I§.§try§(_loc1_);
            _loc1_.dispose();
         }
         this.§4!B§ = [];
         this.§7!8§ = null;
         this.§@8§ = null;
      }
      
      private function §7!%§(param1:Event) : void
      {
         this.§,b§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§[!@§ * param1;
         this.§[0§.x = -_loc3_;
         this.§[0§.y = -param2;
         this.§+R§();
      }
      
      private function §,b§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§'!5§ || !this.§[0§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§4!B§)
         {
            §;T§.§1I§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §5e§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§4!B§)
         {
            §;T§.§1I§.§try§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §^v§(param1:Boolean) : void
      {
         if(param1 == this.§'!5§)
         {
            return;
         }
         this.§'!5§ = param1;
         if(this.§'!5§)
         {
            this.§,b§();
         }
         else
         {
            this.§5e§();
         }
      }
      
      private function §+R§() : void
      {
         if(this.§catch§ == 1 || this.§4!B§.length > 0)
         {
            return;
         }
         while(§=_§.§[!#§ + (this.§[0§.x - this.§'I§) * §=_§.§&!?§ > 0)
         {
            this.§[0§.x -= this.§'I§;
         }
         this.§ %§();
      }
      
      private function § %§() : void
      {
      }
   }
}
