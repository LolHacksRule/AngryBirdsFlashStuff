package §^!s§
{
   import §'!>§.ParticleManager;
   import §+"6§.§5!H§;
   import §+"B§.ParticleDesignerPS;
   import §3,§.§!"4§;
   import §3,§.§[!;§;
   import §<L§.Texture;
   import §?"<§.§#!6§;
   import §?"<§.§<"!§;
   import §?"<§.§?n§;
   import §]&§.§-§;
   import §]&§.DisplayObject;
   import §]&§.Sprite;
   import §^6§.§0!w§;
   import §`!$§.§,!$§;
   import starling.events.Event;
   
   public class §=! §
   {
       
      
      protected var §^V§:int;
      
      private var § 2§:int;
      
      protected var §8V§:Number;
      
      private var §+"4§:Boolean;
      
      protected var §3!b§:Sprite;
      
      private var §9;§:Array;
      
      private var §3H§:Boolean = true;
      
      private var §9s§:§<"!§;
      
      private var §#!f§:Sprite;
      
      private var §94§:Sprite;
      
      public function §=! §(param1:§,!$§, param2:Sprite, param3:§<"!§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§?n§ = null;
         this.§9;§ = [];
         super();
         this.§9s§ = param3;
         this.§3!b§ = param2;
         this.§8V§ = param1.§0!A§;
         this.§+"4§ = param1.§#V§;
         var _loc5_:Number = 1;
         if(param1.§6!l§ != 0)
         {
            _loc5_ = param1.§6!l§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §#!6§.§ "4§(param1.mName,this.§9s§,param1.§3!]§)))
         {
            _loc7_ = (_loc13_ = param3.§?!H§(param1.mName)).pivotY;
            if(!this.§+"4§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§^V§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§^V§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§1^§.bottom;
            _loc8_ = (_loc10_.§1^§.left + _loc10_.§1^§.right) / 2;
         }
         if(this.§^V§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§^V§ = Math.round(this.§^V§);
         if(param1.§ "8§)
         {
            this.§ 2§ = 2 + §[!;§.§=!n§ * 1.5 / (this.§^V§ * param4);
         }
         else
         {
            this.§ 2§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§ 2§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §#!6§.§ "4§(param1.mName,this.§9s§,param1.§3!]§);
               }
               else
               {
                  _loc10_ = new §-§(_loc6_,false,param1.§3!]§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§^V§ + (-_loc8_ * _loc5_ + param1.§=5§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§@!m§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§[!§(param1,(_loc12_ - 1) * this.§^V§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§3!b§.addChild(_loc11_);
         if(this.§#!f§)
         {
            if(this.§#!f§.numChildren > 0)
            {
               this.§3!b§.addChild(this.§#!f§);
            }
            else
            {
               this.§#!f§.dispose();
            }
         }
         if(this.§94§)
         {
            if(this.§94§.numChildren > 0)
            {
               this.§3!b§.addChildAt(this.§94§,0);
            }
            else
            {
               this.§94§.dispose();
            }
         }
         this.§3!b§.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      public function get §&@§() : Boolean
      {
         return this.§+"4§;
      }
      
      private function §[!§(param1:§,!$§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§!"4§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§9;§)
         {
            if((_loc4_ = ParticleManager.§6#§(_loc3_.id,this.§9s§)) && _loc4_.§?`§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§=5§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §5!H§.§1f§.add(_loc4_);
               this.§9;§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§94§)
                  {
                     this.§94§ = new Sprite();
                  }
                  this.§94§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§#!f§)
                  {
                     this.§#!f§ = new Sprite();
                  }
                  this.§#!f§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§+!u§(1 / 20);
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
         this.§3!b§.§?J§(0,-1,true);
         this.§3!b§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         for each(_loc1_ in this.§9;§)
         {
            §5!H§.§1f§.§ "%§(_loc1_);
            _loc1_.dispose();
         }
         this.§9;§ = [];
         this.§94§ = null;
         this.§#!f§ = null;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§,<§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§8V§ * param1;
         this.§3!b§.x = -_loc3_;
         this.§3!b§.y = -param2;
         this.§8!`§();
      }
      
      private function §,<§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§3H§ || !this.§3!b§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§9;§)
         {
            §5!H§.§1f§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §6!I§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§9;§)
         {
            §5!H§.§1f§.§ "%§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §!`§(param1:Boolean) : void
      {
         if(param1 == this.§3H§)
         {
            return;
         }
         this.§3H§ = param1;
         if(this.§3H§)
         {
            this.§,<§();
         }
         else
         {
            this.§6!I§();
         }
      }
      
      protected function §8!`§() : void
      {
         if(this.§ 2§ == 1 || this.§9;§.length > 0)
         {
            return;
         }
         while(§0!w§.§4!b§ + (this.§3!b§.x - this.§^V§) * §0!w§.§7![§ > 0)
         {
            this.§3!b§.x -= this.§^V§;
         }
         this.§7!q§();
      }
      
      private function §7!q§() : void
      {
      }
   }
}
