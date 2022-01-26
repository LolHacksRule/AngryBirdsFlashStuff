package §^f§
{
   import § t§.§?U§;
   import §!!V§.§&I§;
   import §!!V§.§5!]§;
   import §"4§.§<h§;
   import §&!5§.§'!$§;
   import §&!5§.DisplayObject;
   import §&!5§.Sprite;
   import §,8§.§0!$§;
   import §3!#§.§0N§;
   import §9!2§.§'![§;
   import §9!2§.§<j§;
   import §9!2§.§@o§;
   import §@-§.§<g§;
   import starling.events.Event;
   import §switch§.Texture;
   
   public class §<!=§
   {
       
      
      private var §3!_§:int;
      
      private var §>A§:int;
      
      private var §[+§:Number;
      
      private var §[_§:Boolean;
      
      private var §6`§:Sprite;
      
      private var §@,§:Array;
      
      private var §5T§:Boolean = true;
      
      private var §5-§:§'![§;
      
      private var §?&§:Sprite;
      
      private var §`R§:Sprite;
      
      public function §<!=§(param1:§<g§, param2:Sprite, param3:§'![§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§<j§ = null;
         this.§@,§ = [];
         super();
         this.§5-§ = param3;
         this.§6`§ = param2;
         this.§[+§ = param1.§9_§;
         this.§[_§ = param1.§>!$§;
         var _loc5_:Number = 1;
         if(param1.§4!S§ != 0)
         {
            _loc5_ = param1.§4!S§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §@o§.§1!2§(param1.mName,this.§5-§,param1.§;!]§)))
         {
            _loc7_ = (_loc13_ = param3.§&'§(param1.mName)).pivotY;
            if(!this.§[_§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§3!_§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§3!_§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§!!R§.bottom;
            _loc8_ = (_loc10_.§!!R§.left + _loc10_.§!!R§.right) / 2;
         }
         if(this.§3!_§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§3!_§ = Math.round(this.§3!_§);
         if(param1.§7"§)
         {
            this.§>A§ = 2 + §&I§.§?!>§ * 1.5 / (this.§3!_§ * param4);
         }
         else
         {
            this.§>A§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§>A§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §@o§.§1!2§(param1.mName,this.§5-§,param1.§;!]§);
               }
               else
               {
                  _loc10_ = new §'!$§(_loc6_,false,param1.§;!]§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§3!_§ + (-_loc8_ * _loc5_ + param1.§<!!§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§>^§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§=!P§(param1,(_loc12_ - 1) * this.§3!_§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§6`§.addChild(_loc11_);
         if(this.§?&§)
         {
            if(this.§?&§.numChildren > 0)
            {
               this.§6`§.addChild(this.§?&§);
            }
            else
            {
               this.§?&§.dispose();
            }
         }
         if(this.§`R§)
         {
            if(this.§`R§.numChildren > 0)
            {
               this.§6`§.addChildAt(this.§`R§,0);
            }
            else
            {
               this.§`R§.dispose();
            }
         }
         this.§6`§.addEventListener(Event.ADDED_TO_STAGE,this.§4y§);
      }
      
      public function get §?!7§() : Boolean
      {
         return this.§[_§;
      }
      
      private function §=!P§(param1:§<g§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§5!]§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§@,§)
         {
            if((_loc4_ = §0N§.§!g§(_loc3_.id,this.§5-§)) && _loc4_.§+2§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§<!!§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §<h§.§4!J§.add(_loc4_);
               this.§@,§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§`R§)
                  {
                     this.§`R§ = new Sprite();
                  }
                  this.§`R§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§?&§)
                  {
                     this.§?&§ = new Sprite();
                  }
                  this.§?&§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§1Z§(1 / 20);
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
         var _loc1_:§0!$§ = null;
         this.§6`§.§try §(0,-1,true);
         this.§6`§.removeEventListener(Event.ADDED_TO_STAGE,this.§4y§);
         for each(_loc1_ in this.§@,§)
         {
            §<h§.§4!J§.§`!D§(_loc1_);
            _loc1_.dispose();
         }
         this.§@,§ = [];
         this.§`R§ = null;
         this.§?&§ = null;
      }
      
      private function §4y§(param1:Event) : void
      {
         this.§ N§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§[+§ * param1;
         this.§6`§.x = -_loc3_;
         this.§6`§.y = -param2;
         this.§4!B§();
      }
      
      private function § N§() : void
      {
         var _loc1_:§0!$§ = null;
         if(!this.§5T§ || !this.§6`§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§@,§)
         {
            §<h§.§4!J§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §[^§() : void
      {
         var _loc1_:§0!$§ = null;
         for each(_loc1_ in this.§@,§)
         {
            §<h§.§4!J§.§`!D§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §,T§(param1:Boolean) : void
      {
         if(param1 == this.§5T§)
         {
            return;
         }
         this.§5T§ = param1;
         if(this.§5T§)
         {
            this.§ N§();
         }
         else
         {
            this.§[^§();
         }
      }
      
      private function §4!B§() : void
      {
         if(this.§>A§ == 1 || this.§@,§.length > 0)
         {
            return;
         }
         while(§?U§.§+g§ + (this.§6`§.x - this.§3!_§) * §?U§.§!q§ > 0)
         {
            this.§6`§.x -= this.§3!_§;
         }
         this.§+![§();
      }
      
      private function §+![§() : void
      {
      }
   }
}
