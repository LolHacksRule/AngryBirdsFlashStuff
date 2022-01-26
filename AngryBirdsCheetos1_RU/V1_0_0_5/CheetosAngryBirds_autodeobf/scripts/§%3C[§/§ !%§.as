package §<[§
{
   import §%b§.§+Y§;
   import §%b§.§0!Z§;
   import §-A§.Texture;
   import §5C§.§%!Q§;
   import §@!§.§ !N§;
   import §@!§.§>!4§;
   import §@!§.§?! §;
   import §[!Q§.§ true§;
   import §]!+§.§>!I§;
   import §]!J§.§@!P§;
   import §]_§.§!F§;
   import §null §.§%!G§;
   import §null §.DisplayObject;
   import §null §.Sprite;
   import starling.events.Event;
   
   public class § !%§
   {
       
      
      private var §'c§:int;
      
      private var §1S§:int;
      
      private var §?E§:Number;
      
      private var §default§:Boolean;
      
      private var §&!C§:Sprite;
      
      private var §%t§:Array;
      
      private var §>!S§:Boolean = true;
      
      private var §`r§:§?! §;
      
      private var §'@§:Sprite;
      
      private var §8u§:Sprite;
      
      public function § !%§(param1:§@!P§, param2:Sprite, param3:§?! §, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§ !N§ = null;
         this.§%t§ = [];
         super();
         this.§`r§ = param3;
         this.§&!C§ = param2;
         this.§?E§ = param1.§!!!§;
         this.§default§ = param1.§#P§;
         var _loc5_:Number = 1;
         if(param1.§-§ != 0)
         {
            _loc5_ = param1.§-§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §>!4§.§+!<§(param1.mName,this.§`r§,param1.§`Y§)))
         {
            _loc7_ = (_loc13_ = param3.§-J§(param1.mName)).pivotY;
            if(!this.§default§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§'c§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§'c§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§6w§.bottom;
            _loc8_ = (_loc10_.§6w§.left + _loc10_.§6w§.right) / 2;
         }
         if(this.§'c§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§'c§ = Math.round(this.§'c§);
         if(param1.§=b§)
         {
            this.§1S§ = 2 + §0!Z§.§9M§ * 1.5 / (this.§'c§ * param4);
         }
         else
         {
            this.§1S§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§1S§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §>!4§.§+!<§(param1.mName,this.§`r§,param1.§`Y§);
               }
               else
               {
                  _loc10_ = new §%!G§(_loc6_,false,param1.§`Y§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§'c§ + (-_loc8_ * _loc5_ + param1.§%_§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§^N§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§2!O§(param1,(_loc12_ - 1) * this.§'c§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§&!C§.addChild(_loc11_);
         if(this.§'@§)
         {
            if(this.§'@§.numChildren > 0)
            {
               this.§&!C§.addChild(this.§'@§);
            }
            else
            {
               this.§'@§.dispose();
            }
         }
         if(this.§8u§)
         {
            if(this.§8u§.numChildren > 0)
            {
               this.§&!C§.addChildAt(this.§8u§,0);
            }
            else
            {
               this.§8u§.dispose();
            }
         }
         this.§&!C§.addEventListener(Event.ADDED_TO_STAGE,this.§5!]§);
      }
      
      public function get §&-§() : Boolean
      {
         return this.§default§;
      }
      
      private function §2!O§(param1:§@!P§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§+Y§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§%t§)
         {
            if((_loc4_ = §%!Q§.§!!7§(_loc3_.id,this.§`r§)) && _loc4_.§3$§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§%_§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §!F§.§5!H§.add(_loc4_);
               this.§%t§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§8u§)
                  {
                     this.§8u§ = new Sprite();
                  }
                  this.§8u§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§'@§)
                  {
                     this.§'@§ = new Sprite();
                  }
                  this.§'@§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§80§(1 / 20);
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
         var _loc1_:§>!I§ = null;
         this.§&!C§.§&!-§(0,-1,true);
         this.§&!C§.removeEventListener(Event.ADDED_TO_STAGE,this.§5!]§);
         for each(_loc1_ in this.§%t§)
         {
            §!F§.§5!H§.§6!J§(_loc1_);
            _loc1_.dispose();
         }
         this.§%t§ = [];
         this.§8u§ = null;
         this.§'@§ = null;
      }
      
      private function §5!]§(param1:Event) : void
      {
         this.§6x§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§?E§ * param1;
         this.§&!C§.x = -_loc3_;
         this.§&!C§.y = -param2;
         this.§`3§();
      }
      
      private function §6x§() : void
      {
         var _loc1_:§>!I§ = null;
         if(!this.§>!S§ || !this.§&!C§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§%t§)
         {
            §!F§.§5!H§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §6V§() : void
      {
         var _loc1_:§>!I§ = null;
         for each(_loc1_ in this.§%t§)
         {
            §!F§.§5!H§.§6!J§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §2!_§(param1:Boolean) : void
      {
         if(param1 == this.§>!S§)
         {
            return;
         }
         this.§>!S§ = param1;
         if(this.§>!S§)
         {
            this.§6x§();
         }
         else
         {
            this.§6V§();
         }
      }
      
      private function §`3§() : void
      {
         if(this.§1S§ == 1 || this.§%t§.length > 0)
         {
            return;
         }
         while(§ true§.§5!$§ + (this.§&!C§.x - this.§'c§) * § true§.§4Z§ > 0)
         {
            this.§&!C§.x -= this.§'c§;
         }
         this.§=j§();
      }
      
      private function §=j§() : void
      {
      }
   }
}
