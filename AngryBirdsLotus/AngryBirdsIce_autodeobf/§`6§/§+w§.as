package §`6§
{
   import §-Z§.§?h§;
   import §0!-§.ParticleDesignerPS;
   import §1n§.§"#§;
   import §1n§.§1D§;
   import §1n§.§5#§;
   import §;!E§.§'`§;
   import §<<§.ParticleManager;
   import §[K§.§2!1§;
   import §[P§.Texture;
   import §[x§.§,S§;
   import §[x§.§2^§;
   import §^V§.§1!,§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   import starling.events.Event;
   
   public class §+w§
   {
       
      
      private var §"$§:int;
      
      private var §=H§:int;
      
      private var § true§:Number;
      
      private var §,!-§:Boolean;
      
      private var §1-§:Sprite;
      
      private var §;'§:Array;
      
      private var §1=§:Boolean = true;
      
      private var §1y§:§5#§;
      
      private var §1A§:Sprite;
      
      private var §9!7§:Sprite;
      
      public function §+w§(param1:§'`§, param2:Sprite, param3:§5#§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§1D§ = null;
         this.§;'§ = [];
         super();
         this.§1y§ = param3;
         this.§1-§ = param2;
         this.§ true§ = param1.§?!A§;
         this.§,!-§ = param1.§8!$§;
         var _loc5_:Number = 1;
         if(param1.§,&§ != 0)
         {
            _loc5_ = param1.§,&§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §"#§.§-"§(param1.mName,this.§1y§,param1.§'!E§)))
         {
            _loc7_ = (_loc13_ = param3.§,Y§(param1.mName)).pivotY;
            if(!this.§,!-§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§"$§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§"$§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§;A§.bottom;
            _loc8_ = (_loc10_.§;A§.left + _loc10_.§;A§.right) / 2;
         }
         if(this.§"$§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§"$§ = Math.round(this.§"$§);
         if(param1.§4!&§)
         {
            this.§=H§ = 2 + §2^§.§!s§ * 1.5 / (this.§"$§ * param4);
         }
         else
         {
            this.§=H§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§=H§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §"#§.§-"§(param1.mName,this.§1y§,param1.§'!E§);
               }
               else
               {
                  _loc10_ = new §1!,§(_loc6_,false,param1.§'!E§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§"$§ + (-_loc8_ * _loc5_ + param1.§8%§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§%!E§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§+U§(param1,(_loc12_ - 1) * this.§"$§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§1-§.addChild(_loc11_);
         if(this.§1A§)
         {
            if(this.§1A§.numChildren > 0)
            {
               this.§1-§.addChild(this.§1A§);
            }
            else
            {
               this.§1A§.dispose();
            }
         }
         if(this.§9!7§)
         {
            if(this.§9!7§.numChildren > 0)
            {
               this.§1-§.addChildAt(this.§9!7§,0);
            }
            else
            {
               this.§9!7§.dispose();
            }
         }
         this.§1-§.addEventListener(Event.ADDED_TO_STAGE,this.§1!G§);
      }
      
      public function get §>I§() : Boolean
      {
         return this.§,!-§;
      }
      
      private function §+U§(param1:§'`§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§,S§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§;'§)
         {
            if((_loc4_ = ParticleManager.§<!6§(_loc3_.id,this.§1y§)) && _loc4_.§3D§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§8%§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §?h§.§;B§.add(_loc4_);
               this.§;'§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§9!7§)
                  {
                     this.§9!7§ = new Sprite();
                  }
                  this.§9!7§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§1A§)
                  {
                     this.§1A§ = new Sprite();
                  }
                  this.§1A§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§[t§(1 / 20);
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
         this.§1-§.§"4§(0,-1,true);
         this.§1-§.removeEventListener(Event.ADDED_TO_STAGE,this.§1!G§);
         for each(_loc1_ in this.§;'§)
         {
            §?h§.§;B§.§60§(_loc1_);
            _loc1_.dispose();
         }
         this.§;'§ = [];
         this.§9!7§ = null;
         this.§1A§ = null;
      }
      
      private function §1!G§(param1:Event) : void
      {
         this.§@J§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§ true§ * param1;
         this.§1-§.x = -_loc3_;
         this.§1-§.y = -param2;
         this.§6!F§();
      }
      
      private function §@J§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§1=§ || !this.§1-§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§;'§)
         {
            §?h§.§;B§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function § !§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§;'§)
         {
            §?h§.§;B§.§60§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §#i§(param1:Boolean) : void
      {
         if(param1 == this.§1=§)
         {
            return;
         }
         this.§1=§ = param1;
         if(this.§1=§)
         {
            this.§@J§();
         }
         else
         {
            this.§ !§();
         }
      }
      
      private function §6!F§() : void
      {
         if(this.§=H§ == 1 || this.§;'§.length > 0)
         {
            return;
         }
         while(§2!1§.§ !B§ + (this.§1-§.x - this.§"$§) * §2!1§.§;l§ > 0)
         {
            this.§1-§.x -= this.§"$§;
         }
         this.§,!,§();
      }
      
      private function §,!,§() : void
      {
      }
   }
}
