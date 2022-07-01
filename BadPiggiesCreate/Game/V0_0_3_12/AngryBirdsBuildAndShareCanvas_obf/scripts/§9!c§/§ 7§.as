package §9!c§
{
   import §#I§.§1!-§;
   import §+-§.§?$§;
   import §3",§.§0"<§;
   import §=!E§.§,!`§;
   import §@!-§.§"K§;
   import §@!-§.§3"1§;
   import §@!-§.§>"&§;
   import §@!i§.§%Q§;
   import §@!i§.DisplayObject;
   import §@!i§.Sprite;
   import §@r§.§3!+§;
   import §[B§.§"d§;
   import §[B§.§7!<§;
   import §^Q§.Texture;
   import starling.events.Event;
   
   public class § 7§
   {
       
      
      protected var §@!G§:int;
      
      private var §-r§:int;
      
      protected var §+!b§:Number;
      
      private var §[!A§:Boolean;
      
      protected var §+;§:Sprite;
      
      private var §6"1§:Array;
      
      private var §?!C§:Boolean = true;
      
      private var §9!r§:§3"1§;
      
      private var §0!"§:Sprite;
      
      private var §+!r§:Sprite;
      
      public function § 7§(param1:§1!-§, param2:Sprite, param3:§3"1§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§"K§ = null;
         this.§6"1§ = [];
         super();
         this.§9!r§ = param3;
         this.§+;§ = param2;
         this.§+!b§ = param1.§"Y§;
         this.§[!A§ = param1.§84§;
         var _loc5_:Number = 1;
         if(param1.§2"§ != 0)
         {
            _loc5_ = param1.§2"§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §>"&§.§4b§(param1.mName,this.§9!r§,param1.§2"$§)))
         {
            _loc7_ = (_loc13_ = param3.§`!+§(param1.mName)).pivotY;
            if(!this.§[!A§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§@!G§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§@!G§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§=%§.bottom;
            _loc8_ = (_loc10_.§=%§.left + _loc10_.§=%§.right) / 2;
         }
         if(this.§@!G§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§@!G§ = Math.round(this.§@!G§);
         if(param1.§%^§)
         {
            this.§-r§ = 2 + §"d§.§]k§ * 1.5 / (this.§@!G§ * param4);
         }
         else
         {
            this.§-r§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§-r§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §>"&§.§4b§(param1.mName,this.§9!r§,param1.§2"$§);
               }
               else
               {
                  _loc10_ = new §%Q§(_loc6_,false,param1.§2"$§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§@!G§ + (-_loc8_ * _loc5_ + param1.§#o§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§>D§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§1!q§(param1,(_loc12_ - 1) * this.§@!G§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§+;§.addChild(_loc11_);
         if(this.§0!"§)
         {
            if(this.§0!"§.numChildren > 0)
            {
               this.§+;§.addChild(this.§0!"§);
            }
            else
            {
               this.§0!"§.dispose();
            }
         }
         if(this.§+!r§)
         {
            if(this.§+!r§.numChildren > 0)
            {
               this.§+;§.addChildAt(this.§+!r§,0);
            }
            else
            {
               this.§+!r§.dispose();
            }
         }
         this.§+;§.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      public function get § !'§() : Boolean
      {
         return this.§[!A§;
      }
      
      private function §1!q§(param1:§1!-§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§7!<§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§6"1§)
         {
            if((_loc4_ = §,!`§.§?!O§(_loc3_.id,this.§9!r§)) && _loc4_.§&!j§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§#o§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §0"<§.§1!G§.add(_loc4_);
               this.§6"1§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§+!r§)
                  {
                     this.§+!r§ = new Sprite();
                  }
                  this.§+!r§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§0!"§)
                  {
                     this.§0!"§ = new Sprite();
                  }
                  this.§0!"§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§<4§(1 / 20);
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
         var _loc1_:§?$§ = null;
         this.§+;§.removeChildren(0,-1,true);
         this.§+;§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         for each(_loc1_ in this.§6"1§)
         {
            §0"<§.§1!G§.§^!2§(_loc1_);
            _loc1_.dispose();
         }
         this.§6"1§ = [];
         this.§+!r§ = null;
         this.§0!"§ = null;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§ !_§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§+!b§ * param1;
         this.§+;§.x = -_loc3_;
         this.§+;§.y = -param2;
         this.§]!$§();
      }
      
      private function § !_§() : void
      {
         var _loc1_:§?$§ = null;
         if(!this.§?!C§ || !this.§+;§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§6"1§)
         {
            §0"<§.§1!G§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §%!]§() : void
      {
         var _loc1_:§?$§ = null;
         for each(_loc1_ in this.§6"1§)
         {
            §0"<§.§1!G§.§^!2§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §;!v§(param1:Boolean) : void
      {
         if(param1 == this.§?!C§)
         {
            return;
         }
         this.§?!C§ = param1;
         if(this.§?!C§)
         {
            this.§ !_§();
         }
         else
         {
            this.§%!]§();
         }
      }
      
      protected function §]!$§() : void
      {
         if(this.§-r§ == 1 || this.§6"1§.length > 0)
         {
            return;
         }
         while(§3!+§.§%!h§ + (this.§+;§.x - this.§@!G§) * §3!+§.§2"8§ > 0)
         {
            this.§+;§.x -= this.§@!G§;
         }
         this.§3?§();
      }
      
      private function §3?§() : void
      {
      }
   }
}
