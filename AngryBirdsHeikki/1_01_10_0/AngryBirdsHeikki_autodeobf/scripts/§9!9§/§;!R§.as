package §9!9§
{
   import § in§.§[!U§;
   import §"!I§.§4Q§;
   import §"!I§.§^!2§;
   import §"^§.§+!'§;
   import §+"§.§#!=§;
   import §2Y§.§7!f§;
   import §2Y§.DisplayObject;
   import §2Y§.Sprite;
   import §53§.§7k§;
   import §9!4§.§95§;
   import §=!<§.§8!!§;
   import §=!<§.§>a§;
   import §=!<§.§`[§;
   import starling.events.Event;
   
   public class §;!R§
   {
       
      
      protected var §[R§:int;
      
      private var §=O§:int;
      
      protected var §use§:Number;
      
      private var §<-§:Boolean;
      
      protected var §;=§:Sprite;
      
      private var §&!C§:Array;
      
      private var §19§:Boolean = true;
      
      private var §;u§:§>a§;
      
      private var §]!b§:Sprite;
      
      private var §>4§:Sprite;
      
      public function §;!R§(param1:§#!=§, param2:Sprite, param3:§>a§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§8!!§ = null;
         this.§&!C§ = [];
         super();
         this.§;u§ = param3;
         this.§;=§ = param2;
         this.§use§ = param1.§4r§;
         this.§<-§ = param1.§@v§;
         var _loc5_:Number = 1;
         if(param1.get != 0)
         {
            _loc5_ = param1.get;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §`[§.§&Y§(param1.mName,this.§;u§,param1.§[!+§)))
         {
            _loc7_ = (_loc13_ = param3.§8t§(param1.mName)).pivotY;
            if(!this.§<-§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§[R§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§[R§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§!!2§.bottom;
            _loc8_ = (_loc10_.§!!2§.left + _loc10_.§!!2§.right) / 2;
         }
         if(this.§[R§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§[R§ = Math.round(this.§[R§);
         if(param1.§@P§)
         {
            this.§=O§ = 2 + §^!2§.§@!@§ * 1.5 / (this.§[R§ * param4);
         }
         else
         {
            this.§=O§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§=O§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §`[§.§&Y§(param1.mName,this.§;u§,param1.§[!+§);
               }
               else
               {
                  _loc10_ = new §7!f§(_loc6_,false,param1.§[!+§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§[R§ + (-_loc8_ * _loc5_ + param1.§=E§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§+8§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§<2§(param1,(_loc12_ - 1) * this.§[R§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§;=§.addChild(_loc11_);
         if(this.§]!b§)
         {
            if(this.§]!b§.numChildren > 0)
            {
               this.§;=§.addChild(this.§]!b§);
            }
            else
            {
               this.§]!b§.dispose();
            }
         }
         if(this.§>4§)
         {
            if(this.§>4§.numChildren > 0)
            {
               this.§;=§.addChildAt(this.§>4§,0);
            }
            else
            {
               this.§>4§.dispose();
            }
         }
         this.§;=§.addEventListener(Event.ADDED_TO_STAGE,this.§,§);
      }
      
      public function get §,C§() : Boolean
      {
         return this.§<-§;
      }
      
      private function §<2§(param1:§#!=§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§4Q§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§&!C§)
         {
            if((_loc4_ = §[!U§.§=#§(_loc3_.id,this.§;u§)) && _loc4_.§3!U§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§=E§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §+!'§.§9!;§.add(_loc4_);
               this.§&!C§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§>4§)
                  {
                     this.§>4§ = new Sprite();
                  }
                  this.§>4§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§]!b§)
                  {
                     this.§]!b§ = new Sprite();
                  }
                  this.§]!b§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§!T§(1 / 20);
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
         var _loc1_:§7k§ = null;
         this.§;=§.§`!C§(0,-1,true);
         this.§;=§.removeEventListener(Event.ADDED_TO_STAGE,this.§,§);
         for each(_loc1_ in this.§&!C§)
         {
            §+!'§.§9!;§.§8!8§(_loc1_);
            _loc1_.dispose();
         }
         this.§&!C§ = [];
         this.§>4§ = null;
         this.§]!b§ = null;
      }
      
      private function §,§(param1:Event) : void
      {
         this.§'!L§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§use§ * param1;
         this.§;=§.x = -_loc3_;
         this.§;=§.y = -param2;
         this.§^!L§();
      }
      
      private function §'!L§() : void
      {
         var _loc1_:§7k§ = null;
         if(!this.§19§ || !this.§;=§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§&!C§)
         {
            §+!'§.§9!;§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §`9§() : void
      {
         var _loc1_:§7k§ = null;
         for each(_loc1_ in this.§&!C§)
         {
            §+!'§.§9!;§.§8!8§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §=[§(param1:Boolean) : void
      {
         if(param1 == this.§19§)
         {
            return;
         }
         this.§19§ = param1;
         if(this.§19§)
         {
            this.§'!L§();
         }
         else
         {
            this.§`9§();
         }
      }
      
      protected function §^!L§() : void
      {
         if(this.§=O§ == 1 || this.§&!C§.length > 0)
         {
            return;
         }
         while(§95§.§02§ + (this.§;=§.x - this.§[R§) * §95§.§3d§ > 0)
         {
            this.§;=§.x -= this.§[R§;
         }
         this.§7P§();
      }
      
      private function §7P§() : void
      {
      }
   }
}
