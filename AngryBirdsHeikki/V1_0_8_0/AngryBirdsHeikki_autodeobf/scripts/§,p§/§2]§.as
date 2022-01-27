package §,p§
{
   import §!v§.§7[§;
   import §"`§.§&d§;
   import §#!6§.Texture;
   import §1!+§.§-'§;
   import §2,§.§11§;
   import §2z§.§,!V§;
   import §2z§.§2!U§;
   import §9!4§.§&l§;
   import §=!E§.DisplayObject;
   import §=!E§.Sprite;
   import §=!E§.§try§;
   import §]!C§.§'!!§;
   import §]!C§.§0!d§;
   import §]!C§.§@!0§;
   import starling.events.Event;
   
   public class §2]§
   {
       
      
      protected var §;P§:int;
      
      private var §5!?§:int;
      
      protected var § 8§:Number;
      
      private var § !Z§:Boolean;
      
      protected var §"!B§:Sprite;
      
      private var §"<§:Array;
      
      private var §-!Z§:Boolean = true;
      
      private var §>8§:§0!d§;
      
      private var §@a§:Sprite;
      
      private var §,! §:Sprite;
      
      public function §2]§(param1:§-'§, param2:Sprite, param3:§0!d§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§'!!§ = null;
         this.§"<§ = [];
         super();
         this.§>8§ = param3;
         this.§"!B§ = param2;
         this.§ 8§ = param1.§[!R§;
         this.§ !Z§ = param1.§&0§;
         var _loc5_:Number = 1;
         if(param1.§35§ != 0)
         {
            _loc5_ = param1.§35§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §@!0§.§=V§(param1.mName,this.§>8§,param1.§#!!§)))
         {
            _loc7_ = (_loc13_ = param3.§]!B§(param1.mName)).pivotY;
            if(!this.§ !Z§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§;P§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§;P§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§#!b§.bottom;
            _loc8_ = (_loc10_.§#!b§.left + _loc10_.§#!b§.right) / 2;
         }
         if(this.§;P§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§;P§ = Math.round(this.§;P§);
         if(param1.§&!!§)
         {
            this.§5!?§ = 2 + §2!U§.§2!M§ * 1.5 / (this.§;P§ * param4);
         }
         else
         {
            this.§5!?§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§5!?§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §@!0§.§=V§(param1.mName,this.§>8§,param1.§#!!§);
               }
               else
               {
                  _loc10_ = new §try§(_loc6_,false,param1.§#!!§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§;P§ + (-_loc8_ * _loc5_ + param1.§6o§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§!H§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§[!V§(param1,(_loc12_ - 1) * this.§;P§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§"!B§.addChild(_loc11_);
         if(this.§@a§)
         {
            if(this.§@a§.numChildren > 0)
            {
               this.§"!B§.addChild(this.§@a§);
            }
            else
            {
               this.§@a§.dispose();
            }
         }
         if(this.§,! §)
         {
            if(this.§,! §.numChildren > 0)
            {
               this.§"!B§.addChildAt(this.§,! §,0);
            }
            else
            {
               this.§,! §.dispose();
            }
         }
         this.§"!B§.addEventListener(Event.ADDED_TO_STAGE,this.§%=§);
      }
      
      public function get §8!a§() : Boolean
      {
         return this.§ !Z§;
      }
      
      private function §[!V§(param1:§-'§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§,!V§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§"<§)
         {
            if((_loc4_ = §&d§.§!I§(_loc3_.id,this.§>8§)) && _loc4_.§^!;§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§6o§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §7[§.§=!$§.add(_loc4_);
               this.§"<§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§,! §)
                  {
                     this.§,! § = new Sprite();
                  }
                  this.§,! §.addChild(_loc4_);
               }
               else
               {
                  if(!this.§@a§)
                  {
                     this.§@a§ = new Sprite();
                  }
                  this.§@a§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§#!]§(1 / 20);
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
         var _loc1_:§11§ = null;
         this.§"!B§.§+j§(0,-1,true);
         this.§"!B§.removeEventListener(Event.ADDED_TO_STAGE,this.§%=§);
         for each(_loc1_ in this.§"<§)
         {
            §7[§.§=!$§.§&]§(_loc1_);
            _loc1_.dispose();
         }
         this.§"<§ = [];
         this.§,! § = null;
         this.§@a§ = null;
      }
      
      private function §%=§(param1:Event) : void
      {
         this.§8I§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§ 8§ * param1;
         this.§"!B§.x = -_loc3_;
         this.§"!B§.y = -param2;
         this.§@4§();
      }
      
      private function §8I§() : void
      {
         var _loc1_:§11§ = null;
         if(!this.§-!Z§ || !this.§"!B§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§"<§)
         {
            §7[§.§=!$§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §5!6§() : void
      {
         var _loc1_:§11§ = null;
         for each(_loc1_ in this.§"<§)
         {
            §7[§.§=!$§.§&]§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §[!N§(param1:Boolean) : void
      {
         if(param1 == this.§-!Z§)
         {
            return;
         }
         this.§-!Z§ = param1;
         if(this.§-!Z§)
         {
            this.§8I§();
         }
         else
         {
            this.§5!6§();
         }
      }
      
      protected function §@4§() : void
      {
         if(this.§5!?§ == 1 || this.§"<§.length > 0)
         {
            return;
         }
         while(§&l§.§in § + (this.§"!B§.x - this.§;P§) * §&l§.§3H§ > 0)
         {
            this.§"!B§.x -= this.§;P§;
         }
         this.§'=§();
      }
      
      private function §'=§() : void
      {
      }
   }
}
