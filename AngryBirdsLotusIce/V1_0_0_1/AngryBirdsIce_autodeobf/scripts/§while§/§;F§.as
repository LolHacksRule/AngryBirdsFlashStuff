package §while§
{
   import §"o§.§ M§;
   import §"o§.§!C§;
   import §%?§.Texture;
   import §&V§.§,w§;
   import §&V§.§9!>§;
   import §&V§.§;Q§;
   import §2W§.§4!$§;
   import §4!+§.ParticleDesignerPS;
   import §5C§.ParticleManager;
   import §@!%§.§+8§;
   import §@!=§.§"S§;
   import §@!=§.DisplayObject;
   import §@!=§.Sprite;
   import §^!1§.§?!3§;
   import starling.events.Event;
   
   public class §;F§
   {
       
      
      private var §#S§:int;
      
      private var §8!G§:int;
      
      private var §49§:Number;
      
      private var §!W§:Boolean;
      
      private var §+x§:Sprite;
      
      private var §89§:Array;
      
      private var §8!-§:Boolean = true;
      
      private var §^!&§:§,w§;
      
      private var §?L§:Sprite;
      
      private var §'!4§:Sprite;
      
      public function §;F§(param1:§?!3§, param2:Sprite, param3:§,w§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§;Q§ = null;
         this.§89§ = [];
         super();
         this.§^!&§ = param3;
         this.§+x§ = param2;
         this.§49§ = param1.§&!A§;
         this.§!W§ = param1.§0!<§;
         var _loc5_:Number = 1;
         if(param1.§50§ != 0)
         {
            _loc5_ = param1.§50§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §9!>§.§-!§(param1.mName,this.§^!&§,param1.§`I§)))
         {
            _loc7_ = (_loc13_ = param3.§]i§(param1.mName)).pivotY;
            if(!this.§!W§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§#S§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§#S§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§^"§.bottom;
            _loc8_ = (_loc10_.§^"§.left + _loc10_.§^"§.right) / 2;
         }
         if(this.§#S§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§#S§ = Math.round(this.§#S§);
         if(param1.§#t§)
         {
            this.§8!G§ = 2 + § M§.§^!?§ * 1.5 / (this.§#S§ * param4);
         }
         else
         {
            this.§8!G§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§8!G§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §9!>§.§-!§(param1.mName,this.§^!&§,param1.§`I§);
               }
               else
               {
                  _loc10_ = new §"S§(_loc6_,false,param1.§`I§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§#S§ + (-_loc8_ * _loc5_ + param1.§-!@§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§'=§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§]8§(param1,(_loc12_ - 1) * this.§#S§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§+x§.addChild(_loc11_);
         if(this.§?L§)
         {
            if(this.§?L§.numChildren > 0)
            {
               this.§+x§.addChild(this.§?L§);
            }
            else
            {
               this.§?L§.dispose();
            }
         }
         if(this.§'!4§)
         {
            if(this.§'!4§.numChildren > 0)
            {
               this.§+x§.addChildAt(this.§'!4§,0);
            }
            else
            {
               this.§'!4§.dispose();
            }
         }
         this.§+x§.addEventListener(Event.ADDED_TO_STAGE,this.§!f§);
      }
      
      public function get §?;§() : Boolean
      {
         return this.§!W§;
      }
      
      private function §]8§(param1:§?!3§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§!C§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§89§)
         {
            if((_loc4_ = ParticleManager.§-`§(_loc3_.id,this.§^!&§)) && _loc4_.§>,§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§-!@§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §+8§.§`!;§.add(_loc4_);
               this.§89§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§'!4§)
                  {
                     this.§'!4§ = new Sprite();
                  }
                  this.§'!4§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§?L§)
                  {
                     this.§?L§ = new Sprite();
                  }
                  this.§?L§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§#7§(1 / 20);
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
         this.§+x§.§=H§(0,-1,true);
         this.§+x§.removeEventListener(Event.ADDED_TO_STAGE,this.§!f§);
         for each(_loc1_ in this.§89§)
         {
            §+8§.§`!;§.§1h§(_loc1_);
            _loc1_.dispose();
         }
         this.§89§ = [];
         this.§'!4§ = null;
         this.§?L§ = null;
      }
      
      private function §!f§(param1:Event) : void
      {
         this.§6!$§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§49§ * param1;
         this.§+x§.x = -_loc3_;
         this.§+x§.y = -param2;
         this.§#y§();
      }
      
      private function §6!$§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§8!-§ || !this.§+x§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§89§)
         {
            §+8§.§`!;§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §6`§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§89§)
         {
            §+8§.§`!;§.§1h§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §"3§(param1:Boolean) : void
      {
         if(param1 == this.§8!-§)
         {
            return;
         }
         this.§8!-§ = param1;
         if(this.§8!-§)
         {
            this.§6!$§();
         }
         else
         {
            this.§6`§();
         }
      }
      
      private function §#y§() : void
      {
         if(this.§8!G§ == 1 || this.§89§.length > 0)
         {
            return;
         }
         while(§4!$§.§"u§ + (this.§+x§.x - this.§#S§) * §4!$§.§2y§ > 0)
         {
            this.§+x§.x -= this.§#S§;
         }
         this.§ !-§();
      }
      
      private function § !-§() : void
      {
      }
   }
}
