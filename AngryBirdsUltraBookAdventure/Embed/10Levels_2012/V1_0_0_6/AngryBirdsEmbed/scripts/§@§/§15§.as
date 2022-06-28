package §@§
{
   import §'%§.ParticleManager;
   import §,_§.§4K§;
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   import §3G§.§ +§;
   import §3G§.§!E§;
   import §3c§.§^z§;
   import §5`§.§%F§;
   import §5`§.§49§;
   import §5`§.§?y§;
   import §7!=§.Texture;
   import §8!>§.§7!4§;
   import §>!H§.ParticleDesignerPS;
   import §catch§.§4@§;
   import starling.events.Event;
   
   public class §15§
   {
       
      
      private var §%%§:int;
      
      private var §>-§:int;
      
      private var §=l§:Number;
      
      private var §8W§:Boolean;
      
      private var §62§:Sprite;
      
      private var §9'§:Array;
      
      private var §5K§:Boolean = true;
      
      private var §^S§:§?y§;
      
      private var §@N§:Sprite;
      
      private var §0!4§:Sprite;
      
      public function §15§(param1:§7!4§, param2:Sprite, param3:§?y§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§%F§ = null;
         this.§9'§ = [];
         super();
         this.§^S§ = param3;
         this.§62§ = param2;
         this.§=l§ = param1.§#A§;
         this.§8W§ = param1.§94§;
         var _loc5_:Number = 1;
         if(param1.§]H§ != 0)
         {
            _loc5_ = param1.§]H§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §49§.§"4§(param1.mName,this.§^S§,param1.§8J§)))
         {
            _loc7_ = (_loc13_ = param3.§9,§(param1.mName)).pivotY;
            if(!this.§8W§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§%%§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§%%§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§4!1§.bottom;
            _loc8_ = (_loc10_.§4!1§.left + _loc10_.§4!1§.right) / 2;
         }
         if(this.§%%§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§%%§ = Math.round(this.§%%§);
         if(param1.§ !"§)
         {
            this.§>-§ = 2 + §!E§.§2C§ * 1.5 / (this.§%%§ * param4);
         }
         else
         {
            this.§>-§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§>-§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §49§.§"4§(param1.mName,this.§^S§,param1.§8J§);
               }
               else
               {
                  _loc10_ = new §4K§(_loc6_,false,param1.§8J§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§%%§ + (-_loc8_ * _loc5_ + param1.§6_§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§;!"§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§>!7§(param1,(_loc12_ - 1) * this.§%%§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§62§.addChild(_loc11_);
         if(this.§@N§)
         {
            if(this.§@N§.numChildren > 0)
            {
               this.§62§.addChild(this.§@N§);
            }
            else
            {
               this.§@N§.dispose();
            }
         }
         if(this.§0!4§)
         {
            if(this.§0!4§.numChildren > 0)
            {
               this.§62§.addChildAt(this.§0!4§,0);
            }
            else
            {
               this.§0!4§.dispose();
            }
         }
         this.§62§.addEventListener(Event.ADDED_TO_STAGE,this.§ null§);
      }
      
      public function get §6i§() : Boolean
      {
         return this.§8W§;
      }
      
      private function §>!7§(param1:§7!4§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§ +§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§9'§)
         {
            if((_loc4_ = ParticleManager.§1!>§(_loc3_.id,this.§^S§)) && _loc4_.§>m§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§6_§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §4@§.§&R§.add(_loc4_);
               this.§9'§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§0!4§)
                  {
                     this.§0!4§ = new Sprite();
                  }
                  this.§0!4§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§@N§)
                  {
                     this.§@N§ = new Sprite();
                  }
                  this.§@N§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§"!D§(1 / 20);
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
         this.§62§.§`Y§(0,-1,true);
         this.§62§.removeEventListener(Event.ADDED_TO_STAGE,this.§ null§);
         for each(_loc1_ in this.§9'§)
         {
            §4@§.§&R§.§4O§(_loc1_);
            _loc1_.dispose();
         }
         this.§9'§ = [];
         this.§0!4§ = null;
         this.§@N§ = null;
      }
      
      private function § null§(param1:Event) : void
      {
         this.§^,§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§=l§ * param1;
         this.§62§.x = -_loc3_;
         this.§62§.y = -param2;
         this.§6w§();
      }
      
      private function §^,§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§5K§ || !this.§62§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§9'§)
         {
            §4@§.§&R§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §;]§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§9'§)
         {
            §4@§.§&R§.§4O§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §=K§(param1:Boolean) : void
      {
         if(param1 == this.§5K§)
         {
            return;
         }
         this.§5K§ = param1;
         if(this.§5K§)
         {
            this.§^,§();
         }
         else
         {
            this.§;]§();
         }
      }
      
      private function §6w§() : void
      {
         if(this.§>-§ == 1 || this.§9'§.length > 0)
         {
            return;
         }
         while(§^z§.§<H§ + (this.§62§.x - this.§%%§) * §^z§.§%!8§ > 0)
         {
            this.§62§.x -= this.§%%§;
         }
         this.§5c§();
      }
      
      private function §5c§() : void
      {
      }
   }
}
