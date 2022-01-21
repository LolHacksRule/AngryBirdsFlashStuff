package §#!G§
{
   import § !^§.Texture;
   import §&!!§.§7N§;
   import §&!!§.§<!'§;
   import §&!!§.§@!E§;
   import §&P§.§<!F§;
   import §0O§.§8Y§;
   import §2![§.DisplayObject;
   import §2![§.Sprite;
   import §2![§.§[!U§;
   import §<L§.§!!G§;
   import §<L§.§6!^§;
   import §=!K§.§do§;
   import §[!_§.§8U§;
   import §]k§.§2!'§;
   import starling.events.Event;
   
   public class §,!6§
   {
       
      
      protected var §2T§:int;
      
      private var §1!n§:int;
      
      protected var §#l§:Number;
      
      private var § !f§:Boolean;
      
      protected var §%!l§:Sprite;
      
      private var §#_§:Array;
      
      private var §8S§:Boolean = true;
      
      private var §"!,§:§<!'§;
      
      private var §<%§:Sprite;
      
      private var §[e§:Sprite;
      
      public function §,!6§(param1:§2!'§, param2:Sprite, param3:§<!'§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§7N§ = null;
         this.§#_§ = [];
         super();
         this.§"!,§ = param3;
         this.§%!l§ = param2;
         this.§#l§ = param1.§'!X§;
         this.§ !f§ = param1.§[K§;
         var _loc5_:Number = 1;
         if(param1.§6R§ != 0)
         {
            _loc5_ = param1.§6R§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §@!E§.§6!o§(param1.mName,this.§"!,§,param1.§4!g§)))
         {
            _loc7_ = (_loc13_ = param3.§^!C§(param1.mName)).pivotY;
            if(!this.§ !f§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§2T§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§2T§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§8!D§.bottom;
            _loc8_ = (_loc10_.§8!D§.left + _loc10_.§8!D§.right) / 2;
         }
         if(this.§2T§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§2T§ = Math.round(this.§2T§);
         if(param1.§9!8§)
         {
            this.§1!n§ = 2 + §!!G§.§6!c§ * 1.5 / (this.§2T§ * param4);
         }
         else
         {
            this.§1!n§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§1!n§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §@!E§.§6!o§(param1.mName,this.§"!,§,param1.§4!g§);
               }
               else
               {
                  _loc10_ = new §[!U§(_loc6_,false,param1.§4!g§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§2T§ + (-_loc8_ * _loc5_ + param1.§]l§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§5t§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§`X§(param1,(_loc12_ - 1) * this.§2T§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§%!l§.addChild(_loc11_);
         if(this.§<%§)
         {
            if(this.§<%§.numChildren > 0)
            {
               this.§%!l§.addChild(this.§<%§);
            }
            else
            {
               this.§<%§.dispose();
            }
         }
         if(this.§[e§)
         {
            if(this.§[e§.numChildren > 0)
            {
               this.§%!l§.addChildAt(this.§[e§,0);
            }
            else
            {
               this.§[e§.dispose();
            }
         }
         this.§%!l§.addEventListener(Event.ADDED_TO_STAGE,this.§1V§);
      }
      
      public function get §1r§() : Boolean
      {
         return this.§ !f§;
      }
      
      private function §`X§(param1:§2!'§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§6!^§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§#_§)
         {
            if((_loc4_ = §8Y§.§8!K§(_loc3_.id,this.§"!,§)) && _loc4_.§ else§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§]l§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §do§.§]X§.add(_loc4_);
               this.§#_§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§[e§)
                  {
                     this.§[e§ = new Sprite();
                  }
                  this.§[e§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§<%§)
                  {
                     this.§<%§ = new Sprite();
                  }
                  this.§<%§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§5!C§(1 / 20);
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
         var _loc1_:§<!F§ = null;
         this.§%!l§.§<U§(0,-1,true);
         this.§%!l§.removeEventListener(Event.ADDED_TO_STAGE,this.§1V§);
         for each(_loc1_ in this.§#_§)
         {
            §do§.§]X§.§7n§(_loc1_);
            _loc1_.dispose();
         }
         this.§#_§ = [];
         this.§[e§ = null;
         this.§<%§ = null;
      }
      
      private function §1V§(param1:Event) : void
      {
         this.§&!D§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§#l§ * param1;
         this.§%!l§.x = -_loc3_;
         this.§%!l§.y = -param2;
         this.§0d§();
      }
      
      private function §&!D§() : void
      {
         var _loc1_:§<!F§ = null;
         if(!this.§8S§ || !this.§%!l§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§#_§)
         {
            §do§.§]X§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §&!k§() : void
      {
         var _loc1_:§<!F§ = null;
         for each(_loc1_ in this.§#_§)
         {
            §do§.§]X§.§7n§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §%S§(param1:Boolean) : void
      {
         if(param1 == this.§8S§)
         {
            return;
         }
         this.§8S§ = param1;
         if(this.§8S§)
         {
            this.§&!D§();
         }
         else
         {
            this.§&!k§();
         }
      }
      
      protected function §0d§() : void
      {
         if(this.§1!n§ == 1 || this.§#_§.length > 0)
         {
            return;
         }
         while(§8U§.§[]§ + (this.§%!l§.x - this.§2T§) * §8U§.§[!E§ > 0)
         {
            this.§%!l§.x -= this.§2T§;
         }
         this.§+!f§();
      }
      
      private function §+!f§() : void
      {
      }
   }
}
