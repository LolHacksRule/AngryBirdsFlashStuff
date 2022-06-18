package §&1§
{
   import §"a§.§>X§;
   import §#+§.§61§;
   import §#+§.§[-§;
   import §#+§.§^i§;
   import §-p§.§&2§;
   import §3!A§.§9!0§;
   import §3!A§.§;;§;
   import §8!G§.§1w§;
   import §;!5§.§=y§;
   import §;%§.§8o§;
   import §;q§.§-!>§;
   import §;q§.DisplayObject;
   import §;q§.Sprite;
   
   public class §35§
   {
      
      public static const §?5§:Boolean = true;
       
      
      private var §>t§:§>X§;
      
      protected var §;!B§:§^i§;
      
      protected var §0!4§:Vector.<§7!3§>;
      
      private var §`v§:Sprite;
      
      private var § !C§:Sprite;
      
      private var §^1§:Sprite;
      
      private var §2B§:Number;
      
      private var §6Q§:Number;
      
      private var §,O§:Number;
      
      private var §[D§:Boolean = true;
      
      private var §%w§:Boolean = true;
      
      private var §2>§:§;;§;
      
      private var § l§:Number;
      
      public function §35§(param1:String, param2:Number, param3:§>X§, param4:Number)
      {
         this.§0!4§ = new Vector.<§7!3§>();
         super();
         this.§>t§ = param3;
         this.§6Q§ = 0;
         this.§,O§ = 0;
         this.§2B§ = param2;
         this.§`v§ = new Sprite();
         this.§ !C§ = new Sprite();
         this.§^1§ = new Sprite();
         this.§ l§ = param4;
         this.§;+§(param1,param4);
      }
      
      public function get §&`§() : Boolean
      {
         return this.§[D§;
      }
      
      public function get §[0§() : Sprite
      {
         return this.§^1§;
      }
      
      public function get §[#§() : Sprite
      {
         return this.§`v§;
      }
      
      public function get §[!+§() : Sprite
      {
         return this.§ !C§;
      }
      
      protected function get textureManager() : §>X§
      {
         return this.§>t§;
      }
      
      public function dispose() : void
      {
         this.§^N§();
         if(this.§`v§)
         {
            this.§`v§.dispose();
            this.§`v§ = null;
         }
         if(this.§ !C§)
         {
            this.§ !C§.dispose();
            this.§ !C§ = null;
         }
         if(this.§^1§)
         {
            this.§^1§.dispose();
            this.§^1§ = null;
         }
      }
      
      public function §%e§() : Boolean
      {
         return this.§%w§;
      }
      
      public function § U§(param1:Boolean) : void
      {
         if(this.§%w§ == param1)
         {
            return;
         }
         this.§%w§ = param1;
         if(!param1)
         {
            this.§^N§();
         }
         else
         {
            this.§;+§(this.§;!B§.mName,this.§ l§);
         }
      }
      
      public function §0!$§() : String
      {
         return this.§;!B§.§5z§;
      }
      
      private function §^N§() : void
      {
         while(this.§ !C§.numChildren > 0)
         {
            this.§ !C§.removeChildAt(0,true);
         }
         while(this.§`v§.numChildren > 0)
         {
            this.§`v§.removeChildAt(0,true);
         }
         while(this.§0!4§.length > 0)
         {
            this.§0!4§.pop().dispose();
         }
      }
      
      protected function §]!9§(param1:§^i§, param2:String) : void
      {
      }
      
      private function §;+§(param1:String, param2:Number) : void
      {
         var _loc4_:§[-§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§7!3§ = null;
         this.§;!B§ = §61§.§5!7§(param1);
         if(this.§;!B§ == null)
         {
            §&2§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §1w§.§6@§;
            this.§;!B§ = §61§.§5!7§(param1);
         }
         this.§]!9§(this.§;!B§,param1);
         this.§`v§.y = this.§2B§;
         this.§ !C§.y = this.§2B§;
         this.§^1§.y = this.§2B§;
         this.§>!6§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§;!B§.§0!4§.length)
         {
            _loc4_ = this.§;!B§.§0!4§[_loc3_];
            if(!§8o§.§^H§ || !_loc4_.§`!;§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§'9§(_loc4_,_loc5_,this.§>t§,param2);
               this.§0!4§.push(_loc6_);
               if(_loc6_.§7r§)
               {
                  this.§ !C§.addChild(_loc5_);
               }
               else
               {
                  this.§`v§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§'0§)
            {
               this.§%§(parseInt(_loc4_.§'0§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §'9§(param1:§[-§, param2:Sprite, param3:§>X§, param4:Number) : §7!3§
      {
         return new §7!3§(param1,param2,param3,param4);
      }
      
      private function §>!6§() : void
      {
         var _loc1_:§-!>§ = null;
         if(this.§;!B§.§4!;§)
         {
            this.§%§(this.§;!B§.§4!;§);
         }
         if(this.§;!B§.§7§)
         {
            _loc1_ = this.§%x§(uint(this.§;!B§.§7§));
            _loc1_.y = 0;
            this.§^1§.addChild(_loc1_);
         }
      }
      
      protected function §%x§(param1:uint) : §-!>§
      {
         return new §-!>§(4096,4096,param1);
      }
      
      protected function §%§(param1:int) : void
      {
         if(§8o§.§5J§)
         {
            §8o§.§5J§.color = param1;
         }
      }
      
      public function §!§(param1:String) : void
      {
         this.§^N§();
         §&2§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§;+§(param1,this.§ l§);
      }
      
      public function §6!<§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§7!3§ = null;
         if(param1 == this.§[D§)
         {
            return;
         }
         this.§[D§ = param1;
         for each(_loc3_ in this.§0!4§)
         {
            _loc3_.§6!<§(param1);
         }
      }
      
      public function §,;§() : void
      {
         if(§9!0§.§"&§("CHANNEL_AMBIENT") == null || !§9!0§.§"&§("CHANNEL_AMBIENT").§-D§())
         {
            §9!0§.§-! §(this.§;!B§.§+P§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §79§() : void
      {
         §9!0§.§5!'§("CHANNEL_AMBIENT");
      }
      
      public function §8B§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§`v§.numChildren)
         {
            _loc2_ = this.§`v§.getChildAt(param1);
         }
         else if(param1 - this.§`v§.numChildren < this.§ !C§.numChildren)
         {
            _loc2_ = this.§ !C§.getChildAt(param1 - this.§`v§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §4D§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§6Q§ = param1;
         this.§,O§ = param2;
         if(this.§0!4§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§0!4§.length)
            {
               this.§0!4§[_loc3_].setSideScroll(this.§6Q§,this.§,O§);
               _loc3_++;
            }
         }
         if(this.§^1§ != null)
         {
            this.§^1§.scaleX = this.§^1§.scaleY = 1 / §=y§.§=;§;
            this.§^1§.x = -§=y§.§1I§ * (1 / §=y§.§=;§);
            this.§^1§.y = this.§2B§ - this.§,O§;
         }
      }
      
      public function §3k§() : String
      {
         return this.§;!B§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
