package §@0§
{
   import §%t§.§-!5§;
   import §'!s§.§9!^§;
   import §'!s§.§;"1§;
   import §'!s§.§;2§;
   import §2!§.§1!n§;
   import §5!5§.§^e§;
   import §5^§.§ !x§;
   import §5^§.§]h§;
   import §7M§.§+R§;
   import §9!G§.§]!e§;
   import §^I§.§5! §;
   import §^I§.DisplayObject;
   import §^I§.Sprite;
   
   public class §`O§
   {
      
      public static const §?]§:Boolean = true;
       
      
      private var §^o§:§-!5§;
      
      protected var §]!6§:§9!^§;
      
      protected var §>T§:Vector.<§^!W§>;
      
      private var §80§:Sprite;
      
      private var §[!d§:Sprite;
      
      private var §@!`§:Sprite;
      
      private var §>!`§:Number;
      
      private var §0!'§:Number;
      
      private var §5!G§:Number;
      
      private var §=x§:Boolean = true;
      
      private var §=]§:Boolean = true;
      
      private var §,A§:§]h§;
      
      private var §6Y§:Number;
      
      public function §`O§(param1:String, param2:Number, param3:§-!5§, param4:Number)
      {
         this.§>T§ = new Vector.<§^!W§>();
         super();
         this.§^o§ = param3;
         this.§0!'§ = 0;
         this.§5!G§ = 0;
         this.§>!`§ = param2;
         this.§80§ = new Sprite();
         this.§[!d§ = new Sprite();
         this.§@!`§ = new Sprite();
         this.§6Y§ = param4;
         this.§@" §(param1,param4);
      }
      
      public function get §-#§() : Boolean
      {
         return this.§=x§;
      }
      
      public function get §'!,§() : Sprite
      {
         return this.§@!`§;
      }
      
      public function get §42§() : Sprite
      {
         return this.§80§;
      }
      
      public function get §2M§() : Sprite
      {
         return this.§[!d§;
      }
      
      protected function get §>=§() : §-!5§
      {
         return this.§^o§;
      }
      
      public function dispose() : void
      {
         this.§0!E§();
         if(this.§80§)
         {
            this.§80§.dispose();
            this.§80§ = null;
         }
         if(this.§[!d§)
         {
            this.§[!d§.dispose();
            this.§[!d§ = null;
         }
         if(this.§@!`§)
         {
            this.§@!`§.dispose();
            this.§@!`§ = null;
         }
      }
      
      public function §?@§() : Boolean
      {
         return this.§=]§;
      }
      
      public function §9!q§(param1:Boolean) : void
      {
         if(this.§=]§ == param1)
         {
            return;
         }
         this.§=]§ = param1;
         if(!param1)
         {
            this.§0!E§();
         }
         else
         {
            this.§@" §(this.§]!6§.mName,this.§6Y§);
         }
      }
      
      public function §"4§() : String
      {
         return this.§]!6§.§=@§;
      }
      
      private function §0!E§() : void
      {
         while(this.§[!d§.numChildren > 0)
         {
            this.§[!d§.removeChildAt(0,true);
         }
         while(this.§80§.numChildren > 0)
         {
            this.§80§.removeChildAt(0,true);
         }
         while(this.§>T§.length > 0)
         {
            this.§>T§.pop().dispose();
         }
      }
      
      protected function §!<§(param1:§9!^§, param2:String) : void
      {
      }
      
      private function §@" §(param1:String, param2:Number) : void
      {
         var _loc4_:§;"1§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§^!W§ = null;
         this.§]!6§ = §;2§.§8g§(param1);
         if(this.§]!6§ == null)
         {
            §]!e§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §+R§.§1"5§;
            this.§]!6§ = §;2§.§8g§(param1);
         }
         this.§!<§(this.§]!6§,param1);
         this.§80§.y = this.§>!`§;
         this.§[!d§.y = this.§>!`§;
         this.§@!`§.y = this.§>!`§;
         this.§]!H§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§]!6§.§>T§.length)
         {
            _loc4_ = this.§]!6§.§>T§[_loc3_];
            if(!§^e§.§^"!§ || !_loc4_.§'!r§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§5<§(_loc4_,_loc5_,this.§^o§,param2);
               this.§>T§.push(_loc6_);
               if(_loc6_.§8!b§)
               {
                  this.§[!d§.addChild(_loc5_);
               }
               else
               {
                  this.§80§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§!!§)
            {
               this.§-!!§(parseInt(_loc4_.§!!§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §5<§(param1:§;"1§, param2:Sprite, param3:§-!5§, param4:Number) : §^!W§
      {
         return new §^!W§(param1,param2,param3,param4);
      }
      
      private function §]!H§() : void
      {
         var _loc1_:§5! § = null;
         if(this.§]!6§.§6W§)
         {
            this.§-!!§(this.§]!6§.§6W§);
         }
         if(this.§]!6§.§+@§)
         {
            _loc1_ = this.§+m§(uint(this.§]!6§.§+@§));
            _loc1_.y = 0;
            this.§@!`§.addChild(_loc1_);
         }
      }
      
      protected function §+m§(param1:uint) : §5! §
      {
         return new §5! §(4096,4096,param1);
      }
      
      protected function §-!!§(param1:int) : void
      {
         if(§^e§.§-_§)
         {
            §^e§.§-_§.color = param1;
         }
      }
      
      public function resetLevelBackground(param1:String) : void
      {
         this.§0!E§();
         §]!e§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§@" §(param1,this.§6Y§);
      }
      
      public function §;!o§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§^!W§ = null;
         if(param1 == this.§=x§)
         {
            return;
         }
         this.§=x§ = param1;
         for each(_loc3_ in this.§>T§)
         {
            _loc3_.§;!o§(param1);
         }
      }
      
      public function §%!R§() : void
      {
         if(§ !x§.§69§("CHANNEL_AMBIENT") == null || !§ !x§.§69§("CHANNEL_AMBIENT").§#N§())
         {
            § !x§.playSound(this.§]!6§.§[$§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §>"%§() : void
      {
         § !x§.§`"4§("CHANNEL_AMBIENT");
      }
      
      public function §0!U§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§80§.numChildren)
         {
            _loc2_ = this.§80§.getChildAt(param1);
         }
         else if(param1 - this.§80§.numChildren < this.§[!d§.numChildren)
         {
            _loc2_ = this.§[!d§.getChildAt(param1 - this.§80§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §54§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§0!'§ = param1;
         this.§5!G§ = param2;
         if(this.§>T§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§>T§.length)
            {
               this.§>T§[_loc3_].setSideScroll(this.§0!'§,this.§5!G§);
               _loc3_++;
            }
         }
         if(this.§@!`§ != null)
         {
            this.§@!`§.scaleX = this.§@!`§.scaleY = 1 / §1!n§.§#!%§;
            this.§@!`§.x = -§1!n§.§#C§ * (1 / §1!n§.§#!%§);
            this.§@!`§.y = this.§>!`§ - this.§5!G§;
         }
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§]!6§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
