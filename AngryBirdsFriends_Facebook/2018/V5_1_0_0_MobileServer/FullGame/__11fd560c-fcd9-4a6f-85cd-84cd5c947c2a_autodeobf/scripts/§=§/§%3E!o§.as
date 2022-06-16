package §=§#9
{
   import §%!P§.§4#u§;
   import §'!L§.§8"y§;
   import §6$8§.§]§;
   import §6$8§.§]!7§;
   import §?"e§.Starling;
   import §@!M§.§!"p§;
   import §@!M§.§^#p§;
   import §]!6§.§6Y§;
   import §^"S§.§'#E§;
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   import §`"8§.§34§;
   
   public class §>!o§
   {
      
      public static const §;!D§:Boolean = true;
       
      
      protected var §4Z§:§34§;
      
      protected var §^7§:§]§;
      
      protected var §%"J§:Vector.<§2!f§>;
      
      protected var § #R§:Sprite;
      
      protected var §%#<§:Sprite;
      
      protected var §5$0§:Sprite;
      
      protected var §3$>§:Number;
      
      protected var § "p§:Number;
      
      protected var §<!G§:Number;
      
      protected var §>#%§:Boolean = false;
      
      protected var §-"i§:Boolean = true;
      
      protected var §]"O§:§^#p§;
      
      protected var §["M§:Number;
      
      protected var §@i§:Boolean = true;
      
      protected var §6!F§:int = 0;
      
      protected var §^#5§:Number = 1.0;
      
      private var §&l§:§8"y§;
      
      public function §>!o§(param1:§8"y§, param2:§]§, param3:Number, param4:§34§, param5:Number, param6:Boolean = true)
      {
         this.§%"J§ = new Vector.<§2!f§>();
         super();
         this.§4Z§ = param4;
         this.§&l§ = param1;
         this.§ "p§ = 0;
         this.§<!G§ = 0;
         this.§3$>§ = param3;
         this.§ #R§ = new Sprite();
         this.§%#<§ = new Sprite();
         this.§5$0§ = new Sprite();
         this.§["M§ = param5;
         this.§@i§ = param6;
         this.§>#%§ = true;
         this.§>#B§(param2,param5);
      }
      
      public function get §&v§() : Boolean
      {
         return this.§>#%§;
      }
      
      public function get §&!L§() : Sprite
      {
         return this.§5$0§;
      }
      
      public function get §"![§() : Sprite
      {
         return this.§ #R§;
      }
      
      public function get §#"j§() : Sprite
      {
         return this.§%#<§;
      }
      
      public function get §@#-§() : int
      {
         return this.§6!F§;
      }
      
      protected function get textureManager() : §34§
      {
         return this.§4Z§;
      }
      
      public function dispose() : void
      {
         this.§&$5§();
         this.stopAmbientSound();
         if(this.§ #R§)
         {
            this.§ #R§.dispose();
            this.§ #R§ = null;
         }
         if(this.§%#<§)
         {
            this.§%#<§.dispose();
            this.§%#<§ = null;
         }
         if(this.§5$0§)
         {
            this.§5$0§.dispose();
            this.§5$0§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§-"i§;
      }
      
      public function §;"?§(param1:Boolean) : void
      {
         if(this.§-"i§ == param1)
         {
            return;
         }
         this.§-"i§ = param1;
         if(!param1)
         {
            this.§&$5§();
         }
         else
         {
            this.§>#B§(this.§^7§,this.§["M§);
         }
      }
      
      public function §?#F§() : String
      {
         return this.§^7§.§!#!§;
      }
      
      public function §=#M§() : String
      {
         return this.§^7§.§7$;§;
      }
      
      private function §&$5§() : void
      {
         while(this.§%#<§.numChildren > 0)
         {
            this.§%#<§.removeChildAt(0,true);
         }
         while(this.§ #R§.numChildren > 0)
         {
            this.§ #R§.removeChildAt(0,true);
         }
         while(this.§%"J§.length > 0)
         {
            this.§%"J§.pop().dispose();
         }
      }
      
      protected function §=#T§(param1:§]§) : void
      {
      }
      
      protected function §>#B§(param1:§]§, param2:Number) : void
      {
         var _loc4_:§]!7§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§2!f§ = null;
         this.§^7§ = param1;
         this.§=#T§(this.§^7§);
         this.§ #R§.y = this.§3$>§;
         this.§%#<§.y = this.§3$>§;
         this.§5$0§.y = this.§3$>§;
         this.§5#E§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§^7§.§-#t§)
         {
            _loc4_ = this.§^7§.§<$0§(_loc3_);
            if(this.§@i§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.§%"J§.push(_loc6_);
               if(_loc6_.§3$6§)
               {
                  this.§%#<§.addChild(_loc5_);
               }
               else
               {
                  this.§ #R§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§<#E§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:§]!7§, param2:Sprite, param3:§34§, param4:Number) : §2!f§
      {
         return new §2!f§(this.§&l§,param1,param2,param3,param4);
      }
      
      private function §5#E§() : void
      {
         var _loc1_:§'#E§ = null;
         if(this.§^7§.§!$@§)
         {
            this.§<#E§(this.§^7§.§!$@§);
         }
         if(this.§^7§.colorGround)
         {
            _loc1_ = this.createGroundQuad(uint(this.§^7§.colorGround));
            _loc1_.y = 0;
            this.§5$0§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §'#E§
      {
         return new §'#E§(4096,4096,param1);
      }
      
      private function §<#E§(param1:int) : void
      {
         this.§6!F§ = param1;
         if(Starling.§@#K§)
         {
            Starling.§@#K§.color = param1;
         }
      }
      
      public function §<#b§(param1:§]§) : void
      {
         this.§&$5§();
         §6Y§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§>#B§(param1,this.§["M§);
      }
      
      public function §-#p§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§2!f§ = null;
         if(param1 == this.§>#%§)
         {
            return;
         }
         this.§>#%§ = param1;
         for each(_loc3_ in this.§%"J§)
         {
            _loc3_.§-#p§(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(§!"p§.§;!b§("CHANNEL_AMBIENT") == null || !§!"p§.§;!b§("CHANNEL_AMBIENT").isPlaying())
         {
            §!"p§.playSound(this.§>#5§,"CHANNEL_AMBIENT",999,this.§2z§);
         }
      }
      
      public function stopAmbientSound() : void
      {
         §!"p§.§5#u§("CHANNEL_AMBIENT");
      }
      
      public function get §>#5§() : String
      {
         return this.§^7§.§>#5§;
      }
      
      public function get §2z§() : Number
      {
         return this.§^7§.§2z§;
      }
      
      public function §`!a§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§ #R§.numChildren)
         {
            _loc2_ = this.§ #R§.getChildAt(param1);
         }
         else if(param1 - this.§ #R§.numChildren < this.§%#<§.numChildren)
         {
            _loc2_ = this.§%#<§.getChildAt(param1 - this.§ #R§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§ "p§ = param1;
         this.§<!G§ = param2;
         if(this.§%"J§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§%"J§.length)
            {
               this.§%"J§[_loc8_].setScreenOffset(this.§ "p§,this.§<!G§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§5$0§ != null)
         {
            this.§5$0§.scaleX = this.§5$0§.scaleY = 1 / §4#u§.§3"§;
            this.updateGroundSpriteOffset();
         }
      }
      
      protected function updateGroundSpriteOffset() : void
      {
         this.§5$0§.x = 0;
         this.§5$0§.y = this.§3$>§ - this.§<!G§;
      }
      
      public function §>#D§() : String
      {
         return this.§^7§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§2!f§ = null;
         for each(_loc2_ in this.§%"J§)
         {
            _loc2_.update(param1);
         }
      }
   }
}
