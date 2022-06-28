package §<x§
{
   import §!!K§.§else§;
   import §,!!§.§#!Y§;
   import §2_§.§'u§;
   import §2_§.§5=§;
   import §4>§.Texture;
   import §6!p§.ParticleManager;
   import §7!B§.§-§;
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §9!N§.ParticleDesignerPS;
   import §@^§.§<!T§;
   import §^!Y§.§'R§;
   import §^!Y§.§1C§;
   import §^!Y§.§]p§;
   import starling.events.Event;
   
   public class §#Q§
   {
       
      
      private var §3o§:int;
      
      private var §^W§:int;
      
      private var §;?§:Number;
      
      private var §#w§:Boolean;
      
      private var §2O§:Sprite;
      
      private var §,P§:Array;
      
      private var §#d§:Boolean = true;
      
      private var §+]§:§'R§;
      
      private var §"!x§:Sprite;
      
      private var §!!j§:Sprite;
      
      public function §#Q§(param1:§<!T§, param2:Sprite, param3:§'R§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§1C§ = null;
         this.§,P§ = [];
         super();
         this.§+]§ = param3;
         this.§2O§ = param2;
         this.§;?§ = param1.§&!&§;
         this.§#w§ = param1.§6B§;
         var _loc5_:Number = 1;
         if(param1.§'!I§ != 0)
         {
            _loc5_ = param1.§'!I§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §]p§.§,!$§(param1.mName,this.§+]§,param1.§=§)))
         {
            _loc7_ = (_loc13_ = param3.§2+§(param1.mName)).pivotY;
            if(!this.§#w§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§3o§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§3o§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§6<§.bottom;
            _loc8_ = (_loc10_.§6<§.left + _loc10_.§6<§.right) / 2;
         }
         if(this.§3o§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§3o§ = Math.round(this.§3o§);
         if(param1.§4!T§)
         {
            this.§^W§ = 2 + §'u§.§?!8§ * 1.5 / (this.§3o§ * param4);
         }
         else
         {
            this.§^W§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§^W§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §]p§.§,!$§(param1.mName,this.§+]§,param1.§=§);
               }
               else
               {
                  _loc10_ = new §-§(_loc6_,false,param1.§=§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§3o§ + (-_loc8_ * _loc5_ + param1.§6!r§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§87§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§[5§(param1,(_loc12_ - 1) * this.§3o§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§2O§.addChild(_loc11_);
         if(this.§"!x§)
         {
            if(this.§"!x§.numChildren > 0)
            {
               this.§2O§.addChild(this.§"!x§);
            }
            else
            {
               this.§"!x§.dispose();
            }
         }
         if(this.§!!j§)
         {
            if(this.§!!j§.numChildren > 0)
            {
               this.§2O§.addChildAt(this.§!!j§,0);
            }
            else
            {
               this.§!!j§.dispose();
            }
         }
         this.§2O§.addEventListener(Event.ADDED_TO_STAGE,this.§+T§);
      }
      
      public function get §-!b§() : Boolean
      {
         return this.§#w§;
      }
      
      private function §[5§(param1:§<!T§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§5=§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§,P§)
         {
            if((_loc4_ = ParticleManager.§%h§(_loc3_.id,this.§+]§)) && _loc4_.§;G§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§6!r§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §else§.§]!#§.add(_loc4_);
               this.§,P§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§!!j§)
                  {
                     this.§!!j§ = new Sprite();
                  }
                  this.§!!j§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§"!x§)
                  {
                     this.§"!x§ = new Sprite();
                  }
                  this.§"!x§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§+! §(1 / 20);
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
         this.§2O§.§?!z§(0,-1,true);
         this.§2O§.removeEventListener(Event.ADDED_TO_STAGE,this.§+T§);
         for each(_loc1_ in this.§,P§)
         {
            §else§.§]!#§.§1+§(_loc1_);
            _loc1_.dispose();
         }
         this.§,P§ = [];
         this.§!!j§ = null;
         this.§"!x§ = null;
      }
      
      private function §+T§(param1:Event) : void
      {
         this.§0!d§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§;?§ * param1;
         this.§2O§.x = -_loc3_;
         this.§2O§.y = -param2;
         this.§>!p§();
      }
      
      private function §0!d§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§#d§ || !this.§2O§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§,P§)
         {
            §else§.§]!#§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §@!y§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§,P§)
         {
            §else§.§]!#§.§1+§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §9!p§(param1:Boolean) : void
      {
         if(param1 == this.§#d§)
         {
            return;
         }
         this.§#d§ = param1;
         if(this.§#d§)
         {
            this.§0!d§();
         }
         else
         {
            this.§@!y§();
         }
      }
      
      private function §>!p§() : void
      {
         if(this.§^W§ == 1 || this.§,P§.length > 0)
         {
            return;
         }
         while(§#!Y§.§%!H§ + (this.§2O§.x - this.§3o§) * §#!Y§.§0!_§ > 0)
         {
            this.§2O§.x -= this.§3o§;
         }
         this.§^!_§();
      }
      
      private function §^!_§() : void
      {
      }
   }
}
