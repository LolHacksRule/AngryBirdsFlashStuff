package §]o§
{
   import § !%§.§0!U§;
   import § !%§.§6%§;
   import § !%§.§7!>§;
   import § !o§.§=E§;
   import § %§.§`M§;
   import § 6§.§=e§;
   import §&Y§.Texture;
   import §&c§.§%!a§;
   import §&c§.DisplayObject;
   import §&c§.Sprite;
   import §3!@§.§ s§;
   import §3!@§.§0t§;
   import §^!#§.§&!G§;
   import §^U§.§3$§;
   import starling.events.Event;
   
   public class §=1§
   {
       
      
      protected var §-S§:int;
      
      private var §1%§:int;
      
      protected var §<Q§:Number;
      
      private var §]K§:Boolean;
      
      protected var §7U§:Sprite;
      
      private var §@!#§:Array;
      
      private var §[!M§:Boolean = true;
      
      private var §9M§:§7!>§;
      
      private var §,'§:Sprite;
      
      private var §=!=§:Sprite;
      
      public function §=1§(param1:§=e§, param2:Sprite, param3:§7!>§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§0!U§ = null;
         this.§@!#§ = [];
         super();
         this.§9M§ = param3;
         this.§7U§ = param2;
         this.§<Q§ = param1.§[A§;
         this.§]K§ = param1.§%v§;
         var _loc5_:Number = 1;
         if(param1.§[2§ != 0)
         {
            _loc5_ = param1.§[2§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §6%§.§>!o§(param1.mName,this.§9M§,param1.§+!=§)))
         {
            _loc7_ = (_loc13_ = param3.§1m§(param1.mName)).pivotY;
            if(!this.§]K§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§-S§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§-S§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§`!5§.bottom;
            _loc8_ = (_loc10_.§`!5§.left + _loc10_.§`!5§.right) / 2;
         }
         if(this.§-S§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§-S§ = Math.round(this.§-S§);
         if(param1.§?!o§)
         {
            this.§1%§ = 2 + § s§.§3!i§ * 1.5 / (this.§-S§ * param4);
         }
         else
         {
            this.§1%§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§1%§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §6%§.§>!o§(param1.mName,this.§9M§,param1.§+!=§);
               }
               else
               {
                  _loc10_ = new §%!a§(_loc6_,false,param1.§+!=§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§-S§ + (-_loc8_ * _loc5_ + param1.§1!T§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§ !?§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§[G§(param1,(_loc12_ - 1) * this.§-S§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§7U§.addChild(_loc11_);
         if(this.§,'§)
         {
            if(this.§,'§.numChildren > 0)
            {
               this.§7U§.addChild(this.§,'§);
            }
            else
            {
               this.§,'§.dispose();
            }
         }
         if(this.§=!=§)
         {
            if(this.§=!=§.numChildren > 0)
            {
               this.§7U§.addChildAt(this.§=!=§,0);
            }
            else
            {
               this.§=!=§.dispose();
            }
         }
         this.§7U§.addEventListener(Event.ADDED_TO_STAGE,this.§?5§);
      }
      
      public function get §[-§() : Boolean
      {
         return this.§]K§;
      }
      
      private function §[G§(param1:§=e§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§0t§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§@!#§)
         {
            if((_loc4_ = §=E§.§=k§(_loc3_.id,this.§9M§)) && _loc4_.§5!"§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§1!T§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §`M§.§7!7§.add(_loc4_);
               this.§@!#§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§=!=§)
                  {
                     this.§=!=§ = new Sprite();
                  }
                  this.§=!=§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§,'§)
                  {
                     this.§,'§ = new Sprite();
                  }
                  this.§,'§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§@!b§(1 / 20);
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
         var _loc1_:§&!G§ = null;
         this.§7U§.§>S§(0,-1,true);
         this.§7U§.removeEventListener(Event.ADDED_TO_STAGE,this.§?5§);
         for each(_loc1_ in this.§@!#§)
         {
            §`M§.§7!7§.§!A§(_loc1_);
            _loc1_.dispose();
         }
         this.§@!#§ = [];
         this.§=!=§ = null;
         this.§,'§ = null;
      }
      
      private function §?5§(param1:Event) : void
      {
         this.§,!W§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§<Q§ * param1;
         this.§7U§.x = -_loc3_;
         this.§7U§.y = -param2;
         this.§6!V§();
      }
      
      private function §,!W§() : void
      {
         var _loc1_:§&!G§ = null;
         if(!this.§[!M§ || !this.§7U§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§@!#§)
         {
            §`M§.§7!7§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §[h§() : void
      {
         var _loc1_:§&!G§ = null;
         for each(_loc1_ in this.§@!#§)
         {
            §`M§.§7!7§.§!A§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §">§(param1:Boolean) : void
      {
         if(param1 == this.§[!M§)
         {
            return;
         }
         this.§[!M§ = param1;
         if(this.§[!M§)
         {
            this.§,!W§();
         }
         else
         {
            this.§[h§();
         }
      }
      
      protected function §6!V§() : void
      {
         if(this.§1%§ == 1 || this.§@!#§.length > 0)
         {
            return;
         }
         while(§3$§.§2!d§ + (this.§7U§.x - this.§-S§) * §3$§.§?!=§ > 0)
         {
            this.§7U§.x -= this.§-S§;
         }
         this.§,<§();
      }
      
      private function §,<§() : void
      {
      }
   }
}
