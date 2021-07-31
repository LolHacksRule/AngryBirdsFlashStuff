package §!j§
{
   import §&o§.§?T§;
   import §&o§.DisplayObject;
   import §&o§.Sprite;
   import §0! §.Texture;
   import §2!,§.§++§;
   import §2k§.§`n§;
   import §6A§.§ !§;
   import §6A§.§9Q§;
   import §8§.ParticleManager;
   import §9K§.§,z§;
   import §9K§.§4!<§;
   import §9K§.§5!H§;
   import §=!0§.§>I§;
   import §`6§.ParticleDesignerPS;
   import starling.events.Event;
   
   public class §5M§
   {
       
      
      protected var §,g§:int;
      
      private var §-D§:int;
      
      protected var §%!%§:Number;
      
      private var §!a§:Boolean;
      
      protected var §,!7§:Sprite;
      
      private var §0x§:Array;
      
      private var §0%§:Boolean = true;
      
      private var §-M§:§5!H§;
      
      private var §0B§:Sprite;
      
      private var §4!H§:Sprite;
      
      public function §5M§(param1:§++§, param2:Sprite, param3:§5!H§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§,z§ = null;
         this.§0x§ = [];
         super();
         this.§-M§ = param3;
         this.§,!7§ = param2;
         this.§%!%§ = param1.§5!G§;
         this.§!a§ = param1.§^!5§;
         var _loc5_:Number = 1;
         if(param1.§-_§ != 0)
         {
            _loc5_ = param1.§-_§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §4!<§.§6!<§(param1.mName,this.§-M§,param1.§2X§)))
         {
            _loc7_ = (_loc13_ = param3.§3!'§(param1.mName)).pivotY;
            if(!this.§!a§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§,g§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§,g§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§4U§.bottom;
            _loc8_ = (_loc10_.§4U§.left + _loc10_.§4U§.right) / 2;
         }
         if(this.§,g§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§,g§ = Math.round(this.§,g§);
         if(param1.§&g§)
         {
            this.§-D§ = 2 + § !§.§,!=§ * 1.5 / (this.§,g§ * param4);
         }
         else
         {
            this.§-D§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§-D§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §4!<§.§6!<§(param1.mName,this.§-M§,param1.§2X§);
               }
               else
               {
                  _loc10_ = new §?T§(_loc6_,false,param1.§2X§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§,g§ + (-_loc8_ * _loc5_ + param1.§%#§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§3"§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§]N§(param1,(_loc12_ - 1) * this.§,g§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§,!7§.addChild(_loc11_);
         if(this.§0B§)
         {
            if(this.§0B§.numChildren > 0)
            {
               this.§,!7§.addChild(this.§0B§);
            }
            else
            {
               this.§0B§.dispose();
            }
         }
         if(this.§4!H§)
         {
            if(this.§4!H§.numChildren > 0)
            {
               this.§,!7§.addChildAt(this.§4!H§,0);
            }
            else
            {
               this.§4!H§.dispose();
            }
         }
         this.§,!7§.addEventListener(Event.ADDED_TO_STAGE,this.§!!0§);
      }
      
      public function get § R§() : Boolean
      {
         return this.§!a§;
      }
      
      private function §]N§(param1:§++§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§9Q§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§0x§)
         {
            if((_loc4_ = ParticleManager.§@!0§(_loc3_.id,this.§-M§)) && _loc4_.§`+§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§%#§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §>I§.§2!@§.add(_loc4_);
               this.§0x§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§4!H§)
                  {
                     this.§4!H§ = new Sprite();
                  }
                  this.§4!H§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§0B§)
                  {
                     this.§0B§ = new Sprite();
                  }
                  this.§0B§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§9!8§(1 / 20);
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
         var _loc1_:ParticleDesignerPS = null;
         this.§,!7§.§]?§(0,-1,true);
         this.§,!7§.removeEventListener(Event.ADDED_TO_STAGE,this.§!!0§);
         for each(_loc1_ in this.§0x§)
         {
            §>I§.§2!@§.§<!A§(_loc1_);
            _loc1_.dispose();
         }
         this.§0x§ = [];
         this.§4!H§ = null;
         this.§0B§ = null;
      }
      
      private function §!!0§(param1:Event) : void
      {
         this.§@!4§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%!%§ * param1;
         this.§,!7§.x = -_loc3_;
         this.§,!7§.y = -param2;
         this.§7[§();
      }
      
      private function §@!4§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§0%§ || !this.§,!7§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§0x§)
         {
            §>I§.§2!@§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §-n§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§0x§)
         {
            §>I§.§2!@§.§<!A§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §9C§(param1:Boolean) : void
      {
         if(param1 == this.§0%§)
         {
            return;
         }
         this.§0%§ = param1;
         if(this.§0%§)
         {
            this.§@!4§();
         }
         else
         {
            this.§-n§();
         }
      }
      
      protected function §7[§() : void
      {
         if(this.§-D§ == 1 || this.§0x§.length > 0)
         {
            return;
         }
         while(§`n§.§!!7§ + (this.§,!7§.x - this.§,g§) * §`n§.§&"§ > 0)
         {
            this.§,!7§.x -= this.§,g§;
         }
         this.§]A§();
      }
      
      private function §]A§() : void
      {
      }
   }
}
