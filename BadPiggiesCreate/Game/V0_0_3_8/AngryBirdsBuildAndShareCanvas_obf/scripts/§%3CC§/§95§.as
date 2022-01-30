package §<C§
{
   import § !V§.§!5§;
   import § !V§.§7!P§;
   import § !V§.§=!g§;
   import §!g§.§`j§;
   import §%h§.§4N§;
   import §%h§.§5X§;
   import §+!=§.§ !m§;
   import §0!F§.§^d§;
   import §3!U§.Texture;
   import §>!0§.§%!a§;
   import §>0§.§'L§;
   import §]!2§.§,!n§;
   import §]!2§.DisplayObject;
   import §]!2§.Sprite;
   import starling.events.Event;
   
   public class §95§
   {
       
      
      protected var §5!a§:int;
      
      private var §]!;§:int;
      
      protected var §`!S§:Number;
      
      private var §8!e§:Boolean;
      
      protected var §`!-§:Sprite;
      
      private var §>5§:Array;
      
      private var §5?§:Boolean = true;
      
      private var § d§:§7!P§;
      
      private var §'q§:Sprite;
      
      private var §>P§:Sprite;
      
      public function §95§(param1:§`j§, param2:Sprite, param3:§7!P§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§=!g§ = null;
         this.§>5§ = [];
         super();
         this.§ d§ = param3;
         this.§`!-§ = param2;
         this.§`!S§ = param1.§7Z§;
         this.§8!e§ = param1.§-"-§;
         var _loc5_:Number = 1;
         if(param1.§?V§ != 0)
         {
            _loc5_ = param1.§?V§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §!5§.§ !q§(param1.mName,this.§ d§,param1.§!"#§)))
         {
            _loc7_ = (_loc13_ = param3.§&I§(param1.mName)).pivotY;
            if(!this.§8!e§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§5!a§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§5!a§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§2!5§.bottom;
            _loc8_ = (_loc10_.§2!5§.left + _loc10_.§2!5§.right) / 2;
         }
         if(this.§5!a§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§5!a§ = Math.round(this.§5!a§);
         if(param1.§3]§)
         {
            this.§]!;§ = 2 + §5X§.§5"'§ * 1.5 / (this.§5!a§ * param4);
         }
         else
         {
            this.§]!;§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§]!;§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §!5§.§ !q§(param1.mName,this.§ d§,param1.§!"#§);
               }
               else
               {
                  _loc10_ = new §,!n§(_loc6_,false,param1.§!"#§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§5!a§ + (-_loc8_ * _loc5_ + param1.§ !_§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§%!x§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§3Q§(param1,(_loc12_ - 1) * this.§5!a§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§`!-§.addChild(_loc11_);
         if(this.§'q§)
         {
            if(this.§'q§.numChildren > 0)
            {
               this.§`!-§.addChild(this.§'q§);
            }
            else
            {
               this.§'q§.dispose();
            }
         }
         if(this.§>P§)
         {
            if(this.§>P§.numChildren > 0)
            {
               this.§`!-§.addChildAt(this.§>P§,0);
            }
            else
            {
               this.§>P§.dispose();
            }
         }
         this.§`!-§.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      public function get §=!e§() : Boolean
      {
         return this.§8!e§;
      }
      
      private function §3Q§(param1:§`j§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§4N§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§>5§)
         {
            if((_loc4_ = §%!a§.§?E§(_loc3_.id,this.§ d§)) && _loc4_.§9%§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§ !_§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §^d§.§,"'§.add(_loc4_);
               this.§>5§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§>P§)
                  {
                     this.§>P§ = new Sprite();
                  }
                  this.§>P§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§'q§)
                  {
                     this.§'q§ = new Sprite();
                  }
                  this.§'q§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§;!p§(1 / 20);
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
         var _loc1_:§ !m§ = null;
         this.§`!-§.removeChildren(0,-1,true);
         this.§`!-§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         for each(_loc1_ in this.§>5§)
         {
            §^d§.§,"'§.§22§(_loc1_);
            _loc1_.dispose();
         }
         this.§>5§ = [];
         this.§>P§ = null;
         this.§'q§ = null;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§throw§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§`!S§ * param1;
         this.§`!-§.x = -_loc3_;
         this.§`!-§.y = -param2;
         this.§=!m§();
      }
      
      private function §throw§() : void
      {
         var _loc1_:§ !m§ = null;
         if(!this.§5?§ || !this.§`!-§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§>5§)
         {
            §^d§.§,"'§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §7!J§() : void
      {
         var _loc1_:§ !m§ = null;
         for each(_loc1_ in this.§>5§)
         {
            §^d§.§,"'§.§22§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §4s§(param1:Boolean) : void
      {
         if(param1 == this.§5?§)
         {
            return;
         }
         this.§5?§ = param1;
         if(this.§5?§)
         {
            this.§throw§();
         }
         else
         {
            this.§7!J§();
         }
      }
      
      protected function §=!m§() : void
      {
         if(this.§]!;§ == 1 || this.§>5§.length > 0)
         {
            return;
         }
         while(§'L§.§42§ + (this.§`!-§.x - this.§5!a§) * §'L§.§9K§ > 0)
         {
            this.§`!-§.x -= this.§5!a§;
         }
         this.§"" §();
      }
      
      private function §"" §() : void
      {
      }
   }
}
