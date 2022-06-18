package §8x§
{
   import §!U§.§'!8§;
   import §#!`§.Texture;
   import §'!K§.§+! §;
   import §'!S§.§,!%§;
   import §'>§.§;t§;
   import §-!A§.§^K§;
   import §3E§.§6w§;
   import §3E§.§<!O§;
   import §7u§.§&!C§;
   import §7u§.DisplayObject;
   import §7u§.Sprite;
   import §`!B§.§&?§;
   import §`!B§.§4!I§;
   import §`!B§.§=m§;
   import starling.events.Event;
   
   public class §,!3§
   {
       
      
      private var §@M§:int;
      
      private var §5!T§:int;
      
      private var §6!A§:Number;
      
      private var §2f§:Boolean;
      
      private var §3!F§:Sprite;
      
      private var §8-§:Array;
      
      private var §-!Z§:Boolean = true;
      
      private var §7!W§:§=m§;
      
      private var §1x§:Sprite;
      
      private var § h§:Sprite;
      
      public function §,!3§(param1:§;t§, param2:Sprite, param3:§=m§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§4!I§ = null;
         this.§8-§ = [];
         super();
         this.§7!W§ = param3;
         this.§3!F§ = param2;
         this.§6!A§ = param1.§0k§;
         this.§2f§ = param1.§9!-§;
         var _loc5_:Number = 1;
         if(param1.§#l§ != 0)
         {
            _loc5_ = param1.§#l§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §&?§.§^!U§(param1.mName,this.§7!W§,param1.§[!E§)))
         {
            _loc7_ = (_loc13_ = param3.§@d§(param1.mName)).pivotY;
            if(!this.§2f§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§@M§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§@M§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§^!6§.bottom;
            _loc8_ = (_loc10_.§^!6§.left + _loc10_.§^!6§.right) / 2;
         }
         if(this.§@M§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§@M§ = Math.round(this.§@M§);
         if(param1.§1u§)
         {
            this.§5!T§ = 2 + §6w§.§9X§ * 1.5 / (this.§@M§ * param4);
         }
         else
         {
            this.§5!T§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§5!T§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §&?§.§^!U§(param1.mName,this.§7!W§,param1.§[!E§);
               }
               else
               {
                  _loc10_ = new §&!C§(_loc6_,false,param1.§[!E§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§@M§ + (-_loc8_ * _loc5_ + param1.§,A§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§1§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§?!6§(param1,(_loc12_ - 1) * this.§@M§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§3!F§.addChild(_loc11_);
         if(this.§1x§)
         {
            if(this.§1x§.numChildren > 0)
            {
               this.§3!F§.addChild(this.§1x§);
            }
            else
            {
               this.§1x§.dispose();
            }
         }
         if(this.§ h§)
         {
            if(this.§ h§.numChildren > 0)
            {
               this.§3!F§.addChildAt(this.§ h§,0);
            }
            else
            {
               this.§ h§.dispose();
            }
         }
         this.§3!F§.addEventListener(Event.ADDED_TO_STAGE,this.§!!2§);
      }
      
      public function get §8!<§() : Boolean
      {
         return this.§2f§;
      }
      
      private function §?!6§(param1:§;t§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§<!O§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§8-§)
         {
            if((_loc4_ = §+! §.§0!4§(_loc3_.id,this.§7!W§)) && _loc4_.§1!1§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§,A§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §,!%§.§7x§.add(_loc4_);
               this.§8-§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§ h§)
                  {
                     this.§ h§ = new Sprite();
                  }
                  this.§ h§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§1x§)
                  {
                     this.§1x§ = new Sprite();
                  }
                  this.§1x§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§2s§(1 / 20);
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
         var _loc1_:§^K§ = null;
         this.§3!F§.§,!A§(0,-1,true);
         this.§3!F§.removeEventListener(Event.ADDED_TO_STAGE,this.§!!2§);
         for each(_loc1_ in this.§8-§)
         {
            §,!%§.§7x§.§]2§(_loc1_);
            _loc1_.dispose();
         }
         this.§8-§ = [];
         this.§ h§ = null;
         this.§1x§ = null;
      }
      
      private function §!!2§(param1:Event) : void
      {
         this.§2C§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§6!A§ * param1;
         this.§3!F§.x = -_loc3_;
         this.§3!F§.y = -param2;
         this.§ !^§();
      }
      
      private function §2C§() : void
      {
         var _loc1_:§^K§ = null;
         if(!this.§-!Z§ || !this.§3!F§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§8-§)
         {
            §,!%§.§7x§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §[!Y§() : void
      {
         var _loc1_:§^K§ = null;
         for each(_loc1_ in this.§8-§)
         {
            §,!%§.§7x§.§]2§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §9!O§(param1:Boolean) : void
      {
         if(param1 == this.§-!Z§)
         {
            return;
         }
         this.§-!Z§ = param1;
         if(this.§-!Z§)
         {
            this.§2C§();
         }
         else
         {
            this.§[!Y§();
         }
      }
      
      private function § !^§() : void
      {
         if(this.§5!T§ == 1 || this.§8-§.length > 0)
         {
            return;
         }
         while(§'!8§.§?d§ + (this.§3!F§.x - this.§@M§) * §'!8§.§3!0§ > 0)
         {
            this.§3!F§.x -= this.§@M§;
         }
         this.§3'§();
      }
      
      private function §3'§() : void
      {
      }
   }
}
