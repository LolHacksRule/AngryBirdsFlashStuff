package §7!?§
{
   import §&!'§.§'!f§;
   import §&!9§.§,,§;
   import §&!9§.DisplayObject;
   import §&!9§.Sprite;
   import §&F§.§>!2§;
   import §&F§.§@!E§;
   import §+&§.§?y§;
   import §,! §.§[!J§;
   import §1!9§.§2L§;
   import §48§.§&m§;
   import §48§.§4a§;
   import §48§.§6!Z§;
   import §6!4§.Texture;
   import §?J§.§6!X§;
   import starling.events.Event;
   
   public class §+>§
   {
       
      
      private var §]!R§:int;
      
      private var §-!P§:int;
      
      private var §4H§:Number;
      
      private var §,!P§:Boolean;
      
      private var §@!Y§:Sprite;
      
      private var §"!,§:Array;
      
      private var §8z§:Boolean = true;
      
      private var §<d§:§4a§;
      
      private var §7r§:Sprite;
      
      private var §"!;§:Sprite;
      
      public function §+>§(param1:§2L§, param2:Sprite, param3:§4a§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§6!Z§ = null;
         this.§"!,§ = [];
         super();
         this.§<d§ = param3;
         this.§@!Y§ = param2;
         this.§4H§ = param1.§#n§;
         this.§,!P§ = param1.§-!B§;
         var _loc5_:Number = 1;
         if(param1.§ !@§ != 0)
         {
            _loc5_ = param1.§ !@§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §&m§.§9!$§(param1.mName,this.§<d§,param1.§`+§)))
         {
            _loc7_ = (_loc13_ = param3.§-o§(param1.mName)).pivotY;
            if(!this.§,!P§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§]!R§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§]!R§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§#!D§.bottom;
            _loc8_ = (_loc10_.§#!D§.left + _loc10_.§#!D§.right) / 2;
         }
         if(this.§]!R§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§]!R§ = Math.round(this.§]!R§);
         if(param1.§!t§)
         {
            this.§-!P§ = 2 + §>!2§.§1M§ * 1.5 / (this.§]!R§ * param4);
         }
         else
         {
            this.§-!P§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§-!P§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §&m§.§9!$§(param1.mName,this.§<d§,param1.§`+§);
               }
               else
               {
                  _loc10_ = new §,,§(_loc6_,false,param1.§`+§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§]!R§ + (-_loc8_ * _loc5_ + param1.§8o§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§"&§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§7,§(param1,(_loc12_ - 1) * this.§]!R§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§@!Y§.addChild(_loc11_);
         if(this.§7r§)
         {
            if(this.§7r§.numChildren > 0)
            {
               this.§@!Y§.addChild(this.§7r§);
            }
            else
            {
               this.§7r§.dispose();
            }
         }
         if(this.§"!;§)
         {
            if(this.§"!;§.numChildren > 0)
            {
               this.§@!Y§.addChildAt(this.§"!;§,0);
            }
            else
            {
               this.§"!;§.dispose();
            }
         }
         this.§@!Y§.addEventListener(Event.ADDED_TO_STAGE,this.§%Z§);
      }
      
      public function get §`#§() : Boolean
      {
         return this.§,!P§;
      }
      
      private function §7,§(param1:§2L§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§@!E§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§"!,§)
         {
            if((_loc4_ = §6!X§.§!!Y§(_loc3_.id,this.§<d§)) && _loc4_.§-!-§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§8o§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §?y§.§0&§.add(_loc4_);
               this.§"!,§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§"!;§)
                  {
                     this.§"!;§ = new Sprite();
                  }
                  this.§"!;§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§7r§)
                  {
                     this.§7r§ = new Sprite();
                  }
                  this.§7r§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§;-§(1 / 20);
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
         var _loc1_:§[!J§ = null;
         this.§@!Y§.§@!0§(0,-1,true);
         this.§@!Y§.removeEventListener(Event.ADDED_TO_STAGE,this.§%Z§);
         for each(_loc1_ in this.§"!,§)
         {
            §?y§.§0&§.§8u§(_loc1_);
            _loc1_.dispose();
         }
         this.§"!,§ = [];
         this.§"!;§ = null;
         this.§7r§ = null;
      }
      
      private function §%Z§(param1:Event) : void
      {
         this.§0!R§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§4H§ * param1;
         this.§@!Y§.x = -_loc3_;
         this.§@!Y§.y = -param2;
         this.§6z§();
      }
      
      private function §0!R§() : void
      {
         var _loc1_:§[!J§ = null;
         if(!this.§8z§ || !this.§@!Y§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§"!,§)
         {
            §?y§.§0&§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §2!9§() : void
      {
         var _loc1_:§[!J§ = null;
         for each(_loc1_ in this.§"!,§)
         {
            §?y§.§0&§.§8u§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §,!!§(param1:Boolean) : void
      {
         if(param1 == this.§8z§)
         {
            return;
         }
         this.§8z§ = param1;
         if(this.§8z§)
         {
            this.§0!R§();
         }
         else
         {
            this.§2!9§();
         }
      }
      
      private function §6z§() : void
      {
         if(this.§-!P§ == 1 || this.§"!,§.length > 0)
         {
            return;
         }
         while(§'!f§.§]<§ + (this.§@!Y§.x - this.§]!R§) * §'!f§.§,!`§ > 0)
         {
            this.§@!Y§.x -= this.§]!R§;
         }
         this.§%Y§();
      }
      
      private function §%Y§() : void
      {
      }
   }
}
