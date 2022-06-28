package §8!A§
{
   import §#!7§.ParticleDesignerPS;
   import §2@§.§1!Q§;
   import §2m§.§<!?§;
   import §40§.§5G§;
   import §40§.§9e§;
   import §=!A§.ParticleManager;
   import §=`§.§#`§;
   import §=`§.§4s§;
   import §=`§.§6!I§;
   import §?]§.Texture;
   import §`!M§.§%X§;
   import §`g§.§"<§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   import starling.events.Event;
   
   public class §8!?§
   {
       
      
      protected var §<!^§:int;
      
      private var §6i§:int;
      
      protected var §%C§:Number;
      
      private var §<!B§:Boolean;
      
      protected var §]2§:Sprite;
      
      private var §%;§:Array;
      
      private var §!R§:Boolean = true;
      
      private var §&!k§:§6!I§;
      
      private var §@E§:Sprite;
      
      private var § C§:Sprite;
      
      public function §8!?§(param1:§1!Q§, param2:Sprite, param3:§6!I§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§#`§ = null;
         this.§%;§ = [];
         super();
         this.§&!k§ = param3;
         this.§]2§ = param2;
         this.§%C§ = param1.§ ;§;
         this.§<!B§ = param1.§,H§;
         var _loc5_:Number = 1;
         if(param1.§?z§ != 0)
         {
            _loc5_ = param1.§?z§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §4s§.§<Y§(param1.mName,this.§&!k§,param1.§^!T§)))
         {
            _loc7_ = (_loc13_ = param3.§&u§(param1.mName)).pivotY;
            if(!this.§<!B§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§<!^§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§<!^§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§`b§.bottom;
            _loc8_ = (_loc10_.§`b§.left + _loc10_.§`b§.right) / 2;
         }
         if(this.§<!^§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§<!^§ = Math.round(this.§<!^§);
         if(param1.§<!`§)
         {
            this.§6i§ = 2 + §5G§.§&!d§ * 1.5 / (this.§<!^§ * param4);
         }
         else
         {
            this.§6i§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§6i§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §4s§.§<Y§(param1.mName,this.§&!k§,param1.§^!T§);
               }
               else
               {
                  _loc10_ = new §"<§(_loc6_,false,param1.§^!T§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§<!^§ + (-_loc8_ * _loc5_ + param1.§0!8§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§%F§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§7T§(param1,(_loc12_ - 1) * this.§<!^§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§]2§.addChild(_loc11_);
         if(this.§@E§)
         {
            if(this.§@E§.numChildren > 0)
            {
               this.§]2§.addChild(this.§@E§);
            }
            else
            {
               this.§@E§.dispose();
            }
         }
         if(this.§ C§)
         {
            if(this.§ C§.numChildren > 0)
            {
               this.§]2§.addChildAt(this.§ C§,0);
            }
            else
            {
               this.§ C§.dispose();
            }
         }
         this.§]2§.addEventListener(Event.ADDED_TO_STAGE,this.§#Z§);
      }
      
      public function get §]"!§() : Boolean
      {
         return this.§<!B§;
      }
      
      private function §7T§(param1:§1!Q§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§9e§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§%;§)
         {
            if((_loc4_ = ParticleManager.§0!z§(_loc3_.id,this.§&!k§)) && _loc4_.§[!z§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§0!8§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §<!?§.§#T§.add(_loc4_);
               this.§%;§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§ C§)
                  {
                     this.§ C§ = new Sprite();
                  }
                  this.§ C§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§@E§)
                  {
                     this.§@E§ = new Sprite();
                  }
                  this.§@E§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§in§(1 / 20);
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
         this.§]2§.§5!7§(0,-1,true);
         this.§]2§.removeEventListener(Event.ADDED_TO_STAGE,this.§#Z§);
         for each(_loc1_ in this.§%;§)
         {
            §<!?§.§#T§.§0z§(_loc1_);
            _loc1_.dispose();
         }
         this.§%;§ = [];
         this.§ C§ = null;
         this.§@E§ = null;
      }
      
      private function §#Z§(param1:Event) : void
      {
         this.§ !A§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%C§ * param1;
         this.§]2§.x = -_loc3_;
         this.§]2§.y = -param2;
         this.§'!_§();
      }
      
      private function § !A§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§!R§ || !this.§]2§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§%;§)
         {
            §<!?§.§#T§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §9!q§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§%;§)
         {
            §<!?§.§#T§.§0z§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §'6§(param1:Boolean) : void
      {
         if(param1 == this.§!R§)
         {
            return;
         }
         this.§!R§ = param1;
         if(this.§!R§)
         {
            this.§ !A§();
         }
         else
         {
            this.§9!q§();
         }
      }
      
      protected function §'!_§() : void
      {
         if(this.§6i§ == 1 || this.§%;§.length > 0)
         {
            return;
         }
         while(§%X§.§+!_§ + (this.§]2§.x - this.§<!^§) * §%X§.§'!f§ > 0)
         {
            this.§]2§.x -= this.§<!^§;
         }
         this.§87§();
      }
      
      private function §87§() : void
      {
      }
   }
}
