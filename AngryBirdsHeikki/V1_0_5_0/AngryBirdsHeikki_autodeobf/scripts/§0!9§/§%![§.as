package §0!9§
{
   import § !9§.Texture;
   import §+D§.§4!^§;
   import §+D§.§5!P§;
   import §2P§.§6n§;
   import §>Q§.§5!5§;
   import §@!%§.§^o§;
   import §[$§.§=K§;
   import §[=§.§@!#§;
   import §[=§.DisplayObject;
   import §[=§.Sprite;
   import §]!"§.§%!3§;
   import §`!H§.§5f§;
   import §`!H§.§7!B§;
   import §`!H§.§@!E§;
   import starling.events.Event;
   
   public class §%![§
   {
       
      
      private var §=H§:int;
      
      private var § N§:int;
      
      private var §<G§:Number;
      
      private var §2!9§:Boolean;
      
      private var §%@§:Sprite;
      
      private var §#-§:Array;
      
      private var §[t§:Boolean = true;
      
      private var §6!;§:§@!E§;
      
      private var §8"§:Sprite;
      
      private var §<l§:Sprite;
      
      public function §%![§(param1:§^o§, param2:Sprite, param3:§@!E§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§5f§ = null;
         this.§#-§ = [];
         super();
         this.§6!;§ = param3;
         this.§%@§ = param2;
         this.§<G§ = param1.§#!N§;
         this.§2!9§ = param1.§%!F§;
         var _loc5_:Number = 1;
         if(param1.§!!4§ != 0)
         {
            _loc5_ = param1.§!!4§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §7!B§.§0L§(param1.mName,this.§6!;§,param1.§[!N§)))
         {
            _loc7_ = (_loc13_ = param3.§;X§(param1.mName)).pivotY;
            if(!this.§2!9§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§=H§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§=H§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§^J§.bottom;
            _loc8_ = (_loc10_.§^J§.left + _loc10_.§^J§.right) / 2;
         }
         if(this.§=H§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§=H§ = Math.round(this.§=H§);
         if(param1.§&!R§)
         {
            this.§ N§ = 2 + §5!P§.§=!F§ * 1.5 / (this.§=H§ * param4);
         }
         else
         {
            this.§ N§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§ N§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §7!B§.§0L§(param1.mName,this.§6!;§,param1.§[!N§);
               }
               else
               {
                  _loc10_ = new §@!#§(_loc6_,false,param1.§[!N§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§=H§ + (-_loc8_ * _loc5_ + param1.§7Y§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§!x§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§7%§(param1,(_loc12_ - 1) * this.§=H§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§%@§.addChild(_loc11_);
         if(this.§8"§)
         {
            if(this.§8"§.numChildren > 0)
            {
               this.§%@§.addChild(this.§8"§);
            }
            else
            {
               this.§8"§.dispose();
            }
         }
         if(this.§<l§)
         {
            if(this.§<l§.numChildren > 0)
            {
               this.§%@§.addChildAt(this.§<l§,0);
            }
            else
            {
               this.§<l§.dispose();
            }
         }
         this.§%@§.addEventListener(Event.ADDED_TO_STAGE,this.§'!W§);
      }
      
      public function get §-!K§() : Boolean
      {
         return this.§2!9§;
      }
      
      private function §7%§(param1:§^o§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§4!^§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§#-§)
         {
            if((_loc4_ = §6n§.§`!^§(_loc3_.id,this.§6!;§)) && _loc4_.§#!8§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§7Y§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §5!5§.§!J§.add(_loc4_);
               this.§#-§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§<l§)
                  {
                     this.§<l§ = new Sprite();
                  }
                  this.§<l§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§8"§)
                  {
                     this.§8"§ = new Sprite();
                  }
                  this.§8"§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§5!Z§(1 / 20);
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
         var _loc1_:§%!3§ = null;
         this.§%@§.§`!!§(0,-1,true);
         this.§%@§.removeEventListener(Event.ADDED_TO_STAGE,this.§'!W§);
         for each(_loc1_ in this.§#-§)
         {
            §5!5§.§!J§.§&c§(_loc1_);
            _loc1_.dispose();
         }
         this.§#-§ = [];
         this.§<l§ = null;
         this.§8"§ = null;
      }
      
      private function §'!W§(param1:Event) : void
      {
         this.§,4§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§<G§ * param1;
         this.§%@§.x = -_loc3_;
         this.§%@§.y = -param2;
         this.§9!'§();
      }
      
      private function §,4§() : void
      {
         var _loc1_:§%!3§ = null;
         if(!this.§[t§ || !this.§%@§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§#-§)
         {
            §5!5§.§!J§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §4&§() : void
      {
         var _loc1_:§%!3§ = null;
         for each(_loc1_ in this.§#-§)
         {
            §5!5§.§!J§.§&c§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §#y§(param1:Boolean) : void
      {
         if(param1 == this.§[t§)
         {
            return;
         }
         this.§[t§ = param1;
         if(this.§[t§)
         {
            this.§,4§();
         }
         else
         {
            this.§4&§();
         }
      }
      
      private function §9!'§() : void
      {
         if(this.§ N§ == 1 || this.§#-§.length > 0)
         {
            return;
         }
         while(§=K§.§2>§ + (this.§%@§.x - this.§=H§) * §=K§.§%-§ > 0)
         {
            this.§%@§.x -= this.§=H§;
         }
         this.§<!U§();
      }
      
      private function §<!U§() : void
      {
      }
   }
}
