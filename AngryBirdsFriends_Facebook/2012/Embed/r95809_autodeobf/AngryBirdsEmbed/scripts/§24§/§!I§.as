package §24§
{
   import § `§.§3F§;
   import §&!7§.Texture;
   import §&I§.§3! §;
   import §+!%§.§'!"§;
   import §+!%§.§1U§;
   import §->§.§2! §;
   import §->§.DisplayObject;
   import §->§.Sprite;
   import §>0§.§'!G§;
   import §[!$§.§"!%§;
   import §[!$§.§89§;
   import §[!$§.§>"§;
   import §`§.ParticleDesignerPS;
   import starling.events.Event;
   
   public class §!I§
   {
       
      
      private var §case§:int;
      
      private var §=<§:int;
      
      private var §@O§:Number;
      
      private var §;!#§:Boolean;
      
      private var §'M§:Sprite;
      
      private var §"4§:Array;
      
      private var §6u§:Boolean = true;
      
      private var §7K§:§"!%§;
      
      private var §#U§:Sprite;
      
      private var §@!D§:Sprite;
      
      public function §!I§(param1:§'!G§, param2:Sprite, param3:§"!%§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§89§ = null;
         this.§"4§ = [];
         super();
         this.§7K§ = param3;
         this.§'M§ = param2;
         this.§@O§ = param1.§"!§;
         this.§;!#§ = param1.§7O§;
         var _loc5_:Number = 1;
         if(param1.§?!C§ != 0)
         {
            _loc5_ = param1.§?!C§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §>"§.§",§(param1.mName,this.§7K§,param1.§41§)))
         {
            _loc7_ = (_loc13_ = param3.§<I§(param1.mName)).pivotY;
            if(!this.§;!#§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§case§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§case§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§set §.bottom;
            _loc8_ = (_loc10_.§set §.left + _loc10_.§set §.right) / 2;
         }
         if(this.§case§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§case§ = Math.round(this.§case§);
         if(param1.§[s§)
         {
            this.§=<§ = 2 + §'!"§.§5a§ * 1.5 / (this.§case§ * param4);
         }
         else
         {
            this.§=<§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§=<§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §>"§.§",§(param1.mName,this.§7K§,param1.§41§);
               }
               else
               {
                  _loc10_ = new §2! §(_loc6_,false,param1.§41§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§case§ + (-_loc8_ * _loc5_ + param1.§-9§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§]!'§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§+! §(param1,(_loc12_ - 1) * this.§case§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§'M§.addChild(_loc11_);
         if(this.§#U§)
         {
            if(this.§#U§.numChildren > 0)
            {
               this.§'M§.addChild(this.§#U§);
            }
            else
            {
               this.§#U§.dispose();
            }
         }
         if(this.§@!D§)
         {
            if(this.§@!D§.numChildren > 0)
            {
               this.§'M§.addChildAt(this.§@!D§,0);
            }
            else
            {
               this.§@!D§.dispose();
            }
         }
         this.§'M§.addEventListener(Event.ADDED_TO_STAGE,this.§ s§);
      }
      
      public function get §,U§() : Boolean
      {
         return this.§;!#§;
      }
      
      private function §+! §(param1:§'!G§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§1U§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§"4§)
         {
            if((_loc4_ = ParticleManager.§!!;§(_loc3_.id,this.§7K§)) && _loc4_.§?k§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§-9§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §3! §.§`S§.add(_loc4_);
               this.§"4§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§@!D§)
                  {
                     this.§@!D§ = new Sprite();
                  }
                  this.§@!D§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§#U§)
                  {
                     this.§#U§ = new Sprite();
                  }
                  this.§#U§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§#!<§(1 / 20);
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
         this.§'M§.§'! §(0,-1,true);
         this.§'M§.removeEventListener(Event.ADDED_TO_STAGE,this.§ s§);
         for each(_loc1_ in this.§"4§)
         {
            §3! §.§`S§.§&d§(_loc1_);
            _loc1_.dispose();
         }
         this.§"4§ = [];
         this.§@!D§ = null;
         this.§#U§ = null;
      }
      
      private function § s§(param1:Event) : void
      {
         this.§6!D§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§@O§ * param1;
         this.§'M§.x = -_loc3_;
         this.§'M§.y = -param2;
         this.§7!?§();
      }
      
      private function §6!D§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§6u§ || !this.§'M§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§"4§)
         {
            §3! §.§`S§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §0q§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§"4§)
         {
            §3! §.§`S§.§&d§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §]!!§(param1:Boolean) : void
      {
         if(param1 == this.§6u§)
         {
            return;
         }
         this.§6u§ = param1;
         if(this.§6u§)
         {
            this.§6!D§();
         }
         else
         {
            this.§0q§();
         }
      }
      
      private function §7!?§() : void
      {
         if(this.§=<§ == 1 || this.§"4§.length > 0)
         {
            return;
         }
         while(§3F§.§[E§ + (this.§'M§.x - this.§case§) * §3F§.§'f§ > 0)
         {
            this.§'M§.x -= this.§case§;
         }
         this.§1V§();
      }
      
      private function §1V§() : void
      {
      }
   }
}
