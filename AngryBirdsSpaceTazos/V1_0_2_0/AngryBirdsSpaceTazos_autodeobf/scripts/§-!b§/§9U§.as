package §-!b§
{
   import §""<§.§#N§;
   import §'!&§.§ "E§;
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §,§.§!P§;
   import §,§.§-!d§;
   import §8o§.§5"%§;
   import §9!G§.§"!S§;
   import §9!G§.§0!"§;
   import §[r§.§ use§;
   
   public class §9U§
   {
      
      public static const §^"7§:Boolean = true;
       
      
      private var §3'§:§5"%§;
      
      private var §'H§:§-!d§;
      
      private var §>Z§:Vector.<§0P§>;
      
      private var §"t§:Sprite;
      
      private var §^W§:Sprite;
      
      private var §"!m§:Sprite;
      
      private var §3"§:Number;
      
      private var § !$§:Number;
      
      private var §#]§:Number;
      
      private var §<!;§:Boolean = true;
      
      private var §@!d§:Boolean = true;
      
      private var §2+§:§0!"§;
      
      private var §do§:Number;
      
      private var §[Z§:Boolean = true;
      
      private var §1v§:int = 0;
      
      private var §-!Y§:Number = 1.0;
      
      public function §9U§(param1:§-!d§, param2:Number, param3:§5"%§, param4:Number, param5:Boolean = true)
      {
         this.§>Z§ = new Vector.<§0P§>();
         super();
         this.§3'§ = param3;
         this.§ !$§ = 0;
         this.§#]§ = 0;
         this.§3"§ = param2;
         this.§"t§ = new Sprite();
         this.§^W§ = new Sprite();
         this.§"!m§ = new Sprite();
         this.§do§ = param4;
         this.§[Z§ = param5;
         this.§9!g§(param1,param4);
      }
      
      public function get §2r§() : Boolean
      {
         return this.§<!;§;
      }
      
      public function get §"!%§() : Sprite
      {
         return this.§"!m§;
      }
      
      public function get §^!3§() : Sprite
      {
         return this.§"t§;
      }
      
      public function get §;"9§() : Sprite
      {
         return this.§^W§;
      }
      
      public function get skyColor() : int
      {
         return this.§1v§;
      }
      
      protected function get textureManager() : §5"%§
      {
         return this.§3'§;
      }
      
      public function dispose() : void
      {
         this.§!"3§();
         this.stopAmbientSound();
         if(this.§"t§)
         {
            this.§"t§.dispose();
            this.§"t§ = null;
         }
         if(this.§^W§)
         {
            this.§^W§.dispose();
            this.§^W§ = null;
         }
         if(this.§"!m§)
         {
            this.§"!m§.dispose();
            this.§"!m§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§@!d§;
      }
      
      public function §'!z§(param1:Boolean) : void
      {
         if(this.§@!d§ == param1)
         {
            return;
         }
         this.§@!d§ = param1;
         if(!param1)
         {
            this.§!"3§();
         }
         else
         {
            this.§9!g§(this.§'H§,this.§do§);
         }
      }
      
      public function §@!O§() : String
      {
         return this.§'H§.§2Z§;
      }
      
      private function §!"3§() : void
      {
         while(this.§^W§.numChildren > 0)
         {
            this.§^W§.removeChildAt(0,true);
         }
         while(this.§"t§.numChildren > 0)
         {
            this.§"t§.removeChildAt(0,true);
         }
         while(this.§>Z§.length > 0)
         {
            this.§>Z§.pop().dispose();
         }
      }
      
      protected function §7Z§(param1:§-!d§) : void
      {
      }
      
      protected function §9!g§(param1:§-!d§, param2:Number) : void
      {
         var _loc4_:§!P§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§0P§ = null;
         this.§'H§ = param1;
         this.§7Z§(this.§'H§);
         this.§"t§.y = this.§3"§;
         this.§^W§.y = this.§3"§;
         this.§"!m§.y = this.§3"§;
         this.§9!t§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§'H§.§]!o§)
         {
            _loc4_ = this.§'H§.§'!W§(_loc3_);
            if(this.§[Z§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.§>Z§.push(_loc6_);
               if(_loc6_.§<!j§)
               {
                  this.§^W§.addChild(_loc5_);
               }
               else
               {
                  this.§"t§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§?!3§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:§!P§, param2:Sprite, param3:§5"%§, param4:Number) : §0P§
      {
         return new §0P§(param1,param2,param3,param4);
      }
      
      private function §9!t§() : void
      {
         var _loc1_:§ "E§ = null;
         if(this.§'H§.§1=§)
         {
            this.§?!3§(this.§'H§.§1=§);
         }
         if(this.§'H§.colorGround)
         {
            _loc1_ = this.§#?§(uint(this.§'H§.colorGround));
            _loc1_.y = 30;
            this.§"!m§.addChild(_loc1_);
         }
      }
      
      protected function §#?§(param1:uint) : § "E§
      {
         return new § "E§(4096,4096,param1);
      }
      
      private function §?!3§(param1:int) : void
      {
         this.§1v§ = param1;
      }
      
      public function §9"&§(param1:§-!d§) : void
      {
         this.§!"3§();
         §#N§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§9!g§(param1,this.§do§);
      }
      
      public function §<4§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§0P§ = null;
         if(param1 == this.§<!;§)
         {
            return;
         }
         this.§<!;§ = param1;
         for each(_loc3_ in this.§>Z§)
         {
            _loc3_.§<4§(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(§"!S§.§2"6§("CHANNEL_AMBIENT") == null || !§"!S§.§2"6§("CHANNEL_AMBIENT").§`]§())
         {
            §"!S§.playSound(this.§2">§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function stopAmbientSound() : void
      {
         §"!S§.§]R§("CHANNEL_AMBIENT");
      }
      
      public function get §2">§() : String
      {
         return this.§'H§.§2">§;
      }
      
      public function §2!p§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§"t§.numChildren)
         {
            _loc2_ = this.§"t§.getChildAt(param1);
         }
         else if(param1 - this.§"t§.numChildren < this.§^W§.numChildren)
         {
            _loc2_ = this.§^W§.getChildAt(param1 - this.§"t§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§ !$§ = param1;
         this.§#]§ = param2;
         if(this.§>Z§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§>Z§.length)
            {
               this.§>Z§[_loc8_].setScreenOffset(this.§ !$§,this.§#]§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§"!m§ != null)
         {
            this.§"!m§.scaleX = this.§"!m§.scaleY = 1 / § use§.§#!;§;
            this.§"!m§.x = 0;
            this.§"!m§.y = this.§3"§ - this.§#]§;
         }
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§'H§.id;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
