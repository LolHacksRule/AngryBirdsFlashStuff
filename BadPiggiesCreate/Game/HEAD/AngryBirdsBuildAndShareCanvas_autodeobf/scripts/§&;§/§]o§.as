package §&;§
{
   import § <§.§ ?§;
   import §%!0§.§,4§;
   import §%!0§.§;0§;
   import §%!j§.§%K§;
   import §&z§.§'!i§;
   import §+!-§.§7"#§;
   import §+!-§.DisplayObject;
   import §+!-§.Sprite;
   import §,!g§.§"!P§;
   import §0!%§.Texture;
   import §;"7§.§+!I§;
   import §;"7§.§3"#§;
   import §;"7§.§="<§;
   import starling.events.Event;
   import §switch§.§,!!§;
   
   public class §]o§
   {
       
      
      protected var §4v§:int;
      
      private var §!k§:int;
      
      protected var §6!s§:Number;
      
      private var §]I§:Boolean;
      
      protected var § D§:Sprite;
      
      private var §5y§:Array;
      
      private var §?<§:Boolean = true;
      
      private var §7k§:§="<§;
      
      private var §?!8§:Sprite;
      
      private var §0!R§:Sprite;
      
      public function §]o§(param1:§,!!§, param2:Sprite, param3:§="<§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§+!I§ = null;
         this.§5y§ = [];
         super();
         this.§7k§ = param3;
         this.§ D§ = param2;
         this.§6!s§ = param1.§?!B§;
         this.§]I§ = param1.§0e§;
         var _loc5_:Number = 1;
         if(param1.§=9§ != 0)
         {
            _loc5_ = param1.§=9§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §3"#§.§ !&§(param1.mName,this.§7k§,param1.§`!g§)))
         {
            _loc7_ = (_loc13_ = param3.§5!!§(param1.mName)).pivotY;
            if(!this.§]I§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§4v§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§4v§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§?>§.bottom;
            _loc8_ = (_loc10_.§?>§.left + _loc10_.§?>§.right) / 2;
         }
         if(this.§4v§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§4v§ = Math.round(this.§4v§);
         if(param1.§[!=§)
         {
            this.§!k§ = 2 + §,4§.§!,§ * 1.5 / (this.§4v§ * param4);
         }
         else
         {
            this.§!k§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§!k§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §3"#§.§ !&§(param1.mName,this.§7k§,param1.§`!g§);
               }
               else
               {
                  _loc10_ = new §7"#§(_loc6_,false,param1.§`!g§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§4v§ + (-_loc8_ * _loc5_ + param1.§?d§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§1A§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§+!U§(param1,(_loc12_ - 1) * this.§4v§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§ D§.addChild(_loc11_);
         if(this.§?!8§)
         {
            if(this.§?!8§.numChildren > 0)
            {
               this.§ D§.addChild(this.§?!8§);
            }
            else
            {
               this.§?!8§.dispose();
            }
         }
         if(this.§0!R§)
         {
            if(this.§0!R§.numChildren > 0)
            {
               this.§ D§.addChildAt(this.§0!R§,0);
            }
            else
            {
               this.§0!R§.dispose();
            }
         }
         this.§ D§.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      public function get §""5§() : Boolean
      {
         return this.§]I§;
      }
      
      private function §+!U§(param1:§,!!§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§;0§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§5y§)
         {
            if((_loc4_ = §'!i§.§#G§(_loc3_.id,this.§7k§)) && _loc4_.§-z§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§?d§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §%K§.§^!d§.add(_loc4_);
               this.§5y§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§0!R§)
                  {
                     this.§0!R§ = new Sprite();
                  }
                  this.§0!R§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§?!8§)
                  {
                     this.§?!8§ = new Sprite();
                  }
                  this.§?!8§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§6K§(1 / 20);
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
         var _loc1_:§ ?§ = null;
         this.§ D§.removeChildren(0,-1,true);
         this.§ D§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         for each(_loc1_ in this.§5y§)
         {
            §%K§.§^!d§.§!!Z§(_loc1_);
            _loc1_.dispose();
         }
         this.§5y§ = [];
         this.§0!R§ = null;
         this.§?!8§ = null;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§`b§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§6!s§ * param1;
         this.§ D§.x = -_loc3_;
         this.§ D§.y = -param2;
         this.§70§();
      }
      
      private function §`b§() : void
      {
         var _loc1_:§ ?§ = null;
         if(!this.§?<§ || !this.§ D§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§5y§)
         {
            §%K§.§^!d§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function § ! §() : void
      {
         var _loc1_:§ ?§ = null;
         for each(_loc1_ in this.§5y§)
         {
            §%K§.§^!d§.§!!Z§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §?R§(param1:Boolean) : void
      {
         if(param1 == this.§?<§)
         {
            return;
         }
         this.§?<§ = param1;
         if(this.§?<§)
         {
            this.§`b§();
         }
         else
         {
            this.§ ! §();
         }
      }
      
      protected function §70§() : void
      {
         if(this.§!k§ == 1 || this.§5y§.length > 0)
         {
            return;
         }
         while(§"!P§.§2'§ + (this.§ D§.x - this.§4v§) * §"!P§.§#X§ > 0)
         {
            this.§ D§.x -= this.§4v§;
         }
         this.§[!T§();
      }
      
      private function §[!T§() : void
      {
      }
   }
}
