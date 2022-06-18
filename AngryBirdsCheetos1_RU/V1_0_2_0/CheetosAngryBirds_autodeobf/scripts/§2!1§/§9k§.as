package §2!1§
{
   import §#V§.§,!W§;
   import §#b§.§85§;
   import §,H§.§>!C§;
   import §,H§.DisplayObject;
   import §,H§.Sprite;
   import §1o§.§'M§;
   import §1o§.§-![§;
   import §2!4§.§5T§;
   import §2!P§.§6=§;
   import §=g§.§@!L§;
   import §^n§.§",§;
   import §^n§.§[!0§;
   import §^n§.§],§;
   
   public class §9k§
   {
      
      public static const §@#§:Boolean = true;
       
      
      private var §^!2§:§5T§;
      
      protected var §;!a§:§],§;
      
      protected var §!!6§:Vector.<§]Q§>;
      
      private var §[>§:Sprite;
      
      private var §,I§:Sprite;
      
      private var §?l§:Sprite;
      
      private var §1!4§:Number;
      
      private var §0!E§:Number;
      
      private var §4E§:Number;
      
      private var §0H§:Boolean = true;
      
      private var §5!U§:Boolean = true;
      
      private var §1!8§:§-![§;
      
      private var §;`§:Number;
      
      public function §9k§(param1:String, param2:Number, param3:§5T§, param4:Number)
      {
         this.§!!6§ = new Vector.<§]Q§>();
         super();
         this.§^!2§ = param3;
         this.§0!E§ = 0;
         this.§4E§ = 0;
         this.§1!4§ = param2;
         this.§[>§ = new Sprite();
         this.§,I§ = new Sprite();
         this.§?l§ = new Sprite();
         this.§;`§ = param4;
         this.§%H§(param1,param4);
      }
      
      public function get §1!U§() : Boolean
      {
         return this.§0H§;
      }
      
      public function get §1A§() : Sprite
      {
         return this.§?l§;
      }
      
      public function get §84§() : Sprite
      {
         return this.§[>§;
      }
      
      public function get §6b§() : Sprite
      {
         return this.§,I§;
      }
      
      protected function get §&w§() : §5T§
      {
         return this.§^!2§;
      }
      
      public function dispose() : void
      {
         this.§!!Z§();
         if(this.§[>§)
         {
            this.§[>§.dispose();
            this.§[>§ = null;
         }
         if(this.§,I§)
         {
            this.§,I§.dispose();
            this.§,I§ = null;
         }
         if(this.§?l§)
         {
            this.§?l§.dispose();
            this.§?l§ = null;
         }
      }
      
      public function §^N§() : Boolean
      {
         return this.§5!U§;
      }
      
      public function §=!@§(param1:Boolean) : void
      {
         if(this.§5!U§ == param1)
         {
            return;
         }
         this.§5!U§ = param1;
         if(!param1)
         {
            this.§!!Z§();
         }
         else
         {
            this.§%H§(this.§;!a§.mName,this.§;`§);
         }
      }
      
      public function §+G§() : String
      {
         return this.§;!a§.§0`§;
      }
      
      private function §!!Z§() : void
      {
         while(this.§,I§.numChildren > 0)
         {
            this.§,I§.removeChildAt(0,true);
         }
         while(this.§[>§.numChildren > 0)
         {
            this.§[>§.removeChildAt(0,true);
         }
         while(this.§!!6§.length > 0)
         {
            this.§!!6§.pop().dispose();
         }
      }
      
      protected function §%S§(param1:§],§, param2:String) : void
      {
      }
      
      private function §%H§(param1:String, param2:Number) : void
      {
         var _loc4_:§[!0§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§]Q§ = null;
         this.§;!a§ = §",§.§3^§(param1);
         if(this.§;!a§ == null)
         {
            §@!L§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §85§.§,q§;
            this.§;!a§ = §",§.§3^§(param1);
         }
         this.§%S§(this.§;!a§,param1);
         this.§[>§.y = this.§1!4§;
         this.§,I§.y = this.§1!4§;
         this.§?l§.y = this.§1!4§;
         this.§+S§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§;!a§.§!!6§.length)
         {
            _loc4_ = this.§;!a§.§!!6§[_loc3_];
            if(!§6=§.§9B§ || !_loc4_.§+!N§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§-Q§(_loc4_,_loc5_,this.§^!2§,param2);
               this.§!!6§.push(_loc6_);
               if(_loc6_.include)
               {
                  this.§,I§.addChild(_loc5_);
               }
               else
               {
                  this.§[>§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§"!G§)
            {
               this.§8^§(parseInt(_loc4_.§"!G§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §-Q§(param1:§[!0§, param2:Sprite, param3:§5T§, param4:Number) : §]Q§
      {
         return new §]Q§(param1,param2,param3,param4);
      }
      
      private function §+S§() : void
      {
         var _loc1_:§>!C§ = null;
         if(this.§;!a§.§#!F§)
         {
            this.§8^§(this.§;!a§.§#!F§);
         }
         if(this.§;!a§.§in §)
         {
            _loc1_ = this.§!1§(uint(this.§;!a§.§in §));
            _loc1_.y = 0;
            this.§?l§.addChild(_loc1_);
         }
      }
      
      protected function §!1§(param1:uint) : §>!C§
      {
         return new §>!C§(4096,4096,param1);
      }
      
      protected function §8^§(param1:int) : void
      {
         if(§6=§.§4!8§)
         {
            §6=§.§4!8§.color = param1;
         }
      }
      
      public function §?!M§(param1:String) : void
      {
         this.§!!Z§();
         §@!L§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§%H§(param1,this.§;`§);
      }
      
      public function §?!§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§]Q§ = null;
         if(param1 == this.§0H§)
         {
            return;
         }
         this.§0H§ = param1;
         for each(_loc3_ in this.§!!6§)
         {
            _loc3_.§?!§(param1);
         }
      }
      
      public function §?t§() : void
      {
         if(§'M§.§%!]§("CHANNEL_AMBIENT") == null || !§'M§.§%!]§("CHANNEL_AMBIENT").§]!K§())
         {
            §'M§.§1T§(this.§;!a§.§3h§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function § ?§() : void
      {
         §'M§.§0&§("CHANNEL_AMBIENT");
      }
      
      public function §73§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§[>§.numChildren)
         {
            _loc2_ = this.§[>§.getChildAt(param1);
         }
         else if(param1 - this.§[>§.numChildren < this.§,I§.numChildren)
         {
            _loc2_ = this.§,I§.getChildAt(param1 - this.§[>§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §"0§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§0!E§ = param1;
         this.§4E§ = param2;
         if(this.§!!6§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§!!6§.length)
            {
               this.§!!6§[_loc3_].setSideScroll(this.§0!E§,this.§4E§);
               _loc3_++;
            }
         }
         if(this.§?l§ != null)
         {
            this.§?l§.scaleX = this.§?l§.scaleY = 1 / §,!W§.§+!R§;
            this.§?l§.x = -§,!W§.§[!L§ * (1 / §,!W§.§+!R§);
            this.§?l§.y = this.§1!4§ - this.§4E§;
         }
      }
      
      public function §`P§() : String
      {
         return this.§;!a§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
