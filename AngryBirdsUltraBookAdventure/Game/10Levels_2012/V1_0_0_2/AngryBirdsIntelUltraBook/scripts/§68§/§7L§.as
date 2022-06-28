package §68§
{
   import §'!9§.§?!U§;
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §,!5§.§6o§;
   import §,!5§.§^g§;
   import §,!Q§.§,!-§;
   import §-w§.§+W§;
   import §-w§.§,Q§;
   import §-w§.§]c§;
   import §0!I§.ParticleDesignerPS;
   import §2!R§.§#C§;
   import §<&§.§^b§;
   import §?!G§.ParticleManager;
   import §^!+§.Texture;
   import starling.events.Event;
   
   public class §7L§
   {
       
      
      private var §,9§:int;
      
      private var §<!d§:int;
      
      private var §'<§:Number;
      
      private var §+!J§:Boolean;
      
      private var §8X§:Sprite;
      
      private var §@B§:Array;
      
      private var §]!4§:Boolean = true;
      
      private var §;!t§:§,Q§;
      
      private var §]E§:Sprite;
      
      private var §`!&§:Sprite;
      
      public function §7L§(param1:§,!-§, param2:Sprite, param3:§,Q§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§+W§ = null;
         this.§@B§ = [];
         super();
         this.§;!t§ = param3;
         this.§8X§ = param2;
         this.§'<§ = param1.§5y§;
         this.§+!J§ = param1.§%y§;
         var _loc5_:Number = 1;
         if(param1.§'8§ != 0)
         {
            _loc5_ = param1.§'8§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §]c§.§!!h§(param1.mName,this.§;!t§,param1.§^!%§)))
         {
            _loc7_ = (_loc13_ = param3.§6u§(param1.mName)).pivotY;
            if(!this.§+!J§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§,9§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§,9§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§]!N§.bottom;
            _loc8_ = (_loc10_.§]!N§.left + _loc10_.§]!N§.right) / 2;
         }
         if(this.§,9§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§,9§ = Math.round(this.§,9§);
         if(param1.§;9§)
         {
            this.§<!d§ = 2 + §^g§.§<!"§ * 1.5 / (this.§,9§ * param4);
         }
         else
         {
            this.§<!d§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§<!d§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §]c§.§!!h§(param1.mName,this.§;!t§,param1.§^!%§);
               }
               else
               {
                  _loc10_ = new §?!U§(_loc6_,false,param1.§^!%§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§,9§ + (-_loc8_ * _loc5_ + param1.§ !F§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§1!M§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§7!#§(param1,(_loc12_ - 1) * this.§,9§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§8X§.addChild(_loc11_);
         if(this.§]E§)
         {
            if(this.§]E§.numChildren > 0)
            {
               this.§8X§.addChild(this.§]E§);
            }
            else
            {
               this.§]E§.dispose();
            }
         }
         if(this.§`!&§)
         {
            if(this.§`!&§.numChildren > 0)
            {
               this.§8X§.addChildAt(this.§`!&§,0);
            }
            else
            {
               this.§`!&§.dispose();
            }
         }
         this.§8X§.addEventListener(Event.ADDED_TO_STAGE,this.§'6§);
      }
      
      public function get §[!7§() : Boolean
      {
         return this.§+!J§;
      }
      
      private function §7!#§(param1:§,!-§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§6o§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§@B§)
         {
            if((_loc4_ = ParticleManager.§<x§(_loc3_.id,this.§;!t§)) && _loc4_.§9N§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§ !F§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §^b§.§&#§.add(_loc4_);
               this.§@B§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§`!&§)
                  {
                     this.§`!&§ = new Sprite();
                  }
                  this.§`!&§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§]E§)
                  {
                     this.§]E§ = new Sprite();
                  }
                  this.§]E§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§&9§(1 / 20);
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
         this.§8X§.§5!c§(0,-1,true);
         this.§8X§.removeEventListener(Event.ADDED_TO_STAGE,this.§'6§);
         for each(_loc1_ in this.§@B§)
         {
            §^b§.§&#§.§4!g§(_loc1_);
            _loc1_.dispose();
         }
         this.§@B§ = [];
         this.§`!&§ = null;
         this.§]E§ = null;
      }
      
      private function §'6§(param1:Event) : void
      {
         this.§#W§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§'<§ * param1;
         this.§8X§.x = -_loc3_;
         this.§8X§.y = -param2;
         this.§?!I§();
      }
      
      private function §#W§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§]!4§ || !this.§8X§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§@B§)
         {
            §^b§.§&#§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §'d§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§@B§)
         {
            §^b§.§&#§.§4!g§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §"$§(param1:Boolean) : void
      {
         if(param1 == this.§]!4§)
         {
            return;
         }
         this.§]!4§ = param1;
         if(this.§]!4§)
         {
            this.§#W§();
         }
         else
         {
            this.§'d§();
         }
      }
      
      private function §?!I§() : void
      {
         if(this.§<!d§ == 1 || this.§@B§.length > 0)
         {
            return;
         }
         while(§#C§.§]!J§ + (this.§8X§.x - this.§,9§) * §#C§.§-!k§ > 0)
         {
            this.§8X§.x -= this.§,9§;
         }
         this.§3`§();
      }
      
      private function §3`§() : void
      {
      }
   }
}
