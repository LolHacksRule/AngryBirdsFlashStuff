package §2!]§
{
   import §&"5§.§4!h§;
   import §&"5§.§6!L§;
   import §&"5§.§7!P§;
   import §5!V§.§!w§;
   import §5!V§.§9!C§;
   import §6p§.§?%§;
   import §7R§.Texture;
   import §8g§.§8s§;
   import §9=§.§'" §;
   import §9x§.§#B§;
   import §=!#§.§`"=§;
   import §default§.§=!Z§;
   import §default§.DisplayObject;
   import §default§.Sprite;
   import starling.events.Event;
   
   public class §9!M§
   {
       
      
      protected var §"C§:int;
      
      private var §;!8§:int;
      
      protected var §4!o§:Number;
      
      private var §5!Q§:Boolean;
      
      protected var §!&§:Sprite;
      
      private var §6J§:Array;
      
      private var §=!$§:Boolean = true;
      
      private var §2"!§:§7!P§;
      
      private var §0e§:Sprite;
      
      private var §import§:Sprite;
      
      public function §9!M§(param1:§'" §, param2:Sprite, param3:§7!P§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§6!L§ = null;
         this.§6J§ = [];
         super();
         this.§2"!§ = param3;
         this.§!&§ = param2;
         this.§4!o§ = param1.§5!?§;
         this.§5!Q§ = param1.§1i§;
         var _loc5_:Number = 1;
         if(param1.§?a§ != 0)
         {
            _loc5_ = param1.§?a§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §4!h§.§4!t§(param1.mName,this.§2"!§,param1.§3z§)))
         {
            _loc7_ = (_loc13_ = param3.§12§(param1.mName)).pivotY;
            if(!this.§5!Q§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§"C§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§"C§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§?!i§.bottom;
            _loc8_ = (_loc10_.§?!i§.left + _loc10_.§?!i§.right) / 2;
         }
         if(this.§"C§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§"C§ = Math.round(this.§"C§);
         if(param1.§]l§)
         {
            this.§;!8§ = 2 + §!w§.§[!c§ * 1.5 / (this.§"C§ * param4);
         }
         else
         {
            this.§;!8§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§;!8§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §4!h§.§4!t§(param1.mName,this.§2"!§,param1.§3z§);
               }
               else
               {
                  _loc10_ = new §=!Z§(_loc6_,false,param1.§3z§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§"C§ + (-_loc8_ * _loc5_ + param1.§2A§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§="3§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§>!_§(param1,(_loc12_ - 1) * this.§"C§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§!&§.addChild(_loc11_);
         if(this.§0e§)
         {
            if(this.§0e§.numChildren > 0)
            {
               this.§!&§.addChild(this.§0e§);
            }
            else
            {
               this.§0e§.dispose();
            }
         }
         if(this.§import§)
         {
            if(this.§import§.numChildren > 0)
            {
               this.§!&§.addChildAt(this.§import§,0);
            }
            else
            {
               this.§import§.dispose();
            }
         }
         this.§!&§.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      public function get §3%§() : Boolean
      {
         return this.§5!Q§;
      }
      
      private function §>!_§(param1:§'" §, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§9!C§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§6J§)
         {
            if((_loc4_ = §8s§.§8B§(_loc3_.id,this.§2"!§)) && _loc4_.§#!C§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§2A§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §?%§.§",§.add(_loc4_);
               this.§6J§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§import§)
                  {
                     this.§import§ = new Sprite();
                  }
                  this.§import§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§0e§)
                  {
                     this.§0e§ = new Sprite();
                  }
                  this.§0e§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§`!B§(1 / 20);
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
         var _loc1_:§#B§ = null;
         this.§!&§.removeChildren(0,-1,true);
         this.§!&§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         for each(_loc1_ in this.§6J§)
         {
            §?%§.§",§.§'!@§(_loc1_);
            _loc1_.dispose();
         }
         this.§6J§ = [];
         this.§import§ = null;
         this.§0e§ = null;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§,[§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§4!o§ * param1;
         this.§!&§.x = -_loc3_;
         this.§!&§.y = -param2;
         this.§@@§();
      }
      
      private function §,[§() : void
      {
         var _loc1_:§#B§ = null;
         if(!this.§=!$§ || !this.§!&§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§6J§)
         {
            §?%§.§",§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §?!V§() : void
      {
         var _loc1_:§#B§ = null;
         for each(_loc1_ in this.§6J§)
         {
            §?%§.§",§.§'!@§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §]D§(param1:Boolean) : void
      {
         if(param1 == this.§=!$§)
         {
            return;
         }
         this.§=!$§ = param1;
         if(this.§=!$§)
         {
            this.§,[§();
         }
         else
         {
            this.§?!V§();
         }
      }
      
      protected function §@@§() : void
      {
         if(this.§;!8§ == 1 || this.§6J§.length > 0)
         {
            return;
         }
         while(§`"=§.§9!e§ + (this.§!&§.x - this.§"C§) * §`"=§.§;!0§ > 0)
         {
            this.§!&§.x -= this.§"C§;
         }
         this.§7S§();
      }
      
      private function §7S§() : void
      {
      }
   }
}
