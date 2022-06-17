package §<#S§
{
   import §!6§.§4";§;
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §%_§.§;l§;
   import §'!O§.§'"8§;
   import §'!O§.§@P§;
   import §-"i§.§"!Y§;
   import §9#K§.§=#f§;
   import §>"9§.§1"T§;
   import §>"9§.§[#%§;
   import §]"P§.Starling;
   import §^"[§.§=#;§;
   
   public class §[!W§
   {
      
      public static const §4$2§:Boolean = true;
       
      
      protected var §2!b§:§=#;§;
      
      protected var §]"2§:§@P§;
      
      protected var §2#F§:Vector.<§8#P§>;
      
      protected var §,o§:Sprite;
      
      protected var §-#W§:Sprite;
      
      protected var §5'§:Sprite;
      
      protected var §9"l§:Number;
      
      protected var §-!6§:Number;
      
      protected var §5c§:Number;
      
      protected var §5!J§:Boolean = false;
      
      protected var §;"@§:Boolean = true;
      
      protected var §;$+§:§1"T§;
      
      protected var §[#q§:Number;
      
      protected var §%#H§:Boolean = true;
      
      protected var §?5§:int = 0;
      
      protected var §6z§:Number = 1.0;
      
      private var §=#v§:§"!Y§;
      
      public function §[!W§(param1:§"!Y§, param2:§@P§, param3:Number, param4:§=#;§, param5:Number, param6:Boolean = true)
      {
         this.§2#F§ = new Vector.<§8#P§>();
         super();
         this.§2!b§ = param4;
         this.§=#v§ = param1;
         this.§-!6§ = 0;
         this.§5c§ = 0;
         this.§9"l§ = param3;
         this.§,o§ = new Sprite();
         this.§-#W§ = new Sprite();
         this.§5'§ = new Sprite();
         this.§[#q§ = param5;
         this.§%#H§ = param6;
         this.§5!J§ = true;
         this.§4!@§(param2,param5);
      }
      
      public function get §^"!§() : Boolean
      {
         return this.§5!J§;
      }
      
      public function get §'"$§() : Sprite
      {
         return this.§5'§;
      }
      
      public function get §7#f§() : Sprite
      {
         return this.§,o§;
      }
      
      public function get §?!;§() : Sprite
      {
         return this.§-#W§;
      }
      
      public function get §""H§() : int
      {
         return this.§?5§;
      }
      
      protected function get textureManager() : §=#;§
      {
         return this.§2!b§;
      }
      
      public function dispose() : void
      {
         this.§4#p§();
         this.stopAmbientSound();
         if(this.§,o§)
         {
            this.§,o§.dispose();
            this.§,o§ = null;
         }
         if(this.§-#W§)
         {
            this.§-#W§.dispose();
            this.§-#W§ = null;
         }
         if(this.§5'§)
         {
            this.§5'§.dispose();
            this.§5'§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§;"@§;
      }
      
      public function setVisible(param1:Boolean) : void
      {
         if(this.§;"@§ == param1)
         {
            return;
         }
         this.§;"@§ = param1;
         if(!param1)
         {
            this.§4#p§();
         }
         else
         {
            this.§4!@§(this.§]"2§,this.§[#q§);
         }
      }
      
      public function §5"j§() : String
      {
         return this.§]"2§.§?$D§;
      }
      
      public function §6<§() : String
      {
         return this.§]"2§.§,$?§;
      }
      
      private function §4#p§() : void
      {
         while(this.§-#W§.numChildren > 0)
         {
            this.§-#W§.removeChildAt(0,true);
         }
         while(this.§,o§.numChildren > 0)
         {
            this.§,o§.removeChildAt(0,true);
         }
         while(this.§2#F§.length > 0)
         {
            this.§2#F§.pop().dispose();
         }
      }
      
      protected function §<"1§(param1:§@P§) : void
      {
      }
      
      protected function §4!@§(param1:§@P§, param2:Number) : void
      {
         var _loc4_:§'"8§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§8#P§ = null;
         this.§]"2§ = param1;
         this.§<"1§(this.§]"2§);
         this.§,o§.y = this.§9"l§;
         this.§-#W§.y = this.§9"l§;
         this.§5'§.y = this.§9"l§;
         this.§14§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§]"2§.§`!<§)
         {
            _loc4_ = this.§]"2§.§6!5§(_loc3_);
            if(this.§%#H§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.§2#F§.push(_loc6_);
               if(_loc6_.§6!=§)
               {
                  this.§-#W§.addChild(_loc5_);
               }
               else
               {
                  this.§,o§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§+$,§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:§'"8§, param2:Sprite, param3:§=#;§, param4:Number) : §8#P§
      {
         return new §8#P§(this.§=#v§,param1,param2,param3,param4);
      }
      
      private function §14§() : void
      {
         var _loc1_:§4";§ = null;
         if(this.§]"2§.§-#y§)
         {
            this.§+$,§(this.§]"2§.§-#y§);
         }
         if(this.§]"2§.colorGround)
         {
            _loc1_ = this.createGroundQuad(uint(this.§]"2§.colorGround));
            _loc1_.y = 0;
            this.§5'§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §4";§
      {
         return new §4";§(4096,4096,param1);
      }
      
      private function §+$,§(param1:int) : void
      {
         this.§?5§ = param1;
         if(Starling.§3!I§)
         {
            Starling.§3!I§.color = param1;
         }
      }
      
      public function §6"7§(param1:§@P§) : void
      {
         this.§4#p§();
         §=#f§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§4!@§(param1,this.§[#q§);
      }
      
      public function §0"q§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§8#P§ = null;
         if(param1 == this.§5!J§)
         {
            return;
         }
         this.§5!J§ = param1;
         for each(_loc3_ in this.§2#F§)
         {
            _loc3_.§0"q§(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(§[#%§.§<"!§("CHANNEL_AMBIENT") == null || !§[#%§.§<"!§("CHANNEL_AMBIENT").isPlaying())
         {
            §[#%§.playSound(this.§>"H§,"CHANNEL_AMBIENT",999,this.§+"§);
         }
      }
      
      public function stopAmbientSound() : void
      {
         §[#%§.§3$A§("CHANNEL_AMBIENT");
      }
      
      public function get §>"H§() : String
      {
         return this.§]"2§.§>"H§;
      }
      
      public function get §+"§() : Number
      {
         return this.§]"2§.§+"§;
      }
      
      public function §>#s§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§,o§.numChildren)
         {
            _loc2_ = this.§,o§.getChildAt(param1);
         }
         else if(param1 - this.§,o§.numChildren < this.§-#W§.numChildren)
         {
            _loc2_ = this.§-#W§.getChildAt(param1 - this.§,o§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§-!6§ = param1;
         this.§5c§ = param2;
         if(this.§2#F§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§2#F§.length)
            {
               this.§2#F§[_loc8_].setScreenOffset(this.§-!6§,this.§5c§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§5'§ != null)
         {
            this.§5'§.scaleX = this.§5'§.scaleY = 1 / §;l§.§%#3§;
            this.updateGroundSpriteOffset();
         }
      }
      
      protected function updateGroundSpriteOffset() : void
      {
         this.§5'§.x = 0;
         this.§5'§.y = this.§9"l§ - this.§5c§;
      }
      
      public function §3!^§() : String
      {
         return this.§]"2§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§8#P§ = null;
         for each(_loc2_ in this.§2#F§)
         {
            _loc2_.update(param1);
         }
      }
   }
}
