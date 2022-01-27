package §?"@§
{
   import §&!]§.§7!J§;
   import §&!]§.DisplayObject;
   import §&!]§.Sprite;
   import §3!S§.§"H§;
   import §3!S§.§<5§;
   import §3h§.§'`§;
   import §9!v§.§6a§;
   import §;"0§.§="4§;
   import §;"0§.§@$§;
   import §`!w§.§^!$§;
   
   public class §]1§
   {
      
      public static const §"!,§:Boolean = true;
       
      
      private var §@k§:§6a§;
      
      private var §+$§:§@$§;
      
      private var §0"-§:Vector.<§+;§>;
      
      private var §!"6§:Sprite;
      
      private var §#!2§:Sprite;
      
      private var §?X§:Sprite;
      
      private var §`J§:Number;
      
      private var §,"@§:Number;
      
      private var §-n§:Number;
      
      private var §;!6§:Boolean = true;
      
      private var §1p§:Boolean = true;
      
      private var §'@§:§"H§;
      
      private var §=!'§:Number;
      
      private var §>!#§:Boolean = true;
      
      private var §^-§:int = 0;
      
      private var §&!A§:Number = 1.0;
      
      public function §]1§(param1:§@$§, param2:Number, param3:§6a§, param4:Number, param5:Boolean = true)
      {
         this.§0"-§ = new Vector.<§+;§>();
         super();
         this.§@k§ = param3;
         this.§,"@§ = 0;
         this.§-n§ = 0;
         this.§`J§ = param2;
         this.§!"6§ = new Sprite();
         this.§#!2§ = new Sprite();
         this.§?X§ = new Sprite();
         this.§=!'§ = param4;
         this.§>!#§ = param5;
         this.§[D§(param1,param4);
      }
      
      public function get §-"F§() : Boolean
      {
         return this.§;!6§;
      }
      
      public function get § !o§() : Sprite
      {
         return this.§?X§;
      }
      
      public function get §@!+§() : Sprite
      {
         return this.§!"6§;
      }
      
      public function get §3F§() : Sprite
      {
         return this.§#!2§;
      }
      
      public function get skyColor() : int
      {
         return this.§^-§;
      }
      
      protected function get textureManager() : §6a§
      {
         return this.§@k§;
      }
      
      public function dispose() : void
      {
         this.§`!@§();
         this.stopAmbientSound();
         if(this.§!"6§)
         {
            this.§!"6§.dispose();
            this.§!"6§ = null;
         }
         if(this.§#!2§)
         {
            this.§#!2§.dispose();
            this.§#!2§ = null;
         }
         if(this.§?X§)
         {
            this.§?X§.dispose();
            this.§?X§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§1p§;
      }
      
      public function §#5§(param1:Boolean) : void
      {
         if(this.§1p§ == param1)
         {
            return;
         }
         this.§1p§ = param1;
         if(!param1)
         {
            this.§`!@§();
         }
         else
         {
            this.§[D§(this.§+$§,this.§=!'§);
         }
      }
      
      public function §7U§() : String
      {
         return this.§+$§.§2!5§;
      }
      
      private function §`!@§() : void
      {
         while(this.§#!2§.numChildren > 0)
         {
            this.§#!2§.removeChildAt(0,true);
         }
         while(this.§!"6§.numChildren > 0)
         {
            this.§!"6§.removeChildAt(0,true);
         }
         while(this.§0"-§.length > 0)
         {
            this.§0"-§.pop().dispose();
         }
      }
      
      protected function §"!#§(param1:§@$§) : void
      {
      }
      
      protected function §[D§(param1:§@$§, param2:Number) : void
      {
         var _loc4_:§="4§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§+;§ = null;
         this.§+$§ = param1;
         this.§"!#§(this.§+$§);
         this.§!"6§.y = this.§`J§;
         this.§#!2§.y = this.§`J§;
         this.§?X§.y = this.§`J§;
         this.§4"§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§+$§.§&C§)
         {
            _loc4_ = this.§+$§.§&m§(_loc3_);
            if(this.§>!#§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.§0"-§.push(_loc6_);
               if(_loc6_.§@P§)
               {
                  this.§#!2§.addChild(_loc5_);
               }
               else
               {
                  this.§!"6§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§`W§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:§="4§, param2:Sprite, param3:§6a§, param4:Number) : §+;§
      {
         return new §+;§(param1,param2,param3,param4);
      }
      
      private function §4"§() : void
      {
         var _loc1_:§7!J§ = null;
         if(this.§+$§.§23§)
         {
            this.§`W§(this.§+$§.§23§);
         }
         if(this.§+$§.colorGround)
         {
            _loc1_ = this.§7!S§(uint(this.§+$§.colorGround));
            _loc1_.y = 30;
            this.§?X§.addChild(_loc1_);
         }
      }
      
      protected function §7!S§(param1:uint) : §7!J§
      {
         return new §7!J§(4096,4096,param1);
      }
      
      private function §`W§(param1:int) : void
      {
         this.§^-§ = param1;
      }
      
      public function §#! §(param1:§@$§) : void
      {
         this.§`!@§();
         §^!$§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§[D§(param1,this.§=!'§);
      }
      
      public function §7!+§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§+;§ = null;
         if(param1 == this.§;!6§)
         {
            return;
         }
         this.§;!6§ = param1;
         for each(_loc3_ in this.§0"-§)
         {
            _loc3_.§7!+§(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(§<5§.§^g§("CHANNEL_AMBIENT") == null || !§<5§.§^g§("CHANNEL_AMBIENT").§6!L§())
         {
            §<5§.playSound(this.§8"&§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function stopAmbientSound() : void
      {
         §<5§.§["'§("CHANNEL_AMBIENT");
      }
      
      public function get §8"&§() : String
      {
         return this.§+$§.§8"&§;
      }
      
      public function §7!O§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§!"6§.numChildren)
         {
            _loc2_ = this.§!"6§.getChildAt(param1);
         }
         else if(param1 - this.§!"6§.numChildren < this.§#!2§.numChildren)
         {
            _loc2_ = this.§#!2§.getChildAt(param1 - this.§!"6§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§,"@§ = param1;
         this.§-n§ = param2;
         if(this.§0"-§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§0"-§.length)
            {
               this.§0"-§[_loc8_].setScreenOffset(this.§,"@§,this.§-n§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§?X§ != null)
         {
            this.§?X§.scaleX = this.§?X§.scaleY = 1 / §'`§.§=6§;
            this.§?X§.x = 0;
            this.§?X§.y = this.§`J§ - this.§-n§;
         }
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§+$§.id;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
