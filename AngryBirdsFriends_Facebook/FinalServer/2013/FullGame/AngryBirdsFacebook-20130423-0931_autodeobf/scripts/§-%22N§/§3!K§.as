package §-"N§
{
   import §!!=§.§"l§;
   import §"a§.§!"J§;
   import §'!6§.§5T§;
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §+!c§.§;!=§;
   import §8m§.§7!>§;
   import §8m§.§@"M§;
   import §9!n§.§0"T§;
   import §<T§.§`m§;
   import §`1§.§#!#§;
   import §`1§.§0!"§;
   import §`1§.§4";§;
   
   public class §3!K§
   {
      
      public static const §'A§:Boolean = true;
       
      
      private var §=!2§:§`m§;
      
      protected var §?c§:§0!"§;
      
      protected var §2"R§:Vector.<§]5§>;
      
      private var §!!§:Sprite;
      
      private var §^!E§:Sprite;
      
      private var §2t§:Sprite;
      
      private var §5">§:Number;
      
      private var §=o§:Number;
      
      private var §3!X§:Number;
      
      private var §1D§:Boolean = true;
      
      private var §,!W§:Boolean = true;
      
      private var §<!I§:§7!>§;
      
      private var §6"§:Number;
      
      public function §3!K§(param1:String, param2:Number, param3:§`m§, param4:Number)
      {
         this.§2"R§ = new Vector.<§]5§>();
         super();
         this.§=!2§ = param3;
         this.§=o§ = 0;
         this.§3!X§ = 0;
         this.§5">§ = param2;
         this.§!!§ = new Sprite();
         this.§^!E§ = new Sprite();
         this.§2t§ = new Sprite();
         this.§6"§ = param4;
         this.§2^§(param1,param4);
      }
      
      public function get §#!3§() : Boolean
      {
         return this.§1D§;
      }
      
      public function get groundSprite() : Sprite
      {
         return this.§2t§;
      }
      
      public function get backgroundLayersSprite() : Sprite
      {
         return this.§!!§;
      }
      
      public function get foregroundLayersSprite() : Sprite
      {
         return this.§^!E§;
      }
      
      protected function get textureManager() : §`m§
      {
         return this.§=!2§;
      }
      
      public function dispose() : void
      {
         this.§5!F§();
         if(this.§!!§)
         {
            this.§!!§.dispose();
            this.§!!§ = null;
         }
         if(this.§^!E§)
         {
            this.§^!E§.dispose();
            this.§^!E§ = null;
         }
         if(this.§2t§)
         {
            this.§2t§.dispose();
            this.§2t§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§,!W§;
      }
      
      public function §#"[§(param1:Boolean) : void
      {
         if(this.§,!W§ == param1)
         {
            return;
         }
         this.§,!W§ = param1;
         if(!param1)
         {
            this.§5!F§();
         }
         else
         {
            this.§2^§(this.§?c§.mName,this.§6"§);
         }
      }
      
      public function §%"R§() : String
      {
         return this.§?c§.§@"@§;
      }
      
      private function §5!F§() : void
      {
         while(this.§^!E§.numChildren > 0)
         {
            this.§^!E§.removeChildAt(0,true);
         }
         while(this.§!!§.numChildren > 0)
         {
            this.§!!§.removeChildAt(0,true);
         }
         while(this.§2"R§.length > 0)
         {
            this.§2"R§.pop().dispose();
         }
      }
      
      protected function §!l§(param1:§0!"§, param2:String) : void
      {
      }
      
      private function §2^§(param1:String, param2:Number) : void
      {
         var _loc4_:§#!#§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§]5§ = null;
         this.§?c§ = §4";§.§>"O§(param1);
         if(this.§?c§ == null)
         {
            §;!=§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §0"T§.§=!p§;
            this.§?c§ = §4";§.§>"O§(param1);
         }
         this.§!l§(this.§?c§,param1);
         this.§!!§.y = this.§5">§;
         this.§^!E§.y = this.§5">§;
         this.§2t§.y = this.§5">§;
         this.§-!H§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§?c§.§2"R§.length)
         {
            _loc4_ = this.§?c§.§2"R§[_loc3_];
            if(!§!"J§.§!X§ || !_loc4_.§[!E§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§>"T§(_loc4_,_loc5_,this.§=!2§,param2);
               this.§2"R§.push(_loc6_);
               if(_loc6_.§;T§)
               {
                  this.§^!E§.addChild(_loc5_);
               }
               else
               {
                  this.§!!§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§'!a§)
            {
               this.§7H§(parseInt(_loc4_.§'!a§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §>"T§(param1:§#!#§, param2:Sprite, param3:§`m§, param4:Number) : §]5§
      {
         return new §]5§(param1,param2,param3,param4);
      }
      
      private function §-!H§() : void
      {
         var _loc1_:§5T§ = null;
         if(this.§?c§.§,!F§)
         {
            this.§7H§(this.§?c§.§,!F§);
         }
         if(this.§?c§.§4!X§)
         {
            _loc1_ = this.createGroundQuad(uint(this.§?c§.§4!X§));
            _loc1_.y = 0;
            this.§2t§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §5T§
      {
         return new §5T§(4096,4096,param1);
      }
      
      protected function §7H§(param1:int) : void
      {
         if(§!"J§.§1&§)
         {
            §!"J§.§1&§.color = param1;
         }
      }
      
      public function §+_§(param1:String, param2:§`m§ = null) : void
      {
         if(param2)
         {
            this.§=!2§ = param2;
         }
         this.§5!F§();
         §;!=§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§2^§(param1,this.§6"§);
      }
      
      public function §%"7§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§]5§ = null;
         if(param1 == this.§1D§)
         {
            return;
         }
         this.§1D§ = param1;
         for each(_loc3_ in this.§2"R§)
         {
            _loc3_.§%"7§(param1);
         }
      }
      
      public function §6"$§() : void
      {
         if(§@"M§.§^!5§("CHANNEL_AMBIENT") == null || !§@"M§.§^!5§("CHANNEL_AMBIENT").§6",§())
         {
            §@"M§.§3"C§(this.§?c§.§7! §,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §!!K§() : void
      {
         §@"M§.§]!n§("CHANNEL_AMBIENT");
      }
      
      public function §-!k§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§!!§.numChildren)
         {
            _loc2_ = this.§!!§.getChildAt(param1);
         }
         else if(param1 - this.§!!§.numChildren < this.§^!E§.numChildren)
         {
            _loc2_ = this.§^!E§.getChildAt(param1 - this.§!!§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§=o§ = param1;
         this.§3!X§ = param2;
         if(this.§2"R§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§2"R§.length)
            {
               this.§2"R§[_loc3_].setSideScroll(this.§=o§,this.§3!X§);
               _loc3_++;
            }
         }
         if(this.§2t§ != null)
         {
            this.§2t§.scaleX = this.§2t§.scaleY = 1 / §"l§.§@!>§;
            this.§2t§.x = -§"l§.§2!N§ * (1 / §"l§.§@!>§);
            this.§2t§.y = this.§5">§ - this.§3!X§;
         }
      }
      
      public function §4!!§() : String
      {
         return this.§?c§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
