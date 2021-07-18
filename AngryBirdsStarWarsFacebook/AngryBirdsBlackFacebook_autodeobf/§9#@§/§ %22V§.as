package §9#@§
{
   import §!!U§.§2"D§;
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §-!_§.§,#Q§;
   import §5t§.Log;
   import §69§.§4!e§;
   import §69§.§>!b§;
   import §7!F§.§7§;
   import §="2§.§4!5§;
   import §="2§.§?!r§;
   
   public class § "V§
   {
      
      public static const §8#$§:Boolean = true;
       
      
      protected var §6V§:§7#5§;
      
      protected var §?"I§:§4!e§;
      
      protected var §!#T§:Vector.<§2"A§>;
      
      protected var §>"^§:Sprite;
      
      protected var §;?§:Sprite;
      
      protected var §@#+§:Sprite;
      
      protected var §8&§:Number;
      
      protected var §`!j§:Number;
      
      protected var §8"R§:Number;
      
      protected var §%p§:Boolean = true;
      
      protected var §[0§:Boolean = true;
      
      protected var §1s§:§4!5§;
      
      protected var §%!V§:Number;
      
      protected var §3" §:Boolean = true;
      
      protected var §<"L§:int = 0;
      
      protected var §8"2§:Number = 1.0;
      
      public function § "V§(param1:§4!e§, param2:Number, param3:§7#5§, param4:Number, param5:Boolean = true)
      {
         this.§!#T§ = new Vector.<§2"A§>();
         super();
         this.§6V§ = param3;
         this.§`!j§ = 0;
         this.§8"R§ = 0;
         this.§8&§ = param2;
         this.§>"^§ = new Sprite();
         this.§;?§ = new Sprite();
         this.§@#+§ = new Sprite();
         this.§%!V§ = param4;
         this.§3" § = param5;
         this.§4"O§(param1,param4);
      }
      
      public function get §!t§() : Boolean
      {
         return this.§%p§;
      }
      
      public function get §4!C§() : Sprite
      {
         return this.§@#+§;
      }
      
      public function get §?!]§() : Sprite
      {
         return this.§>"^§;
      }
      
      public function get §>"a§() : Sprite
      {
         return this.§;?§;
      }
      
      public function get skyColor() : int
      {
         return this.§<"L§;
      }
      
      protected function get textureManager() : §7#5§
      {
         return this.§6V§;
      }
      
      public function dispose() : void
      {
         this.§3"J§();
         this.stopAmbientSound();
         if(this.§>"^§)
         {
            this.§>"^§.dispose();
            this.§>"^§ = null;
         }
         if(this.§;?§)
         {
            this.§;?§.dispose();
            this.§;?§ = null;
         }
         if(this.§@#+§)
         {
            this.§@#+§.dispose();
            this.§@#+§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§[0§;
      }
      
      public function §]"J§(param1:Boolean) : void
      {
         if(this.§[0§ == param1)
         {
            return;
         }
         this.§[0§ = param1;
         if(!param1)
         {
            this.§3"J§();
         }
         else
         {
            this.§4"O§(this.§?"I§,this.§%!V§);
         }
      }
      
      public function §[!!§() : String
      {
         return this.§?"I§.§ #T§;
      }
      
      private function §3"J§() : void
      {
         while(this.§;?§.numChildren > 0)
         {
            this.§;?§.removeChildAt(0,true);
         }
         while(this.§>"^§.numChildren > 0)
         {
            this.§>"^§.removeChildAt(0,true);
         }
         while(this.§!#T§.length > 0)
         {
            this.§!#T§.pop().dispose();
         }
      }
      
      protected function §-!%§(param1:§4!e§) : void
      {
      }
      
      protected function §4"O§(param1:§4!e§, param2:Number) : void
      {
         var _loc4_:§>!b§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§2"A§ = null;
         this.§?"I§ = param1;
         this.§-!%§(this.§?"I§);
         this.§>"^§.y = this.§8&§;
         this.§;?§.y = this.§8&§;
         this.§@#+§.y = this.§8&§;
         this.§`w§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§?"I§.§[#_§)
         {
            _loc4_ = this.§?"I§.§+!x§(_loc3_);
            if(this.§3" § || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.§!#T§.push(_loc6_);
               if(_loc6_.§;&§)
               {
                  this.§;?§.addChild(_loc5_);
               }
               else
               {
                  this.§>"^§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§3!w§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:§>!b§, param2:Sprite, param3:§7#5§, param4:Number) : §2"A§
      {
         return new §2"A§(param1,param2,param3,param4);
      }
      
      private function §`w§() : void
      {
         var _loc1_:§2"D§ = null;
         if(this.§?"I§.§9" §)
         {
            this.§3!w§(this.§?"I§.§9" §);
         }
         if(this.§?"I§.colorGround)
         {
            _loc1_ = this.§'"e§(uint(this.§?"I§.colorGround));
            _loc1_.y = 0;
            this.§@#+§.addChild(_loc1_);
         }
      }
      
      protected function §'"e§(param1:uint) : §2"D§
      {
         return new §2"D§(4096,4096,param1);
      }
      
      private function §3!w§(param1:int) : void
      {
         this.§<"L§ = param1;
      }
      
      public function §4#X§(param1:§4!e§) : void
      {
         this.§3"J§();
         Log.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§4"O§(param1,this.§%!V§);
      }
      
      public function §%Q§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§2"A§ = null;
         if(param1 == this.§%p§)
         {
            return;
         }
         this.§%p§ = param1;
         for each(_loc3_ in this.§!#T§)
         {
            _loc3_.§%Q§(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(§?!r§.§2R§("CHANNEL_AMBIENT") == null || !§?!r§.§2R§("CHANNEL_AMBIENT").§<"M§())
         {
            §?!r§.§"#_§(this.§0;§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function stopAmbientSound() : void
      {
         §?!r§.§9"4§("CHANNEL_AMBIENT");
      }
      
      public function get §0;§() : String
      {
         return this.§?"I§.§0;§;
      }
      
      public function §="j§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§>"^§.numChildren)
         {
            _loc2_ = this.§>"^§.getChildAt(param1);
         }
         else if(param1 - this.§>"^§.numChildren < this.§;?§.numChildren)
         {
            _loc2_ = this.§;?§.getChildAt(param1 - this.§>"^§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§`!j§ = param1;
         this.§8"R§ = param2;
         if(this.§!#T§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§!#T§.length)
            {
               this.§!#T§[_loc8_].setScreenOffset(this.§`!j§,this.§8"R§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§@#+§ != null)
         {
            this.§@#+§.scaleX = this.§@#+§.scaleY = 1 / §,#Q§.§ #b§;
            this.updateGroundSpriteOffset();
         }
      }
      
      protected function updateGroundSpriteOffset() : void
      {
         this.§@#+§.x = 0;
         this.§@#+§.y = this.§8&§ - this.§8"R§;
      }
      
      public function §6"c§() : String
      {
         return this.§?"I§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§2"A§ = null;
         for each(_loc2_ in this.§!#T§)
         {
            _loc2_.update(param1);
         }
      }
   }
}
