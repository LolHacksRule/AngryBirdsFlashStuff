package §-Y§
{
   import § !K§.§5+§;
   import § !K§.DisplayObject;
   import § !K§.Sprite;
   import §"![§.Texture;
   import §1q§.§2W§;
   import §30§.§3[§;
   import §4A§.§&_§;
   import §4A§.§4!2§;
   import §6l§.§79§;
   import §9!Y§.§!q§;
   import §9!Y§.§"#§;
   import §9!Y§.§'S§;
   import §<!M§.§'x§;
   import §`! §.§,u§;
   import starling.events.Event;
   
   public class §&m§
   {
       
      
      private var §5!6§:int;
      
      private var §1X§:int;
      
      private var §<!A§:Number;
      
      private var §=!X§:Boolean;
      
      private var §]!+§:Sprite;
      
      private var §,`§:Array;
      
      private var §<U§:Boolean = true;
      
      private var §!!@§:§!q§;
      
      private var §,!0§:Sprite;
      
      private var §-4§:Sprite;
      
      public function §&m§(param1:§,u§, param2:Sprite, param3:§!q§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§"#§ = null;
         this.§,`§ = [];
         super();
         this.§!!@§ = param3;
         this.§]!+§ = param2;
         this.§<!A§ = param1.§1u§;
         this.§=!X§ = param1.§?o§;
         var _loc5_:Number = 1;
         if(param1.§ 6§ != 0)
         {
            _loc5_ = param1.§ 6§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §'S§.§;6§(param1.mName,this.§!!@§,param1.§?!#§)))
         {
            _loc7_ = (_loc13_ = param3.§?!&§(param1.mName)).pivotY;
            if(!this.§=!X§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§5!6§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§5!6§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§3!'§.bottom;
            _loc8_ = (_loc10_.§3!'§.left + _loc10_.§3!'§.right) / 2;
         }
         if(this.§5!6§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§5!6§ = Math.round(this.§5!6§);
         if(param1.§]f§)
         {
            this.§1X§ = 2 + §&_§.§ !>§ * 1.5 / (this.§5!6§ * param4);
         }
         else
         {
            this.§1X§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§1X§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §'S§.§;6§(param1.mName,this.§!!@§,param1.§?!#§);
               }
               else
               {
                  _loc10_ = new §5+§(_loc6_,false,param1.§?!#§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§5!6§ + (-_loc8_ * _loc5_ + param1.§6a§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§@!0§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§#R§(param1,(_loc12_ - 1) * this.§5!6§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§]!+§.addChild(_loc11_);
         if(this.§,!0§)
         {
            if(this.§,!0§.numChildren > 0)
            {
               this.§]!+§.addChild(this.§,!0§);
            }
            else
            {
               this.§,!0§.dispose();
            }
         }
         if(this.§-4§)
         {
            if(this.§-4§.numChildren > 0)
            {
               this.§]!+§.addChildAt(this.§-4§,0);
            }
            else
            {
               this.§-4§.dispose();
            }
         }
         this.§]!+§.addEventListener(Event.ADDED_TO_STAGE,this.§3_§);
      }
      
      public function get §'!_§() : Boolean
      {
         return this.§=!X§;
      }
      
      private function §#R§(param1:§,u§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§4!2§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§,`§)
         {
            if((_loc4_ = §'x§.§?<§(_loc3_.id,this.§!!@§)) && _loc4_.§>3§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§6a§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §79§.§%!H§.add(_loc4_);
               this.§,`§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§-4§)
                  {
                     this.§-4§ = new Sprite();
                  }
                  this.§-4§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§,!0§)
                  {
                     this.§,!0§ = new Sprite();
                  }
                  this.§,!0§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§%!D§(1 / 20);
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
         var _loc1_:§3[§ = null;
         this.§]!+§.§5W§(0,-1,true);
         this.§]!+§.removeEventListener(Event.ADDED_TO_STAGE,this.§3_§);
         for each(_loc1_ in this.§,`§)
         {
            §79§.§%!H§.§+Z§(_loc1_);
            _loc1_.dispose();
         }
         this.§,`§ = [];
         this.§-4§ = null;
         this.§,!0§ = null;
      }
      
      private function §3_§(param1:Event) : void
      {
         this.§<Q§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§<!A§ * param1;
         this.§]!+§.x = -_loc3_;
         this.§]!+§.y = -param2;
         this.§->§();
      }
      
      private function §<Q§() : void
      {
         var _loc1_:§3[§ = null;
         if(!this.§<U§ || !this.§]!+§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§,`§)
         {
            §79§.§%!H§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §-<§() : void
      {
         var _loc1_:§3[§ = null;
         for each(_loc1_ in this.§,`§)
         {
            §79§.§%!H§.§+Z§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §^T§(param1:Boolean) : void
      {
         if(param1 == this.§<U§)
         {
            return;
         }
         this.§<U§ = param1;
         if(this.§<U§)
         {
            this.§<Q§();
         }
         else
         {
            this.§-<§();
         }
      }
      
      private function §->§() : void
      {
         if(this.§1X§ == 1 || this.§,`§.length > 0)
         {
            return;
         }
         while(§2W§.§%!;§ + (this.§]!+§.x - this.§5!6§) * §2W§.§2!V§ > 0)
         {
            this.§]!+§.x -= this.§5!6§;
         }
         this.§9!'§();
      }
      
      private function §9!'§() : void
      {
      }
   }
}
