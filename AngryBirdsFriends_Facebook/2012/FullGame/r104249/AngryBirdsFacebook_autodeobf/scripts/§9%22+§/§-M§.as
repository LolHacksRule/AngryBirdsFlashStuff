package §9"+§
{
   import §!!t§.§>"=§;
   import §#S§.§!K§;
   import §#S§.§6!r§;
   import §#S§.§?!?§;
   import §+!F§.§1!D§;
   import §+x§.ParticleManager;
   import §0!2§.§+"4§;
   import §0!2§.§5"L§;
   import §?7§.Texture;
   import §?g§.ParticleDesignerPS;
   import §]!v§.§'!=§;
   import §]!v§.DisplayObject;
   import §]!v§.Sprite;
   import §`u§.§5!-§;
   import starling.events.Event;
   
   public class §-M§
   {
       
      
      protected var §[1§:int;
      
      private var §8!§:int;
      
      protected var §2&§:Number;
      
      private var §#F§:Boolean;
      
      protected var §`b§:Sprite;
      
      private var §-!l§:Array;
      
      private var §throw§:Boolean = true;
      
      private var §=$§:§?!?§;
      
      private var §5!`§:Sprite;
      
      private var §'!a§:Sprite;
      
      public function §-M§(param1:§>"=§, param2:Sprite, param3:§?!?§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§6!r§ = null;
         this.§-!l§ = [];
         super();
         this.§=$§ = param3;
         this.§`b§ = param2;
         this.§2&§ = param1.§3"=§;
         this.§#F§ = param1.§&!t§;
         var _loc5_:Number = 1;
         if(param1.§%""§ != 0)
         {
            _loc5_ = param1.§%""§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §!K§.§'!^§(param1.mName,this.§=$§,param1.§^<§)))
         {
            _loc7_ = (_loc13_ = param3.§'"@§(param1.mName)).pivotY;
            if(!this.§#F§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§[1§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§[1§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§^n§.bottom;
            _loc8_ = (_loc10_.§^n§.left + _loc10_.§^n§.right) / 2;
         }
         if(this.§[1§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§[1§ = Math.round(this.§[1§);
         if(param1.§;!B§)
         {
            this.§8!§ = 2 + §5"L§.§9"D§ * 1.5 / (this.§[1§ * param4);
         }
         else
         {
            this.§8!§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§8!§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §!K§.§'!^§(param1.mName,this.§=$§,param1.§^<§);
               }
               else
               {
                  _loc10_ = new §'!=§(_loc6_,false,param1.§^<§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§[1§ + (-_loc8_ * _loc5_ + param1.§^!S§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§?"$§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§@U§(param1,(_loc12_ - 1) * this.§[1§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§`b§.addChild(_loc11_);
         if(this.§5!`§)
         {
            if(this.§5!`§.numChildren > 0)
            {
               this.§`b§.addChild(this.§5!`§);
            }
            else
            {
               this.§5!`§.dispose();
            }
         }
         if(this.§'!a§)
         {
            if(this.§'!a§.numChildren > 0)
            {
               this.§`b§.addChildAt(this.§'!a§,0);
            }
            else
            {
               this.§'!a§.dispose();
            }
         }
         this.§`b§.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      public function get §!"2§() : Boolean
      {
         return this.§#F§;
      }
      
      private function §@U§(param1:§>"=§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§+"4§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§-!l§)
         {
            if((_loc4_ = ParticleManager.§#!8§(_loc3_.id,this.§=$§)) && _loc4_.§@"A§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§^!S§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §1!D§.§&!?§.add(_loc4_);
               this.§-!l§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§'!a§)
                  {
                     this.§'!a§ = new Sprite();
                  }
                  this.§'!a§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§5!`§)
                  {
                     this.§5!`§ = new Sprite();
                  }
                  this.§5!`§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§4"G§(1 / 20);
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
         this.§`b§.§^x§(0,-1,true);
         this.§`b§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         for each(_loc1_ in this.§-!l§)
         {
            §1!D§.§&!?§.§ !G§(_loc1_);
            _loc1_.dispose();
         }
         this.§-!l§ = [];
         this.§'!a§ = null;
         this.§5!`§ = null;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§>!6§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§2&§ * param1;
         this.§`b§.x = -_loc3_;
         this.§`b§.y = -param2;
         this.§8!i§();
      }
      
      private function §>!6§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§throw§ || !this.§`b§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§-!l§)
         {
            §1!D§.§&!?§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §<!J§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§-!l§)
         {
            §1!D§.§&!?§.§ !G§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §7"C§(param1:Boolean) : void
      {
         if(param1 == this.§throw§)
         {
            return;
         }
         this.§throw§ = param1;
         if(this.§throw§)
         {
            this.§>!6§();
         }
         else
         {
            this.§<!J§();
         }
      }
      
      protected function §8!i§() : void
      {
         if(this.§8!§ == 1 || this.§-!l§.length > 0)
         {
            return;
         }
         while(§5!-§.§!"$§ + (this.§`b§.x - this.§[1§) * §5!-§.§ m§ > 0)
         {
            this.§`b§.x -= this.§[1§;
         }
         this.§?o§();
      }
      
      private function §?o§() : void
      {
      }
   }
}
