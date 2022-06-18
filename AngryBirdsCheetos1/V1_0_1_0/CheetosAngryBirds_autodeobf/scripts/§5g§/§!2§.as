package §5g§
{
   import § !+§.§0Z§;
   import §%`§.§`p§;
   import §2!-§.Texture;
   import §3]§.§5O§;
   import §4W§.§!]§;
   import §4W§.§9b§;
   import §4W§.§>c§;
   import §5p§.§?M§;
   import §9N§.§#"§;
   import §9N§.§9!%§;
   import §?U§.§&W§;
   import §`a§.§>?§;
   import §`a§.DisplayObject;
   import §`a§.Sprite;
   import starling.events.Event;
   
   public class §!2§
   {
       
      
      private var §[;§:int;
      
      private var §0&§:int;
      
      private var §>V§:Number;
      
      private var §%O§:Boolean;
      
      private var §9!A§:Sprite;
      
      private var §[=§:Array;
      
      private var §5+§:Boolean = true;
      
      private var §5<§:§!]§;
      
      private var §[p§:Sprite;
      
      private var §4!R§:Sprite;
      
      public function §!2§(param1:§5O§, param2:Sprite, param3:§!]§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§>c§ = null;
         this.§[=§ = [];
         super();
         this.§5<§ = param3;
         this.§9!A§ = param2;
         this.§>V§ = param1.§4!Y§;
         this.§%O§ = param1.§7j§;
         var _loc5_:Number = 1;
         if(param1.§7<§ != 0)
         {
            _loc5_ = param1.§7<§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §9b§.§3z§(param1.mName,this.§5<§,false)))
         {
            _loc7_ = (_loc13_ = param3.§]]§(param1.mName)).pivotY;
            if(!this.§%O§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§[;§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§[;§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§],§.bottom;
            _loc8_ = (_loc10_.§],§.left + _loc10_.§],§.right) / 2;
         }
         if(this.§[;§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§[;§ = Math.round(this.§[;§);
         if(param1.§4!S§)
         {
            this.§0&§ = 2 + §9!%§.§?!=§ * 1.5 / (this.§[;§ * param4);
         }
         else
         {
            this.§0&§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§0&§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §9b§.§3z§(param1.mName,this.§5<§,false);
               }
               else
               {
                  _loc10_ = new §>?§(_loc6_,false,false);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§[;§ + (-_loc8_ * _loc5_ + param1.§`%§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§]!>§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§];§(param1,(_loc12_ - 1) * this.§[;§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§9!A§.addChild(_loc11_);
         if(this.§[p§)
         {
            if(this.§[p§.numChildren > 0)
            {
               this.§9!A§.addChild(this.§[p§);
            }
            else
            {
               this.§[p§.dispose();
            }
         }
         if(this.§4!R§)
         {
            if(this.§4!R§.numChildren > 0)
            {
               this.§9!A§.addChildAt(this.§4!R§,0);
            }
            else
            {
               this.§4!R§.dispose();
            }
         }
         this.§9!A§.addEventListener(Event.ADDED_TO_STAGE,this.§?!?§);
      }
      
      public function get §4H§() : Boolean
      {
         return this.§%O§;
      }
      
      private function §];§(param1:§5O§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§#"§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§[=§)
         {
            if((_loc4_ = §`p§.§"!A§(_loc3_.id,this.§5<§)) && _loc4_.§^m§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§`%§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §0Z§.§-m§.add(_loc4_);
               this.§[=§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§4!R§)
                  {
                     this.§4!R§ = new Sprite();
                  }
                  this.§4!R§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§[p§)
                  {
                     this.§[p§ = new Sprite();
                  }
                  this.§[p§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§,9§(1 / 20);
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
         var _loc1_:§&W§ = null;
         this.§9!A§.§[F§(0,-1,true);
         this.§9!A§.removeEventListener(Event.ADDED_TO_STAGE,this.§?!?§);
         for each(_loc1_ in this.§[=§)
         {
            §0Z§.§-m§.§';§(_loc1_);
            _loc1_.dispose();
         }
         this.§[=§ = [];
         this.§4!R§ = null;
         this.§[p§ = null;
      }
      
      private function §?!?§(param1:Event) : void
      {
         this.§"!H§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§>V§ * param1;
         this.§9!A§.x = -_loc3_;
         this.§9!A§.y = -param2;
         this.§;T§();
      }
      
      private function §"!H§() : void
      {
         var _loc1_:§&W§ = null;
         if(!this.§5+§ || !this.§9!A§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§[=§)
         {
            §0Z§.§-m§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §4j§() : void
      {
         var _loc1_:§&W§ = null;
         for each(_loc1_ in this.§[=§)
         {
            §0Z§.§-m§.§';§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §@!-§(param1:Boolean) : void
      {
         if(param1 == this.§5+§)
         {
            return;
         }
         this.§5+§ = param1;
         if(this.§5+§)
         {
            this.§"!H§();
         }
         else
         {
            this.§4j§();
         }
      }
      
      private function §;T§() : void
      {
         if(this.§0&§ == 1 || this.§[=§.length > 0)
         {
            return;
         }
         while(§?M§.§&!N§ + (this.§9!A§.x - this.§[;§) * §?M§.§]5§ > 0)
         {
            this.§9!A§.x -= this.§[;§;
         }
         this.§<[§();
      }
      
      private function §<[§() : void
      {
      }
   }
}
