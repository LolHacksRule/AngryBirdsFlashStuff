package §@0§
{
   import §%t§.§#B§;
   import §%t§.§-!5§;
   import §%t§.§^-§;
   import §'!s§.§;"1§;
   import §2!§.§1!n§;
   import §4!S§.Texture;
   import §4!s§.§%I§;
   import §4!s§.§10§;
   import §5!5§.§^e§;
   import §63§.§`z§;
   import §>"6§.§9!;§;
   import §^I§.§=!+§;
   import §^I§.DisplayObject;
   import §^I§.Sprite;
   import starling.events.Event;
   
   public class §^!W§
   {
       
      
      protected var §0R§:int;
      
      private var §@"&§:int;
      
      protected var §&!N§:Number;
      
      private var §@!h§:Boolean;
      
      protected var §;!E§:Sprite;
      
      private var §!!7§:Array;
      
      private var §<!a§:Boolean = true;
      
      private var §^o§:§-!5§;
      
      private var §,!<§:Sprite;
      
      private var §"d§:Sprite;
      
      public function §^!W§(param1:§;"1§, param2:Sprite, param3:§-!5§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§#B§ = null;
         this.§!!7§ = [];
         super();
         this.§^o§ = param3;
         this.§;!E§ = param2;
         this.§&!N§ = param1.§-R§;
         this.§@!h§ = param1.§[b§;
         var _loc5_:Number = 1;
         if(param1.§5N§ != 0)
         {
            _loc5_ = param1.§5N§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §^-§.§#f§(param1.mName,this.§^o§,param1.§>&§)))
         {
            _loc7_ = (_loc13_ = param3.§ !Z§(param1.mName)).pivotY;
            if(!this.§@!h§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§0R§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§0R§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§#!F§.bottom;
            _loc8_ = (_loc10_.§#!F§.left + _loc10_.§#!F§.right) / 2;
         }
         if(this.§0R§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§0R§ = Math.round(this.§0R§);
         if(param1.§"!+§)
         {
            this.§@"&§ = 2 + §%I§.§ v§ * 1.5 / (this.§0R§ * param4);
         }
         else
         {
            this.§@"&§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§@"&§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §^-§.§#f§(param1.mName,this.§^o§,param1.§>&§);
               }
               else
               {
                  _loc10_ = new §=!+§(_loc6_,false,param1.§>&§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§0R§ + (-_loc8_ * _loc5_ + param1.§3"0§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§-]§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§2"7§(param1,(_loc12_ - 1) * this.§0R§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§;!E§.addChild(_loc11_);
         if(this.§,!<§)
         {
            if(this.§,!<§.numChildren > 0)
            {
               this.§;!E§.addChild(this.§,!<§);
            }
            else
            {
               this.§,!<§.dispose();
            }
         }
         if(this.§"d§)
         {
            if(this.§"d§.numChildren > 0)
            {
               this.§;!E§.addChildAt(this.§"d§,0);
            }
            else
            {
               this.§"d§.dispose();
            }
         }
         this.§;!E§.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      public function get §8!b§() : Boolean
      {
         return this.§@!h§;
      }
      
      private function §2"7§(param1:§;"1§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§10§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§!!7§)
         {
            if((_loc4_ = §`z§.§>o§(_loc3_.id,this.§^o§)) && _loc4_.§#`§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§3"0§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §^e§.§,_§.add(_loc4_);
               this.§!!7§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§"d§)
                  {
                     this.§"d§ = new Sprite();
                  }
                  this.§"d§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§,!<§)
                  {
                     this.§,!<§ = new Sprite();
                  }
                  this.§,!<§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§'!V§(1 / 20);
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
         var _loc1_:§9!;§ = null;
         this.§;!E§.removeChildren(0,-1,true);
         this.§;!E§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         for each(_loc1_ in this.§!!7§)
         {
            §^e§.§,_§.§5!h§(_loc1_);
            _loc1_.dispose();
         }
         this.§!!7§ = [];
         this.§"d§ = null;
         this.§,!<§ = null;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§>!m§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§&!N§ * param1;
         this.§;!E§.x = -_loc3_;
         this.§;!E§.y = -param2;
         this.§"!z§();
      }
      
      private function §>!m§() : void
      {
         var _loc1_:§9!;§ = null;
         if(!this.§<!a§ || !this.§;!E§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§!!7§)
         {
            §^e§.§,_§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §?`§() : void
      {
         var _loc1_:§9!;§ = null;
         for each(_loc1_ in this.§!!7§)
         {
            §^e§.§,_§.§5!h§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §;!o§(param1:Boolean) : void
      {
         if(param1 == this.§<!a§)
         {
            return;
         }
         this.§<!a§ = param1;
         if(this.§<!a§)
         {
            this.§>!m§();
         }
         else
         {
            this.§?`§();
         }
      }
      
      protected function §"!z§() : void
      {
         if(this.§@"&§ == 1 || this.§!!7§.length > 0)
         {
            return;
         }
         while(§1!n§.§#C§ + (this.§;!E§.x - this.§0R§) * §1!n§.§#!%§ > 0)
         {
            this.§;!E§.x -= this.§0R§;
         }
         this.§2"+§();
      }
      
      private function §2"+§() : void
      {
      }
   }
}
