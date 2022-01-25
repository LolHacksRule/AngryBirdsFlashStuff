package §!5§
{
   import § F§.§3!&§;
   import §+!S§.Texture;
   import §,!Q§.§%^§;
   import §,!Q§.DisplayObject;
   import §,!Q§.Sprite;
   import §1q§.§2W§;
   import §2l§.§#!#§;
   import §2l§.§4!Q§;
   import §2l§.§]O§;
   import §4A§.§!!C§;
   import §4A§.§&_§;
   import §5j§.§"k§;
   import §[!'§.§6!'§;
   import §`! §.§,u§;
   import starling.events.Event;
   
   public class §[!V§
   {
       
      
      private var § ?§:int;
      
      private var §[I§:int;
      
      private var §`!>§:Number;
      
      private var §>!Y§:Boolean;
      
      private var §]!+§:Sprite;
      
      private var §,`§:Array;
      
      private var §5]§:Boolean = true;
      
      private var §!!@§:§]O§;
      
      private var §2S§:Sprite;
      
      private var §%+§:Sprite;
      
      public function §[!V§(param1:§,u§, param2:Sprite, param3:§]O§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§4!Q§ = null;
         this.§,`§ = [];
         super();
         this.§!!@§ = param3;
         this.§]!+§ = param2;
         this.§`!>§ = param1.§1u§;
         this.§>!Y§ = param1.§?o§;
         var _loc5_:Number = 1;
         if(param1.§^!Y§ != 0)
         {
            _loc5_ = param1.§^!Y§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §#!#§.§'S§(param1.mName,this.§!!@§,param1.§?!#§)))
         {
            _loc7_ = (_loc13_ = param3.§!v§(param1.mName)).pivotY;
            if(!this.§>!Y§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§ ?§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§ ?§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§@6§.bottom;
            _loc8_ = (_loc10_.§@6§.left + _loc10_.§@6§.right) / 2;
         }
         if(this.§ ?§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§ ?§ = Math.round(this.§ ?§);
         if(param1.§]f§)
         {
            this.§[I§ = 2 + §&_§.§ !>§ * 1.5 / (this.§ ?§ * param4);
         }
         else
         {
            this.§[I§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§[I§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §#!#§.§'S§(param1.mName,this.§!!@§,param1.§?!#§);
               }
               else
               {
                  _loc10_ = new §%^§(_loc6_,false,param1.§?!#§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§ ?§ + (-_loc8_ * _loc5_ + param1.§6a§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§@!0§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§5!6§(param1,(_loc12_ - 1) * this.§ ?§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§]!+§.addChild(_loc11_);
         if(this.§2S§)
         {
            if(this.§2S§.numChildren > 0)
            {
               this.§]!+§.addChild(this.§2S§);
            }
            else
            {
               this.§2S§.dispose();
            }
         }
         if(this.§%+§)
         {
            if(this.§%+§.numChildren > 0)
            {
               this.§]!+§.addChildAt(this.§%+§,0);
            }
            else
            {
               this.§%+§.dispose();
            }
         }
         this.§]!+§.addEventListener(Event.ADDED_TO_STAGE,this.§3_§);
      }
      
      public function get §&m§() : Boolean
      {
         return this.§>!Y§;
      }
      
      private function §5!6§(param1:§,u§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§!!C§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§,`§)
         {
            if((_loc4_ = §6!'§.§#!^§(_loc3_.id,this.§!!@§)) && _loc4_.§5v§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§6a§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §3!&§.§#6§.add(_loc4_);
               this.§,`§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§%+§)
                  {
                     this.§%+§ = new Sprite();
                  }
                  this.§%+§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§2S§)
                  {
                     this.§2S§ = new Sprite();
                  }
                  this.§2S§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§6Z§(1 / 20);
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
         var _loc1_:§"k§ = null;
         this.§]!+§.§^Y§(0,-1,true);
         this.§]!+§.removeEventListener(Event.ADDED_TO_STAGE,this.§3_§);
         for each(_loc1_ in this.§,`§)
         {
            §3!&§.§#6§.§`C§(_loc1_);
            _loc1_.dispose();
         }
         this.§,`§ = [];
         this.§%+§ = null;
         this.§2S§ = null;
      }
      
      private function §3_§(param1:Event) : void
      {
         this.§1X§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§`!>§ * param1;
         this.§]!+§.x = -_loc3_;
         this.§]!+§.y = -param2;
         this.§=!X§();
      }
      
      private function §1X§() : void
      {
         var _loc1_:§"k§ = null;
         if(!this.§5]§ || !this.§]!+§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§,`§)
         {
            §3!&§.§#6§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §<!A§() : void
      {
         var _loc1_:§"k§ = null;
         for each(_loc1_ in this.§,`§)
         {
            §3!&§.§#6§.§`C§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §^T§(param1:Boolean) : void
      {
         if(param1 == this.§5]§)
         {
            return;
         }
         this.§5]§ = param1;
         if(this.§5]§)
         {
            this.§1X§();
         }
         else
         {
            this.§<!A§();
         }
      }
      
      private function §=!X§() : void
      {
         if(this.§[I§ == 1 || this.§,`§.length > 0)
         {
            return;
         }
         while(§2W§.§%!;§ + (this.§]!+§.x - this.§ ?§) * §2W§.§2!V§ > 0)
         {
            this.§]!+§.x -= this.§ ?§;
         }
         this.§<U§();
      }
      
      private function §<U§() : void
      {
      }
   }
}
