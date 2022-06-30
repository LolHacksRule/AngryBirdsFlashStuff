package §0C§
{
   import §"!<§.Texture;
   import §%O§.§ !§;
   import §%O§.§,!R§;
   import §%O§.§=I§;
   import §'p§.§!-§;
   import §-!1§.§=!_§;
   import §0"§.§with§;
   import §8v§.§[!7§;
   import §<!-§.DisplayObject;
   import §<!-§.Sprite;
   import §<!-§.§^B§;
   import §?!5§.§2d§;
   import §^!7§.§%W§;
   import §^!7§.§^A§;
   import starling.events.Event;
   
   public class §1i§
   {
       
      
      private var §]<§:int;
      
      private var §1-§:int;
      
      private var §[W§:Number;
      
      private var §0@§:Boolean;
      
      private var §0b§:Sprite;
      
      private var §3!@§:Array;
      
      private var §@!7§:Boolean = true;
      
      private var §^4§:§ !§;
      
      private var §%!G§:Sprite;
      
      private var §7!N§:Sprite;
      
      public function §1i§(param1:§with§, param2:Sprite, param3:§ !§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§=I§ = null;
         this.§3!@§ = [];
         super();
         this.§^4§ = param3;
         this.§0b§ = param2;
         this.§[W§ = param1.§%S§;
         this.§0@§ = param1.§2-§;
         var _loc5_:Number = 1;
         if(param1.§0!^§ != 0)
         {
            _loc5_ = param1.§0!^§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §,!R§.§!"§(param1.mName,this.§^4§,param1.§@4§)))
         {
            _loc7_ = (_loc13_ = param3.§^!3§(param1.mName)).pivotY;
            if(!this.§0@§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§]<§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§]<§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§;!$§.bottom;
            _loc8_ = (_loc10_.§;!$§.left + _loc10_.§;!$§.right) / 2;
         }
         if(this.§]<§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§]<§ = Math.round(this.§]<§);
         if(param1.§6D§)
         {
            this.§1-§ = 2 + §^A§.§+2§ * 1.5 / (this.§]<§ * param4);
         }
         else
         {
            this.§1-§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§1-§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §,!R§.§!"§(param1.mName,this.§^4§,param1.§@4§);
               }
               else
               {
                  _loc10_ = new §^B§(_loc6_,false,param1.§@4§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§]<§ + (-_loc8_ * _loc5_ + param1.§'d§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§0=§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§7'§(param1,(_loc12_ - 1) * this.§]<§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§0b§.addChild(_loc11_);
         if(this.§%!G§)
         {
            if(this.§%!G§.numChildren > 0)
            {
               this.§0b§.addChild(this.§%!G§);
            }
            else
            {
               this.§%!G§.dispose();
            }
         }
         if(this.§7!N§)
         {
            if(this.§7!N§.numChildren > 0)
            {
               this.§0b§.addChildAt(this.§7!N§,0);
            }
            else
            {
               this.§7!N§.dispose();
            }
         }
         this.§0b§.addEventListener(Event.ADDED_TO_STAGE,this.§?q§);
      }
      
      public function get §9G§() : Boolean
      {
         return this.§0@§;
      }
      
      private function §7'§(param1:§with§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§%W§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§3!@§)
         {
            if((_loc4_ = §[!7§.include(_loc3_.id,this.§^4§)) && _loc4_.§5[§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§'d§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §2d§.§8e§.add(_loc4_);
               this.§3!@§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§7!N§)
                  {
                     this.§7!N§ = new Sprite();
                  }
                  this.§7!N§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§%!G§)
                  {
                     this.§%!G§ = new Sprite();
                  }
                  this.§%!G§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§'!_§(1 / 20);
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
         var _loc1_:§!-§ = null;
         this.§0b§.§9s§(0,-1,true);
         this.§0b§.removeEventListener(Event.ADDED_TO_STAGE,this.§?q§);
         for each(_loc1_ in this.§3!@§)
         {
            §2d§.§8e§.§"8§(_loc1_);
            _loc1_.dispose();
         }
         this.§3!@§ = [];
         this.§7!N§ = null;
         this.§%!G§ = null;
      }
      
      private function §?q§(param1:Event) : void
      {
         this.§4,§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§[W§ * param1;
         this.§0b§.x = -_loc3_;
         this.§0b§.y = -param2;
         this.§!1§();
      }
      
      private function §4,§() : void
      {
         var _loc1_:§!-§ = null;
         if(!this.§@!7§ || !this.§0b§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§3!@§)
         {
            §2d§.§8e§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §&!I§() : void
      {
         var _loc1_:§!-§ = null;
         for each(_loc1_ in this.§3!@§)
         {
            §2d§.§8e§.§"8§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §'!6§(param1:Boolean) : void
      {
         if(param1 == this.§@!7§)
         {
            return;
         }
         this.§@!7§ = param1;
         if(this.§@!7§)
         {
            this.§4,§();
         }
         else
         {
            this.§&!I§();
         }
      }
      
      private function §!1§() : void
      {
         if(this.§1-§ == 1 || this.§3!@§.length > 0)
         {
            return;
         }
         while(§=!_§.§0!5§ + (this.§0b§.x - this.§]<§) * §=!_§.§"b§ > 0)
         {
            this.§0b§.x -= this.§]<§;
         }
         this.§4!b§();
      }
      
      private function §4!b§() : void
      {
      }
   }
}
