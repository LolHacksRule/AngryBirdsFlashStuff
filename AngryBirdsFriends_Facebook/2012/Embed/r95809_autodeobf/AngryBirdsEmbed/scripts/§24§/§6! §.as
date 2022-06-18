package §24§
{
   import § `§.§3F§;
   import §&I§.§3! §;
   import §->§.§7d§;
   import §->§.DisplayObject;
   import §->§.Sprite;
   import §1!8§.§;!>§;
   import §1!8§.§]f§;
   import §2x§.§'!@§;
   import §<!@§.§+!-§;
   import §>0§.§%G§;
   import §>0§.§'!G§;
   import §>0§.§+!1§;
   import §[!$§.§"!%§;
   
   public class §6! §
   {
      
      public static const §?!'§:Boolean = true;
       
      
      private var §7K§:§"!%§;
      
      private var §]l§:§%G§;
      
      private var §<H§:Vector.<§!I§>;
      
      private var §+n§:Sprite;
      
      private var §8t§:Sprite;
      
      private var §get §:Sprite;
      
      private var §3!4§:Number;
      
      private var §+!2§:Number;
      
      private var §18§:Number;
      
      private var §1m§:Boolean = true;
      
      private var §%s§:Boolean = true;
      
      private var §^O§:§]f§;
      
      private var §=k§:Number;
      
      public function §6! §(param1:String, param2:Number, param3:§"!%§, param4:Number)
      {
         this.§<H§ = new Vector.<§!I§>();
         super();
         this.§7K§ = param3;
         this.§+!2§ = 0;
         this.§18§ = 0;
         this.§3!4§ = param2;
         this.§+n§ = new Sprite();
         this.§8t§ = new Sprite();
         this.§get § = new Sprite();
         this.§=k§ = param4;
         this.§-!@§(param1,param4);
      }
      
      public function get §3!=§() : Boolean
      {
         return this.§1m§;
      }
      
      public function get §;,§() : Sprite
      {
         return this.§get §;
      }
      
      public function get §&§() : Sprite
      {
         return this.§+n§;
      }
      
      public function get §&!8§() : Sprite
      {
         return this.§8t§;
      }
      
      protected function get textureManager() : §"!%§
      {
         return this.§7K§;
      }
      
      public function dispose() : void
      {
         this.§<G§();
         if(this.§+n§)
         {
            this.§+n§.dispose();
            this.§+n§ = null;
         }
         if(this.§8t§)
         {
            this.§8t§.dispose();
            this.§8t§ = null;
         }
         if(this.§get §)
         {
            this.§get §.dispose();
            this.§get § = null;
         }
      }
      
      public function §!Y§() : Boolean
      {
         return this.§%s§;
      }
      
      public function §`!?§(param1:Boolean) : void
      {
         if(this.§%s§ == param1)
         {
            return;
         }
         this.§%s§ = param1;
         if(!param1)
         {
            this.§<G§();
         }
         else
         {
            this.§-!@§(this.§]l§.mName,this.§=k§);
         }
      }
      
      public function §@s§() : String
      {
         return this.§]l§.§%u§;
      }
      
      private function §<G§() : void
      {
         while(this.§8t§.numChildren > 0)
         {
            this.§8t§.removeChildAt(0,true);
         }
         while(this.§+n§.numChildren > 0)
         {
            this.§+n§.removeChildAt(0,true);
         }
         while(this.§<H§.length > 0)
         {
            this.§<H§.pop().dispose();
         }
      }
      
      private function §-!@§(param1:String, param2:Number) : void
      {
         var _loc4_:§'!G§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§!I§ = null;
         this.§]l§ = §+!1§.§ "§(param1);
         if(this.§]l§ == null)
         {
            §'!@§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §+!-§.§2!D§;
            this.§]l§ = §+!1§.§ "§(param1);
         }
         this.§+n§.y = this.§3!4§;
         this.§8t§.y = this.§3!4§;
         this.§get §.y = this.§3!4§;
         this.§8!G§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§]l§.§<H§.length)
         {
            _loc4_ = this.§]l§.§<H§[_loc3_];
            if(!§3! §.§0!%§ || !_loc4_.§[9§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §!I§(_loc4_,_loc5_,this.§7K§,param2);
               this.§<H§.push(_loc6_);
               if(_loc6_.§,U§)
               {
                  this.§8t§.addChild(_loc5_);
               }
               else
               {
                  this.§+n§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§9!F§)
            {
               this.§?!=§(parseInt(_loc4_.§9!F§,16));
            }
            _loc3_++;
         }
      }
      
      private function §8!G§() : void
      {
         var _loc1_:§7d§ = null;
         if(this.§]l§.§@`§)
         {
            this.§?!=§(this.§]l§.§@`§);
         }
         if(this.§]l§.§=Y§)
         {
            _loc1_ = this.§%@§(uint(this.§]l§.§=Y§));
            _loc1_.y = 0;
            this.§get §.addChild(_loc1_);
         }
      }
      
      protected function §%@§(param1:uint) : §7d§
      {
         return new §7d§(4096,4096,param1);
      }
      
      private function §?!=§(param1:int) : void
      {
         if(§3! §.§"n§)
         {
            §3! §.§"n§.color = param1;
         }
      }
      
      public function §=!0§(param1:String) : void
      {
         this.§<G§();
         §'!@§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§-!@§(param1,this.§=k§);
      }
      
      public function §]!!§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§!I§ = null;
         if(param1 == this.§1m§)
         {
            return;
         }
         this.§1m§ = param1;
         for each(_loc3_ in this.§<H§)
         {
            _loc3_.§]!!§(param1);
         }
      }
      
      public function §1>§() : void
      {
         if(§;!>§.§5!4§("CHANNEL_AMBIENT") == null || !§;!>§.§5!4§("CHANNEL_AMBIENT").§4I§())
         {
            §;!>§.§>t§(this.§]l§.§0!H§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §4[§() : void
      {
         §;!>§.§8!"§("CHANNEL_AMBIENT");
      }
      
      public function §^j§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§+n§.numChildren)
         {
            _loc2_ = this.§+n§.getChildAt(param1);
         }
         else if(param1 - this.§+n§.numChildren < this.§8t§.numChildren)
         {
            _loc2_ = this.§8t§.getChildAt(param1 - this.§+n§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §<+§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§+!2§ = param1;
         this.§18§ = param2;
         if(this.§<H§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§<H§.length)
            {
               this.§<H§[_loc3_].setSideScroll(this.§+!2§,this.§18§);
               _loc3_++;
            }
         }
         if(this.§get § != null)
         {
            this.§get §.scaleX = this.§get §.scaleY = 1 / §3F§.§'f§;
            this.§get §.x = -§3F§.§[E§ * (1 / §3F§.§'f§);
            this.§get §.y = this.§3!4§ - this.§18§;
         }
      }
      
      public function §,0§() : String
      {
         return this.§]l§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
