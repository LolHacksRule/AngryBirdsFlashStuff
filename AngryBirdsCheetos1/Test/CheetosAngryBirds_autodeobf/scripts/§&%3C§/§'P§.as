package §&<§
{
   import § !+§.§3+§;
   import §+!9§.§'!>§;
   import §,!K§.§[V§;
   import §,§.§ p§;
   import §,§.§]!f§;
   import §6;§.§%[§;
   import §94§.§,d§;
   import §9t§.§35§;
   import §9t§.§6!_§;
   import §9t§.§=!>§;
   import §]!a§.Texture;
   import §^a§.§6p§;
   import §^a§.DisplayObject;
   import §^a§.Sprite;
   import starling.events.Event;
   
   public class §'P§
   {
       
      
      protected var § true§:int;
      
      private var §0!T§:int;
      
      protected var §7!Y§:Number;
      
      private var §[@§:Boolean;
      
      protected var §8!2§:Sprite;
      
      private var §7>§:Array;
      
      private var §'K§:Boolean = true;
      
      private var §>!K§:§=!>§;
      
      private var §%u§:Sprite;
      
      private var §,V§:Sprite;
      
      public function §'P§(param1:§'!>§, param2:Sprite, param3:§=!>§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§35§ = null;
         this.§7>§ = [];
         super();
         this.§>!K§ = param3;
         this.§8!2§ = param2;
         this.§7!Y§ = param1.§@c§;
         this.§[@§ = param1.§^!8§;
         var _loc5_:Number = 1;
         if(param1.§#![§ != 0)
         {
            _loc5_ = param1.§#![§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §6!_§.§&m§(param1.mName,this.§>!K§,param1.§<C§)))
         {
            _loc7_ = (_loc13_ = param3.§=!+§(param1.mName)).pivotY;
            if(!this.§[@§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§ true§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§ true§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§-j§.bottom;
            _loc8_ = (_loc10_.§-j§.left + _loc10_.§-j§.right) / 2;
         }
         if(this.§ true§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§ true§ = Math.round(this.§ true§);
         if(param1.§!!f§)
         {
            this.§0!T§ = 2 + § p§.§=j§ * 1.5 / (this.§ true§ * param4);
         }
         else
         {
            this.§0!T§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§0!T§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §6!_§.§&m§(param1.mName,this.§>!K§,param1.§<C§);
               }
               else
               {
                  _loc10_ = new §6p§(_loc6_,false,param1.§<C§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§ true§ + (-_loc8_ * _loc5_ + param1.§,!,§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§;C§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§'!_§(param1,(_loc12_ - 1) * this.§ true§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§8!2§.addChild(_loc11_);
         if(this.§%u§)
         {
            if(this.§%u§.numChildren > 0)
            {
               this.§8!2§.addChild(this.§%u§);
            }
            else
            {
               this.§%u§.dispose();
            }
         }
         if(this.§,V§)
         {
            if(this.§,V§.numChildren > 0)
            {
               this.§8!2§.addChildAt(this.§,V§,0);
            }
            else
            {
               this.§,V§.dispose();
            }
         }
         this.§8!2§.addEventListener(Event.ADDED_TO_STAGE,this.§-!e§);
      }
      
      public function get §[!]§() : Boolean
      {
         return this.§[@§;
      }
      
      private function §'!_§(param1:§'!>§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§]!f§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§7>§)
         {
            if((_loc4_ = §,d§.§5!Z§(_loc3_.id,this.§>!K§)) && _loc4_.§ =§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§,!,§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §%[§.§6+§.add(_loc4_);
               this.§7>§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§,V§)
                  {
                     this.§,V§ = new Sprite();
                  }
                  this.§,V§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§%u§)
                  {
                     this.§%u§ = new Sprite();
                  }
                  this.§%u§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§6!9§(1 / 20);
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
         var _loc1_:§3+§ = null;
         this.§8!2§.§7!X§(0,-1,true);
         this.§8!2§.removeEventListener(Event.ADDED_TO_STAGE,this.§-!e§);
         for each(_loc1_ in this.§7>§)
         {
            §%[§.§6+§.§3f§(_loc1_);
            _loc1_.dispose();
         }
         this.§7>§ = [];
         this.§,V§ = null;
         this.§%u§ = null;
      }
      
      private function §-!e§(param1:Event) : void
      {
         this.§5l§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§7!Y§ * param1;
         this.§8!2§.x = -_loc3_;
         this.§8!2§.y = -param2;
         this.§%F§();
      }
      
      private function §5l§() : void
      {
         var _loc1_:§3+§ = null;
         if(!this.§'K§ || !this.§8!2§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§7>§)
         {
            §%[§.§6+§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §'?§() : void
      {
         var _loc1_:§3+§ = null;
         for each(_loc1_ in this.§7>§)
         {
            §%[§.§6+§.§3f§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §1L§(param1:Boolean) : void
      {
         if(param1 == this.§'K§)
         {
            return;
         }
         this.§'K§ = param1;
         if(this.§'K§)
         {
            this.§5l§();
         }
         else
         {
            this.§'?§();
         }
      }
      
      protected function §%F§() : void
      {
         if(this.§0!T§ == 1 || this.§7>§.length > 0)
         {
            return;
         }
         while(§[V§.§]!^§ + (this.§8!2§.x - this.§ true§) * §[V§.§+!>§ > 0)
         {
            this.§8!2§.x -= this.§ true§;
         }
         this.§,U§();
      }
      
      private function §,U§() : void
      {
      }
   }
}
