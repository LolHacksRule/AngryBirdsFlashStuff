package §=!Y§
{
   import §%!t§.§[![§;
   import §-N§.§=!]§;
   import §7q§.§0!§;
   import §7q§.DisplayObject;
   import §7q§.Sprite;
   import §8Y§.Texture;
   import §;!<§.§7!f§;
   import §;!<§.§<!D§;
   import §;!<§.§^$§;
   import §<!x§.§2#§;
   import §=H§.§1!H§;
   import §=b§.§-!K§;
   import §=b§.§=!B§;
   import §@!N§.§2i§;
   import starling.events.Event;
   
   public class §2" §
   {
       
      
      protected var §7!#§:int;
      
      private var §^0§:int;
      
      protected var §^B§:Number;
      
      private var §44§:Boolean;
      
      protected var §5H§:Sprite;
      
      private var §1"8§:Array;
      
      private var §;z§:Boolean = true;
      
      private var §0<§:§7!f§;
      
      private var §8!X§:Sprite;
      
      private var §>!4§:Sprite;
      
      public function §2" §(param1:§2#§, param2:Sprite, param3:§7!f§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§<!D§ = null;
         this.§1"8§ = [];
         super();
         this.§0<§ = param3;
         this.§5H§ = param2;
         this.§^B§ = param1.§7^§;
         this.§44§ = param1.§ !L§;
         var _loc5_:Number = 1;
         if(param1.§`"§ != 0)
         {
            _loc5_ = param1.§`"§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §^$§.§2!v§(param1.mName,this.§0<§,param1.§5![§)))
         {
            _loc7_ = (_loc13_ = param3.§>",§(param1.mName)).pivotY;
            if(!this.§44§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§7!#§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§7!#§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§2!"§.bottom;
            _loc8_ = (_loc10_.§2!"§.left + _loc10_.§2!"§.right) / 2;
         }
         if(this.§7!#§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§7!#§ = Math.round(this.§7!#§);
         if(param1.§8!s§)
         {
            this.§^0§ = 2 + §-!K§.§"C§ * 1.5 / (this.§7!#§ * param4);
         }
         else
         {
            this.§^0§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§^0§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §^$§.§2!v§(param1.mName,this.§0<§,param1.§5![§);
               }
               else
               {
                  _loc10_ = new §0!§(_loc6_,false,param1.§5![§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§7!#§ + (-_loc8_ * _loc5_ + param1.§+!'§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§%!v§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§]!M§(param1,(_loc12_ - 1) * this.§7!#§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§5H§.addChild(_loc11_);
         if(this.§8!X§)
         {
            if(this.§8!X§.numChildren > 0)
            {
               this.§5H§.addChild(this.§8!X§);
            }
            else
            {
               this.§8!X§.dispose();
            }
         }
         if(this.§>!4§)
         {
            if(this.§>!4§.numChildren > 0)
            {
               this.§5H§.addChildAt(this.§>!4§,0);
            }
            else
            {
               this.§>!4§.dispose();
            }
         }
         this.§5H§.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      public function get §=X§() : Boolean
      {
         return this.§44§;
      }
      
      private function §]!M§(param1:§2#§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§=!B§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§1"8§)
         {
            if((_loc4_ = §[![§.§>!W§(_loc3_.id,this.§0<§)) && _loc4_.§ var§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§+!'§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §=!]§.§@!,§.add(_loc4_);
               this.§1"8§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§>!4§)
                  {
                     this.§>!4§ = new Sprite();
                  }
                  this.§>!4§.addChild(_loc4_);
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
                  _loc4_.§<!5§(1 / 20);
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
         var _loc1_:§1!H§ = null;
         this.§5H§.removeChildren(0,-1,true);
         this.§5H§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         for each(_loc1_ in this.§1"8§)
         {
            §=!]§.§@!,§.§#@§(_loc1_);
            _loc1_.dispose();
         }
         this.§1"8§ = [];
         this.§>!4§ = null;
         this.§8!X§ = null;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§^V§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§^B§ * param1;
         this.§5H§.x = -_loc3_;
         this.§5H§.y = -param2;
         this.§4"+§();
      }
      
      private function §^V§() : void
      {
         var _loc1_:§1!H§ = null;
         if(!this.§;z§ || !this.§5H§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§1"8§)
         {
            §=!]§.§@!,§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §%o§() : void
      {
         var _loc1_:§1!H§ = null;
         for each(_loc1_ in this.§1"8§)
         {
            §=!]§.§@!,§.§#@§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §"l§(param1:Boolean) : void
      {
         if(param1 == this.§;z§)
         {
            return;
         }
         this.§;z§ = param1;
         if(this.§;z§)
         {
            this.§^V§();
         }
         else
         {
            this.§%o§();
         }
      }
      
      protected function §4"+§() : void
      {
         if(this.§^0§ == 1 || this.§1"8§.length > 0)
         {
            return;
         }
         while(§2i§.§0c§ + (this.§5H§.x - this.§7!#§) * §2i§.§0Z§ > 0)
         {
            this.§5H§.x -= this.§7!#§;
         }
         this.§[!<§();
      }
      
      private function §[!<§() : void
      {
      }
   }
}
