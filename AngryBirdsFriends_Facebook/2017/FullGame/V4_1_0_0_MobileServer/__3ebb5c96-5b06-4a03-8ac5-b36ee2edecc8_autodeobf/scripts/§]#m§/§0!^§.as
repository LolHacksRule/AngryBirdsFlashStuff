package §]#m§
{
   import §&!v§.§0"s§;
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §1#W§.§!#&§;
   import §1#W§.§="D§;
   import §4o§.§!"e§;
   import §6!6§.§%§;
   import §6!6§.§6!r§;
   import §7!j§.§'0§;
   import §9$<§.§-t§;
   import §9+§.Starling;
   import §<"p§.§?!T§;
   
   public class §0!^§
   {
      
      public static const §!#§:Boolean = true;
       
      
      protected var §>!4§:§'0§;
      
      protected var §;"w§:§6!r§;
      
      protected var § #r§:Vector.<§<#A§>;
      
      protected var §4#-§:Sprite;
      
      protected var §8R§:Sprite;
      
      protected var §;!L§:Sprite;
      
      protected var §9!^§:Number;
      
      protected var §,x§:Number;
      
      protected var §7!L§:Number;
      
      protected var §9?§:Boolean = false;
      
      protected var §-$<§:Boolean = true;
      
      protected var §1"C§:§="D§;
      
      protected var §["I§:Number;
      
      protected var §=#h§:Boolean = true;
      
      protected var §9;§:int = 0;
      
      protected var § "A§:Number = 1.0;
      
      private var §8!N§:§!"e§;
      
      public function §0!^§(param1:§!"e§, param2:§6!r§, param3:Number, param4:§'0§, param5:Number, param6:Boolean = true)
      {
         this.§ #r§ = new Vector.<§<#A§>();
         super();
         this.§>!4§ = param4;
         this.§8!N§ = param1;
         this.§,x§ = 0;
         this.§7!L§ = 0;
         this.§9!^§ = param3;
         this.§4#-§ = new Sprite();
         this.§8R§ = new Sprite();
         this.§;!L§ = new Sprite();
         this.§["I§ = param5;
         this.§=#h§ = param6;
         this.§9?§ = true;
         this.§3#&§(param2,param5);
      }
      
      public function get §]!@§() : Boolean
      {
         return this.§9?§;
      }
      
      public function get §3!I§() : Sprite
      {
         return this.§;!L§;
      }
      
      public function get §1! §() : Sprite
      {
         return this.§4#-§;
      }
      
      public function get §'y§() : Sprite
      {
         return this.§8R§;
      }
      
      public function get §2"Y§() : int
      {
         return this.§9;§;
      }
      
      protected function get textureManager() : §'0§
      {
         return this.§>!4§;
      }
      
      public function dispose() : void
      {
         this.§>#J§();
         this.stopAmbientSound();
         if(this.§4#-§)
         {
            this.§4#-§.dispose();
            this.§4#-§ = null;
         }
         if(this.§8R§)
         {
            this.§8R§.dispose();
            this.§8R§ = null;
         }
         if(this.§;!L§)
         {
            this.§;!L§.dispose();
            this.§;!L§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§-$<§;
      }
      
      public function §8"d§(param1:Boolean) : void
      {
         if(this.§-$<§ == param1)
         {
            return;
         }
         this.§-$<§ = param1;
         if(!param1)
         {
            this.§>#J§();
         }
         else
         {
            this.§3#&§(this.§;"w§,this.§["I§);
         }
      }
      
      public function §`_§() : String
      {
         return this.§;"w§.§##N§;
      }
      
      public function §;# §() : String
      {
         return this.§;"w§.§"C§;
      }
      
      private function §>#J§() : void
      {
         while(this.§8R§.numChildren > 0)
         {
            this.§8R§.removeChildAt(0,true);
         }
         while(this.§4#-§.numChildren > 0)
         {
            this.§4#-§.removeChildAt(0,true);
         }
         while(this.§ #r§.length > 0)
         {
            this.§ #r§.pop().dispose();
         }
      }
      
      protected function §%"b§(param1:§6!r§) : void
      {
      }
      
      protected function §3#&§(param1:§6!r§, param2:Number) : void
      {
         var _loc4_:§%#1§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§<#A§ = null;
         this.§;"w§ = param1;
         this.§%"b§(this.§;"w§);
         this.§4#-§.y = this.§9!^§;
         this.§8R§.y = this.§9!^§;
         this.§;!L§.y = this.§9!^§;
         this.§-"S§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§;"w§.§]#0§)
         {
            _loc4_ = this.§;"w§.§7K§(_loc3_);
            if(this.§=#h§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.§ #r§.push(_loc6_);
               if(_loc6_.§"!r§)
               {
                  this.§8R§.addChild(_loc5_);
               }
               else
               {
                  this.§4#-§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§1"c§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:§%#1§, param2:Sprite, param3:§'0§, param4:Number) : §<#A§
      {
         return new §<#A§(this.§8!N§,param1,param2,param3,param4);
      }
      
      private function §-"S§() : void
      {
         var _loc1_:§0"s§ = null;
         if(this.§;"w§.§#"<§)
         {
            this.§1"c§(this.§;"w§.§#"<§);
         }
         if(this.§;"w§.colorGround)
         {
            _loc1_ = this.createGroundQuad(uint(this.§;"w§.colorGround));
            _loc1_.y = 0;
            this.§;!L§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §0"s§
      {
         return new §0"s§(4096,4096,param1);
      }
      
      private function §1"c§(param1:int) : void
      {
         this.§9;§ = param1;
         if(Starling.§?$#§)
         {
            Starling.§?$#§.color = param1;
         }
      }
      
      public function §7"T§(param1:§6!r§) : void
      {
         this.§>#J§();
         §?!T§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§3#&§(param1,this.§["I§);
      }
      
      public function §-$>§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§<#A§ = null;
         if(param1 == this.§9?§)
         {
            return;
         }
         this.§9?§ = param1;
         for each(_loc3_ in this.§ #r§)
         {
            _loc3_.§-$>§(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(§!#&§.§3!c§("CHANNEL_AMBIENT") == null || !§!#&§.§3!c§("CHANNEL_AMBIENT").isPlaying())
         {
            §!#&§.playSound(this.§="B§,"CHANNEL_AMBIENT",999,this.§-"U§);
         }
      }
      
      public function stopAmbientSound() : void
      {
         §!#&§.§4#J§("CHANNEL_AMBIENT");
      }
      
      public function get §="B§() : String
      {
         return this.§;"w§.§="B§;
      }
      
      public function get §-"U§() : Number
      {
         return this.§;"w§.§-"U§;
      }
      
      public function §4#j§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§4#-§.numChildren)
         {
            _loc2_ = this.§4#-§.getChildAt(param1);
         }
         else if(param1 - this.§4#-§.numChildren < this.§8R§.numChildren)
         {
            _loc2_ = this.§8R§.getChildAt(param1 - this.§4#-§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§,x§ = param1;
         this.§7!L§ = param2;
         if(this.§ #r§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§ #r§.length)
            {
               this.§ #r§[_loc8_].setScreenOffset(this.§,x§,this.§7!L§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§;!L§ != null)
         {
            this.§;!L§.scaleX = this.§;!L§.scaleY = 1 / §-t§.§<!W§;
            this.updateGroundSpriteOffset();
         }
      }
      
      protected function updateGroundSpriteOffset() : void
      {
         this.§;!L§.x = 0;
         this.§;!L§.y = this.§9!^§ - this.§7!L§;
      }
      
      public function §6#i§() : String
      {
         return this.§;"w§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§<#A§ = null;
         for each(_loc2_ in this.§ #r§)
         {
            _loc2_.update(param1);
         }
      }
   }
}
