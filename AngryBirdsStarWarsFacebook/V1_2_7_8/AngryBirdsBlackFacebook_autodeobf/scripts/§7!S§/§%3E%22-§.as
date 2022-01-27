package §7!S§
{
   import §+"f§.§!r§;
   import §+"f§.§[_§;
   import §,"v§.§@§;
   import §,"v§.§^!2§;
   import §0"I§.§5!s§;
   import §1"s§.§#"b§;
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §3"$§.§&"0§;
   import §5i§.§+M§;
   
   public class §>"-§
   {
      
      public static const §9!m§:Boolean = true;
       
      
      protected var §-#7§:§&"0§;
      
      protected var §2!B§:§[_§;
      
      protected var §5A§:Vector.<§@=§>;
      
      protected var §6!Y§:Sprite;
      
      protected var §5!>§:Sprite;
      
      protected var §4"'§:Sprite;
      
      protected var §<"X§:Number;
      
      protected var §;S§:Number;
      
      protected var §;!0§:Number;
      
      protected var §5!I§:Boolean = true;
      
      protected var §'M§:Boolean = true;
      
      protected var §#"@§:§^!2§;
      
      protected var §,+§:Number;
      
      protected var §#P§:Boolean = true;
      
      protected var §3!e§:int = 0;
      
      protected var §"r§:Number = 1.0;
      
      public function §>"-§(param1:§[_§, param2:Number, param3:§&"0§, param4:Number, param5:Boolean = true)
      {
         this.§5A§ = new Vector.<§@=§>();
         super();
         this.§-#7§ = param3;
         this.§;S§ = 0;
         this.§;!0§ = 0;
         this.§<"X§ = param2;
         this.§6!Y§ = new Sprite();
         this.§5!>§ = new Sprite();
         this.§4"'§ = new Sprite();
         this.§,+§ = param4;
         this.§#P§ = param5;
         this.§!"Y§(param1,param4);
      }
      
      public function get §'2§() : Boolean
      {
         return this.§5!I§;
      }
      
      public function get §9P§() : Sprite
      {
         return this.§4"'§;
      }
      
      public function get §-!q§() : Sprite
      {
         return this.§6!Y§;
      }
      
      public function get §4"T§() : Sprite
      {
         return this.§5!>§;
      }
      
      public function get skyColor() : int
      {
         return this.§3!e§;
      }
      
      protected function get textureManager() : §&"0§
      {
         return this.§-#7§;
      }
      
      public function dispose() : void
      {
         this.§#!q§();
         this.stopAmbientSound();
         if(this.§6!Y§)
         {
            this.§6!Y§.dispose();
            this.§6!Y§ = null;
         }
         if(this.§5!>§)
         {
            this.§5!>§.dispose();
            this.§5!>§ = null;
         }
         if(this.§4"'§)
         {
            this.§4"'§.dispose();
            this.§4"'§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§'M§;
      }
      
      public function §5!y§(param1:Boolean) : void
      {
         if(this.§'M§ == param1)
         {
            return;
         }
         this.§'M§ = param1;
         if(!param1)
         {
            this.§#!q§();
         }
         else
         {
            this.§!"Y§(this.§2!B§,this.§,+§);
         }
      }
      
      public function §8!4§() : String
      {
         return this.§2!B§.§;!F§;
      }
      
      private function §#!q§() : void
      {
         while(this.§5!>§.numChildren > 0)
         {
            this.§5!>§.removeChildAt(0,true);
         }
         while(this.§6!Y§.numChildren > 0)
         {
            this.§6!Y§.removeChildAt(0,true);
         }
         while(this.§5A§.length > 0)
         {
            this.§5A§.pop().dispose();
         }
      }
      
      protected function §4k§(param1:§[_§) : void
      {
      }
      
      protected function §!"Y§(param1:§[_§, param2:Number) : void
      {
         var _loc4_:§!r§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§@=§ = null;
         this.§2!B§ = param1;
         this.§4k§(this.§2!B§);
         this.§6!Y§.y = this.§<"X§;
         this.§5!>§.y = this.§<"X§;
         this.§4"'§.y = this.§<"X§;
         this.§3"Z§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§2!B§.§ U§)
         {
            _loc4_ = this.§2!B§.§^M§(_loc3_);
            if(this.§#P§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.§5A§.push(_loc6_);
               if(_loc6_.§%"7§)
               {
                  this.§5!>§.addChild(_loc5_);
               }
               else
               {
                  this.§6!Y§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§?!q§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:§!r§, param2:Sprite, param3:§&"0§, param4:Number) : §@=§
      {
         return new §@=§(param1,param2,param3,param4);
      }
      
      private function §3"Z§() : void
      {
         var _loc1_:§#"b§ = null;
         if(this.§2!B§.§[!&§)
         {
            this.§?!q§(this.§2!B§.§[!&§);
         }
         if(this.§2!B§.colorGround)
         {
            _loc1_ = this.§,!C§(uint(this.§2!B§.colorGround));
            _loc1_.y = 0;
            this.§4"'§.addChild(_loc1_);
         }
      }
      
      protected function §,!C§(param1:uint) : §#"b§
      {
         return new §#"b§(4096,4096,param1);
      }
      
      private function §?!q§(param1:int) : void
      {
         this.§3!e§ = param1;
      }
      
      public function §#!d§(param1:§[_§) : void
      {
         this.§#!q§();
         §5!s§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§!"Y§(param1,this.§,+§);
      }
      
      public function §&U§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§@=§ = null;
         if(param1 == this.§5!I§)
         {
            return;
         }
         this.§5!I§ = param1;
         for each(_loc3_ in this.§5A§)
         {
            _loc3_.§&U§(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(§@§.§]#%§("CHANNEL_AMBIENT") == null || !§@§.§]#%§("CHANNEL_AMBIENT").§^"h§())
         {
            §@§.§=Y§(this.§4!B§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function stopAmbientSound() : void
      {
         §@§.§@!D§("CHANNEL_AMBIENT");
      }
      
      public function get §4!B§() : String
      {
         return this.§2!B§.§4!B§;
      }
      
      public function §7W§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§6!Y§.numChildren)
         {
            _loc2_ = this.§6!Y§.getChildAt(param1);
         }
         else if(param1 - this.§6!Y§.numChildren < this.§5!>§.numChildren)
         {
            _loc2_ = this.§5!>§.getChildAt(param1 - this.§6!Y§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§;S§ = param1;
         this.§;!0§ = param2;
         if(this.§5A§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§5A§.length)
            {
               this.§5A§[_loc8_].setScreenOffset(this.§;S§,this.§;!0§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§4"'§ != null)
         {
            this.§4"'§.scaleX = this.§4"'§.scaleY = 1 / §+M§.§&!u§;
            this.updateGroundSpriteOffset();
         }
      }
      
      protected function updateGroundSpriteOffset() : void
      {
         this.§4"'§.x = 0;
         this.§4"'§.y = this.§<"X§ - this.§;!0§;
      }
      
      public function §2V§() : String
      {
         return this.§2!B§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§@=§ = null;
         for each(_loc2_ in this.§5A§)
         {
            _loc2_.update(param1);
         }
      }
   }
}
