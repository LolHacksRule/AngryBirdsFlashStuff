package §-"N§
{
   import §!!=§.§"l§;
   import §"a§.§!"J§;
   import §%!g§.ParticleManager;
   import §'!6§.§ "E§;
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §3">§.ParticleDesignerPS;
   import §4!<§.§'!S§;
   import §4!<§.§5"<§;
   import §<5§.Texture;
   import §<T§.§?!Z§;
   import §<T§.§^"5§;
   import §<T§.§`m§;
   import §`1§.§#!#§;
   import starling.events.Event;
   
   public class §]5§
   {
       
      
      protected var §&"J§:int;
      
      private var §6!"§:int;
      
      protected var §&!b§:Number;
      
      private var §=!P§:Boolean;
      
      protected var §?!T§:Sprite;
      
      private var §?!6§:Array;
      
      private var §&!A§:Boolean = true;
      
      private var §=!2§:§`m§;
      
      private var §8!X§:Sprite;
      
      private var §9"S§:Sprite;
      
      public function §]5§(param1:§#!#§, param2:Sprite, param3:§`m§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§^"5§ = null;
         this.§?!6§ = [];
         super();
         this.§=!2§ = param3;
         this.§?!T§ = param2;
         this.§&!b§ = param1.§?E§;
         this.§=!P§ = param1.§1!U§;
         var _loc5_:Number = 1;
         if(param1.§<[§ != 0)
         {
            _loc5_ = param1.§<[§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §?!Z§.§ "8§(param1.mName,this.§=!2§,param1.§8"$§)))
         {
            _loc7_ = (_loc13_ = param3.§#!L§(param1.mName)).pivotY;
            if(!this.§=!P§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§&"J§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§&"J§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§ #§.bottom;
            _loc8_ = (_loc10_.§ #§.left + _loc10_.§ #§.right) / 2;
         }
         if(this.§&"J§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§&"J§ = Math.round(this.§&"J§);
         if(param1.§5=§)
         {
            this.§6!"§ = 2 + §'!S§.§<!@§ * 1.5 / (this.§&"J§ * param4);
         }
         else
         {
            this.§6!"§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§6!"§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §?!Z§.§ "8§(param1.mName,this.§=!2§,param1.§8"$§);
               }
               else
               {
                  _loc10_ = new § "E§(_loc6_,false,param1.§8"$§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§&"J§ + (-_loc8_ * _loc5_ + param1.§]!U§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§`" §;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§ !f§(param1,(_loc12_ - 1) * this.§&"J§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§?!T§.addChild(_loc11_);
         if(this.§8!X§)
         {
            if(this.§8!X§.numChildren > 0)
            {
               this.§?!T§.addChild(this.§8!X§);
            }
            else
            {
               this.§8!X§.dispose();
            }
         }
         if(this.§9"S§)
         {
            if(this.§9"S§.numChildren > 0)
            {
               this.§?!T§.addChildAt(this.§9"S§,0);
            }
            else
            {
               this.§9"S§.dispose();
            }
         }
         this.§?!T§.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      public function get §;T§() : Boolean
      {
         return this.§=!P§;
      }
      
      private function § !f§(param1:§#!#§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§5"<§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§?!6§)
         {
            if((_loc4_ = ParticleManager.§;!y§(_loc3_.id,this.§=!2§)) && _loc4_.§@p§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§]!U§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §!"J§.§<!C§.add(_loc4_);
               this.§?!6§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§9"S§)
                  {
                     this.§9"S§ = new Sprite();
                  }
                  this.§9"S§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§8!X§)
                  {
                     this.§8!X§ = new Sprite();
                  }
                  this.§8!X§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§ "@§(1 / 20);
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
         this.§?!T§.§<!7§(0,-1,true);
         this.§?!T§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         for each(_loc1_ in this.§?!6§)
         {
            §!"J§.§<!C§.§ !V§(_loc1_);
            _loc1_.dispose();
         }
         this.§?!6§ = [];
         this.§9"S§ = null;
         this.§8!X§ = null;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§<!i§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§&!b§ * param1;
         this.§?!T§.x = -_loc3_;
         this.§?!T§.y = -param2;
         this.§<X§();
      }
      
      private function §<!i§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§&!A§ || !this.§?!T§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§?!6§)
         {
            §!"J§.§<!C§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §^"O§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§?!6§)
         {
            §!"J§.§<!C§.§ !V§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §%"7§(param1:Boolean) : void
      {
         if(param1 == this.§&!A§)
         {
            return;
         }
         this.§&!A§ = param1;
         if(this.§&!A§)
         {
            this.§<!i§();
         }
         else
         {
            this.§^"O§();
         }
      }
      
      protected function §<X§() : void
      {
         if(this.§6!"§ == 1 || this.§?!6§.length > 0)
         {
            return;
         }
         while(§"l§.§2!N§ + (this.§?!T§.x - this.§&"J§) * §"l§.§@!>§ > 0)
         {
            this.§?!T§.x -= this.§&"J§;
         }
         this.§6E§();
      }
      
      private function §6E§() : void
      {
      }
   }
}
