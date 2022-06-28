package §<§
{
   import §,!_§.§;K§;
   import §,!_§.CompositeSpriteParser;
   import §,!_§.TextureManager;
   import §0P§.Starling;
   import §1i§.ParticleManager;
   import §2!H§.§5"§;
   import §2!H§.LevelMain;
   import §4!<§.ParticleDesignerPS;
   import §6!7§.§-m§;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   import §7i§.Texture;
   import §<!j§.§%!-§;
   import §[m§.§#c§;
   import starling.events.Event;
   
   public class LevelBackgroundLayer
   {
       
      
      private var §13§:int;
      
      private var §#t§:int;
      
      private var §^!<§:Number;
      
      private var §6;§:Boolean;
      
      private var §'6§:Sprite;
      
      private var §2!U§:Array;
      
      private var §9B§:Boolean = true;
      
      private var §6! §:TextureManager;
      
      private var §4!,§:Sprite;
      
      private var §%c§:Sprite;
      
      public function LevelBackgroundLayer(param1:§#c§, param2:Sprite, param3:TextureManager, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§;K§ = null;
         this.§2!U§ = [];
         super();
         this.§6! § = param3;
         this.§'6§ = param2;
         this.§^!<§ = param1.§8%§;
         this.§6;§ = param1.§,!h§;
         var _loc5_:Number = 1;
         if(param1.§7!H§ != 0)
         {
            _loc5_ = param1.§7!H§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject = CompositeSpriteParser.§-!$§(param1.mName,this.§6! §,param1.§`>§);
         if(!_loc10_)
         {
            _loc13_ = param3.§]&§(param1.mName);
            _loc7_ = _loc13_.pivotY;
            if(!this.§6;§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§13§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§13§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.bounds.bottom;
            _loc8_ = (_loc10_.bounds.left + _loc10_.bounds.right) / 2;
         }
         if(this.§13§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§13§ = Math.round(this.§13§);
         if(param1.§continue§)
         {
            this.§#t§ = 2 + LevelMain.§6v§ * 1.5 / (this.§13§ * param4);
         }
         else
         {
            this.§#t§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§#t§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = CompositeSpriteParser.§-!$§(param1.mName,this.§6! §,param1.§`>§);
               }
               else
               {
                  _loc10_ = new §-m§(_loc6_,false,param1.§`>§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§13§ + (-_loc8_ * _loc5_ + param1.§@!?§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§=#§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§-N§(param1,(_loc12_ - 1) * this.§13§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§'6§.addChild(_loc11_);
         if(this.§4!,§)
         {
            if(this.§4!,§.numChildren > 0)
            {
               this.§'6§.addChild(this.§4!,§);
            }
            else
            {
               this.§4!,§.dispose();
            }
         }
         if(this.§%c§)
         {
            if(this.§%c§.numChildren > 0)
            {
               this.§'6§.addChildAt(this.§%c§,0);
            }
            else
            {
               this.§%c§.dispose();
            }
         }
         this.§'6§.addEventListener(Event.ADDED_TO_STAGE,this.§?!0§);
      }
      
      public function get §%H§() : Boolean
      {
         return this.§6;§;
      }
      
      private function §-N§(param1:§#c§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§5"§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§2!U§)
         {
            _loc4_ = ParticleManager.§3!k§(_loc3_.id,this.§6! §);
            if(_loc4_ && _loc4_.§1p§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§@!?§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               Starling.§1!e§.add(_loc4_);
               this.§2!U§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§%c§)
                  {
                     this.§%c§ = new Sprite();
                  }
                  this.§%c§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§4!,§)
                  {
                     this.§4!,§ = new Sprite();
                  }
                  this.§4!,§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§^!e§(1 / 20);
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
         this.§'6§.§'!C§(0,-1,true);
         this.§'6§.removeEventListener(Event.ADDED_TO_STAGE,this.§?!0§);
         for each(_loc1_ in this.§2!U§)
         {
            Starling.§1!e§.§+K§(_loc1_);
            _loc1_.dispose();
         }
         this.§2!U§ = [];
         this.§%c§ = null;
         this.§4!,§ = null;
      }
      
      private function §?!0§(param1:Event) : void
      {
         this.§ !J§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§^!<§ * param1;
         this.§'6§.x = -_loc3_;
         this.§'6§.y = -param2;
         this.§`!,§();
      }
      
      private function § !J§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§9B§ || !this.§'6§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§2!U§)
         {
            Starling.§1!e§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §;!3§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§2!U§)
         {
            Starling.§1!e§.§+K§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §^!Y§(param1:Boolean) : void
      {
         if(param1 == this.§9B§)
         {
            return;
         }
         this.§9B§ = param1;
         if(this.§9B§)
         {
            this.§ !J§();
         }
         else
         {
            this.§;!3§();
         }
      }
      
      private function §`!,§() : void
      {
         if(this.§#t§ == 1 || this.§2!U§.length > 0)
         {
            return;
         }
         while(§%!-§.§^6§ + (this.§'6§.x - this.§13§) * §%!-§.§?!I§ > 0)
         {
            this.§'6§.x -= this.§13§;
         }
         this.§>!_§();
      }
      
      private function §>!_§() : void
      {
      }
   }
}
