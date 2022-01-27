package §#n§
{
   import § !N§.§6!§;
   import § !N§.§^!>§;
   import § !N§.§`v§;
   import §0l§.Texture;
   import §1!H§.ParticleDesignerPS;
   import §3H§.DisplayObject;
   import §3H§.Sprite;
   import §3H§.§`!@§;
   import §5J§.§>$§;
   import §>2§.§%2§;
   import §>2§.§4h§;
   import §^Q§.§<a§;
   import §`!&§.§-a§;
   import starling.events.Event;
   import §try§.ParticleManager;
   
   public class §+h§
   {
       
      
      protected var §=N§:int;
      
      private var §+&§:int;
      
      protected var §]a§:Number;
      
      private var §8o§:Boolean;
      
      protected var §5+§:Sprite;
      
      private var §[!'§:Array;
      
      private var §5e§:Boolean = true;
      
      private var §<!-§:§`v§;
      
      private var §^0§:Sprite;
      
      private var §@>§:Sprite;
      
      public function §+h§(param1:§-a§, param2:Sprite, param3:§`v§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§6!§ = null;
         this.§[!'§ = [];
         super();
         this.§<!-§ = param3;
         this.§5+§ = param2;
         this.§]a§ = param1.§<H§;
         this.§8o§ = param1.§-F§;
         var _loc5_:Number = 1;
         if(param1.§&;§ != 0)
         {
            _loc5_ = param1.§&;§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §^!>§.§+C§(param1.mName,this.§<!-§,param1.§6!G§)))
         {
            _loc7_ = (_loc13_ = param3.§?2§(param1.mName)).pivotY;
            if(!this.§8o§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§=N§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§=N§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§'s§.bottom;
            _loc8_ = (_loc10_.§'s§.left + _loc10_.§'s§.right) / 2;
         }
         if(this.§=N§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§=N§ = Math.round(this.§=N§);
         if(param1.§"D§)
         {
            this.§+&§ = 2 + §4h§.§^v§ * 1.5 / (this.§=N§ * param4);
         }
         else
         {
            this.§+&§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§+&§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §^!>§.§+C§(param1.mName,this.§<!-§,param1.§6!G§);
               }
               else
               {
                  _loc10_ = new §`!@§(_loc6_,false,param1.§6!G§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§=N§ + (-_loc8_ * _loc5_ + param1.§@]§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§!+§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§7l§(param1,(_loc12_ - 1) * this.§=N§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§5+§.addChild(_loc11_);
         if(this.§^0§)
         {
            if(this.§^0§.numChildren > 0)
            {
               this.§5+§.addChild(this.§^0§);
            }
            else
            {
               this.§^0§.dispose();
            }
         }
         if(this.§@>§)
         {
            if(this.§@>§.numChildren > 0)
            {
               this.§5+§.addChildAt(this.§@>§,0);
            }
            else
            {
               this.§@>§.dispose();
            }
         }
         this.§5+§.addEventListener(Event.ADDED_TO_STAGE,this.§!!I§);
      }
      
      public function get §"!O§() : Boolean
      {
         return this.§8o§;
      }
      
      private function §7l§(param1:§-a§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§%2§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§[!'§)
         {
            if((_loc4_ = ParticleManager.§[!&§(_loc3_.id,this.§<!-§)) && _loc4_.§-&§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§@]§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §>$§.§3D§.add(_loc4_);
               this.§[!'§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§@>§)
                  {
                     this.§@>§ = new Sprite();
                  }
                  this.§@>§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§^0§)
                  {
                     this.§^0§ = new Sprite();
                  }
                  this.§^0§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§%!3§(1 / 20);
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
         this.§5+§.§+K§(0,-1,true);
         this.§5+§.removeEventListener(Event.ADDED_TO_STAGE,this.§!!I§);
         for each(_loc1_ in this.§[!'§)
         {
            §>$§.§3D§.§-%§(_loc1_);
            _loc1_.dispose();
         }
         this.§[!'§ = [];
         this.§@>§ = null;
         this.§^0§ = null;
      }
      
      private function §!!I§(param1:Event) : void
      {
         this.§2e§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§]a§ * param1;
         this.§5+§.x = -_loc3_;
         this.§5+§.y = -param2;
         this.§4o§();
      }
      
      private function §2e§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§5e§ || !this.§5+§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§[!'§)
         {
            §>$§.§3D§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §!&§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§[!'§)
         {
            §>$§.§3D§.§-%§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §38§(param1:Boolean) : void
      {
         if(param1 == this.§5e§)
         {
            return;
         }
         this.§5e§ = param1;
         if(this.§5e§)
         {
            this.§2e§();
         }
         else
         {
            this.§!&§();
         }
      }
      
      protected function §4o§() : void
      {
         if(this.§+&§ == 1 || this.§[!'§.length > 0)
         {
            return;
         }
         while(§<a§.§-!K§ + (this.§5+§.x - this.§=N§) * §<a§.levelScale > 0)
         {
            this.§5+§.x -= this.§=N§;
         }
         this.§,z§();
      }
      
      private function §,z§() : void
      {
      }
   }
}
