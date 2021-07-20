package §=Z§
{
   import § ![§.§#!B§;
   import §&!b§.§ c§;
   import §&L§.§?]§;
   import §+!I§.§'b§;
   import §+!I§.§-K§;
   import §+!I§.§]4§;
   import §+!]§.§!,§;
   import §6!;§.§;o§;
   import §6!;§.DisplayObject;
   import §6!;§.Sprite;
   import §7e§.§8!P§;
   import §^f§.§,%§;
   import §^f§.§<q§;
   
   public class § !f§
   {
      
      public static const §]@§:Boolean = true;
       
      
      private var §[G§:§!,§;
      
      protected var §]!G§:§'b§;
      
      protected var §8! §:Vector.<§?7§>;
      
      private var §`D§:Sprite;
      
      private var §4!g§:Sprite;
      
      private var §0[§:Sprite;
      
      private var §;J§:Number;
      
      private var §2!@§:Number;
      
      private var §0!$§:Number;
      
      private var §-$§:Boolean = true;
      
      private var §8g§:Boolean = true;
      
      private var §#Y§:§,%§;
      
      private var §3!A§:Number;
      
      public function § !f§(param1:String, param2:Number, param3:§!,§, param4:Number)
      {
         this.§8! § = new Vector.<§?7§>();
         super();
         this.§[G§ = param3;
         this.§2!@§ = 0;
         this.§0!$§ = 0;
         this.§;J§ = param2;
         this.§`D§ = new Sprite();
         this.§4!g§ = new Sprite();
         this.§0[§ = new Sprite();
         this.§3!A§ = param4;
         this.§0]§(param1,param4);
      }
      
      public function get §,a§() : Boolean
      {
         return this.§-$§;
      }
      
      public function get §-=§() : Sprite
      {
         return this.§0[§;
      }
      
      public function get §"5§() : Sprite
      {
         return this.§`D§;
      }
      
      public function get §>! §() : Sprite
      {
         return this.§4!g§;
      }
      
      protected function get textureManager() : §!,§
      {
         return this.§[G§;
      }
      
      public function dispose() : void
      {
         this.§3!8§();
         if(this.§`D§)
         {
            this.§`D§.dispose();
            this.§`D§ = null;
         }
         if(this.§4!g§)
         {
            this.§4!g§.dispose();
            this.§4!g§ = null;
         }
         if(this.§0[§)
         {
            this.§0[§.dispose();
            this.§0[§ = null;
         }
      }
      
      public function §!!B§() : Boolean
      {
         return this.§8g§;
      }
      
      public function §"!E§(param1:Boolean) : void
      {
         if(this.§8g§ == param1)
         {
            return;
         }
         this.§8g§ = param1;
         if(!param1)
         {
            this.§3!8§();
         }
         else
         {
            this.§0]§(this.§]!G§.mName,this.§3!A§);
         }
      }
      
      public function §1!=§() : String
      {
         return this.§]!G§.§,!+§;
      }
      
      private function §3!8§() : void
      {
         while(this.§4!g§.numChildren > 0)
         {
            this.§4!g§.removeChildAt(0,true);
         }
         while(this.§`D§.numChildren > 0)
         {
            this.§`D§.removeChildAt(0,true);
         }
         while(this.§8! §.length > 0)
         {
            this.§8! §.pop().dispose();
         }
      }
      
      protected function §4e§(param1:§'b§, param2:String) : void
      {
      }
      
      private function §0]§(param1:String, param2:Number) : void
      {
         var _loc4_:§-K§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§?7§ = null;
         this.§]!G§ = §]4§.§#_§(param1);
         if(this.§]!G§ == null)
         {
            § c§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §8!P§.§7H§;
            this.§]!G§ = §]4§.§#_§(param1);
         }
         this.§4e§(this.§]!G§,param1);
         this.§`D§.y = this.§;J§;
         this.§4!g§.y = this.§;J§;
         this.§0[§.y = this.§;J§;
         this.§@D§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§]!G§.§8! §.length)
         {
            _loc4_ = this.§]!G§.§8! §[_loc3_];
            if(!§?]§.§7!T§ || !_loc4_.§;Z§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§;N§(_loc4_,_loc5_,this.§[G§,param2);
               this.§8! §.push(_loc6_);
               if(_loc6_.§>_§)
               {
                  this.§4!g§.addChild(_loc5_);
               }
               else
               {
                  this.§`D§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§9l§)
            {
               this.§'`§(parseInt(_loc4_.§9l§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §;N§(param1:§-K§, param2:Sprite, param3:§!,§, param4:Number) : §?7§
      {
         return new §?7§(param1,param2,param3,param4);
      }
      
      private function §@D§() : void
      {
         var _loc1_:§;o§ = null;
         if(this.§]!G§.§true§)
         {
            this.§'`§(this.§]!G§.§true§);
         }
         if(this.§]!G§.§]!'§)
         {
            _loc1_ = this.§%a§(uint(this.§]!G§.§]!'§));
            _loc1_.y = 0;
            this.§0[§.addChild(_loc1_);
         }
      }
      
      protected function §%a§(param1:uint) : §;o§
      {
         return new §;o§(4096,4096,param1);
      }
      
      protected function §'`§(param1:int) : void
      {
         if(§?]§.§`!H§)
         {
            §?]§.§`!H§.color = param1;
         }
      }
      
      public function §#?§(param1:String) : void
      {
         this.§3!8§();
         § c§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§0]§(param1,this.§3!A§);
      }
      
      public function §]!W§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§?7§ = null;
         if(param1 == this.§-$§)
         {
            return;
         }
         this.§-$§ = param1;
         for each(_loc3_ in this.§8! §)
         {
            _loc3_.§]!W§(param1);
         }
      }
      
      public function §&!3§() : void
      {
         if(§<q§.§9!e§("CHANNEL_AMBIENT") == null || !§<q§.§9!e§("CHANNEL_AMBIENT").§4w§())
         {
            §<q§.§5!S§(this.§]!G§.§9!d§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §9!B§() : void
      {
         §<q§.§7!=§("CHANNEL_AMBIENT");
      }
      
      public function §=!Q§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§`D§.numChildren)
         {
            _loc2_ = this.§`D§.getChildAt(param1);
         }
         else if(param1 - this.§`D§.numChildren < this.§4!g§.numChildren)
         {
            _loc2_ = this.§4!g§.getChildAt(param1 - this.§`D§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §`s§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§2!@§ = param1;
         this.§0!$§ = param2;
         if(this.§8! § != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§8! §.length)
            {
               this.§8! §[_loc3_].setSideScroll(this.§2!@§,this.§0!$§);
               _loc3_++;
            }
         }
         if(this.§0[§ != null)
         {
            this.§0[§.scaleX = this.§0[§.scaleY = 1 / §#!B§.§2!Y§;
            this.§0[§.x = -§#!B§.§"!`§ * (1 / §#!B§.§2!Y§);
            this.§0[§.y = this.§;J§ - this.§0!$§;
         }
      }
      
      public function §2T§() : String
      {
         return this.§]!G§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
