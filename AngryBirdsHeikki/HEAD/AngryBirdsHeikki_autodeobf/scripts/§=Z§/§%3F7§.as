package §=Z§
{
   import § ![§.§#!B§;
   import §!!S§.Texture;
   import §&L§.§?]§;
   import §+!I§.§-K§;
   import §+!]§.§!,§;
   import §+!]§.§+!=§;
   import §+!]§.§9+§;
   import §5!C§.§#;§;
   import §6!;§.§!>§;
   import §6!;§.DisplayObject;
   import §6!;§.Sprite;
   import §9!'§.§0!%§;
   import §9!'§.§<!W§;
   import §[b§.§`c§;
   import starling.events.Event;
   
   public class §?7§
   {
       
      
      protected var §>!K§:int;
      
      private var §;!g§:int;
      
      protected var §7!U§:Number;
      
      private var §<[§:Boolean;
      
      protected var §4!B§:Sprite;
      
      private var §0!C§:Array;
      
      private var §4b§:Boolean = true;
      
      private var §[G§:§!,§;
      
      private var §#!=§:Sprite;
      
      private var §-J§:Sprite;
      
      public function §?7§(param1:§-K§, param2:Sprite, param3:§!,§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§+!=§ = null;
         this.§0!C§ = [];
         super();
         this.§[G§ = param3;
         this.§4!B§ = param2;
         this.§7!U§ = param1.§8!#§;
         this.§<[§ = param1.§0!W§;
         var _loc5_:Number = 1;
         if(param1.§8=§ != 0)
         {
            _loc5_ = param1.§8=§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §9+§.§&!]§(param1.mName,this.§[G§,param1.§6U§)))
         {
            _loc7_ = (_loc13_ = param3.§#P§(param1.mName)).pivotY;
            if(!this.§<[§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§>!K§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§>!K§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§6L§.bottom;
            _loc8_ = (_loc10_.§6L§.left + _loc10_.§6L§.right) / 2;
         }
         if(this.§>!K§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§>!K§ = Math.round(this.§>!K§);
         if(param1.§[w§)
         {
            this.§;!g§ = 2 + §0!%§.§5C§ * 1.5 / (this.§>!K§ * param4);
         }
         else
         {
            this.§;!g§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§;!g§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §9+§.§&!]§(param1.mName,this.§[G§,param1.§6U§);
               }
               else
               {
                  _loc10_ = new §!>§(_loc6_,false,param1.§6U§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§>!K§ + (-_loc8_ * _loc5_ + param1.§?!4§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§-!I§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§7!^§(param1,(_loc12_ - 1) * this.§>!K§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§4!B§.addChild(_loc11_);
         if(this.§#!=§)
         {
            if(this.§#!=§.numChildren > 0)
            {
               this.§4!B§.addChild(this.§#!=§);
            }
            else
            {
               this.§#!=§.dispose();
            }
         }
         if(this.§-J§)
         {
            if(this.§-J§.numChildren > 0)
            {
               this.§4!B§.addChildAt(this.§-J§,0);
            }
            else
            {
               this.§-J§.dispose();
            }
         }
         this.§4!B§.addEventListener(Event.ADDED_TO_STAGE,this.set);
      }
      
      public function get §>_§() : Boolean
      {
         return this.§<[§;
      }
      
      private function §7!^§(param1:§-K§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§<!W§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§0!C§)
         {
            if((_loc4_ = §`c§.§@+§(_loc3_.id,this.§[G§)) && _loc4_.§;!$§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§?!4§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §?]§.§+!9§.add(_loc4_);
               this.§0!C§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§-J§)
                  {
                     this.§-J§ = new Sprite();
                  }
                  this.§-J§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§#!=§)
                  {
                     this.§#!=§ = new Sprite();
                  }
                  this.§#!=§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§+!_§(1 / 20);
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
         var _loc1_:§#;§ = null;
         this.§4!B§.§,N§(0,-1,true);
         this.§4!B§.removeEventListener(Event.ADDED_TO_STAGE,this.set);
         for each(_loc1_ in this.§0!C§)
         {
            §?]§.§+!9§.§1!P§(_loc1_);
            _loc1_.dispose();
         }
         this.§0!C§ = [];
         this.§-J§ = null;
         this.§#!=§ = null;
      }
      
      private function set(param1:Event) : void
      {
         this.§ !A§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§7!U§ * param1;
         this.§4!B§.x = -_loc3_;
         this.§4!B§.y = -param2;
         this.§3F§();
      }
      
      private function § !A§() : void
      {
         var _loc1_:§#;§ = null;
         if(!this.§4b§ || !this.§4!B§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§0!C§)
         {
            §?]§.§+!9§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §2!K§() : void
      {
         var _loc1_:§#;§ = null;
         for each(_loc1_ in this.§0!C§)
         {
            §?]§.§+!9§.§1!P§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §]!W§(param1:Boolean) : void
      {
         if(param1 == this.§4b§)
         {
            return;
         }
         this.§4b§ = param1;
         if(this.§4b§)
         {
            this.§ !A§();
         }
         else
         {
            this.§2!K§();
         }
      }
      
      protected function §3F§() : void
      {
         if(this.§;!g§ == 1 || this.§0!C§.length > 0)
         {
            return;
         }
         while(§#!B§.§"!`§ + (this.§4!B§.x - this.§>!K§) * §#!B§.§2!Y§ > 0)
         {
            this.§4!B§.x -= this.§>!K§;
         }
         this.§&$§();
      }
      
      private function §&$§() : void
      {
      }
   }
}
