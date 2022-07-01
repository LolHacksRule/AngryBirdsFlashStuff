package §[!M§
{
   import §-!+§.§6"6§;
   import §-w§.§@"4§;
   import §2b§.§"" §;
   import §8!E§.§%P§;
   import §8!E§.§?!X§;
   import §;!@§.§+"+§;
   import §>0§.§8" §;
   import §@!#§.Texture;
   import §`"2§.§%3§;
   import §`"2§.§6!,§;
   import §`"2§.§6L§;
   import §`L§.§-;§;
   import §`L§.DisplayObject;
   import §`L§.Sprite;
   import starling.events.Event;
   
   public class §'#§
   {
       
      
      protected var §&!v§:int;
      
      private var § "-§:int;
      
      protected var §+""§:Number;
      
      private var §0!P§:Boolean;
      
      protected var §`B§:Sprite;
      
      private var §5l§:Array;
      
      private var §3!y§:Boolean = true;
      
      private var §>!t§:§6!,§;
      
      private var §0,§:Sprite;
      
      private var §+Y§:Sprite;
      
      public function §'#§(param1:§+"+§, param2:Sprite, param3:§6!,§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§%3§ = null;
         this.§5l§ = [];
         super();
         this.§>!t§ = param3;
         this.§`B§ = param2;
         this.§+""§ = param1.§,"8§;
         this.§0!P§ = param1.§@;§;
         var _loc5_:Number = 1;
         if(param1.§#"0§ != 0)
         {
            _loc5_ = param1.§#"0§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §6L§.§&I§(param1.mName,this.§>!t§,param1.§?!3§)))
         {
            _loc7_ = (_loc13_ = param3.§'"#§(param1.mName)).pivotY;
            if(!this.§0!P§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§&!v§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§&!v§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§0_§.bottom;
            _loc8_ = (_loc10_.§0_§.left + _loc10_.§0_§.right) / 2;
         }
         if(this.§&!v§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§&!v§ = Math.round(this.§&!v§);
         if(param1.§ !0§)
         {
            this.§ "-§ = 2 + §?!X§.§4J§ * 1.5 / (this.§&!v§ * param4);
         }
         else
         {
            this.§ "-§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§ "-§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §6L§.§&I§(param1.mName,this.§>!t§,param1.§?!3§);
               }
               else
               {
                  _loc10_ = new §-;§(_loc6_,false,param1.§?!3§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§&!v§ + (-_loc8_ * _loc5_ + param1.§"A§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§+I§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§"U§(param1,(_loc12_ - 1) * this.§&!v§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§`B§.addChild(_loc11_);
         if(this.§0,§)
         {
            if(this.§0,§.numChildren > 0)
            {
               this.§`B§.addChild(this.§0,§);
            }
            else
            {
               this.§0,§.dispose();
            }
         }
         if(this.§+Y§)
         {
            if(this.§+Y§.numChildren > 0)
            {
               this.§`B§.addChildAt(this.§+Y§,0);
            }
            else
            {
               this.§+Y§.dispose();
            }
         }
         this.§`B§.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      public function get §6"§() : Boolean
      {
         return this.§0!P§;
      }
      
      private function §"U§(param1:§+"+§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§%P§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§5l§)
         {
            if((_loc4_ = §8" §.§^"6§(_loc3_.id,this.§>!t§)) && _loc4_.§="§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§"A§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §6"6§.§4H§.add(_loc4_);
               this.§5l§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§+Y§)
                  {
                     this.§+Y§ = new Sprite();
                  }
                  this.§+Y§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§0,§)
                  {
                     this.§0,§ = new Sprite();
                  }
                  this.§0,§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§^"2§(1 / 20);
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
         var _loc1_:§@"4§ = null;
         this.§`B§.removeChildren(0,-1,true);
         this.§`B§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         for each(_loc1_ in this.§5l§)
         {
            §6"6§.§4H§.§1O§(_loc1_);
            _loc1_.dispose();
         }
         this.§5l§ = [];
         this.§+Y§ = null;
         this.§0,§ = null;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§;" §();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§+""§ * param1;
         this.§`B§.x = -_loc3_;
         this.§`B§.y = -param2;
         this.§!S§();
      }
      
      private function §;" §() : void
      {
         var _loc1_:§@"4§ = null;
         if(!this.§3!y§ || !this.§`B§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§5l§)
         {
            §6"6§.§4H§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §+!8§() : void
      {
         var _loc1_:§@"4§ = null;
         for each(_loc1_ in this.§5l§)
         {
            §6"6§.§4H§.§1O§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function § 5§(param1:Boolean) : void
      {
         if(param1 == this.§3!y§)
         {
            return;
         }
         this.§3!y§ = param1;
         if(this.§3!y§)
         {
            this.§;" §();
         }
         else
         {
            this.§+!8§();
         }
      }
      
      protected function §!S§() : void
      {
         if(this.§ "-§ == 1 || this.§5l§.length > 0)
         {
            return;
         }
         while(§"" §.§?!n§ + (this.§`B§.x - this.§&!v§) * §"" §.§>!-§ > 0)
         {
            this.§`B§.x -= this.§&!v§;
         }
         this.§,"<§();
      }
      
      private function §,"<§() : void
      {
      }
   }
}
