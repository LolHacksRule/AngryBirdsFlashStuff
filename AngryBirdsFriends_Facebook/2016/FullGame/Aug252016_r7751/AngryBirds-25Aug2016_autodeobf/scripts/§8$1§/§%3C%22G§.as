package §8$1§
{
   import §!x§.§4"d§;
   import §6§.§]!Q§;
   import §8§.§#$+§;
   import §8§.§@!"§;
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   import §9$§.§],§;
   import §@"§.§&!=§;
   import §["Q§.§0$,§;
   import §^§.§?V§;
   import §^§.§[>§;
   
   public class §<"G§
   {
      
      public static const §7!q§:Boolean = true;
       
      
      protected var §5!H§:§&!=§;
      
      protected var §9"B§:§[>§;
      
      protected var §="J§:Vector.<§`#'§>;
      
      protected var §>$-§:Sprite;
      
      protected var §5!4§:Sprite;
      
      protected var §""I§:Sprite;
      
      protected var §`"7§:Number;
      
      protected var §9!M§:Number;
      
      protected var §8"S§:Number;
      
      protected var §^#X§:Boolean = false;
      
      protected var §^X§:Boolean = true;
      
      protected var §"!t§:§@!"§;
      
      protected var §@"7§:Number;
      
      protected var §1c§:Boolean = true;
      
      protected var §1#V§:int = 0;
      
      protected var §]"?§:Number = 1.0;
      
      private var §2"^§:§]!Q§;
      
      public function §<"G§(param1:§]!Q§, param2:§[>§, param3:Number, param4:§&!=§, param5:Number, param6:Boolean = true)
      {
         this.§="J§ = new Vector.<§`#'§>();
         super();
         this.§5!H§ = param4;
         this.§2"^§ = param1;
         this.§9!M§ = 0;
         this.§8"S§ = 0;
         this.§`"7§ = param3;
         this.§>$-§ = new Sprite();
         this.§5!4§ = new Sprite();
         this.§""I§ = new Sprite();
         this.§@"7§ = param5;
         this.§1c§ = param6;
         this.§^#X§ = true;
         this.§;<§(param2,param5);
      }
      
      public function get § "Y§() : Boolean
      {
         return this.§^#X§;
      }
      
      public function get §6!G§() : Sprite
      {
         return this.§""I§;
      }
      
      public function get §-#8§() : Sprite
      {
         return this.§>$-§;
      }
      
      public function get §&!t§() : Sprite
      {
         return this.§5!4§;
      }
      
      public function get §6$ §() : int
      {
         return this.§1#V§;
      }
      
      protected function get textureManager() : §&!=§
      {
         return this.§5!H§;
      }
      
      public function dispose() : void
      {
         this.§ !C§();
         this.stopAmbientSound();
         if(this.§>$-§)
         {
            this.§>$-§.dispose();
            this.§>$-§ = null;
         }
         if(this.§5!4§)
         {
            this.§5!4§.dispose();
            this.§5!4§ = null;
         }
         if(this.§""I§)
         {
            this.§""I§.dispose();
            this.§""I§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§^X§;
      }
      
      public function §5'§(param1:Boolean) : void
      {
         if(this.§^X§ == param1)
         {
            return;
         }
         this.§^X§ = param1;
         if(!param1)
         {
            this.§ !C§();
         }
         else
         {
            this.§;<§(this.§9"B§,this.§@"7§);
         }
      }
      
      public function §6!m§() : String
      {
         return this.§9"B§.§&!q§;
      }
      
      public function §^"1§() : String
      {
         return this.§9"B§.§=!Y§;
      }
      
      private function § !C§() : void
      {
         while(this.§5!4§.numChildren > 0)
         {
            this.§5!4§.removeChildAt(0,true);
         }
         while(this.§>$-§.numChildren > 0)
         {
            this.§>$-§.removeChildAt(0,true);
         }
         while(this.§="J§.length > 0)
         {
            this.§="J§.pop().dispose();
         }
      }
      
      protected function §;#k§(param1:§[>§) : void
      {
      }
      
      protected function §;<§(param1:§[>§, param2:Number) : void
      {
         var _loc4_:§?V§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§`#'§ = null;
         this.§9"B§ = param1;
         this.§;#k§(this.§9"B§);
         this.§>$-§.y = this.§`"7§;
         this.§5!4§.y = this.§`"7§;
         this.§""I§.y = this.§`"7§;
         this.§=$'§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§9"B§.§^!P§)
         {
            _loc4_ = this.§9"B§.§"#$§(_loc3_);
            if(this.§1c§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.§="J§.push(_loc6_);
               if(_loc6_.§,#%§)
               {
                  this.§5!4§.addChild(_loc5_);
               }
               else
               {
                  this.§>$-§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§9"c§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:§?V§, param2:Sprite, param3:§&!=§, param4:Number) : §`#'§
      {
         return new §`#'§(this.§2"^§,param1,param2,param3,param4);
      }
      
      private function §=$'§() : void
      {
         var _loc1_:§],§ = null;
         if(this.§9"B§.§9#B§)
         {
            this.§9"c§(this.§9"B§.§9#B§);
         }
         if(this.§9"B§.colorGround)
         {
            _loc1_ = this.createGroundQuad(uint(this.§9"B§.colorGround));
            _loc1_.y = 0;
            this.§""I§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §],§
      {
         return new §],§(4096,4096,param1);
      }
      
      private function §9"c§(param1:int) : void
      {
         this.§1#V§ = param1;
      }
      
      public function § #V§(param1:§[>§) : void
      {
         this.§ !C§();
         §4"d§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§;<§(param1,this.§@"7§);
      }
      
      public function §,#K§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§`#'§ = null;
         if(param1 == this.§^#X§)
         {
            return;
         }
         this.§^#X§ = param1;
         for each(_loc3_ in this.§="J§)
         {
            _loc3_.§,#K§(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(§#$+§.§#!C§("CHANNEL_AMBIENT") == null || !§#$+§.§#!C§("CHANNEL_AMBIENT").isPlaying())
         {
            §#$+§.playSound(this.§-$4§,"CHANNEL_AMBIENT",999,this.§]#h§);
         }
      }
      
      public function stopAmbientSound() : void
      {
         §#$+§.§%!!§("CHANNEL_AMBIENT");
      }
      
      public function get §-$4§() : String
      {
         return this.§9"B§.§-$4§;
      }
      
      public function get §]#h§() : Number
      {
         return this.§9"B§.§]#h§;
      }
      
      public function §^"%§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§>$-§.numChildren)
         {
            _loc2_ = this.§>$-§.getChildAt(param1);
         }
         else if(param1 - this.§>$-§.numChildren < this.§5!4§.numChildren)
         {
            _loc2_ = this.§5!4§.getChildAt(param1 - this.§>$-§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§9!M§ = param1;
         this.§8"S§ = param2;
         if(this.§="J§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§="J§.length)
            {
               this.§="J§[_loc8_].setScreenOffset(this.§9!M§,this.§8"S§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§""I§ != null)
         {
            this.§""I§.scaleX = this.§""I§.scaleY = 1 / §0$,§.§`#1§;
            this.updateGroundSpriteOffset();
         }
      }
      
      protected function updateGroundSpriteOffset() : void
      {
         this.§""I§.x = 0;
         this.§""I§.y = this.§`"7§ - this.§8"S§;
      }
      
      public function §!#g§() : String
      {
         return this.§9"B§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§`#'§ = null;
         for each(_loc2_ in this.§="J§)
         {
            _loc2_.update(param1);
         }
      }
   }
}
