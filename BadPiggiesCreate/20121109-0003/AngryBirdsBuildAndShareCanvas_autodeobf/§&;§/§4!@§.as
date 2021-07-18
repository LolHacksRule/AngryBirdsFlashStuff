package §&;§
{
   import §#";§.§0"#§;
   import §#";§.§8V§;
   import §%!j§.§%K§;
   import §+!-§.§4!O§;
   import §+!-§.DisplayObject;
   import §+!-§.Sprite;
   import §,!g§.§"!P§;
   import §6]§.§,"0§;
   import §;"7§.§="<§;
   import §<i§.§'!e§;
   import §switch§.§,!!§;
   import §switch§.§47§;
   import §switch§.§4G§;
   
   public class §4!@§
   {
      
      public static const §-"+§:Boolean = true;
       
      
      private var §7k§:§="<§;
      
      protected var §1!6§:§4G§;
      
      protected var §4o§:Vector.<§]o§>;
      
      private var §&!!§:Sprite;
      
      private var §=F§:Sprite;
      
      private var §%^§:Sprite;
      
      private var §]"&§:Number;
      
      private var §8!`§:Number;
      
      private var §%!?§:Number;
      
      private var §?1§:Boolean = true;
      
      private var §1!'§:Boolean = true;
      
      private var §5!,§:§8V§;
      
      private var §`y§:Number;
      
      public function §4!@§(param1:String, param2:Number, param3:§="<§, param4:Number)
      {
         this.§4o§ = new Vector.<§]o§>();
         super();
         this.§7k§ = param3;
         this.§8!`§ = 0;
         this.§%!?§ = 0;
         this.§]"&§ = param2;
         this.§&!!§ = new Sprite();
         this.§=F§ = new Sprite();
         this.§%^§ = new Sprite();
         this.§`y§ = param4;
         this.§7w§(param1,param4);
      }
      
      public function get §0!b§() : Boolean
      {
         return this.§?1§;
      }
      
      public function get §>,§() : Sprite
      {
         return this.§%^§;
      }
      
      public function get §"!q§() : Sprite
      {
         return this.§&!!§;
      }
      
      public function get §=h§() : Sprite
      {
         return this.§=F§;
      }
      
      protected function get §8=§() : §="<§
      {
         return this.§7k§;
      }
      
      public function dispose() : void
      {
         this.§'!?§();
         if(this.§&!!§)
         {
            this.§&!!§.dispose();
            this.§&!!§ = null;
         }
         if(this.§=F§)
         {
            this.§=F§.dispose();
            this.§=F§ = null;
         }
         if(this.§%^§)
         {
            this.§%^§.dispose();
            this.§%^§ = null;
         }
      }
      
      public function §"!c§() : Boolean
      {
         return this.§1!'§;
      }
      
      public function §'"@§(param1:Boolean) : void
      {
         if(this.§1!'§ == param1)
         {
            return;
         }
         this.§1!'§ = param1;
         if(!param1)
         {
            this.§'!?§();
         }
         else
         {
            this.§7w§(this.§1!6§.mName,this.§`y§);
         }
      }
      
      public function §>N§() : String
      {
         return this.§1!6§.§<!7§;
      }
      
      private function §'!?§() : void
      {
         while(this.§=F§.numChildren > 0)
         {
            this.§=F§.removeChildAt(0,true);
         }
         while(this.§&!!§.numChildren > 0)
         {
            this.§&!!§.removeChildAt(0,true);
         }
         while(this.§4o§.length > 0)
         {
            this.§4o§.pop().dispose();
         }
      }
      
      protected function §^!z§(param1:§4G§, param2:String) : void
      {
      }
      
      private function §7w§(param1:String, param2:Number) : void
      {
         var _loc4_:§,!!§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§]o§ = null;
         this.§1!6§ = §47§.§," §(param1);
         if(this.§1!6§ == null)
         {
            §,"0§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §'!e§.§>!=§;
            this.§1!6§ = §47§.§," §(param1);
         }
         this.§^!z§(this.§1!6§,param1);
         this.§&!!§.y = this.§]"&§;
         this.§=F§.y = this.§]"&§;
         this.§%^§.y = this.§]"&§;
         this.§'! §();
         var _loc3_:int = 0;
         while(_loc3_ < this.§1!6§.§4o§.length)
         {
            _loc4_ = this.§1!6§.§4o§[_loc3_];
            if(!§%K§.§%!R§ || !_loc4_.§1!h§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§3!>§(_loc4_,_loc5_,this.§7k§,param2);
               this.§4o§.push(_loc6_);
               if(_loc6_.§""5§)
               {
                  this.§=F§.addChild(_loc5_);
               }
               else
               {
                  this.§&!!§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§6"0§)
            {
               this.§@"2§(parseInt(_loc4_.§6"0§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §3!>§(param1:§,!!§, param2:Sprite, param3:§="<§, param4:Number) : §]o§
      {
         return new §]o§(param1,param2,param3,param4);
      }
      
      private function §'! §() : void
      {
         var _loc1_:§4!O§ = null;
         if(this.§1!6§.§`!I§)
         {
            this.§@"2§(this.§1!6§.§`!I§);
         }
         if(this.§1!6§.§@7§)
         {
            _loc1_ = this.§8!P§(uint(this.§1!6§.§@7§));
            _loc1_.y = 0;
            this.§%^§.addChild(_loc1_);
         }
      }
      
      protected function §8!P§(param1:uint) : §4!O§
      {
         return new §4!O§(4096,4096,param1);
      }
      
      protected function §@"2§(param1:int) : void
      {
         if(§%K§.§`9§)
         {
            §%K§.§`9§.color = param1;
         }
      }
      
      public function resetLevelBackground(param1:String) : void
      {
         this.§'!?§();
         §,"0§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§7w§(param1,this.§`y§);
      }
      
      public function §?R§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§]o§ = null;
         if(param1 == this.§?1§)
         {
            return;
         }
         this.§?1§ = param1;
         for each(_loc3_ in this.§4o§)
         {
            _loc3_.§?R§(param1);
         }
      }
      
      public function §@Q§() : void
      {
         if(§0"#§.§9!$§("CHANNEL_AMBIENT") == null || !§0"#§.§9!$§("CHANNEL_AMBIENT").§4C§())
         {
            §0"#§.§9"2§(this.§1!6§.§5!"§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §?!e§() : void
      {
         §0"#§.§<"0§("CHANNEL_AMBIENT");
      }
      
      public function §-N§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§&!!§.numChildren)
         {
            _loc2_ = this.§&!!§.getChildAt(param1);
         }
         else if(param1 - this.§&!!§.numChildren < this.§=F§.numChildren)
         {
            _loc2_ = this.§=F§.getChildAt(param1 - this.§&!!§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §6"1§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§8!`§ = param1;
         this.§%!?§ = param2;
         if(this.§4o§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§4o§.length)
            {
               this.§4o§[_loc3_].setSideScroll(this.§8!`§,this.§%!?§);
               _loc3_++;
            }
         }
         if(this.§%^§ != null)
         {
            this.§%^§.scaleX = this.§%^§.scaleY = 1 / §"!P§.§#X§;
            this.§%^§.x = -§"!P§.§2'§ * (1 / §"!P§.§#X§);
            this.§%^§.y = this.§]"&§ - this.§%!?§;
         }
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§1!6§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
