package §8"h§
{
   import § "v§.§+o§;
   import § "v§.§4$4§;
   import §#!S§.§?##§;
   import §#!S§.§`"B§;
   import §#"3§.§4!h§;
   import §#Z§.§6J§;
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §&§.Starling;
   import §0#I§.§-!6§;
   import §9#M§.§%"=§;
   import §`$=§.§5$E§;
   
   public class §]n§
   {
      
      public static const static:Boolean = true;
       
      
      protected var §]#o§:§%"=§;
      
      protected var §,#'§:§`"B§;
      
      protected var §,"`§:Vector.<§`#s§>;
      
      protected var §2[§:Sprite;
      
      protected var §3#>§:Sprite;
      
      protected var §&-§:Sprite;
      
      protected var §5U§:Number;
      
      protected var §=#§:Number;
      
      protected var §9"W§:Number;
      
      protected var §"0§:Boolean = false;
      
      protected var §%I§:Boolean = true;
      
      protected var §##m§:§+o§;
      
      protected var §>#_§:Number;
      
      protected var §-"Z§:Boolean = true;
      
      protected var §&!^§:int = 0;
      
      protected var §6#q§:Number = 1.0;
      
      private var §3"j§:§-!6§;
      
      public function §]n§(param1:§-!6§, param2:§`"B§, param3:Number, param4:§%"=§, param5:Number, param6:Boolean = true)
      {
         this.§,"`§ = new Vector.<§`#s§>();
         super();
         this.§]#o§ = param4;
         this.§3"j§ = param1;
         this.§=#§ = 0;
         this.§9"W§ = 0;
         this.§5U§ = param3;
         this.§2[§ = new Sprite();
         this.§3#>§ = new Sprite();
         this.§&-§ = new Sprite();
         this.§>#_§ = param5;
         this.§-"Z§ = param6;
         this.§"0§ = true;
         this.§`#b§(param2,param5);
      }
      
      public function get §4!m§() : Boolean
      {
         return this.§"0§;
      }
      
      public function get §'!§() : Sprite
      {
         return this.§&-§;
      }
      
      public function get §9#9§() : Sprite
      {
         return this.§2[§;
      }
      
      public function get §3]§() : Sprite
      {
         return this.§3#>§;
      }
      
      public function get §@#h§() : int
      {
         return this.§&!^§;
      }
      
      protected function get textureManager() : §%"=§
      {
         return this.§]#o§;
      }
      
      public function dispose() : void
      {
         this.§;#>§();
         this.stopAmbientSound();
         if(this.§2[§)
         {
            this.§2[§.dispose();
            this.§2[§ = null;
         }
         if(this.§3#>§)
         {
            this.§3#>§.dispose();
            this.§3#>§ = null;
         }
         if(this.§&-§)
         {
            this.§&-§.dispose();
            this.§&-§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§%I§;
      }
      
      public function setVisible(param1:Boolean) : void
      {
         if(this.§%I§ == param1)
         {
            return;
         }
         this.§%I§ = param1;
         if(!param1)
         {
            this.§;#>§();
         }
         else
         {
            this.§`#b§(this.§,#'§,this.§>#_§);
         }
      }
      
      public function §&$;§() : String
      {
         return this.§,#'§.§8§;
      }
      
      public function §]2§() : String
      {
         return this.§,#'§.§%#_§;
      }
      
      private function §;#>§() : void
      {
         while(this.§3#>§.numChildren > 0)
         {
            this.§3#>§.removeChildAt(0,true);
         }
         while(this.§2[§.numChildren > 0)
         {
            this.§2[§.removeChildAt(0,true);
         }
         while(this.§,"`§.length > 0)
         {
            this.§,"`§.pop().dispose();
         }
      }
      
      protected function §5K§(param1:§`"B§) : void
      {
      }
      
      protected function §`#b§(param1:§`"B§, param2:Number) : void
      {
         var _loc4_:§?##§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§`#s§ = null;
         this.§,#'§ = param1;
         this.§5K§(this.§,#'§);
         this.§2[§.y = this.§5U§;
         this.§3#>§.y = this.§5U§;
         this.§&-§.y = this.§5U§;
         this.§43§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§,#'§.§ !k§)
         {
            _loc4_ = this.§,#'§.§^#Z§(_loc3_);
            if(this.§-"Z§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.§,"`§.push(_loc6_);
               if(_loc6_.§2#p§)
               {
                  this.§3#>§.addChild(_loc5_);
               }
               else
               {
                  this.§2[§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§@#k§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:§?##§, param2:Sprite, param3:§%"=§, param4:Number) : §`#s§
      {
         return new §`#s§(this.§3"j§,param1,param2,param3,param4);
      }
      
      private function §43§() : void
      {
         var _loc1_:§6J§ = null;
         if(this.§,#'§.§ "l§)
         {
            this.§@#k§(this.§,#'§.§ "l§);
         }
         if(this.§,#'§.colorGround)
         {
            _loc1_ = this.§]`§(uint(this.§,#'§.colorGround));
            _loc1_.y = 0;
            this.§&-§.addChild(_loc1_);
         }
      }
      
      protected function §]`§(param1:uint) : §6J§
      {
         return new §6J§(4096,4096,param1);
      }
      
      private function §@#k§(param1:int) : void
      {
         this.§&!^§ = param1;
         if(Starling.§%!q§)
         {
            Starling.§%!q§.color = param1;
         }
      }
      
      public function §^@§(param1:§`"B§) : void
      {
         this.§;#>§();
         §4!h§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§`#b§(param1,this.§>#_§);
      }
      
      public function §1#5§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§`#s§ = null;
         if(param1 == this.§"0§)
         {
            return;
         }
         this.§"0§ = param1;
         for each(_loc3_ in this.§,"`§)
         {
            _loc3_.§1#5§(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(§4$4§.§`!U§("CHANNEL_AMBIENT") == null || !§4$4§.§`!U§("CHANNEL_AMBIENT").isPlaying())
         {
            §4$4§.playSound(this.§-!Y§,"CHANNEL_AMBIENT",999,this.§#!L§);
         }
      }
      
      public function stopAmbientSound() : void
      {
         §4$4§.§'!?§("CHANNEL_AMBIENT");
      }
      
      public function get §-!Y§() : String
      {
         return this.§,#'§.§-!Y§;
      }
      
      public function get §#!L§() : Number
      {
         return this.§,#'§.§#!L§;
      }
      
      public function §3#y§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§2[§.numChildren)
         {
            _loc2_ = this.§2[§.getChildAt(param1);
         }
         else if(param1 - this.§2[§.numChildren < this.§3#>§.numChildren)
         {
            _loc2_ = this.§3#>§.getChildAt(param1 - this.§2[§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§=#§ = param1;
         this.§9"W§ = param2;
         if(this.§,"`§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§,"`§.length)
            {
               this.§,"`§[_loc8_].setScreenOffset(this.§=#§,this.§9"W§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§&-§ != null)
         {
            this.§&-§.scaleX = this.§&-§.scaleY = 1 / §5$E§.§4W§;
            this.updateGroundSpriteOffset();
         }
      }
      
      protected function updateGroundSpriteOffset() : void
      {
         this.§&-§.x = 0;
         this.§&-§.y = this.§5U§ - this.§9"W§;
      }
      
      public function §,"[§() : String
      {
         return this.§,#'§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§`#s§ = null;
         for each(_loc2_ in this.§,"`§)
         {
            _loc2_.update(param1);
         }
      }
   }
}
