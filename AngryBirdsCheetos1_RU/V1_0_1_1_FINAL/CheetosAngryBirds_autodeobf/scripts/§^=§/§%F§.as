package §^=§
{
   import §!2§.§`!2§;
   import §+![§.Texture;
   import §0V§.§-i§;
   import §0V§.§`!O§;
   import §1!"§.§!+§;
   import §3§.§4!!§;
   import §3§.DisplayObject;
   import §3§.Sprite;
   import §5!S§.§6B§;
   import §8-§.§,!P§;
   import §94§.§&!7§;
   import §`n§.§#H§;
   import §`n§.§6o§;
   import §`n§.§`1§;
   import starling.events.Event;
   
   public class §%F§
   {
       
      
      protected var §9U§:int;
      
      private var §2j§:int;
      
      protected var §&x§:Number;
      
      private var §#!]§:Boolean;
      
      protected var §;!5§:Sprite;
      
      private var §]F§:Array;
      
      private var §5!1§:Boolean = true;
      
      private var §4=§:§#H§;
      
      private var §5t§:Sprite;
      
      private var §=!K§:Sprite;
      
      public function §%F§(param1:§!+§, param2:Sprite, param3:§#H§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§6o§ = null;
         this.§]F§ = [];
         super();
         this.§4=§ = param3;
         this.§;!5§ = param2;
         this.§&x§ = param1.§&k§;
         this.§#!]§ = param1.§3L§;
         var _loc5_:Number = 1;
         if(param1.§3&§ != 0)
         {
            _loc5_ = param1.§3&§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §`1§.§;!$§(param1.mName,this.§4=§,param1.§5`§)))
         {
            _loc7_ = (_loc13_ = param3.§&3§(param1.mName)).pivotY;
            if(!this.§#!]§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§9U§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§9U§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§4!#§.bottom;
            _loc8_ = (_loc10_.§4!#§.left + _loc10_.§4!#§.right) / 2;
         }
         if(this.§9U§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§9U§ = Math.round(this.§9U§);
         if(param1.§3i§)
         {
            this.§2j§ = 2 + §`!O§.§<M§ * 1.5 / (this.§9U§ * param4);
         }
         else
         {
            this.§2j§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§2j§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §`1§.§;!$§(param1.mName,this.§4=§,param1.§5`§);
               }
               else
               {
                  _loc10_ = new §4!!§(_loc6_,false,param1.§5`§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§9U§ + (-_loc8_ * _loc5_ + param1.§6!<§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§]!O§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.include(param1,(_loc12_ - 1) * this.§9U§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§;!5§.addChild(_loc11_);
         if(this.§5t§)
         {
            if(this.§5t§.numChildren > 0)
            {
               this.§;!5§.addChild(this.§5t§);
            }
            else
            {
               this.§5t§.dispose();
            }
         }
         if(this.§=!K§)
         {
            if(this.§=!K§.numChildren > 0)
            {
               this.§;!5§.addChildAt(this.§=!K§,0);
            }
            else
            {
               this.§=!K§.dispose();
            }
         }
         this.§;!5§.addEventListener(Event.ADDED_TO_STAGE,this.§,!'§);
      }
      
      public function get §-=§() : Boolean
      {
         return this.§#!]§;
      }
      
      private function include(param1:§!+§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§-i§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§]F§)
         {
            if((_loc4_ = §`!2§.§,%§(_loc3_.id,this.§4=§)) && _loc4_.§-V§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§6!<§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §&!7§.§ h§.add(_loc4_);
               this.§]F§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§=!K§)
                  {
                     this.§=!K§ = new Sprite();
                  }
                  this.§=!K§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§5t§)
                  {
                     this.§5t§ = new Sprite();
                  }
                  this.§5t§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§]6§(1 / 20);
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
         var _loc1_:§6B§ = null;
         this.§;!5§.§"!b§(0,-1,true);
         this.§;!5§.removeEventListener(Event.ADDED_TO_STAGE,this.§,!'§);
         for each(_loc1_ in this.§]F§)
         {
            §&!7§.§ h§.§7!Y§(_loc1_);
            _loc1_.dispose();
         }
         this.§]F§ = [];
         this.§=!K§ = null;
         this.§5t§ = null;
      }
      
      private function §,!'§(param1:Event) : void
      {
         this.§@0§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§&x§ * param1;
         this.§;!5§.x = -_loc3_;
         this.§;!5§.y = -param2;
         this.§"+§();
      }
      
      private function §@0§() : void
      {
         var _loc1_:§6B§ = null;
         if(!this.§5!1§ || !this.§;!5§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§]F§)
         {
            §&!7§.§ h§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §+!c§() : void
      {
         var _loc1_:§6B§ = null;
         for each(_loc1_ in this.§]F§)
         {
            §&!7§.§ h§.§7!Y§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function § !F§(param1:Boolean) : void
      {
         if(param1 == this.§5!1§)
         {
            return;
         }
         this.§5!1§ = param1;
         if(this.§5!1§)
         {
            this.§@0§();
         }
         else
         {
            this.§+!c§();
         }
      }
      
      protected function §"+§() : void
      {
         if(this.§2j§ == 1 || this.§]F§.length > 0)
         {
            return;
         }
         while(§,!P§.§+!5§ + (this.§;!5§.x - this.§9U§) * §,!P§.§#!"§ > 0)
         {
            this.§;!5§.x -= this.§9U§;
         }
         this.§`@§();
      }
      
      private function §`@§() : void
      {
      }
   }
}
