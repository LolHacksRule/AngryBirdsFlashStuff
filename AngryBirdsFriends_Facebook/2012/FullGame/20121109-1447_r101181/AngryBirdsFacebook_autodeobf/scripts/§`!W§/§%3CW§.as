package §`!W§
{
   import §'6§.§"]§;
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §3"7§.ParticleManager;
   import §6!D§.§0Y§;
   import §6!D§.§3!K§;
   import §6!D§.§9R§;
   import §9"!§.§7!k§;
   import §9"!§.§9"3§;
   import §<!E§.ParticleDesignerPS;
   import §<u§.§%"8§;
   import §[!"§.§&0§;
   import starling.events.Event;
   
   public class §<W§
   {
       
      
      protected var §2b§:int;
      
      private var §-!T§:int;
      
      protected var §0e§:Number;
      
      private var §7+§:Boolean;
      
      protected var §3^§:Sprite;
      
      private var § e§:Array;
      
      private var §=!-§:Boolean = true;
      
      private var § !@§:§0Y§;
      
      private var §5!9§:Sprite;
      
      private var §'U§:Sprite;
      
      public function §<W§(param1:§%"8§, param2:Sprite, param3:§0Y§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§3!K§ = null;
         this.§ e§ = [];
         super();
         this.§ !@§ = param3;
         this.§3^§ = param2;
         this.§0e§ = param1.§ 1§;
         this.§7+§ = param1.§""D§;
         var _loc5_:Number = 1;
         if(param1.§[!q§ != 0)
         {
            _loc5_ = param1.§[!q§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §9R§.§ C§(param1.mName,this.§ !@§,param1.§5!1§)))
         {
            _loc7_ = (_loc13_ = param3.§>s§(param1.mName)).pivotY;
            if(!this.§7+§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§2b§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§2b§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§3",§.bottom;
            _loc8_ = (_loc10_.§3",§.left + _loc10_.§3",§.right) / 2;
         }
         if(this.§2b§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§2b§ = Math.round(this.§2b§);
         if(param1.§`!+§)
         {
            this.§-!T§ = 2 + §9"3§.§=k§ * 1.5 / (this.§2b§ * param4);
         }
         else
         {
            this.§-!T§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§-!T§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §9R§.§ C§(param1.mName,this.§ !@§,param1.§5!1§);
               }
               else
               {
                  _loc10_ = new §0!N§(_loc6_,false,param1.§5!1§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§2b§ + (-_loc8_ * _loc5_ + param1.§?!R§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§8!`§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§`!e§(param1,(_loc12_ - 1) * this.§2b§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§3^§.addChild(_loc11_);
         if(this.§5!9§)
         {
            if(this.§5!9§.numChildren > 0)
            {
               this.§3^§.addChild(this.§5!9§);
            }
            else
            {
               this.§5!9§.dispose();
            }
         }
         if(this.§'U§)
         {
            if(this.§'U§.numChildren > 0)
            {
               this.§3^§.addChildAt(this.§'U§,0);
            }
            else
            {
               this.§'U§.dispose();
            }
         }
         this.§3^§.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      public function get §]p§() : Boolean
      {
         return this.§7+§;
      }
      
      private function §`!e§(param1:§%"8§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§7!k§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§ e§)
         {
            if((_loc4_ = ParticleManager.§=D§(_loc3_.id,this.§ !@§)) && _loc4_.§&!&§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§?!R§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §"]§.§^!v§.add(_loc4_);
               this.§ e§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§'U§)
                  {
                     this.§'U§ = new Sprite();
                  }
                  this.§'U§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§5!9§)
                  {
                     this.§5!9§ = new Sprite();
                  }
                  this.§5!9§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§8D§(1 / 20);
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
         this.§3^§.§8!,§(0,-1,true);
         this.§3^§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         for each(_loc1_ in this.§ e§)
         {
            §"]§.§^!v§.§<"<§(_loc1_);
            _loc1_.dispose();
         }
         this.§ e§ = [];
         this.§'U§ = null;
         this.§5!9§ = null;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§+",§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§0e§ * param1;
         this.§3^§.x = -_loc3_;
         this.§3^§.y = -param2;
         this.§13§();
      }
      
      private function §+",§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§=!-§ || !this.§3^§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§ e§)
         {
            §"]§.§^!v§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §`S§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§ e§)
         {
            §"]§.§^!v§.§<"<§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §'h§(param1:Boolean) : void
      {
         if(param1 == this.§=!-§)
         {
            return;
         }
         this.§=!-§ = param1;
         if(this.§=!-§)
         {
            this.§+",§();
         }
         else
         {
            this.§`S§();
         }
      }
      
      protected function §13§() : void
      {
         if(this.§-!T§ == 1 || this.§ e§.length > 0)
         {
            return;
         }
         while(§&0§.§0"&§ + (this.§3^§.x - this.§2b§) * §&0§.§8!F§ > 0)
         {
            this.§3^§.x -= this.§2b§;
         }
         this.§#-§();
      }
      
      private function §#-§() : void
      {
      }
   }
}
