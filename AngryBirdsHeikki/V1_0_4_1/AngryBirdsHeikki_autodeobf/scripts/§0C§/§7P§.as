package §0C§
{
   import §%!$§.§[Z§;
   import §%O§.§ !§;
   import §,J§.§74§;
   import §-!1§.§=!_§;
   import §0"§.§0m§;
   import §0"§.§1!I§;
   import §0"§.§with§;
   import §7h§.§4!O§;
   import §7h§.§7!"§;
   import §<!-§.§8J§;
   import §<!-§.DisplayObject;
   import §<!-§.Sprite;
   import §?!5§.§2d§;
   
   public class §7P§
   {
      
      public static const §9!B§:Boolean = true;
       
      
      private var §^4§:§ !§;
      
      private var §9L§:§1!I§;
      
      private var §;!B§:Vector.<§1i§>;
      
      private var §@n§:Sprite;
      
      private var § d§:Sprite;
      
      private var §4!6§:Sprite;
      
      private var §2>§:Number;
      
      private var §=!E§:Number;
      
      private var §%E§:Number;
      
      private var §1!$§:Boolean = true;
      
      private var §8!N§:Boolean = true;
      
      private var §8!0§:§4!O§;
      
      private var §`P§:Number;
      
      public function §7P§(param1:String, param2:Number, param3:§ !§, param4:Number)
      {
         this.§;!B§ = new Vector.<§1i§>();
         super();
         this.§^4§ = param3;
         this.§=!E§ = 0;
         this.§%E§ = 0;
         this.§2>§ = param2;
         this.§@n§ = new Sprite();
         this.§ d§ = new Sprite();
         this.§4!6§ = new Sprite();
         this.§`P§ = param4;
         this.§<X§(param1,param4);
      }
      
      public function get §@!H§() : Boolean
      {
         return this.§1!$§;
      }
      
      public function get §9C§() : Sprite
      {
         return this.§4!6§;
      }
      
      public function get §#T§() : Sprite
      {
         return this.§@n§;
      }
      
      public function get §,!^§() : Sprite
      {
         return this.§ d§;
      }
      
      protected function get textureManager() : § !§
      {
         return this.§^4§;
      }
      
      public function dispose() : void
      {
         this.§^8§();
         if(this.§@n§)
         {
            this.§@n§.dispose();
            this.§@n§ = null;
         }
         if(this.§ d§)
         {
            this.§ d§.dispose();
            this.§ d§ = null;
         }
         if(this.§4!6§)
         {
            this.§4!6§.dispose();
            this.§4!6§ = null;
         }
      }
      
      public function §6Y§() : Boolean
      {
         return this.§8!N§;
      }
      
      public function §5!?§(param1:Boolean) : void
      {
         if(this.§8!N§ == param1)
         {
            return;
         }
         this.§8!N§ = param1;
         if(!param1)
         {
            this.§^8§();
         }
         else
         {
            this.§<X§(this.§9L§.mName,this.§`P§);
         }
      }
      
      public function §=5§() : String
      {
         return this.§9L§.§4!1§;
      }
      
      private function §^8§() : void
      {
         while(this.§ d§.numChildren > 0)
         {
            this.§ d§.removeChildAt(0,true);
         }
         while(this.§@n§.numChildren > 0)
         {
            this.§@n§.removeChildAt(0,true);
         }
         while(this.§;!B§.length > 0)
         {
            this.§;!B§.pop().dispose();
         }
      }
      
      private function §<X§(param1:String, param2:Number) : void
      {
         var _loc4_:§with§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§1i§ = null;
         this.§9L§ = §0m§.§-#§(param1);
         if(this.§9L§ == null)
         {
            §[Z§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §74§.§+1§;
            this.§9L§ = §0m§.§-#§(param1);
         }
         this.§@n§.y = this.§2>§;
         this.§ d§.y = this.§2>§;
         this.§4!6§.y = this.§2>§;
         this.§=!$§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§9L§.§;!B§.length)
         {
            _loc4_ = this.§9L§.§;!B§[_loc3_];
            if(!§2d§.§#<§ || !_loc4_.§?"§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §1i§(_loc4_,_loc5_,this.§^4§,param2);
               this.§;!B§.push(_loc6_);
               if(_loc6_.§9G§)
               {
                  this.§ d§.addChild(_loc5_);
               }
               else
               {
                  this.§@n§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§=_§)
            {
               this.§@?§(parseInt(_loc4_.§=_§,16));
            }
            _loc3_++;
         }
      }
      
      private function §=!$§() : void
      {
         var _loc1_:§8J§ = null;
         if(this.§9L§.§"!?§)
         {
            this.§@?§(this.§9L§.§"!?§);
         }
         if(this.§9L§.§3<§)
         {
            _loc1_ = this.§%!D§(uint(this.§9L§.§3<§));
            _loc1_.y = 0;
            this.§4!6§.addChild(_loc1_);
         }
      }
      
      protected function §%!D§(param1:uint) : §8J§
      {
         return new §8J§(4096,4096,param1);
      }
      
      private function §@?§(param1:int) : void
      {
         if(§2d§.§0A§)
         {
            §2d§.§0A§.color = param1;
         }
      }
      
      public function §`!%§(param1:String) : void
      {
         this.§^8§();
         §[Z§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§<X§(param1,this.§`P§);
      }
      
      public function §'!6§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§1i§ = null;
         if(param1 == this.§1!$§)
         {
            return;
         }
         this.§1!$§ = param1;
         for each(_loc3_ in this.§;!B§)
         {
            _loc3_.§'!6§(param1);
         }
      }
      
      public function §=w§() : void
      {
         if(§7!"§.§[!C§("CHANNEL_AMBIENT") == null || !§7!"§.§[!C§("CHANNEL_AMBIENT").§2Z§())
         {
            §7!"§.§#W§(this.§9L§.§%c§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §,U§() : void
      {
         §7!"§.§`!-§("CHANNEL_AMBIENT");
      }
      
      public function §&+§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§@n§.numChildren)
         {
            _loc2_ = this.§@n§.getChildAt(param1);
         }
         else if(param1 - this.§@n§.numChildren < this.§ d§.numChildren)
         {
            _loc2_ = this.§ d§.getChildAt(param1 - this.§@n§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §6!<§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§=!E§ = param1;
         this.§%E§ = param2;
         if(this.§;!B§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§;!B§.length)
            {
               this.§;!B§[_loc3_].setSideScroll(this.§=!E§,this.§%E§);
               _loc3_++;
            }
         }
         if(this.§4!6§ != null)
         {
            this.§4!6§.scaleX = this.§4!6§.scaleY = 1 / §=!_§.§"b§;
            this.§4!6§.x = -§=!_§.§0!5§ * (1 / §=!_§.§"b§);
            this.§4!6§.y = this.§2>§ - this.§%E§;
         }
      }
      
      public function § !Q§() : String
      {
         return this.§9L§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
