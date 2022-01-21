package §6!X§
{
   import §",§.Texture;
   import §#t§.§6n§;
   import §%!E§.§,f§;
   import §'a§.§0!f§;
   import §'a§.§5l§;
   import §4!$§.§<!2§;
   import §5!l§.§ !D§;
   import §5!l§.§9Z§;
   import §5!l§.§=!;§;
   import §5x§.§2!K§;
   import §5x§.DisplayObject;
   import §5x§.Sprite;
   import §[_§.§2D§;
   import §]6§.§<!P§;
   import starling.events.Event;
   
   public class §!'§
   {
       
      
      protected var §`!]§:int;
      
      private var §7!a§:int;
      
      protected var §8!m§:Number;
      
      private var §!@§:Boolean;
      
      protected var §`n§:Sprite;
      
      private var §-!^§:Array;
      
      private var §9<§:Boolean = true;
      
      private var §8!b§:§ !D§;
      
      private var §&!<§:Sprite;
      
      private var §7![§:Sprite;
      
      public function §!'§(param1:§<!P§, param2:Sprite, param3:§ !D§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§9Z§ = null;
         this.§-!^§ = [];
         super();
         this.§8!b§ = param3;
         this.§`n§ = param2;
         this.§8!m§ = param1.§default§;
         this.§!@§ = param1.§>'§;
         var _loc5_:Number = 1;
         if(param1.§>c§ != 0)
         {
            _loc5_ = param1.§>c§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §=!;§.§3W§(param1.mName,this.§8!b§,param1.§,!F§)))
         {
            _loc7_ = (_loc13_ = param3.§2x§(param1.mName)).pivotY;
            if(!this.§!@§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§`!]§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§`!]§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§=M§.bottom;
            _loc8_ = (_loc10_.§=M§.left + _loc10_.§=M§.right) / 2;
         }
         if(this.§`!]§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§`!]§ = Math.round(this.§`!]§);
         if(param1.§^!;§)
         {
            this.§7!a§ = 2 + §0!f§.§"i§ * 1.5 / (this.§`!]§ * param4);
         }
         else
         {
            this.§7!a§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§7!a§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §=!;§.§3W§(param1.mName,this.§8!b§,param1.§,!F§);
               }
               else
               {
                  _loc10_ = new §2!K§(_loc6_,false,param1.§,!F§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§`!]§ + (-_loc8_ * _loc5_ + param1.§40§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§&!`§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§6!U§(param1,(_loc12_ - 1) * this.§`!]§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§`n§.addChild(_loc11_);
         if(this.§&!<§)
         {
            if(this.§&!<§.numChildren > 0)
            {
               this.§`n§.addChild(this.§&!<§);
            }
            else
            {
               this.§&!<§.dispose();
            }
         }
         if(this.§7![§)
         {
            if(this.§7![§.numChildren > 0)
            {
               this.§`n§.addChildAt(this.§7![§,0);
            }
            else
            {
               this.§7![§.dispose();
            }
         }
         this.§`n§.addEventListener(Event.ADDED_TO_STAGE,this.§@L§);
      }
      
      public function get §;!S§() : Boolean
      {
         return this.§!@§;
      }
      
      private function §6!U§(param1:§<!P§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§5l§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§-!^§)
         {
            if((_loc4_ = §,f§.§%Y§(_loc3_.id,this.§8!b§)) && _loc4_.§1!4§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§40§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §<!2§.§!K§.add(_loc4_);
               this.§-!^§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§7![§)
                  {
                     this.§7![§ = new Sprite();
                  }
                  this.§7![§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§&!<§)
                  {
                     this.§&!<§ = new Sprite();
                  }
                  this.§&!<§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§ x§(1 / 20);
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
         var _loc1_:§6n§ = null;
         this.§`n§.§-!I§(0,-1,true);
         this.§`n§.removeEventListener(Event.ADDED_TO_STAGE,this.§@L§);
         for each(_loc1_ in this.§-!^§)
         {
            §<!2§.§!K§.§]4§(_loc1_);
            _loc1_.dispose();
         }
         this.§-!^§ = [];
         this.§7![§ = null;
         this.§&!<§ = null;
      }
      
      private function §@L§(param1:Event) : void
      {
         this.§>p§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§8!m§ * param1;
         this.§`n§.x = -_loc3_;
         this.§`n§.y = -param2;
         this.§1!6§();
      }
      
      private function §>p§() : void
      {
         var _loc1_:§6n§ = null;
         if(!this.§9<§ || !this.§`n§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§-!^§)
         {
            §<!2§.§!K§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §7!P§() : void
      {
         var _loc1_:§6n§ = null;
         for each(_loc1_ in this.§-!^§)
         {
            §<!2§.§!K§.§]4§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §!C§(param1:Boolean) : void
      {
         if(param1 == this.§9<§)
         {
            return;
         }
         this.§9<§ = param1;
         if(this.§9<§)
         {
            this.§>p§();
         }
         else
         {
            this.§7!P§();
         }
      }
      
      protected function §1!6§() : void
      {
         if(this.§7!a§ == 1 || this.§-!^§.length > 0)
         {
            return;
         }
         while(§2D§.§]!A§ + (this.§`n§.x - this.§`!]§) * §2D§.§0#§ > 0)
         {
            this.§`n§.x -= this.§`!]§;
         }
         this.§>1§();
      }
      
      private function §>1§() : void
      {
      }
   }
}
