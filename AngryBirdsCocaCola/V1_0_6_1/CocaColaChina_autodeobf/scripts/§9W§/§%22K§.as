package §9W§
{
   import §!w§.§?!Y§;
   import §'!S§.§]!F§;
   import §+N§.§=!+§;
   import §+N§.§=u§;
   import §+N§.§``§;
   import §2!G§.§1i§;
   import §2!G§.§2!V§;
   import §9]§.§9J§;
   import §<!$§.DisplayObject;
   import §<!$§.Sprite;
   import §<!$§.§[!5§;
   import §>!9§.§,!C§;
   import §@!C§.§#C§;
   import §@'§.Texture;
   import starling.events.Event;
   
   public class §"K§
   {
       
      
      private var §9!,§:int;
      
      private var §9!-§:int;
      
      private var §3&§:Number;
      
      private var §4U§:Boolean;
      
      private var §1!?§:Sprite;
      
      private var §,!K§:Array;
      
      private var §2!F§:Boolean = true;
      
      private var §!v§:§``§;
      
      private var §9!W§:Sprite;
      
      private var §,7§:Sprite;
      
      public function §"K§(param1:§?!Y§, param2:Sprite, param3:§``§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§=!+§ = null;
         this.§,!K§ = [];
         super();
         this.§!v§ = param3;
         this.§1!?§ = param2;
         this.§3&§ = param1.§%a§;
         this.§4U§ = param1.§"!9§;
         var _loc5_:Number = 1;
         if(param1.§3!T§ != 0)
         {
            _loc5_ = param1.§3!T§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §=u§.§9!2§(param1.mName,this.§!v§,param1.§6Y§)))
         {
            _loc7_ = (_loc13_ = param3.§-!V§(param1.mName)).pivotY;
            if(!this.§4U§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§9!,§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§9!,§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§#e§.bottom;
            _loc8_ = (_loc10_.§#e§.left + _loc10_.§#e§.right) / 2;
         }
         if(this.§9!,§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§9!,§ = Math.round(this.§9!,§);
         if(param1.§ !9§)
         {
            this.§9!-§ = 2 + §2!V§.§-!>§ * 1.5 / (this.§9!,§ * param4);
         }
         else
         {
            this.§9!-§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§9!-§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §=u§.§9!2§(param1.mName,this.§!v§,param1.§6Y§);
               }
               else
               {
                  _loc10_ = new §[!5§(_loc6_,false,param1.§6Y§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§9!,§ + (-_loc8_ * _loc5_ + param1.§9!X§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§-!K§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§'D§(param1,(_loc12_ - 1) * this.§9!,§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§1!?§.addChild(_loc11_);
         if(this.§9!W§)
         {
            if(this.§9!W§.numChildren > 0)
            {
               this.§1!?§.addChild(this.§9!W§);
            }
            else
            {
               this.§9!W§.dispose();
            }
         }
         if(this.§,7§)
         {
            if(this.§,7§.numChildren > 0)
            {
               this.§1!?§.addChildAt(this.§,7§,0);
            }
            else
            {
               this.§,7§.dispose();
            }
         }
         this.§1!?§.addEventListener(Event.ADDED_TO_STAGE,this.§0r§);
      }
      
      public function get §6;§() : Boolean
      {
         return this.§4U§;
      }
      
      private function §'D§(param1:§?!Y§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§1i§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§,!K§)
         {
            if((_loc4_ = §,!C§.§,o§(_loc3_.id,this.§!v§)) && _loc4_.§ !-§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§9!X§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §9J§.§!L§.add(_loc4_);
               this.§,!K§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§,7§)
                  {
                     this.§,7§ = new Sprite();
                  }
                  this.§,7§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§9!W§)
                  {
                     this.§9!W§ = new Sprite();
                  }
                  this.§9!W§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§28§(1 / 20);
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
         var _loc1_:§]!F§ = null;
         this.§1!?§.§4!>§(0,-1,true);
         this.§1!?§.removeEventListener(Event.ADDED_TO_STAGE,this.§0r§);
         for each(_loc1_ in this.§,!K§)
         {
            §9J§.§!L§.§`!§(_loc1_);
            _loc1_.dispose();
         }
         this.§,!K§ = [];
         this.§,7§ = null;
         this.§9!W§ = null;
      }
      
      private function §0r§(param1:Event) : void
      {
         this.§!$§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§3&§ * param1;
         this.§1!?§.x = -_loc3_;
         this.§1!?§.y = -param2;
         this.§"X§();
      }
      
      private function §!$§() : void
      {
         var _loc1_:§]!F§ = null;
         if(!this.§2!F§ || !this.§1!?§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§,!K§)
         {
            §9J§.§!L§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §8O§() : void
      {
         var _loc1_:§]!F§ = null;
         for each(_loc1_ in this.§,!K§)
         {
            §9J§.§!L§.§`!§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §!!`§(param1:Boolean) : void
      {
         if(param1 == this.§2!F§)
         {
            return;
         }
         this.§2!F§ = param1;
         if(this.§2!F§)
         {
            this.§!$§();
         }
         else
         {
            this.§8O§();
         }
      }
      
      private function §"X§() : void
      {
         if(this.§9!-§ == 1 || this.§,!K§.length > 0)
         {
            return;
         }
         while(§#C§.§[x§ + (this.§1!?§.x - this.§9!,§) * §#C§.§#`§ > 0)
         {
            this.§1!?§.x -= this.§9!,§;
         }
         this.§7B§();
      }
      
      private function §7B§() : void
      {
      }
   }
}
