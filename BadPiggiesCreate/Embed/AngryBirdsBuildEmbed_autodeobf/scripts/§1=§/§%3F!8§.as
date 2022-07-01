package §1=§
{
   import §'!B§.ParticleDesignerPS;
   import §-!`§.§7!J§;
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §0!-§.Texture;
   import §;o§.ParticleManager;
   import §<!<§.§ M§;
   import §<!<§.§7E§;
   import §=U§.§3p§;
   import §=U§.§<6§;
   import §=U§.§>?§;
   import §@!X§.§7j§;
   import §]Z§.§0!H§;
   import §`a§.§ !U§;
   import starling.events.Event;
   
   public class §?!8§
   {
       
      
      private var §`9§:int;
      
      private var §9l§:int;
      
      private var §[!j§:Number;
      
      private var §0p§:Boolean;
      
      private var §>E§:Sprite;
      
      private var §=![§:Array;
      
      private var §1!0§:Boolean = true;
      
      private var §>!S§:§3p§;
      
      private var §4!f§:Sprite;
      
      private var §>,§:Sprite;
      
      public function §?!8§(param1:§0!H§, param2:Sprite, param3:§3p§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§>?§ = null;
         this.§=![§ = [];
         super();
         this.§>!S§ = param3;
         this.§>E§ = param2;
         this.§[!j§ = param1.§ 2§;
         this.§0p§ = param1.§>T§;
         var _loc5_:Number = 1;
         if(param1.§7P§ != 0)
         {
            _loc5_ = param1.§7P§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §<6§.§&2§(param1.mName,this.§>!S§,param1.§0_§)))
         {
            _loc7_ = (_loc13_ = param3.§8!@§(param1.mName)).pivotY;
            if(!this.§0p§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§`9§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§`9§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§+!;§.bottom;
            _loc8_ = (_loc10_.§+!;§.left + _loc10_.§+!;§.right) / 2;
         }
         if(this.§`9§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§`9§ = Math.round(this.§`9§);
         if(param1.§`§)
         {
            this.§9l§ = 2 + §7E§.§#!U§ * 1.5 / (this.§`9§ * param4);
         }
         else
         {
            this.§9l§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§9l§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §<6§.§&2§(param1.mName,this.§>!S§,param1.§0_§);
               }
               else
               {
                  _loc10_ = new §7!J§(_loc6_,false,param1.§0_§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§`9§ + (-_loc8_ * _loc5_ + param1.§[!l§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§5!U§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§98§(param1,(_loc12_ - 1) * this.§`9§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§>E§.addChild(_loc11_);
         if(this.§4!f§)
         {
            if(this.§4!f§.numChildren > 0)
            {
               this.§>E§.addChild(this.§4!f§);
            }
            else
            {
               this.§4!f§.dispose();
            }
         }
         if(this.§>,§)
         {
            if(this.§>,§.numChildren > 0)
            {
               this.§>E§.addChildAt(this.§>,§,0);
            }
            else
            {
               this.§>,§.dispose();
            }
         }
         this.§>E§.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      public function get §,!b§() : Boolean
      {
         return this.§0p§;
      }
      
      private function §98§(param1:§0!H§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§ M§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§=![§)
         {
            if((_loc4_ = ParticleManager.§2!>§(_loc3_.id,this.§>!S§)) && _loc4_.§;!N§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§[!l§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §7j§.§&t§.add(_loc4_);
               this.§=![§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§>,§)
                  {
                     this.§>,§ = new Sprite();
                  }
                  this.§>,§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§4!f§)
                  {
                     this.§4!f§ = new Sprite();
                  }
                  this.§4!f§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§ l§(1 / 20);
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
         this.§>E§.removeChildren(0,-1,true);
         this.§>E§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         for each(_loc1_ in this.§=![§)
         {
            §7j§.§&t§.§-!6§(_loc1_);
            _loc1_.dispose();
         }
         this.§=![§ = [];
         this.§>,§ = null;
         this.§4!f§ = null;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§2g§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§[!j§ * param1;
         this.§>E§.x = -_loc3_;
         this.§>E§.y = -param2;
         this.§?!g§();
      }
      
      private function §2g§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§1!0§ || !this.§>E§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§=![§)
         {
            §7j§.§&t§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §7!Q§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§=![§)
         {
            §7j§.§&t§.§-!6§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §6!Y§(param1:Boolean) : void
      {
         if(param1 == this.§1!0§)
         {
            return;
         }
         this.§1!0§ = param1;
         if(this.§1!0§)
         {
            this.§2g§();
         }
         else
         {
            this.§7!Q§();
         }
      }
      
      private function §?!g§() : void
      {
         if(this.§9l§ == 1 || this.§=![§.length > 0)
         {
            return;
         }
         while(§ !U§.§@B§ + (this.§>E§.x - this.§`9§) * § !U§.§#!-§ > 0)
         {
            this.§>E§.x -= this.§`9§;
         }
         this.§#!r§();
      }
      
      private function §#!r§() : void
      {
      }
   }
}
