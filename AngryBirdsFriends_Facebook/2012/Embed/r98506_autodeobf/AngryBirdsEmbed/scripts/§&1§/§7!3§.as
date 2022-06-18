package §&1§
{
   import § y§.ParticleManager;
   import §"a§.§2C§;
   import §"a§.§>X§;
   import §"a§.§^>§;
   import §#+§.§[-§;
   import §#;§.§4!8§;
   import §#;§.§6u§;
   import §5@§.Texture;
   import §9A§.ParticleDesignerPS;
   import §;!5§.§=y§;
   import §;%§.§8o§;
   import §;q§.DisplayObject;
   import §;q§.Sprite;
   import §;q§.§[E§;
   import starling.events.Event;
   
   public class §7!3§
   {
       
      
      protected var §'@§:int;
      
      private var §#M§:int;
      
      protected var §7t§:Number;
      
      private var §^!I§:Boolean;
      
      protected var §]?§:Sprite;
      
      private var § each§:Array;
      
      private var §56§:Boolean = true;
      
      private var §>t§:§>X§;
      
      private var §6!&§:Sprite;
      
      private var §=3§:Sprite;
      
      public function §7!3§(param1:§[-§, param2:Sprite, param3:§>X§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§^>§ = null;
         this.§ each§ = [];
         super();
         this.§>t§ = param3;
         this.§]?§ = param2;
         this.§7t§ = param1.§8w§;
         this.§^!I§ = param1.§--§;
         var _loc5_:Number = 1;
         if(param1.§&p§ != 0)
         {
            _loc5_ = param1.§&p§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §2C§.§#f§(param1.mName,this.§>t§,param1.§7!%§)))
         {
            _loc7_ = (_loc13_ = param3.§>]§(param1.mName)).pivotY;
            if(!this.§^!I§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§'@§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§'@§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§[! §.bottom;
            _loc8_ = (_loc10_.§[! §.left + _loc10_.§[! §.right) / 2;
         }
         if(this.§'@§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§'@§ = Math.round(this.§'@§);
         if(param1.§%!K§)
         {
            this.§#M§ = 2 + §4!8§.§2R§ * 1.5 / (this.§'@§ * param4);
         }
         else
         {
            this.§#M§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§#M§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §2C§.§#f§(param1.mName,this.§>t§,param1.§7!%§);
               }
               else
               {
                  _loc10_ = new §[E§(_loc6_,false,param1.§7!%§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§'@§ + (-_loc8_ * _loc5_ + param1.§#-§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§&6§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§]!0§(param1,(_loc12_ - 1) * this.§'@§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§]?§.addChild(_loc11_);
         if(this.§6!&§)
         {
            if(this.§6!&§.numChildren > 0)
            {
               this.§]?§.addChild(this.§6!&§);
            }
            else
            {
               this.§6!&§.dispose();
            }
         }
         if(this.§=3§)
         {
            if(this.§=3§.numChildren > 0)
            {
               this.§]?§.addChildAt(this.§=3§,0);
            }
            else
            {
               this.§=3§.dispose();
            }
         }
         this.§]?§.addEventListener(Event.ADDED_TO_STAGE,this.§%8§);
      }
      
      public function get §7r§() : Boolean
      {
         return this.§^!I§;
      }
      
      private function §]!0§(param1:§[-§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§6u§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§ each§)
         {
            if((_loc4_ = ParticleManager.§-!1§(_loc3_.id,this.§>t§)) && _loc4_.§&!C§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§#-§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §8o§.§-X§.add(_loc4_);
               this.§ each§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§=3§)
                  {
                     this.§=3§ = new Sprite();
                  }
                  this.§=3§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§6!&§)
                  {
                     this.§6!&§ = new Sprite();
                  }
                  this.§6!&§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§'`§(1 / 20);
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
         this.§]?§.§%k§(0,-1,true);
         this.§]?§.removeEventListener(Event.ADDED_TO_STAGE,this.§%8§);
         for each(_loc1_ in this.§ each§)
         {
            §8o§.§-X§.§2_§(_loc1_);
            _loc1_.dispose();
         }
         this.§ each§ = [];
         this.§=3§ = null;
         this.§6!&§ = null;
      }
      
      private function §%8§(param1:Event) : void
      {
         this.§9l§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§7t§ * param1;
         this.§]?§.x = -_loc3_;
         this.§]?§.y = -param2;
         this.§3!;§();
      }
      
      private function §9l§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§56§ || !this.§]?§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§ each§)
         {
            §8o§.§-X§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function § f§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§ each§)
         {
            §8o§.§-X§.§2_§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §6!<§(param1:Boolean) : void
      {
         if(param1 == this.§56§)
         {
            return;
         }
         this.§56§ = param1;
         if(this.§56§)
         {
            this.§9l§();
         }
         else
         {
            this.§ f§();
         }
      }
      
      protected function §3!;§() : void
      {
         if(this.§#M§ == 1 || this.§ each§.length > 0)
         {
            return;
         }
         while(§=y§.§1I§ + (this.§]?§.x - this.§'@§) * §=y§.§=;§ > 0)
         {
            this.§]?§.x -= this.§'@§;
         }
         this.§^u§();
      }
      
      private function §^u§() : void
      {
      }
   }
}
