package §31§
{
   import § `§.§2w§;
   import § `§.§6!=§;
   import § `§.§>o§;
   import §!!I§.§`[§;
   import §!X§.§7!H§;
   import §!X§.§86§;
   import §+3§.§7>§;
   import §2!D§.§'t§;
   import §?h§.§<I§;
   import §]!B§.Texture;
   import §]@§.DisplayObject;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   import §`C§.§9!'§;
   import starling.events.Event;
   
   public class §&#§
   {
       
      
      private var §#&§:int;
      
      private var §null §:int;
      
      private var §>U§:Number;
      
      private var §?!"§:Boolean;
      
      private var §?!N§:Sprite;
      
      private var §?!A§:Array;
      
      private var § P§:Boolean = true;
      
      private var §8!M§:§2w§;
      
      private var §2e§:Sprite;
      
      private var §>!C§:Sprite;
      
      public function §&#§(param1:§7>§, param2:Sprite, param3:§2w§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§6!=§ = null;
         this.§?!A§ = [];
         super();
         this.§8!M§ = param3;
         this.§?!N§ = param2;
         this.§>U§ = param1.§0t§;
         this.§?!"§ = param1.§^5§;
         var _loc5_:Number = 1;
         if(param1.§1R§ != 0)
         {
            _loc5_ = param1.§1R§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §>o§.§#]§(param1.mName,this.§8!M§,param1.§!#§)))
         {
            _loc7_ = (_loc13_ = param3.§4!,§(param1.mName)).pivotY;
            if(!this.§?!"§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§#&§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§#&§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§"!5§.bottom;
            _loc8_ = (_loc10_.§"!5§.left + _loc10_.§"!5§.right) / 2;
         }
         if(this.§#&§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§#&§ = Math.round(this.§#&§);
         if(param1.§+4§)
         {
            this.§null § = 2 + §86§.§super§ * 1.5 / (this.§#&§ * param4);
         }
         else
         {
            this.§null § = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§null §)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §>o§.§#]§(param1.mName,this.§8!M§,param1.§!#§);
               }
               else
               {
                  _loc10_ = new §`!C§(_loc6_,false,param1.§!#§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§#&§ + (-_loc8_ * _loc5_ + param1.§2s§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§@!Y§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§2!J§(param1,(_loc12_ - 1) * this.§#&§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§?!N§.addChild(_loc11_);
         if(this.§2e§)
         {
            if(this.§2e§.numChildren > 0)
            {
               this.§?!N§.addChild(this.§2e§);
            }
            else
            {
               this.§2e§.dispose();
            }
         }
         if(this.§>!C§)
         {
            if(this.§>!C§.numChildren > 0)
            {
               this.§?!N§.addChildAt(this.§>!C§,0);
            }
            else
            {
               this.§>!C§.dispose();
            }
         }
         this.§?!N§.addEventListener(Event.ADDED_TO_STAGE,this.§]j§);
      }
      
      public function get §<!+§() : Boolean
      {
         return this.§?!"§;
      }
      
      private function §2!J§(param1:§7>§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§7!H§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§?!A§)
         {
            if((_loc4_ = §'t§.§8G§(_loc3_.id,this.§8!M§)) && _loc4_.§9!1§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§2s§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §9!'§.§`!@§.add(_loc4_);
               this.§?!A§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§>!C§)
                  {
                     this.§>!C§ = new Sprite();
                  }
                  this.§>!C§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§2e§)
                  {
                     this.§2e§ = new Sprite();
                  }
                  this.§2e§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§#N§(1 / 20);
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
         var _loc1_:§`[§ = null;
         this.§?!N§.§7i§(0,-1,true);
         this.§?!N§.removeEventListener(Event.ADDED_TO_STAGE,this.§]j§);
         for each(_loc1_ in this.§?!A§)
         {
            §9!'§.§`!@§.§0@§(_loc1_);
            _loc1_.dispose();
         }
         this.§?!A§ = [];
         this.§>!C§ = null;
         this.§2e§ = null;
      }
      
      private function §]j§(param1:Event) : void
      {
         this.§9q§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§>U§ * param1;
         this.§?!N§.x = -_loc3_;
         this.§?!N§.y = -param2;
         this.§#§();
      }
      
      private function §9q§() : void
      {
         var _loc1_:§`[§ = null;
         if(!this.§ P§ || !this.§?!N§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§?!A§)
         {
            §9!'§.§`!@§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §8O§() : void
      {
         var _loc1_:§`[§ = null;
         for each(_loc1_ in this.§?!A§)
         {
            §9!'§.§`!@§.§0@§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §?B§(param1:Boolean) : void
      {
         if(param1 == this.§ P§)
         {
            return;
         }
         this.§ P§ = param1;
         if(this.§ P§)
         {
            this.§9q§();
         }
         else
         {
            this.§8O§();
         }
      }
      
      private function §#§() : void
      {
         if(this.§null § == 1 || this.§?!A§.length > 0)
         {
            return;
         }
         while(§<I§.§5!S§ + (this.§?!N§.x - this.§#&§) * §<I§.§,0§ > 0)
         {
            this.§?!N§.x -= this.§#&§;
         }
         this.§+H§();
      }
      
      private function §+H§() : void
      {
      }
   }
}
