package §5!!§
{
   import §!!g§.§8d§;
   import §"v§.§5!T§;
   import §#N§.§=4§;
   import §&[§.§&!m§;
   import §&[§.§,!"§;
   import §&[§.§3!I§;
   import §,0§.§-v§;
   import §2!g§.§<7§;
   import §2!g§.DisplayObject;
   import §2!g§.Sprite;
   import §@!b§.§ !c§;
   import §@!b§.§@!k§;
   import §@j§.Texture;
   import §[!-§.§'!H§;
   import starling.events.Event;
   
   public class §77§
   {
       
      
      protected var §>8§:int;
      
      private var §@1§:int;
      
      protected var §%W§:Number;
      
      private var §1!V§:Boolean;
      
      protected var §[8§:Sprite;
      
      private var §5p§:Array;
      
      private var §9!g§:Boolean = true;
      
      private var §`k§:§&!m§;
      
      private var §!G§:Sprite;
      
      private var §!!l§:Sprite;
      
      public function §77§(param1:§=4§, param2:Sprite, param3:§&!m§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§,!"§ = null;
         this.§5p§ = [];
         super();
         this.§`k§ = param3;
         this.§[8§ = param2;
         this.§%W§ = param1.§5!h§;
         this.§1!V§ = param1.§;!2§;
         var _loc5_:Number = 1;
         if(param1.§&!U§ != 0)
         {
            _loc5_ = param1.§&!U§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §3!I§.§;n§(param1.mName,this.§`k§,param1.§#!>§)))
         {
            _loc7_ = (_loc13_ = param3.§4!0§(param1.mName)).pivotY;
            if(!this.§1!V§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§>8§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§>8§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§1!]§.bottom;
            _loc8_ = (_loc10_.§1!]§.left + _loc10_.§1!]§.right) / 2;
         }
         if(this.§>8§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§>8§ = Math.round(this.§>8§);
         if(param1.§85§)
         {
            this.§@1§ = 2 + §@!k§.§ p§ * 1.5 / (this.§>8§ * param4);
         }
         else
         {
            this.§@1§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§@1§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §3!I§.§;n§(param1.mName,this.§`k§,param1.§#!>§);
               }
               else
               {
                  _loc10_ = new §<7§(_loc6_,false,param1.§#!>§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§>8§ + (-_loc8_ * _loc5_ + param1.§6!!§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§+i§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§[!f§(param1,(_loc12_ - 1) * this.§>8§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§[8§.addChild(_loc11_);
         if(this.§!G§)
         {
            if(this.§!G§.numChildren > 0)
            {
               this.§[8§.addChild(this.§!G§);
            }
            else
            {
               this.§!G§.dispose();
            }
         }
         if(this.§!!l§)
         {
            if(this.§!!l§.numChildren > 0)
            {
               this.§[8§.addChildAt(this.§!!l§,0);
            }
            else
            {
               this.§!!l§.dispose();
            }
         }
         this.§[8§.addEventListener(Event.ADDED_TO_STAGE,this.§=9§);
      }
      
      public function get §5;§() : Boolean
      {
         return this.§1!V§;
      }
      
      private function §[!f§(param1:§=4§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§ !c§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§5p§)
         {
            if((_loc4_ = §-v§.§'8§(_loc3_.id,this.§`k§)) && _loc4_.§&!A§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§6!!§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §5!T§.§7U§.add(_loc4_);
               this.§5p§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§!!l§)
                  {
                     this.§!!l§ = new Sprite();
                  }
                  this.§!!l§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§!G§)
                  {
                     this.§!G§ = new Sprite();
                  }
                  this.§!G§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§!x§(1 / 20);
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
         var _loc1_:§'!H§ = null;
         this.§[8§.§2!m§(0,-1,true);
         this.§[8§.removeEventListener(Event.ADDED_TO_STAGE,this.§=9§);
         for each(_loc1_ in this.§5p§)
         {
            §5!T§.§7U§.§ !B§(_loc1_);
            _loc1_.dispose();
         }
         this.§5p§ = [];
         this.§!!l§ = null;
         this.§!G§ = null;
      }
      
      private function §=9§(param1:Event) : void
      {
         this.§@![§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%W§ * param1;
         this.§[8§.x = -_loc3_;
         this.§[8§.y = -param2;
         this.§6!4§();
      }
      
      private function §@![§() : void
      {
         var _loc1_:§'!H§ = null;
         if(!this.§9!g§ || !this.§[8§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§5p§)
         {
            §5!T§.§7U§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §&R§() : void
      {
         var _loc1_:§'!H§ = null;
         for each(_loc1_ in this.§5p§)
         {
            §5!T§.§7U§.§ !B§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §#!X§(param1:Boolean) : void
      {
         if(param1 == this.§9!g§)
         {
            return;
         }
         this.§9!g§ = param1;
         if(this.§9!g§)
         {
            this.§@![§();
         }
         else
         {
            this.§&R§();
         }
      }
      
      protected function §6!4§() : void
      {
         if(this.§@1§ == 1 || this.§5p§.length > 0)
         {
            return;
         }
         while(§8d§.§0x§ + (this.§[8§.x - this.§>8§) * §8d§.§=d§ > 0)
         {
            this.§[8§.x -= this.§>8§;
         }
         this.§`!H§();
      }
      
      private function §`!H§() : void
      {
      }
   }
}
