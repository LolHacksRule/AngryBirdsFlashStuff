package §2+§
{
   import § 0§.Texture;
   import § d§.§'!"§;
   import § d§.§;p§;
   import §#!f§.§9!,§;
   import §#!f§.DisplayObject;
   import §#!f§.Sprite;
   import §#F§.§2W§;
   import §,z§.§0R§;
   import §1y§.§&!B§;
   import §2!@§.§=b§;
   import §3!§.§-e§;
   import §3!§.§2!$§;
   import §3!§.§`!Z§;
   import §@!H§.§-f§;
   import starling.events.Event;
   
   public class §6!3§
   {
       
      
      protected var §else§:int;
      
      private var §#!;§:int;
      
      protected var §!!E§:Number;
      
      private var §9#§:Boolean;
      
      protected var §3![§:Sprite;
      
      private var §<!'§:Array;
      
      private var §0S§:Boolean = true;
      
      private var §-!<§:§-e§;
      
      private var §9m§:Sprite;
      
      private var §@!<§:Sprite;
      
      public function §6!3§(param1:§=b§, param2:Sprite, param3:§-e§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§2!$§ = null;
         this.§<!'§ = [];
         super();
         this.§-!<§ = param3;
         this.§3![§ = param2;
         this.§!!E§ = param1.§=v§;
         this.§9#§ = param1.§90§;
         var _loc5_:Number = 1;
         if(param1.§0!^§ != 0)
         {
            _loc5_ = param1.§0!^§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §`!Z§.§,Y§(param1.mName,this.§-!<§,param1.§]!^§)))
         {
            _loc7_ = (_loc13_ = param3.§1%§(param1.mName)).pivotY;
            if(!this.§9#§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§else§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§else§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§3!7§.bottom;
            _loc8_ = (_loc10_.§3!7§.left + _loc10_.§3!7§.right) / 2;
         }
         if(this.§else§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§else§ = Math.round(this.§else§);
         if(param1.§^!^§)
         {
            this.§#!;§ = 2 + §'!"§.§5!;§ * 1.5 / (this.§else§ * param4);
         }
         else
         {
            this.§#!;§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§#!;§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §`!Z§.§,Y§(param1.mName,this.§-!<§,param1.§]!^§);
               }
               else
               {
                  _loc10_ = new §9!,§(_loc6_,false,param1.§]!^§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§else§ + (-_loc8_ * _loc5_ + param1.§'! §);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§,!e§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§@i§(param1,(_loc12_ - 1) * this.§else§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§3![§.addChild(_loc11_);
         if(this.§9m§)
         {
            if(this.§9m§.numChildren > 0)
            {
               this.§3![§.addChild(this.§9m§);
            }
            else
            {
               this.§9m§.dispose();
            }
         }
         if(this.§@!<§)
         {
            if(this.§@!<§.numChildren > 0)
            {
               this.§3![§.addChildAt(this.§@!<§,0);
            }
            else
            {
               this.§@!<§.dispose();
            }
         }
         this.§3![§.addEventListener(Event.ADDED_TO_STAGE,this.§"o§);
      }
      
      public function get § ?§() : Boolean
      {
         return this.§9#§;
      }
      
      private function §@i§(param1:§=b§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§;p§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§<!'§)
         {
            if((_loc4_ = §0R§.§!!6§(_loc3_.id,this.§-!<§)) && _loc4_.§&P§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§'! §;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §&!B§.§[q§.add(_loc4_);
               this.§<!'§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§@!<§)
                  {
                     this.§@!<§ = new Sprite();
                  }
                  this.§@!<§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§9m§)
                  {
                     this.§9m§ = new Sprite();
                  }
                  this.§9m§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§6i§(1 / 20);
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
         var _loc1_:§2W§ = null;
         this.§3![§.§2V§(0,-1,true);
         this.§3![§.removeEventListener(Event.ADDED_TO_STAGE,this.§"o§);
         for each(_loc1_ in this.§<!'§)
         {
            §&!B§.§[q§.§6h§(_loc1_);
            _loc1_.dispose();
         }
         this.§<!'§ = [];
         this.§@!<§ = null;
         this.§9m§ = null;
      }
      
      private function §"o§(param1:Event) : void
      {
         this.§8!U§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§!!E§ * param1;
         this.§3![§.x = -_loc3_;
         this.§3![§.y = -param2;
         this.§'!G§();
      }
      
      private function §8!U§() : void
      {
         var _loc1_:§2W§ = null;
         if(!this.§0S§ || !this.§3![§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§<!'§)
         {
            §&!B§.§[q§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §>B§() : void
      {
         var _loc1_:§2W§ = null;
         for each(_loc1_ in this.§<!'§)
         {
            §&!B§.§[q§.§6h§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §,;§(param1:Boolean) : void
      {
         if(param1 == this.§0S§)
         {
            return;
         }
         this.§0S§ = param1;
         if(this.§0S§)
         {
            this.§8!U§();
         }
         else
         {
            this.§>B§();
         }
      }
      
      protected function §'!G§() : void
      {
         if(this.§#!;§ == 1 || this.§<!'§.length > 0)
         {
            return;
         }
         while(§-f§.§&!H§ + (this.§3![§.x - this.§else§) * §-f§.§%!@§ > 0)
         {
            this.§3![§.x -= this.§else§;
         }
         this.§[g§();
      }
      
      private function §[g§() : void
      {
      }
   }
}
