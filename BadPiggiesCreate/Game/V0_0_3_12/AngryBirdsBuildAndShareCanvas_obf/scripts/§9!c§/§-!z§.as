package §9!c§
{
   import §"p§.§@8§;
   import §#I§.§1!-§;
   import §#I§.§4";§;
   import §#I§.§9!O§;
   import §%B§.§7!9§;
   import §%B§.§^k§;
   import §0E§.§#O§;
   import §3",§.§0"<§;
   import §@!-§.§3"1§;
   import §@!i§.§'!a§;
   import §@!i§.DisplayObject;
   import §@!i§.Sprite;
   import §@r§.§3!+§;
   
   public class §-!z§
   {
      
      public static const §5e§:Boolean = true;
       
      
      private var §9!r§:§3"1§;
      
      protected var §9A§:§9!O§;
      
      protected var §14§:Vector.<§ 7§>;
      
      private var §<!L§:Sprite;
      
      private var §@W§:Sprite;
      
      private var §9"-§:Sprite;
      
      private var §"N§:Number;
      
      private var §4S§:Number;
      
      private var §2!>§:Number;
      
      private var §,k§:Boolean = true;
      
      private var §&h§:Boolean = true;
      
      private var §0!'§:§7!9§;
      
      private var §,!$§:Number;
      
      public function §-!z§(param1:String, param2:Number, param3:§3"1§, param4:Number)
      {
         this.§14§ = new Vector.<§ 7§>();
         super();
         this.§9!r§ = param3;
         this.§4S§ = 0;
         this.§2!>§ = 0;
         this.§"N§ = param2;
         this.§<!L§ = new Sprite();
         this.§@W§ = new Sprite();
         this.§9"-§ = new Sprite();
         this.§,!$§ = param4;
         this.§@! §(param1,param4);
      }
      
      public function get §^![§() : Boolean
      {
         return this.§,k§;
      }
      
      public function get §="1§() : Sprite
      {
         return this.§9"-§;
      }
      
      public function get §5]§() : Sprite
      {
         return this.§<!L§;
      }
      
      public function get §<m§() : Sprite
      {
         return this.§@W§;
      }
      
      protected function get §="!§() : §3"1§
      {
         return this.§9!r§;
      }
      
      public function dispose() : void
      {
         this.§"""§();
         if(this.§<!L§)
         {
            this.§<!L§.dispose();
            this.§<!L§ = null;
         }
         if(this.§@W§)
         {
            this.§@W§.dispose();
            this.§@W§ = null;
         }
         if(this.§9"-§)
         {
            this.§9"-§.dispose();
            this.§9"-§ = null;
         }
      }
      
      public function §>!Z§() : Boolean
      {
         return this.§&h§;
      }
      
      public function §'N§(param1:Boolean) : void
      {
         if(this.§&h§ == param1)
         {
            return;
         }
         this.§&h§ = param1;
         if(!param1)
         {
            this.§"""§();
         }
         else
         {
            this.§@! §(this.§9A§.mName,this.§,!$§);
         }
      }
      
      public function §9!§() : String
      {
         return this.§9A§.§6D§;
      }
      
      private function §"""§() : void
      {
         while(this.§@W§.numChildren > 0)
         {
            this.§@W§.removeChildAt(0,true);
         }
         while(this.§<!L§.numChildren > 0)
         {
            this.§<!L§.removeChildAt(0,true);
         }
         while(this.§14§.length > 0)
         {
            this.§14§.pop().dispose();
         }
      }
      
      protected function §7!>§(param1:§9!O§, param2:String) : void
      {
      }
      
      private function §@! §(param1:String, param2:Number) : void
      {
         var _loc4_:§1!-§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§ 7§ = null;
         this.§9A§ = §4";§.§[p§(param1);
         if(this.§9A§ == null)
         {
            §@8§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §#O§.§=O§;
            this.§9A§ = §4";§.§[p§(param1);
         }
         this.§7!>§(this.§9A§,param1);
         this.§<!L§.y = this.§"N§;
         this.§@W§.y = this.§"N§;
         this.§9"-§.y = this.§"N§;
         this.§'!X§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§9A§.§14§.length)
         {
            _loc4_ = this.§9A§.§14§[_loc3_];
            if(!§0"<§.§4§ || !_loc4_.§&j§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§=!u§(_loc4_,_loc5_,this.§9!r§,param2);
               this.§14§.push(_loc6_);
               if(_loc6_.§ !'§)
               {
                  this.§@W§.addChild(_loc5_);
               }
               else
               {
                  this.§<!L§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§ !P§)
            {
               this.§ y§(parseInt(_loc4_.§ !P§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §=!u§(param1:§1!-§, param2:Sprite, param3:§3"1§, param4:Number) : § 7§
      {
         return new § 7§(param1,param2,param3,param4);
      }
      
      private function §'!X§() : void
      {
         var _loc1_:§'!a§ = null;
         if(this.§9A§.§+"$§)
         {
            this.§ y§(this.§9A§.§+"$§);
         }
         if(this.§9A§.§#@§)
         {
            _loc1_ = this.§[!O§(uint(this.§9A§.§#@§));
            _loc1_.y = 0;
            this.§9"-§.addChild(_loc1_);
         }
      }
      
      protected function §[!O§(param1:uint) : §'!a§
      {
         return new §'!a§(4096,4096,param1);
      }
      
      protected function § y§(param1:int) : void
      {
         if(§0"<§.§<?§)
         {
            §0"<§.§<?§.color = param1;
         }
      }
      
      public function resetLevelBackground(param1:String) : void
      {
         this.§"""§();
         §@8§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§@! §(param1,this.§,!$§);
      }
      
      public function §;!v§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§ 7§ = null;
         if(param1 == this.§,k§)
         {
            return;
         }
         this.§,k§ = param1;
         for each(_loc3_ in this.§14§)
         {
            _loc3_.§;!v§(param1);
         }
      }
      
      public function §78§() : void
      {
         if(§^k§.§'!?§("CHANNEL_AMBIENT") == null || !§^k§.§'!?§("CHANNEL_AMBIENT").§2"'§())
         {
            §^k§.playSound(this.§9A§.§3o§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §;-§() : void
      {
         §^k§.§"E§("CHANNEL_AMBIENT");
      }
      
      public function §-!v§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§<!L§.numChildren)
         {
            _loc2_ = this.§<!L§.getChildAt(param1);
         }
         else if(param1 - this.§<!L§.numChildren < this.§@W§.numChildren)
         {
            _loc2_ = this.§@W§.getChildAt(param1 - this.§<!L§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §4K§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§4S§ = param1;
         this.§2!>§ = param2;
         if(this.§14§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§14§.length)
            {
               this.§14§[_loc3_].setSideScroll(this.§4S§,this.§2!>§);
               _loc3_++;
            }
         }
         if(this.§9"-§ != null)
         {
            this.§9"-§.scaleX = this.§9"-§.scaleY = 1 / §3!+§.§2"8§;
            this.§9"-§.x = -§3!+§.§%!h§ * (1 / §3!+§.§2"8§);
            this.§9"-§.y = this.§"N§ - this.§2!>§;
         }
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§9A§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
