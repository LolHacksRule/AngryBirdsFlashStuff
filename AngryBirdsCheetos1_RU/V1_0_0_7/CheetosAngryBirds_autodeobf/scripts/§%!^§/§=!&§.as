package §%!^§
{
   import §"k§.§02§;
   import §"k§.§4w§;
   import §"k§.§5!7§;
   import §-!§.§-§;
   import §4c§.§4U§;
   import §8!`§.§4J§;
   import §8!`§.§`o§;
   import §;!Q§.§%o§;
   import §;!Q§.DisplayObject;
   import §;!Q§.Sprite;
   import §<J§.§12§;
   import §?!E§.§!!3§;
   import §@!?§.§9Z§;
   import §]p§.Texture;
   import starling.events.Event;
   
   public class §=!&§
   {
       
      
      private var §[p§:int;
      
      private var §4![§:int;
      
      private var §@f§:Number;
      
      private var §%!?§:Boolean;
      
      private var §`K§:Sprite;
      
      private var §%§:Array;
      
      private var §7B§:Boolean = true;
      
      private var §^L§:§02§;
      
      private var §+!]§:Sprite;
      
      private var §^0§:Sprite;
      
      public function §=!&§(param1:§12§, param2:Sprite, param3:§02§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§5!7§ = null;
         this.§%§ = [];
         super();
         this.§^L§ = param3;
         this.§`K§ = param2;
         this.§@f§ = param1.§8W§;
         this.§%!?§ = param1.§<Q§;
         var _loc5_:Number = 1;
         if(param1.§-b§ != 0)
         {
            _loc5_ = param1.§-b§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §4w§.§9;§(param1.mName,this.§^L§,param1.§8!]§)))
         {
            _loc7_ = (_loc13_ = param3.§'!R§(param1.mName)).pivotY;
            if(!this.§%!?§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§[p§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§[p§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§6[§.bottom;
            _loc8_ = (_loc10_.§6[§.left + _loc10_.§6[§.right) / 2;
         }
         if(this.§[p§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§[p§ = Math.round(this.§[p§);
         if(param1.§9!W§)
         {
            this.§4![§ = 2 + §4J§.§7G§ * 1.5 / (this.§[p§ * param4);
         }
         else
         {
            this.§4![§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§4![§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §4w§.§9;§(param1.mName,this.§^L§,param1.§8!]§);
               }
               else
               {
                  _loc10_ = new §%o§(_loc6_,false,param1.§8!]§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§[p§ + (-_loc8_ * _loc5_ + param1.§%c§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§,u§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§9!A§(param1,(_loc12_ - 1) * this.§[p§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§`K§.addChild(_loc11_);
         if(this.§+!]§)
         {
            if(this.§+!]§.numChildren > 0)
            {
               this.§`K§.addChild(this.§+!]§);
            }
            else
            {
               this.§+!]§.dispose();
            }
         }
         if(this.§^0§)
         {
            if(this.§^0§.numChildren > 0)
            {
               this.§`K§.addChildAt(this.§^0§,0);
            }
            else
            {
               this.§^0§.dispose();
            }
         }
         this.§`K§.addEventListener(Event.ADDED_TO_STAGE,this.§'0§);
      }
      
      public function get § s§() : Boolean
      {
         return this.§%!?§;
      }
      
      private function §9!A§(param1:§12§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§`o§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§%§)
         {
            if((_loc4_ = §4U§.§>C§(_loc3_.id,this.§^L§)) && _loc4_.§[!S§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§%c§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §-§.§'L§.add(_loc4_);
               this.§%§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§^0§)
                  {
                     this.§^0§ = new Sprite();
                  }
                  this.§^0§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§+!]§)
                  {
                     this.§+!]§ = new Sprite();
                  }
                  this.§+!]§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§`Z§(1 / 20);
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
         var _loc1_:§!!3§ = null;
         this.§`K§.§9a§(0,-1,true);
         this.§`K§.removeEventListener(Event.ADDED_TO_STAGE,this.§'0§);
         for each(_loc1_ in this.§%§)
         {
            §-§.§'L§.§[!§(_loc1_);
            _loc1_.dispose();
         }
         this.§%§ = [];
         this.§^0§ = null;
         this.§+!]§ = null;
      }
      
      private function §'0§(param1:Event) : void
      {
         this.§,!Y§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§@f§ * param1;
         this.§`K§.x = -_loc3_;
         this.§`K§.y = -param2;
         this.§2H§();
      }
      
      private function §,!Y§() : void
      {
         var _loc1_:§!!3§ = null;
         if(!this.§7B§ || !this.§`K§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§%§)
         {
            §-§.§'L§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §7H§() : void
      {
         var _loc1_:§!!3§ = null;
         for each(_loc1_ in this.§%§)
         {
            §-§.§'L§.§[!§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §&H§(param1:Boolean) : void
      {
         if(param1 == this.§7B§)
         {
            return;
         }
         this.§7B§ = param1;
         if(this.§7B§)
         {
            this.§,!Y§();
         }
         else
         {
            this.§7H§();
         }
      }
      
      private function §2H§() : void
      {
         if(this.§4![§ == 1 || this.§%§.length > 0)
         {
            return;
         }
         while(§9Z§.§3!`§ + (this.§`K§.x - this.§[p§) * §9Z§.§9t§ > 0)
         {
            this.§`K§.x -= this.§[p§;
         }
         this.§]J§();
      }
      
      private function §]J§() : void
      {
      }
   }
}
