package §1p§
{
   import § !9§.§&!F§;
   import § !9§.§'!U§;
   import §!!a§.§8=§;
   import §#h§.§8#§;
   import §#h§.§>!c§;
   import §#h§.§`0§;
   import §+R§.§0O§;
   import §3!W§.§5!Q§;
   import §6!Q§.§7!7§;
   import §8r§.§@V§;
   import §;t§.§6!K§;
   import §;t§.DisplayObject;
   import §;t§.Sprite;
   
   public class §@!D§
   {
      
      public static const §3w§:Boolean = true;
       
      
      private var § u§:§@V§;
      
      private var §!J§:§>!c§;
      
      private var §`!B§:Vector.<§8p§>;
      
      private var §"!7§:Sprite;
      
      private var §6!G§:Sprite;
      
      private var §8!§:Sprite;
      
      private var §4!c§:Number;
      
      private var §1x§:Number;
      
      private var § &§:Number;
      
      private var §0g§:Boolean = true;
      
      private var §7!@§:Boolean = true;
      
      private var §#f§:§&!F§;
      
      private var §[!b§:Number;
      
      public function §@!D§(param1:String, param2:Number, param3:§@V§, param4:Number)
      {
         this.§`!B§ = new Vector.<§8p§>();
         super();
         this.§ u§ = param3;
         this.§1x§ = 0;
         this.§ &§ = 0;
         this.§4!c§ = param2;
         this.§"!7§ = new Sprite();
         this.§6!G§ = new Sprite();
         this.§8!§ = new Sprite();
         this.§[!b§ = param4;
         this.§3![§(param1,param4);
      }
      
      public function get §-!N§() : Boolean
      {
         return this.§0g§;
      }
      
      public function get §>q§() : Sprite
      {
         return this.§8!§;
      }
      
      public function get §[n§() : Sprite
      {
         return this.§"!7§;
      }
      
      public function get §0![§() : Sprite
      {
         return this.§6!G§;
      }
      
      protected function get textureManager() : §@V§
      {
         return this.§ u§;
      }
      
      public function dispose() : void
      {
         this.§=!8§();
         if(this.§"!7§)
         {
            this.§"!7§.dispose();
            this.§"!7§ = null;
         }
         if(this.§6!G§)
         {
            this.§6!G§.dispose();
            this.§6!G§ = null;
         }
         if(this.§8!§)
         {
            this.§8!§.dispose();
            this.§8!§ = null;
         }
      }
      
      public function §5y§() : Boolean
      {
         return this.§7!@§;
      }
      
      public function §+!U§(param1:Boolean) : void
      {
         if(this.§7!@§ == param1)
         {
            return;
         }
         this.§7!@§ = param1;
         if(!param1)
         {
            this.§=!8§();
         }
         else
         {
            this.§3![§(this.§!J§.mName,this.§[!b§);
         }
      }
      
      public function §`! §() : String
      {
         return this.§!J§.§2g§;
      }
      
      private function §=!8§() : void
      {
         while(this.§6!G§.numChildren > 0)
         {
            this.§6!G§.removeChildAt(0,true);
         }
         while(this.§"!7§.numChildren > 0)
         {
            this.§"!7§.removeChildAt(0,true);
         }
         while(this.§`!B§.length > 0)
         {
            this.§`!B§.pop().dispose();
         }
      }
      
      private function §3![§(param1:String, param2:Number) : void
      {
         var _loc4_:§8#§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§8p§ = null;
         this.§!J§ = §`0§.§0!H§(param1);
         if(this.§!J§ == null)
         {
            §7!7§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §8=§.§4z§;
            this.§!J§ = §`0§.§0!H§(param1);
         }
         this.§"!7§.y = this.§4!c§;
         this.§6!G§.y = this.§4!c§;
         this.§8!§.y = this.§4!c§;
         this.§?h§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§!J§.§`!B§.length)
         {
            _loc4_ = this.§!J§.§`!B§[_loc3_];
            if(!§0O§.§3Z§ || !_loc4_.§#r§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §8p§(_loc4_,_loc5_,this.§ u§,param2);
               this.§`!B§.push(_loc6_);
               if(_loc6_.§%!Q§)
               {
                  this.§6!G§.addChild(_loc5_);
               }
               else
               {
                  this.§"!7§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§"6§)
            {
               this.§&!'§(parseInt(_loc4_.§"6§,16));
            }
            _loc3_++;
         }
      }
      
      private function §?h§() : void
      {
         var _loc1_:§6!K§ = null;
         if(this.§!J§.§,!$§)
         {
            this.§&!'§(this.§!J§.§,!$§);
         }
         if(this.§!J§.§"v§)
         {
            _loc1_ = this.§'z§(uint(this.§!J§.§"v§));
            _loc1_.y = 0;
            this.§8!§.addChild(_loc1_);
         }
      }
      
      protected function §'z§(param1:uint) : §6!K§
      {
         return new §6!K§(4096,4096,param1);
      }
      
      private function §&!'§(param1:int) : void
      {
         if(§0O§.§=&§)
         {
            §0O§.§=&§.color = param1;
         }
      }
      
      public function §%N§(param1:String) : void
      {
         this.§=!8§();
         §7!7§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§3![§(param1,this.§[!b§);
      }
      
      public function §%a§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§8p§ = null;
         if(param1 == this.§0g§)
         {
            return;
         }
         this.§0g§ = param1;
         for each(_loc3_ in this.§`!B§)
         {
            _loc3_.§%a§(param1);
         }
      }
      
      public function §5,§() : void
      {
         if(§'!U§.§`4§("CHANNEL_AMBIENT") == null || !§'!U§.§`4§("CHANNEL_AMBIENT").§?+§())
         {
            §'!U§.playSound(this.§!J§.§^i§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §^!2§() : void
      {
         §'!U§.§;&§("CHANNEL_AMBIENT");
      }
      
      public function §,5§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§"!7§.numChildren)
         {
            _loc2_ = this.§"!7§.getChildAt(param1);
         }
         else if(param1 - this.§"!7§.numChildren < this.§6!G§.numChildren)
         {
            _loc2_ = this.§6!G§.getChildAt(param1 - this.§"!7§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §%!T§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§1x§ = param1;
         this.§ &§ = param2;
         if(this.§`!B§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§`!B§.length)
            {
               this.§`!B§[_loc3_].setSideScroll(this.§1x§,this.§ &§);
               _loc3_++;
            }
         }
         if(this.§8!§ != null)
         {
            this.§8!§.scaleX = this.§8!§.scaleY = 1 / §5!Q§.§8!>§;
            this.§8!§.x = -§5!Q§.§"!U§ * (1 / §5!Q§.§8!>§);
            this.§8!§.y = this.§4!c§ - this.§ &§;
         }
      }
      
      public function §5!-§() : String
      {
         return this.§!J§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
