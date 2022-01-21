package § true§
{
   import § !g§.§-!Q§;
   import §&!9§.Texture;
   import §&C§.§0!5§;
   import §0@§.§1]§;
   import §0@§.DisplayObject;
   import §0@§.Sprite;
   import §4!,§.§+f§;
   import §5!M§.§!k§;
   import §55§.§8!-§;
   import §55§.§>![§;
   import §7! §.§%!h§;
   import §7! §.§3!<§;
   import §7! §.§4n§;
   import §each §.§'!3§;
   import starling.events.Event;
   
   public class §'8§
   {
       
      
      protected var §1=§:int;
      
      private var §[E§:int;
      
      protected var §<;§:Number;
      
      private var §2_§:Boolean;
      
      protected var §#Y§:Sprite;
      
      private var §^7§:Array;
      
      private var §5T§:Boolean = true;
      
      private var §!3§:§4n§;
      
      private var §<!O§:Sprite;
      
      private var §&5§:Sprite;
      
      public function §'8§(param1:§0!5§, param2:Sprite, param3:§4n§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§%!h§ = null;
         this.§^7§ = [];
         super();
         this.§!3§ = param3;
         this.§#Y§ = param2;
         this.§<;§ = param1.§ !6§;
         this.§2_§ = param1.§3!#§;
         var _loc5_:Number = 1;
         if(param1.§9n§ != 0)
         {
            _loc5_ = param1.§9n§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §3!<§.§8E§(param1.mName,this.§!3§,param1.§?p§)))
         {
            _loc7_ = (_loc13_ = param3.§-f§(param1.mName)).pivotY;
            if(!this.§2_§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§1=§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§1=§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§,!]§.bottom;
            _loc8_ = (_loc10_.§,!]§.left + _loc10_.§,!]§.right) / 2;
         }
         if(this.§1=§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§1=§ = Math.round(this.§1=§);
         if(param1.§`!K§)
         {
            this.§[E§ = 2 + §>![§.§<d§ * 1.5 / (this.§1=§ * param4);
         }
         else
         {
            this.§[E§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§[E§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §3!<§.§8E§(param1.mName,this.§!3§,param1.§?p§);
               }
               else
               {
                  _loc10_ = new §1]§(_loc6_,false,param1.§?p§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§1=§ + (-_loc8_ * _loc5_ + param1.§=!J§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§5u§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§4a§(param1,(_loc12_ - 1) * this.§1=§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§#Y§.addChild(_loc11_);
         if(this.§<!O§)
         {
            if(this.§<!O§.numChildren > 0)
            {
               this.§#Y§.addChild(this.§<!O§);
            }
            else
            {
               this.§<!O§.dispose();
            }
         }
         if(this.§&5§)
         {
            if(this.§&5§.numChildren > 0)
            {
               this.§#Y§.addChildAt(this.§&5§,0);
            }
            else
            {
               this.§&5§.dispose();
            }
         }
         this.§#Y§.addEventListener(Event.ADDED_TO_STAGE,this.§;!D§);
      }
      
      public function get §1H§() : Boolean
      {
         return this.§2_§;
      }
      
      private function §4a§(param1:§0!5§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§8!-§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§^7§)
         {
            if((_loc4_ = §!k§.§5l§(_loc3_.id,this.§!3§)) && _loc4_.§,f§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§=!J§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §'!3§.§ !i§.add(_loc4_);
               this.§^7§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§&5§)
                  {
                     this.§&5§ = new Sprite();
                  }
                  this.§&5§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§<!O§)
                  {
                     this.§<!O§ = new Sprite();
                  }
                  this.§<!O§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§2!@§(1 / 20);
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
         var _loc1_:§-!Q§ = null;
         this.§#Y§.§-!l§(0,-1,true);
         this.§#Y§.removeEventListener(Event.ADDED_TO_STAGE,this.§;!D§);
         for each(_loc1_ in this.§^7§)
         {
            §'!3§.§ !i§.§%!X§(_loc1_);
            _loc1_.dispose();
         }
         this.§^7§ = [];
         this.§&5§ = null;
         this.§<!O§ = null;
      }
      
      private function §;!D§(param1:Event) : void
      {
         this.§<@§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§<;§ * param1;
         this.§#Y§.x = -_loc3_;
         this.§#Y§.y = -param2;
         this.§3!3§();
      }
      
      private function §<@§() : void
      {
         var _loc1_:§-!Q§ = null;
         if(!this.§5T§ || !this.§#Y§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§^7§)
         {
            §'!3§.§ !i§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §,;§() : void
      {
         var _loc1_:§-!Q§ = null;
         for each(_loc1_ in this.§^7§)
         {
            §'!3§.§ !i§.§%!X§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §8!5§(param1:Boolean) : void
      {
         if(param1 == this.§5T§)
         {
            return;
         }
         this.§5T§ = param1;
         if(this.§5T§)
         {
            this.§<@§();
         }
         else
         {
            this.§,;§();
         }
      }
      
      protected function §3!3§() : void
      {
         if(this.§[E§ == 1 || this.§^7§.length > 0)
         {
            return;
         }
         while(§+f§.§9!W§ + (this.§#Y§.x - this.§1=§) * §+f§.§1!m§ > 0)
         {
            this.§#Y§.x -= this.§1=§;
         }
         this.§+c§();
      }
      
      private function §+c§() : void
      {
      }
   }
}
