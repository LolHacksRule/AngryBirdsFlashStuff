package §=!F§
{
   import §+!E§.§5!J§;
   import §+a§.Texture;
   import §1V§.§9f§;
   import §9!a§.§"z§;
   import §9!a§.DisplayObject;
   import §9!a§.Sprite;
   import §9T§.§!!-§;
   import §9T§.§=!^§;
   import §=!,§.§9![§;
   import §=0§.§6j§;
   import §=0§.§>O§;
   import §=0§.§^L§;
   import §>N§.§"u§;
   import §]!G§.§1E§;
   import starling.events.Event;
   
   public class §%O§
   {
       
      
      protected var §>F§:int;
      
      private var §<!_§:int;
      
      protected var §#!^§:Number;
      
      private var §%!7§:Boolean;
      
      protected var §"$§:Sprite;
      
      private var § !_§:Array;
      
      private var §3R§:Boolean = true;
      
      private var §<!P§:§>O§;
      
      private var §1!1§:Sprite;
      
      private var §;%§:Sprite;
      
      public function §%O§(param1:§5!J§, param2:Sprite, param3:§>O§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§^L§ = null;
         this.§ !_§ = [];
         super();
         this.§<!P§ = param3;
         this.§"$§ = param2;
         this.§#!^§ = param1.§4R§;
         this.§%!7§ = param1.§?!W§;
         var _loc5_:Number = 1;
         if(param1.§;!X§ != 0)
         {
            _loc5_ = param1.§;!X§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §6j§.§"Y§(param1.mName,this.§<!P§,param1.§[F§)))
         {
            _loc7_ = (_loc13_ = param3.§ r§(param1.mName)).pivotY;
            if(!this.§%!7§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§>F§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§>F§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§#!F§.bottom;
            _loc8_ = (_loc10_.§#!F§.left + _loc10_.§#!F§.right) / 2;
         }
         if(this.§>F§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§>F§ = Math.round(this.§>F§);
         if(param1.§!Y§)
         {
            this.§<!_§ = 2 + §=!^§.§@3§ * 1.5 / (this.§>F§ * param4);
         }
         else
         {
            this.§<!_§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§<!_§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §6j§.§"Y§(param1.mName,this.§<!P§,param1.§[F§);
               }
               else
               {
                  _loc10_ = new §"z§(_loc6_,false,param1.§[F§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§>F§ + (-_loc8_ * _loc5_ + param1.§=!O§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§,8§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§4!2§(param1,(_loc12_ - 1) * this.§>F§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§"$§.addChild(_loc11_);
         if(this.§1!1§)
         {
            if(this.§1!1§.numChildren > 0)
            {
               this.§"$§.addChild(this.§1!1§);
            }
            else
            {
               this.§1!1§.dispose();
            }
         }
         if(this.§;%§)
         {
            if(this.§;%§.numChildren > 0)
            {
               this.§"$§.addChildAt(this.§;%§,0);
            }
            else
            {
               this.§;%§.dispose();
            }
         }
         this.§"$§.addEventListener(Event.ADDED_TO_STAGE,this.§'!a§);
      }
      
      public function get §>g§() : Boolean
      {
         return this.§%!7§;
      }
      
      private function §4!2§(param1:§5!J§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§!!-§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§ !_§)
         {
            if((_loc4_ = §9f§.§2V§(_loc3_.id,this.§<!P§)) && _loc4_.§]![§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§=!O§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §"u§.§4f§.add(_loc4_);
               this.§ !_§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§;%§)
                  {
                     this.§;%§ = new Sprite();
                  }
                  this.§;%§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§1!1§)
                  {
                     this.§1!1§ = new Sprite();
                  }
                  this.§1!1§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§9!T§(1 / 20);
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
         var _loc1_:§1E§ = null;
         this.§"$§.§4!=§(0,-1,true);
         this.§"$§.removeEventListener(Event.ADDED_TO_STAGE,this.§'!a§);
         for each(_loc1_ in this.§ !_§)
         {
            §"u§.§4f§.§7?§(_loc1_);
            _loc1_.dispose();
         }
         this.§ !_§ = [];
         this.§;%§ = null;
         this.§1!1§ = null;
      }
      
      private function §'!a§(param1:Event) : void
      {
         this.§5-§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§#!^§ * param1;
         this.§"$§.x = -_loc3_;
         this.§"$§.y = -param2;
         this.§!!'§();
      }
      
      private function §5-§() : void
      {
         var _loc1_:§1E§ = null;
         if(!this.§3R§ || !this.§"$§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§ !_§)
         {
            §"u§.§4f§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §9!U§() : void
      {
         var _loc1_:§1E§ = null;
         for each(_loc1_ in this.§ !_§)
         {
            §"u§.§4f§.§7?§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §2!;§(param1:Boolean) : void
      {
         if(param1 == this.§3R§)
         {
            return;
         }
         this.§3R§ = param1;
         if(this.§3R§)
         {
            this.§5-§();
         }
         else
         {
            this.§9!U§();
         }
      }
      
      protected function §!!'§() : void
      {
         if(this.§<!_§ == 1 || this.§ !_§.length > 0)
         {
            return;
         }
         while(§9![§.§1`§ + (this.§"$§.x - this.§>F§) * §9![§.§+g§ > 0)
         {
            this.§"$§.x -= this.§>F§;
         }
         this.§8V§();
      }
      
      private function §8V§() : void
      {
      }
   }
}
