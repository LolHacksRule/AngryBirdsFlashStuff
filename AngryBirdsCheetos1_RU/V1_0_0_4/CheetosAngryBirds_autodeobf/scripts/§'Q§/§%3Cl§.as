package §'q§
{
   import §#!H§.§7V§;
   import §-!_§.§ v§;
   import §1!A§.§;a§;
   import §1!A§.DisplayObject;
   import §1!A§.Sprite;
   import §6!S§.§<!^§;
   import §7z§.§,H§;
   import §7z§.§]!-§;
   import §8K§.§9!S§;
   import §8K§.§>g§;
   import §8K§.§@j§;
   import §8t§.§'!§;
   import §^n§.Texture;
   import §`M§.§'C§;
   import starling.events.Event;
   
   public class §<l§
   {
       
      
      private var §6!'§:int;
      
      private var §7a§:int;
      
      private var §<p§:Number;
      
      private var §-$§:Boolean;
      
      private var §0!5§:Sprite;
      
      private var §"!,§:Array;
      
      private var §%!W§:Boolean = true;
      
      private var §2!_§:§>g§;
      
      private var §3!N§:Sprite;
      
      private var §3!J§:Sprite;
      
      public function §<l§(param1:§ v§, param2:Sprite, param3:§>g§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§9!S§ = null;
         this.§"!,§ = [];
         super();
         this.§2!_§ = param3;
         this.§0!5§ = param2;
         this.§<p§ = param1.§9i§;
         this.§-$§ = param1.§4!M§;
         var _loc5_:Number = 1;
         if(param1.§+o§ != 0)
         {
            _loc5_ = param1.§+o§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §@j§.§7!O§(param1.mName,this.§2!_§,param1.§5`§)))
         {
            _loc7_ = (_loc13_ = param3.§0!F§(param1.mName)).pivotY;
            if(!this.§-$§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§6!'§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§6!'§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§"G§.bottom;
            _loc8_ = (_loc10_.§"G§.left + _loc10_.§"G§.right) / 2;
         }
         if(this.§6!'§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§6!'§ = Math.round(this.§6!'§);
         if(param1.§^!3§)
         {
            this.§7a§ = 2 + §]!-§.§&!1§ * 1.5 / (this.§6!'§ * param4);
         }
         else
         {
            this.§7a§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§7a§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §@j§.§7!O§(param1.mName,this.§2!_§,param1.§5`§);
               }
               else
               {
                  _loc10_ = new §;a§(_loc6_,false,param1.§5`§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§6!'§ + (-_loc8_ * _loc5_ + param1.§6!,§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§;<§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§'i§(param1,(_loc12_ - 1) * this.§6!'§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§0!5§.addChild(_loc11_);
         if(this.§3!N§)
         {
            if(this.§3!N§.numChildren > 0)
            {
               this.§0!5§.addChild(this.§3!N§);
            }
            else
            {
               this.§3!N§.dispose();
            }
         }
         if(this.§3!J§)
         {
            if(this.§3!J§.numChildren > 0)
            {
               this.§0!5§.addChildAt(this.§3!J§,0);
            }
            else
            {
               this.§3!J§.dispose();
            }
         }
         this.§0!5§.addEventListener(Event.ADDED_TO_STAGE,this.§&!K§);
      }
      
      public function get §@i§() : Boolean
      {
         return this.§-$§;
      }
      
      private function §'i§(param1:§ v§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§,H§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§"!,§)
         {
            if((_loc4_ = §<!^§.§5!Y§(_loc3_.id,this.§2!_§)) && _loc4_.§ n§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§6!,§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §'C§.§&=§.add(_loc4_);
               this.§"!,§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§3!J§)
                  {
                     this.§3!J§ = new Sprite();
                  }
                  this.§3!J§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§3!N§)
                  {
                     this.§3!N§ = new Sprite();
                  }
                  this.§3!N§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§1!X§(1 / 20);
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
         var _loc1_:§'!§ = null;
         this.§0!5§.§%^§(0,-1,true);
         this.§0!5§.removeEventListener(Event.ADDED_TO_STAGE,this.§&!K§);
         for each(_loc1_ in this.§"!,§)
         {
            §'C§.§&=§.§,8§(_loc1_);
            _loc1_.dispose();
         }
         this.§"!,§ = [];
         this.§3!J§ = null;
         this.§3!N§ = null;
      }
      
      private function §&!K§(param1:Event) : void
      {
         this.§<;§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§<p§ * param1;
         this.§0!5§.x = -_loc3_;
         this.§0!5§.y = -param2;
         this.§"6§();
      }
      
      private function §<;§() : void
      {
         var _loc1_:§'!§ = null;
         if(!this.§%!W§ || !this.§0!5§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§"!,§)
         {
            §'C§.§&=§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §6$§() : void
      {
         var _loc1_:§'!§ = null;
         for each(_loc1_ in this.§"!,§)
         {
            §'C§.§&=§.§,8§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §0!&§(param1:Boolean) : void
      {
         if(param1 == this.§%!W§)
         {
            return;
         }
         this.§%!W§ = param1;
         if(this.§%!W§)
         {
            this.§<;§();
         }
         else
         {
            this.§6$§();
         }
      }
      
      private function §"6§() : void
      {
         if(this.§7a§ == 1 || this.§"!,§.length > 0)
         {
            return;
         }
         while(§7V§.§?!0§ + (this.§0!5§.x - this.§6!'§) * §7V§.§+"§ > 0)
         {
            this.§0!5§.x -= this.§6!'§;
         }
         this.§;!7§();
      }
      
      private function §;!7§() : void
      {
      }
   }
}
