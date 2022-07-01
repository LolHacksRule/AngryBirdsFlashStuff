package §=g§
{
   import § !=§.DisplayObject;
   import § !=§.Sprite;
   import § !=§.§break§;
   import § !Q§.§"D§;
   import §-6§.§%5§;
   import §;L§.§"!X§;
   import §;s§.§%!c§;
   import §;s§.§3q§;
   import §>!z§.§'v§;
   import §>!z§.§^y§;
   
   public class §-!q§
   {
      
      public static const §^!e§:Boolean = true;
       
      
      private var §'!2§:§"!X§;
      
      private var §>!H§:§^y§;
      
      private var §>"5§:Vector.<§,6§>;
      
      private var §6!q§:Sprite;
      
      private var §5!W§:Sprite;
      
      private var §7!0§:Sprite;
      
      private var §7t§:Number;
      
      private var §7!3§:Number;
      
      private var §7m§:Number;
      
      private var §=u§:Boolean = true;
      
      private var §[l§:Boolean = true;
      
      private var §]Y§:§3q§;
      
      private var §'"'§:Number;
      
      private var §-k§:Boolean = true;
      
      private var §^!9§:int = 0;
      
      private var §6!p§:Number = 1.0;
      
      public function §-!q§(param1:§^y§, param2:Number, param3:§"!X§, param4:Number, param5:Boolean = true)
      {
         this.§>"5§ = new Vector.<§,6§>();
         super();
         this.§'!2§ = param3;
         this.§7!3§ = 0;
         this.§7m§ = 0;
         this.§7t§ = param2;
         this.§6!q§ = new Sprite();
         this.§5!W§ = new Sprite();
         this.§7!0§ = new Sprite();
         this.§'"'§ = param4;
         this.§-k§ = param5;
         this.§^+§(param1,param4);
      }
      
      public function get §`!3§() : Boolean
      {
         return this.§=u§;
      }
      
      public function get §5!i§() : Sprite
      {
         return this.§7!0§;
      }
      
      public function get § A§() : Sprite
      {
         return this.§6!q§;
      }
      
      public function get §8!]§() : Sprite
      {
         return this.§5!W§;
      }
      
      public function get §!!Z§() : int
      {
         return this.§^!9§;
      }
      
      protected function get §7!m§() : §"!X§
      {
         return this.§'!2§;
      }
      
      public function dispose() : void
      {
         this.§!!W§();
         this.§"!I§();
         if(this.§6!q§)
         {
            this.§6!q§.dispose();
            this.§6!q§ = null;
         }
         if(this.§5!W§)
         {
            this.§5!W§.dispose();
            this.§5!W§ = null;
         }
         if(this.§7!0§)
         {
            this.§7!0§.dispose();
            this.§7!0§ = null;
         }
      }
      
      public function §7u§() : Boolean
      {
         return this.§[l§;
      }
      
      public function §#o§(param1:Boolean) : void
      {
         if(this.§[l§ == param1)
         {
            return;
         }
         this.§[l§ = param1;
         if(!param1)
         {
            this.§!!W§();
         }
         else
         {
            this.§^+§(this.§>!H§,this.§'"'§);
         }
      }
      
      public function § f§() : String
      {
         return this.§>!H§.§-"%§;
      }
      
      private function §!!W§() : void
      {
         while(this.§5!W§.numChildren > 0)
         {
            this.§5!W§.removeChildAt(0,true);
         }
         while(this.§6!q§.numChildren > 0)
         {
            this.§6!q§.removeChildAt(0,true);
         }
         while(this.§>"5§.length > 0)
         {
            this.§>"5§.pop().dispose();
         }
      }
      
      protected function §-"&§(param1:§^y§) : void
      {
      }
      
      protected function §^+§(param1:§^y§, param2:Number) : void
      {
         var _loc4_:§'v§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§,6§ = null;
         this.§>!H§ = param1;
         this.§-"&§(this.§>!H§);
         this.§6!q§.y = this.§7t§;
         this.§5!W§.y = this.§7t§;
         this.§7!0§.y = this.§7t§;
         this.§'O§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§>!H§.§'Q§)
         {
            _loc4_ = this.§>!H§.§@!y§(_loc3_);
            if(this.§-k§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§ "&§(_loc4_,_loc5_,this.§7!m§,param2);
               this.§>"5§.push(_loc6_);
               if(_loc6_.§8b§)
               {
                  this.§5!W§.addChild(_loc5_);
               }
               else
               {
                  this.§6!q§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§!"#§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function § "&§(param1:§'v§, param2:Sprite, param3:§"!X§, param4:Number) : §,6§
      {
         return new §,6§(param1,param2,param3,param4);
      }
      
      private function §'O§() : void
      {
         var _loc1_:§break§ = null;
         if(this.§>!H§.§3v§)
         {
            this.§!"#§(this.§>!H§.§3v§);
         }
         if(this.§>!H§.§'!;§)
         {
            _loc1_ = this.§^z§(uint(this.§>!H§.§'!;§));
            _loc1_.y = 30;
            this.§7!0§.addChild(_loc1_);
         }
      }
      
      protected function §^z§(param1:uint) : §break§
      {
         return new §break§(4096,4096,param1);
      }
      
      private function §!"#§(param1:int) : void
      {
         this.§^!9§ = param1;
      }
      
      public function §4!`§(param1:§^y§, param2:§"!X§ = null) : void
      {
         if(param2)
         {
            this.§'!2§ = param2;
         }
         this.§!!W§();
         §"D§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§^+§(param1,this.§'"'§);
      }
      
      public function §?!m§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§,6§ = null;
         if(param1 == this.§=u§)
         {
            return;
         }
         this.§=u§ = param1;
         for each(_loc3_ in this.§>"5§)
         {
            _loc3_.§?!m§(param1);
         }
      }
      
      public function §"!R§() : void
      {
         if(§%!c§.§>b§("CHANNEL_AMBIENT") == null || !§%!c§.§>b§("CHANNEL_AMBIENT").§>K§())
         {
            §%!c§.§8" §(this.§!!d§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §"!I§() : void
      {
         §%!c§.§#!G§("CHANNEL_AMBIENT");
      }
      
      public function get §!!d§() : String
      {
         return this.§>!H§.§!!d§;
      }
      
      public function §extends§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§6!q§.numChildren)
         {
            _loc2_ = this.§6!q§.getChildAt(param1);
         }
         else if(param1 - this.§6!q§.numChildren < this.§5!W§.numChildren)
         {
            _loc2_ = this.§5!W§.getChildAt(param1 - this.§6!q§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§7!3§ = param1;
         this.§7m§ = param2;
         if(this.§>"5§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§>"5§.length)
            {
               this.§>"5§[_loc8_].setScreenOffset(this.§7!3§,this.§7m§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§7!0§ != null)
         {
            this.§7!0§.scaleX = this.§7!0§.scaleY = 1 / §%5§.§%!f§;
            this.§7!0§.x = 0;
            this.§7!0§.y = this.§7t§ - this.§7m§;
         }
      }
      
      public function §3!x§() : String
      {
         return this.§>!H§.id;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
