package §""c§
{
   import §!!k§.§0!B§;
   import §7§.§8[§;
   import §9"`§.§-"H§;
   import §`!v§.§8X§;
   import §`!v§.§;!d§;
   import §`"1§.§0"M§;
   import §`"1§.§=Q§;
   import §use§.§-"z§;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §>"w§
   {
      
      public static const §2!U§:Boolean = true;
       
      
      protected var §9!G§:§0!B§;
      
      protected var §4!y§:§8X§;
      
      protected var §!#7§:Vector.<§2",§>;
      
      protected var §?O§:Sprite;
      
      protected var §9a§:Sprite;
      
      protected var §["A§:Sprite;
      
      protected var §8"u§:Number;
      
      protected var §#6§:Number;
      
      protected var §8"]§:Number;
      
      protected var §<##§:Boolean = true;
      
      protected var §&!W§:Boolean = true;
      
      protected var § 5§:§0"M§;
      
      protected var §"!]§:Number;
      
      protected var §"%§:Boolean = true;
      
      protected var § p§:int = 0;
      
      protected var §#"5§:Number = 1.0;
      
      public function §>"w§(param1:§8X§, param2:Number, param3:§0!B§, param4:Number, param5:Boolean = true)
      {
         this.§!#7§ = new Vector.<§2",§>();
         super();
         this.§9!G§ = param3;
         this.§#6§ = 0;
         this.§8"]§ = 0;
         this.§8"u§ = param2;
         this.§?O§ = new Sprite();
         this.§9a§ = new Sprite();
         this.§["A§ = new Sprite();
         this.§"!]§ = param4;
         this.§"%§ = param5;
         this.§0"T§(param1,param4);
      }
      
      public function get §1!U§() : Boolean
      {
         return this.§<##§;
      }
      
      public function get §-Z§() : Sprite
      {
         return this.§["A§;
      }
      
      public function get §"!M§() : Sprite
      {
         return this.§?O§;
      }
      
      public function get §""V§() : Sprite
      {
         return this.§9a§;
      }
      
      public function get skyColor() : int
      {
         return this.§ p§;
      }
      
      protected function get textureManager() : §0!B§
      {
         return this.§9!G§;
      }
      
      public function dispose() : void
      {
         this.§%a§();
         this.stopAmbientSound();
         if(this.§?O§)
         {
            this.§?O§.dispose();
            this.§?O§ = null;
         }
         if(this.§9a§)
         {
            this.§9a§.dispose();
            this.§9a§ = null;
         }
         if(this.§["A§)
         {
            this.§["A§.dispose();
            this.§["A§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§&!W§;
      }
      
      public function §`"V§(param1:Boolean) : void
      {
         if(this.§&!W§ == param1)
         {
            return;
         }
         this.§&!W§ = param1;
         if(!param1)
         {
            this.§%a§();
         }
         else
         {
            this.§0"T§(this.§4!y§,this.§"!]§);
         }
      }
      
      public function §8g§() : String
      {
         return this.§4!y§.§>"G§;
      }
      
      private function §%a§() : void
      {
         while(this.§9a§.numChildren > 0)
         {
            this.§9a§.removeChildAt(0,true);
         }
         while(this.§?O§.numChildren > 0)
         {
            this.§?O§.removeChildAt(0,true);
         }
         while(this.§!#7§.length > 0)
         {
            this.§!#7§.pop().dispose();
         }
      }
      
      protected function §#j§(param1:§8X§) : void
      {
      }
      
      protected function §0"T§(param1:§8X§, param2:Number) : void
      {
         var _loc4_:§;!d§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§2",§ = null;
         this.§4!y§ = param1;
         this.§#j§(this.§4!y§);
         this.§?O§.y = this.§8"u§;
         this.§9a§.y = this.§8"u§;
         this.§["A§.y = this.§8"u§;
         this.§3r§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§4!y§.§#!E§)
         {
            _loc4_ = this.§4!y§.§]!E§(_loc3_);
            if(this.§"%§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.§!#7§.push(_loc6_);
               if(_loc6_.§&!b§)
               {
                  this.§9a§.addChild(_loc5_);
               }
               else
               {
                  this.§?O§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§57§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:§;!d§, param2:Sprite, param3:§0!B§, param4:Number) : §2",§
      {
         return new §2",§(param1,param2,param3,param4);
      }
      
      private function §3r§() : void
      {
         var _loc1_:§-"z§ = null;
         if(this.§4!y§.§;!7§)
         {
            this.§57§(this.§4!y§.§;!7§);
         }
         if(this.§4!y§.colorGround)
         {
            _loc1_ = this.§5"a§(uint(this.§4!y§.colorGround));
            _loc1_.y = 0;
            this.§["A§.addChild(_loc1_);
         }
      }
      
      protected function §5"a§(param1:uint) : §-"z§
      {
         return new §-"z§(4096,4096,param1);
      }
      
      private function §57§(param1:int) : void
      {
         this.§ p§ = param1;
      }
      
      public function §8!k§(param1:§8X§) : void
      {
         this.§%a§();
         §-"H§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§0"T§(param1,this.§"!]§);
      }
      
      public function §]c§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§2",§ = null;
         if(param1 == this.§<##§)
         {
            return;
         }
         this.§<##§ = param1;
         for each(_loc3_ in this.§!#7§)
         {
            _loc3_.§]c§(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(§=Q§.§+1§("CHANNEL_AMBIENT") == null || !§=Q§.§+1§("CHANNEL_AMBIENT").§["z§())
         {
            §=Q§.§`!A§(this.§7"W§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function stopAmbientSound() : void
      {
         §=Q§.§&"=§("CHANNEL_AMBIENT");
      }
      
      public function get §7"W§() : String
      {
         return this.§4!y§.§7"W§;
      }
      
      public function §0"A§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§?O§.numChildren)
         {
            _loc2_ = this.§?O§.getChildAt(param1);
         }
         else if(param1 - this.§?O§.numChildren < this.§9a§.numChildren)
         {
            _loc2_ = this.§9a§.getChildAt(param1 - this.§?O§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§#6§ = param1;
         this.§8"]§ = param2;
         if(this.§!#7§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§!#7§.length)
            {
               this.§!#7§[_loc8_].setScreenOffset(this.§#6§,this.§8"]§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§["A§ != null)
         {
            this.§["A§.scaleX = this.§["A§.scaleY = 1 / §8[§.§#?§;
            this.updateGroundSpriteOffset();
         }
      }
      
      protected function updateGroundSpriteOffset() : void
      {
         this.§["A§.x = 0;
         this.§["A§.y = this.§8"u§ - this.§8"]§;
      }
      
      public function §>"Y§() : String
      {
         return this.§4!y§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§2",§ = null;
         for each(_loc2_ in this.§!#7§)
         {
            _loc2_.update(param1);
         }
      }
   }
}
