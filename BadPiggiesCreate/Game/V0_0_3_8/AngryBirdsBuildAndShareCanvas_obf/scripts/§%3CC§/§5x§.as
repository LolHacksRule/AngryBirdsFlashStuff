package §<C§
{
   import § !V§.§7!P§;
   import §!g§.§&" §;
   import §!g§.§,q§;
   import §!g§.§`j§;
   import §'!O§.§@!l§;
   import §0!F§.§^d§;
   import §4u§.§<!L§;
   import §6`§.§4!m§;
   import §6`§.§?!7§;
   import §>0§.§'L§;
   import §]!2§.§?"2§;
   import §]!2§.DisplayObject;
   import §]!2§.Sprite;
   
   public class §5x§
   {
      
      public static const §<!`§:Boolean = true;
       
      
      private var § d§:§7!P§;
      
      protected var §<$§:§&" §;
      
      protected var §<!@§:Vector.<§95§>;
      
      private var §8p§:Sprite;
      
      private var §[F§:Sprite;
      
      private var §3!]§:Sprite;
      
      private var §4T§:Number;
      
      private var § J§:Number;
      
      private var §34§:Number;
      
      private var §;!Y§:Boolean = true;
      
      private var §5l§:Boolean = true;
      
      private var §1!z§:§4!m§;
      
      private var § =§:Number;
      
      public function §5x§(param1:String, param2:Number, param3:§7!P§, param4:Number)
      {
         this.§<!@§ = new Vector.<§95§>();
         super();
         this.§ d§ = param3;
         this.§ J§ = 0;
         this.§34§ = 0;
         this.§4T§ = param2;
         this.§8p§ = new Sprite();
         this.§[F§ = new Sprite();
         this.§3!]§ = new Sprite();
         this.§ =§ = param4;
         this.§`6§(param1,param4);
      }
      
      public function get §7N§() : Boolean
      {
         return this.§;!Y§;
      }
      
      public function get §,'§() : Sprite
      {
         return this.§3!]§;
      }
      
      public function get §?!6§() : Sprite
      {
         return this.§8p§;
      }
      
      public function get §8w§() : Sprite
      {
         return this.§[F§;
      }
      
      protected function get §7<§() : §7!P§
      {
         return this.§ d§;
      }
      
      public function dispose() : void
      {
         this.§0%§();
         if(this.§8p§)
         {
            this.§8p§.dispose();
            this.§8p§ = null;
         }
         if(this.§[F§)
         {
            this.§[F§.dispose();
            this.§[F§ = null;
         }
         if(this.§3!]§)
         {
            this.§3!]§.dispose();
            this.§3!]§ = null;
         }
      }
      
      public function §]!G§() : Boolean
      {
         return this.§5l§;
      }
      
      public function §<;§(param1:Boolean) : void
      {
         if(this.§5l§ == param1)
         {
            return;
         }
         this.§5l§ = param1;
         if(!param1)
         {
            this.§0%§();
         }
         else
         {
            this.§`6§(this.§<$§.mName,this.§ =§);
         }
      }
      
      public function §]"%§() : String
      {
         return this.§<$§.§^!M§;
      }
      
      private function §0%§() : void
      {
         while(this.§[F§.numChildren > 0)
         {
            this.§[F§.removeChildAt(0,true);
         }
         while(this.§8p§.numChildren > 0)
         {
            this.§8p§.removeChildAt(0,true);
         }
         while(this.§<!@§.length > 0)
         {
            this.§<!@§.pop().dispose();
         }
      }
      
      protected function §9!U§(param1:§&" §, param2:String) : void
      {
      }
      
      private function §`6§(param1:String, param2:Number) : void
      {
         var _loc4_:§`j§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§95§ = null;
         this.§<$§ = §,q§.§"!>§(param1);
         if(this.§<$§ == null)
         {
            §<!L§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §@!l§.§1q§;
            this.§<$§ = §,q§.§"!>§(param1);
         }
         this.§9!U§(this.§<$§,param1);
         this.§8p§.y = this.§4T§;
         this.§[F§.y = this.§4T§;
         this.§3!]§.y = this.§4T§;
         this.§>!%§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§<$§.§<!@§.length)
         {
            _loc4_ = this.§<$§.§<!@§[_loc3_];
            if(!§^d§.§4!8§ || !_loc4_.§`"0§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§!@§(_loc4_,_loc5_,this.§ d§,param2);
               this.§<!@§.push(_loc6_);
               if(_loc6_.§=!e§)
               {
                  this.§[F§.addChild(_loc5_);
               }
               else
               {
                  this.§8p§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§,"%§)
            {
               this.§&u§(parseInt(_loc4_.§,"%§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §!@§(param1:§`j§, param2:Sprite, param3:§7!P§, param4:Number) : §95§
      {
         return new §95§(param1,param2,param3,param4);
      }
      
      private function §>!%§() : void
      {
         var _loc1_:§?"2§ = null;
         if(this.§<$§.§&O§)
         {
            this.§&u§(this.§<$§.§&O§);
         }
         if(this.§<$§.§3^§)
         {
            _loc1_ = this.§#!j§(uint(this.§<$§.§3^§));
            _loc1_.y = 0;
            this.§3!]§.addChild(_loc1_);
         }
      }
      
      protected function §#!j§(param1:uint) : §?"2§
      {
         return new §?"2§(4096,4096,param1);
      }
      
      protected function §&u§(param1:int) : void
      {
         if(§^d§.§+!f§)
         {
            §^d§.§+!f§.color = param1;
         }
      }
      
      public function resetLevelBackground(param1:String) : void
      {
         this.§0%§();
         §<!L§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§`6§(param1,this.§ =§);
      }
      
      public function §4s§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§95§ = null;
         if(param1 == this.§;!Y§)
         {
            return;
         }
         this.§;!Y§ = param1;
         for each(_loc3_ in this.§<!@§)
         {
            _loc3_.§4s§(param1);
         }
      }
      
      public function §3!8§() : void
      {
         if(§?!7§.get("CHANNEL_AMBIENT") == null || !§?!7§.get("CHANNEL_AMBIENT").§^" §())
         {
            §?!7§.playSound(this.§<$§.§7!F§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function § !G§() : void
      {
         §?!7§.§[N§("CHANNEL_AMBIENT");
      }
      
      public function §]!L§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§8p§.numChildren)
         {
            _loc2_ = this.§8p§.getChildAt(param1);
         }
         else if(param1 - this.§8p§.numChildren < this.§[F§.numChildren)
         {
            _loc2_ = this.§[F§.getChildAt(param1 - this.§8p§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §08§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§ J§ = param1;
         this.§34§ = param2;
         if(this.§<!@§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§<!@§.length)
            {
               this.§<!@§[_loc3_].setSideScroll(this.§ J§,this.§34§);
               _loc3_++;
            }
         }
         if(this.§3!]§ != null)
         {
            this.§3!]§.scaleX = this.§3!]§.scaleY = 1 / §'L§.§9K§;
            this.§3!]§.x = -§'L§.§42§ * (1 / §'L§.§9K§);
            this.§3!]§.y = this.§4T§ - this.§34§;
         }
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§<$§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
