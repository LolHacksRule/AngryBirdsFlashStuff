package §='§
{
   import §"`§.Texture;
   import §+f§.§4!8§;
   import §+f§.§8!=§;
   import §+f§.§=3§;
   import §,!F§.§!e§;
   import §,!F§.§#§;
   import §-!O§.ParticleDesignerPS;
   import §1!'§.ParticleManager;
   import §4G§.DisplayObject;
   import §4G§.Sprite;
   import §4G§.§`l§;
   import §>w§.;
   import §[!A§.§+!!§;
   import get.§,v§;
   import starling.events.Event;
   
   public class §61§
   {
       
      
      private var §%-§:int;
      
      private var §5! §:int;
      
      private var §]f§:Number;
      
      private var §@!H§:Boolean;
      
      private var §!!+§:Sprite;
      
      private var §9<§:Array;
      
      private var §]!-§:Boolean = true;
      
      private var §;?§:§4!8§;
      
      private var §`#§:Sprite;
      
      private var §@1§:Sprite;
      
      public function §61§(param1:§,v§, param2:Sprite, param3:§4!8§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§=3§ = null;
         this.§9<§ = [];
         super();
         this.§;?§ = param3;
         this.§!!+§ = param2;
         this.§]f§ = param1.§-!2§;
         this.§@!H§ = param1.§,0§;
         var _loc5_:Number = 1;
         if(param1.§`Z§ != 0)
         {
            _loc5_ = param1.§`Z§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §8!=§.§"!2§(param1.mName,this.§;?§,param1.§6x§)))
         {
            _loc7_ = (_loc13_ = param3.§=&§(param1.mName)).pivotY;
            if(!this.§@!H§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§%-§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§%-§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§6%§.bottom;
            _loc8_ = (_loc10_.§6%§.left + _loc10_.§6%§.right) / 2;
         }
         if(this.§%-§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§%-§ = Math.round(this.§%-§);
         if(param1.§02§)
         {
            this.§5! § = 2 + §#§.§'!#§ * 1.5 / (this.§%-§ * param4);
         }
         else
         {
            this.§5! § = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§5! §)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §8!=§.§"!2§(param1.mName,this.§;?§,param1.§6x§);
               }
               else
               {
                  _loc10_ = new §`l§(_loc6_,false,param1.§6x§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§%-§ + (-_loc8_ * _loc5_ + param1.§,9§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§9]§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§6!8§(param1,(_loc12_ - 1) * this.§%-§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§!!+§.addChild(_loc11_);
         if(this.§`#§)
         {
            if(this.§`#§.numChildren > 0)
            {
               this.§!!+§.addChild(this.§`#§);
            }
            else
            {
               this.§`#§.dispose();
            }
         }
         if(this.§@1§)
         {
            if(this.§@1§.numChildren > 0)
            {
               this.§!!+§.addChildAt(this.§@1§,0);
            }
            else
            {
               this.§@1§.dispose();
            }
         }
         this.§!!+§.addEventListener(Event.ADDED_TO_STAGE,this.§=C§);
      }
      
      public function get §8!G§() : Boolean
      {
         return this.§@!H§;
      }
      
      private function §6!8§(param1:§,v§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§!e§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§9<§)
         {
            if((_loc4_ = ParticleManager.§4W§(_loc3_.id,this.§;?§)) && _loc4_.§4!7§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§,9§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §#0§.§]!=§.add(_loc4_);
               this.§9<§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§@1§)
                  {
                     this.§@1§ = new Sprite();
                  }
                  this.§@1§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§`#§)
                  {
                     this.§`#§ = new Sprite();
                  }
                  this.§`#§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§5!§(1 / 20);
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
         this.§!!+§.§5!K§(0,-1,true);
         this.§!!+§.removeEventListener(Event.ADDED_TO_STAGE,this.§=C§);
         for each(_loc1_ in this.§9<§)
         {
            §#0§.§]!=§.§,+§(_loc1_);
            _loc1_.dispose();
         }
         this.§9<§ = [];
         this.§@1§ = null;
         this.§`#§ = null;
      }
      
      private function §=C§(param1:Event) : void
      {
         this.§@5§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§]f§ * param1;
         this.§!!+§.x = -_loc3_;
         this.§!!+§.y = -param2;
         this.§=c§();
      }
      
      private function §@5§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§]!-§ || !this.§!!+§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§9<§)
         {
            §#0§.§]!=§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §'1§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§9<§)
         {
            §#0§.§]!=§.§,+§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §=h§(param1:Boolean) : void
      {
         if(param1 == this.§]!-§)
         {
            return;
         }
         this.§]!-§ = param1;
         if(this.§]!-§)
         {
            this.§@5§();
         }
         else
         {
            this.§'1§();
         }
      }
      
      private function §=c§() : void
      {
         if(this.§5! § == 1 || this.§9<§.length > 0)
         {
            return;
         }
         while(§+!!§.§!2§ + (this.§!!+§.x - this.§%-§) * §+!!§.levelScale > 0)
         {
            this.§!!+§.x -= this.§%-§;
         }
         this.§0;§();
      }
      
      private function §0;§() : void
      {
      }
   }
}
