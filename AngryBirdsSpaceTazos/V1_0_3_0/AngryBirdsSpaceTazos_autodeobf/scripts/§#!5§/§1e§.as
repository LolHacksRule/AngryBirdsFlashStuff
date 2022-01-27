package §#!5§
{
   import §&!3§.§0!W§;
   import §4"@§.§6p§;
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   import §6!C§.§6E§;
   import §<!<§.§1!q§;
   import §<!<§.§67§;
   import §>"!§.§"";§;
   import §>"!§.§@!9§;
   import §^e§.§0"1§;
   
   public class §1e§
   {
      
      public static const §>!,§:Boolean = true;
       
      
      protected var §#!v§:§0"1§;
      
      protected var §1!>§:§1!q§;
      
      protected var §,!y§:Vector.<§,!^§>;
      
      protected var §4!M§:Sprite;
      
      protected var §;"9§:Sprite;
      
      protected var §`Z§:Sprite;
      
      protected var §0!g§:Number;
      
      protected var §<!8§:Number;
      
      protected var §=!U§:Number;
      
      protected var §`!O§:Boolean = true;
      
      protected var §7!+§:Boolean = true;
      
      protected var §1C§:§"";§;
      
      protected var §>!k§:Number;
      
      protected var §,"6§:Boolean = true;
      
      protected var §;M§:int = 0;
      
      protected var §1!k§:Number = 1.0;
      
      public function §1e§(param1:§1!q§, param2:Number, param3:§0"1§, param4:Number, param5:Boolean = true)
      {
         this.§,!y§ = new Vector.<§,!^§>();
         super();
         this.§#!v§ = param3;
         this.§<!8§ = 0;
         this.§=!U§ = 0;
         this.§0!g§ = param2;
         this.§4!M§ = new Sprite();
         this.§;"9§ = new Sprite();
         this.§`Z§ = new Sprite();
         this.§>!k§ = param4;
         this.§,"6§ = param5;
         this.§0P§(param1,param4);
      }
      
      public function get §4"&§() : Boolean
      {
         return this.§`!O§;
      }
      
      public function get §3!x§() : Sprite
      {
         return this.§`Z§;
      }
      
      public function get §=!a§() : Sprite
      {
         return this.§4!M§;
      }
      
      public function get §-!6§() : Sprite
      {
         return this.§;"9§;
      }
      
      public function get skyColor() : int
      {
         return this.§;M§;
      }
      
      protected function get textureManager() : §0"1§
      {
         return this.§#!v§;
      }
      
      public function dispose() : void
      {
         this.§!!Z§();
         this.stopAmbientSound();
         if(this.§4!M§)
         {
            this.§4!M§.dispose();
            this.§4!M§ = null;
         }
         if(this.§;"9§)
         {
            this.§;"9§.dispose();
            this.§;"9§ = null;
         }
         if(this.§`Z§)
         {
            this.§`Z§.dispose();
            this.§`Z§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§7!+§;
      }
      
      public function §3r§(param1:Boolean) : void
      {
         if(this.§7!+§ == param1)
         {
            return;
         }
         this.§7!+§ = param1;
         if(!param1)
         {
            this.§!!Z§();
         }
         else
         {
            this.§0P§(this.§1!>§,this.§>!k§);
         }
      }
      
      public function §^!2§() : String
      {
         return this.§1!>§.§@K§;
      }
      
      private function §!!Z§() : void
      {
         while(this.§;"9§.numChildren > 0)
         {
            this.§;"9§.removeChildAt(0,true);
         }
         while(this.§4!M§.numChildren > 0)
         {
            this.§4!M§.removeChildAt(0,true);
         }
         while(this.§,!y§.length > 0)
         {
            this.§,!y§.pop().dispose();
         }
      }
      
      protected function §2^§(param1:§1!q§) : void
      {
      }
      
      protected function §0P§(param1:§1!q§, param2:Number) : void
      {
         var _loc4_:§67§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§,!^§ = null;
         this.§1!>§ = param1;
         this.§2^§(this.§1!>§);
         this.§4!M§.y = this.§0!g§;
         this.§;"9§.y = this.§0!g§;
         this.§`Z§.y = this.§0!g§;
         this.§,!K§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§1!>§.§ else§)
         {
            _loc4_ = this.§1!>§.§"!I§(_loc3_);
            if(this.§,"6§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.§,!y§.push(_loc6_);
               if(_loc6_.§7"2§)
               {
                  this.§;"9§.addChild(_loc5_);
               }
               else
               {
                  this.§4!M§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§&J§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:§67§, param2:Sprite, param3:§0"1§, param4:Number) : §,!^§
      {
         return new §,!^§(param1,param2,param3,param4);
      }
      
      private function §,!K§() : void
      {
         var _loc1_:§6p§ = null;
         if(this.§1!>§.§!B§)
         {
            this.§&J§(this.§1!>§.§!B§);
         }
         if(this.§1!>§.colorGround)
         {
            _loc1_ = this.§5O§(uint(this.§1!>§.colorGround));
            _loc1_.y = 0;
            this.§`Z§.addChild(_loc1_);
         }
      }
      
      protected function §5O§(param1:uint) : §6p§
      {
         return new §6p§(4096,4096,param1);
      }
      
      private function §&J§(param1:int) : void
      {
         this.§;M§ = param1;
      }
      
      public function §1!0§(param1:§1!q§) : void
      {
         this.§!!Z§();
         §6E§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§0P§(param1,this.§>!k§);
      }
      
      public function §%!6§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§,!^§ = null;
         if(param1 == this.§`!O§)
         {
            return;
         }
         this.§`!O§ = param1;
         for each(_loc3_ in this.§,!y§)
         {
            _loc3_.§%!6§(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(§@!9§.§!y§("CHANNEL_AMBIENT") == null || !§@!9§.§!y§("CHANNEL_AMBIENT").§]X§())
         {
            §@!9§.playSound(this.§?!z§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function stopAmbientSound() : void
      {
         §@!9§.§"!y§("CHANNEL_AMBIENT");
      }
      
      public function get §?!z§() : String
      {
         return this.§1!>§.§?!z§;
      }
      
      public function §1y§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§4!M§.numChildren)
         {
            _loc2_ = this.§4!M§.getChildAt(param1);
         }
         else if(param1 - this.§4!M§.numChildren < this.§;"9§.numChildren)
         {
            _loc2_ = this.§;"9§.getChildAt(param1 - this.§4!M§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§<!8§ = param1;
         this.§=!U§ = param2;
         if(this.§,!y§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§,!y§.length)
            {
               this.§,!y§[_loc8_].setScreenOffset(this.§<!8§,this.§=!U§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§`Z§ != null)
         {
            this.§`Z§.scaleX = this.§`Z§.scaleY = 1 / §0!W§.§,f§;
            this.§`Z§.x = 0;
            this.§`Z§.y = this.§0!g§ - this.§=!U§ + 100;
         }
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§1!>§.id;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
