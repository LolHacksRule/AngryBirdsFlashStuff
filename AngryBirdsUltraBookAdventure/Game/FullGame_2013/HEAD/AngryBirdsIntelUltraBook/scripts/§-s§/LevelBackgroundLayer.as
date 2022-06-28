package §-s§
{
   import §#!,§.§0!b§;
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §,!7§.CompositeSpriteParser;
   import §,!7§.TextureManager;
   import §5u§.§[!,§;
   import §6!J§.Texture;
   import §7!>§.Starling;
   import §>! §.ParticleManager;
   import §>=§.§"_§;
   import §]!@§.LevelMain;
   import §]!@§.§`!N§;
   import §^s§.ParticleDesignerPS;
   import starling.events.Event;
   
   public class LevelBackgroundLayer
   {
       
      
      private var §-!"§:int;
      
      private var §4;§:int;
      
      private var §4!=§:Number;
      
      private var §-R§:Boolean;
      
      private var §"!,§:Sprite;
      
      private var §'s§:Array;
      
      private var §^!9§:Boolean = true;
      
      private var §7!`§:TextureManager;
      
      private var §6-§:Sprite;
      
      private var §]!'§:Sprite;
      
      public function LevelBackgroundLayer(param1:§"_§, param2:Sprite, param3:TextureManager, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§ H§ = null;
         this.§'s§ = [];
         super();
         this.§7!`§ = param3;
         this.§"!,§ = param2;
         this.§4!=§ = param1.§-]§;
         this.§-R§ = param1.§'3§;
         var _loc5_:Number = 1;
         if(param1.§?C§ != 0)
         {
            _loc5_ = param1.§?C§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject = CompositeSpriteParser.§]P§(param1.mName,this.§7!`§,param1.§7y§);
         if(!_loc10_)
         {
            _loc13_ = param3.§]w§(param1.mName);
            _loc7_ = _loc13_.pivotY;
            if(!this.§-R§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§-!"§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§-!"§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.bounds.bottom;
            _loc8_ = (_loc10_.bounds.left + _loc10_.bounds.right) / 2;
         }
         if(this.§-!"§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§-!"§ = Math.round(this.§-!"§);
         if(param1.§6!a§)
         {
            this.§4;§ = 2 + LevelMain.§;y§ * 1.5 / (this.§-!"§ * param4);
         }
         else
         {
            this.§4;§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§4;§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = CompositeSpriteParser.§]P§(param1.mName,this.§7!`§,param1.§7y§);
               }
               else
               {
                  _loc10_ = new §0!b§(_loc6_,false,param1.§7y§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§-!"§ + (-_loc8_ * _loc5_ + param1.§;!0§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§%!i§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§=y§(param1,(_loc12_ - 1) * this.§-!"§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§"!,§.addChild(_loc11_);
         if(this.§6-§)
         {
            if(this.§6-§.numChildren > 0)
            {
               this.§"!,§.addChild(this.§6-§);
            }
            else
            {
               this.§6-§.dispose();
            }
         }
         if(this.§]!'§)
         {
            if(this.§]!'§.numChildren > 0)
            {
               this.§"!,§.addChildAt(this.§]!'§,0);
            }
            else
            {
               this.§]!'§.dispose();
            }
         }
         this.§"!,§.addEventListener(Event.ADDED_TO_STAGE,this.§1Z§);
      }
      
      public function get §^!A§() : Boolean
      {
         return this.§-R§;
      }
      
      private function §=y§(param1:§"_§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§`!N§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§'s§)
         {
            _loc4_ = ParticleManager.§@a§(_loc3_.id,this.§7!`§);
            if(_loc4_ && _loc4_.§7!O§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§;!0§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               Starling.§5K§.add(_loc4_);
               this.§'s§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§]!'§)
                  {
                     this.§]!'§ = new Sprite();
                  }
                  this.§]!'§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§6-§)
                  {
                     this.§6-§ = new Sprite();
                  }
                  this.§6-§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§1!5§(1 / 20);
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
         this.§"!,§.§ E§(0,-1,true);
         this.§"!,§.removeEventListener(Event.ADDED_TO_STAGE,this.§1Z§);
         for each(_loc1_ in this.§'s§)
         {
            Starling.§5K§.§>2§(_loc1_);
            _loc1_.dispose();
         }
         this.§'s§ = [];
         this.§]!'§ = null;
         this.§6-§ = null;
      }
      
      private function §1Z§(param1:Event) : void
      {
         this.§]F§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§4!=§ * param1;
         this.§"!,§.x = -_loc3_;
         this.§"!,§.y = -param2;
         this.§9f§();
      }
      
      private function §]F§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§^!9§ || !this.§"!,§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§'s§)
         {
            Starling.§5K§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §+2§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§'s§)
         {
            Starling.§5K§.§>2§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §^!D§(param1:Boolean) : void
      {
         if(param1 == this.§^!9§)
         {
            return;
         }
         this.§^!9§ = param1;
         if(this.§^!9§)
         {
            this.§]F§();
         }
         else
         {
            this.§+2§();
         }
      }
      
      private function §9f§() : void
      {
         if(this.§4;§ == 1 || this.§'s§.length > 0)
         {
            return;
         }
         while(§[!,§.§[!^§ + (this.§"!,§.x - this.§-!"§) * §[!,§.§ !7§ > 0)
         {
            this.§"!,§.x -= this.§-!"§;
         }
         this.§-!T§();
      }
      
      private function §-!T§() : void
      {
      }
   }
}
