package §-R§
{
   import § !J§.§%M§;
   import § !J§.§3!Z§;
   import §!_§.§;U§;
   import §%%§.§3P§;
   import §&7§.Texture;
   import §1!D§.§<!9§;
   import §2!5§.§"O§;
   import §9`§.§#U§;
   import §9`§.§8!P§;
   import §9`§.§^p§;
   import §?!d§.§-E§;
   import §`!n§.§+i§;
   import §`!n§.DisplayObject;
   import §`!n§.Sprite;
   import starling.events.Event;
   
   public class §3$§
   {
       
      
      protected var §5_§:int;
      
      private var §+!§:int;
      
      protected var §1s§:Number;
      
      private var §^h§:Boolean;
      
      protected var §]!M§:Sprite;
      
      private var §^1§:Array;
      
      private var §,!6§:Boolean = true;
      
      private var §9k§:§#U§;
      
      private var §6I§:Sprite;
      
      private var §-'§:Sprite;
      
      public function §3$§(param1:§;U§, param2:Sprite, param3:§#U§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§8!P§ = null;
         this.§^1§ = [];
         super();
         this.§9k§ = param3;
         this.§]!M§ = param2;
         this.§1s§ = param1.§7l§;
         this.§^h§ = param1.§%7§;
         var _loc5_:Number = 1;
         if(param1.§'W§ != 0)
         {
            _loc5_ = param1.§'W§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §^p§.§9!0§(param1.mName,this.§9k§,param1.§7h§)))
         {
            _loc7_ = (_loc13_ = param3.§#P§(param1.mName)).pivotY;
            if(!this.§^h§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§5_§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§5_§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§1x§.bottom;
            _loc8_ = (_loc10_.§1x§.left + _loc10_.§1x§.right) / 2;
         }
         if(this.§5_§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§5_§ = Math.round(this.§5_§);
         if(param1.§<!H§)
         {
            this.§+!§ = 2 + §%M§.§"t§ * 1.5 / (this.§5_§ * param4);
         }
         else
         {
            this.§+!§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§+!§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §^p§.§9!0§(param1.mName,this.§9k§,param1.§7h§);
               }
               else
               {
                  _loc10_ = new §+i§(_loc6_,false,param1.§7h§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§5_§ + (-_loc8_ * _loc5_ + param1.§78§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§#!L§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§^!e§(param1,(_loc12_ - 1) * this.§5_§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§]!M§.addChild(_loc11_);
         if(this.§6I§)
         {
            if(this.§6I§.numChildren > 0)
            {
               this.§]!M§.addChild(this.§6I§);
            }
            else
            {
               this.§6I§.dispose();
            }
         }
         if(this.§-'§)
         {
            if(this.§-'§.numChildren > 0)
            {
               this.§]!M§.addChildAt(this.§-'§,0);
            }
            else
            {
               this.§-'§.dispose();
            }
         }
         this.§]!M§.addEventListener(Event.ADDED_TO_STAGE,this.§]j§);
      }
      
      public function get §]N§() : Boolean
      {
         return this.§^h§;
      }
      
      private function §^!e§(param1:§;U§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§3!Z§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§^1§)
         {
            if((_loc4_ = §"O§.§-C§(_loc3_.id,this.§9k§)) && _loc4_.§!!!§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§78§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §3P§.§;m§.add(_loc4_);
               this.§^1§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§-'§)
                  {
                     this.§-'§ = new Sprite();
                  }
                  this.§-'§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§6I§)
                  {
                     this.§6I§ = new Sprite();
                  }
                  this.§6I§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§8!_§(1 / 20);
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
         var _loc1_:§<!9§ = null;
         this.§]!M§.§&x§(0,-1,true);
         this.§]!M§.removeEventListener(Event.ADDED_TO_STAGE,this.§]j§);
         for each(_loc1_ in this.§^1§)
         {
            §3P§.§;m§.§&0§(_loc1_);
            _loc1_.dispose();
         }
         this.§^1§ = [];
         this.§-'§ = null;
         this.§6I§ = null;
      }
      
      private function §]j§(param1:Event) : void
      {
         this.§#!>§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§1s§ * param1;
         this.§]!M§.x = -_loc3_;
         this.§]!M§.y = -param2;
         this.§'J§();
      }
      
      private function §#!>§() : void
      {
         var _loc1_:§<!9§ = null;
         if(!this.§,!6§ || !this.§]!M§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§^1§)
         {
            §3P§.§;m§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §5z§() : void
      {
         var _loc1_:§<!9§ = null;
         for each(_loc1_ in this.§^1§)
         {
            §3P§.§;m§.§&0§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §95§(param1:Boolean) : void
      {
         if(param1 == this.§,!6§)
         {
            return;
         }
         this.§,!6§ = param1;
         if(this.§,!6§)
         {
            this.§#!>§();
         }
         else
         {
            this.§5z§();
         }
      }
      
      protected function §'J§() : void
      {
         if(this.§+!§ == 1 || this.§^1§.length > 0)
         {
            return;
         }
         while(§-E§.§`!8§ + (this.§]!M§.x - this.§5_§) * §-E§.§-$§ > 0)
         {
            this.§]!M§.x -= this.§5_§;
         }
         this.§4R§();
      }
      
      private function §4R§() : void
      {
      }
   }
}
