package §^f§
{
   import § t§.§?U§;
   import §"4§.§<h§;
   import §%t§.§@!%§;
   import §&!5§.§2G§;
   import §&!5§.DisplayObject;
   import §&!5§.Sprite;
   import §1E§.§ _§;
   import §1E§.§2^§;
   import §9!2§.§'![§;
   import §>8§.§#%§;
   import §@-§.§-N§;
   import §@-§.§3!6§;
   import §@-§.§<g§;
   
   public class §@!I§
   {
      
      public static const §[I§:Boolean = true;
       
      
      private var §5-§:§'![§;
      
      protected var §5!§:§3!6§;
      
      private var §@!F§:Vector.<§<!=§>;
      
      private var §`x§:Sprite;
      
      private var §6!I§:Sprite;
      
      private var §=6§:Sprite;
      
      private var §;!§:Number;
      
      private var §"!-§:Number;
      
      private var §`!X§:Number;
      
      private var §0a§:Boolean = true;
      
      private var §^!7§:Boolean = true;
      
      private var §%'§:§ _§;
      
      private var §;W§:Number;
      
      public function §@!I§(param1:String, param2:Number, param3:§'![§, param4:Number)
      {
         this.§@!F§ = new Vector.<§<!=§>();
         super();
         this.§5-§ = param3;
         this.§"!-§ = 0;
         this.§`!X§ = 0;
         this.§;!§ = param2;
         this.§`x§ = new Sprite();
         this.§6!I§ = new Sprite();
         this.§=6§ = new Sprite();
         this.§;W§ = param4;
         this.§9%§(param1,param4);
      }
      
      public function get §"B§() : Boolean
      {
         return this.§0a§;
      }
      
      public function get §2!5§() : Sprite
      {
         return this.§=6§;
      }
      
      public function get §4!V§() : Sprite
      {
         return this.§`x§;
      }
      
      public function get §=G§() : Sprite
      {
         return this.§6!I§;
      }
      
      protected function get §2!#§() : §'![§
      {
         return this.§5-§;
      }
      
      public function dispose() : void
      {
         this.§"!;§();
         if(this.§`x§)
         {
            this.§`x§.dispose();
            this.§`x§ = null;
         }
         if(this.§6!I§)
         {
            this.§6!I§.dispose();
            this.§6!I§ = null;
         }
         if(this.§=6§)
         {
            this.§=6§.dispose();
            this.§=6§ = null;
         }
      }
      
      public function §<_§() : Boolean
      {
         return this.§^!7§;
      }
      
      public function §[!U§(param1:Boolean) : void
      {
         if(this.§^!7§ == param1)
         {
            return;
         }
         this.§^!7§ = param1;
         if(!param1)
         {
            this.§"!;§();
         }
         else
         {
            this.§9%§(this.§5!§.mName,this.§;W§);
         }
      }
      
      public function §6!?§() : String
      {
         return this.§5!§.§-q§;
      }
      
      private function §"!;§() : void
      {
         while(this.§6!I§.numChildren > 0)
         {
            this.§6!I§.removeChildAt(0,true);
         }
         while(this.§`x§.numChildren > 0)
         {
            this.§`x§.removeChildAt(0,true);
         }
         while(this.§@!F§.length > 0)
         {
            this.§@!F§.pop().dispose();
         }
      }
      
      protected function §=x§(param1:§3!6§, param2:String) : void
      {
      }
      
      private function §9%§(param1:String, param2:Number) : void
      {
         var _loc4_:§<g§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§<!=§ = null;
         this.§5!§ = §-N§.§'E§(param1);
         if(this.§5!§ == null)
         {
            §@!%§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §#%§.§+x§;
            this.§5!§ = §-N§.§'E§(param1);
         }
         this.§=x§(this.§5!§,param1);
         this.§`x§.y = this.§;!§;
         this.§6!I§.y = this.§;!§;
         this.§=6§.y = this.§;!§;
         this.§1F§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§5!§.§@!F§.length)
         {
            _loc4_ = this.§5!§.§@!F§[_loc3_];
            if(!§<h§.§+"§ || !_loc4_.§<!3§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §<!=§(_loc4_,_loc5_,this.§5-§,param2);
               this.§@!F§.push(_loc6_);
               if(_loc6_.§?!7§)
               {
                  this.§6!I§.addChild(_loc5_);
               }
               else
               {
                  this.§`x§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§1!A§)
            {
               this.§function§(parseInt(_loc4_.§1!A§,16));
            }
            _loc3_++;
         }
      }
      
      private function §1F§() : void
      {
         var _loc1_:§2G§ = null;
         if(this.§5!§.§4!6§)
         {
            this.§function§(this.§5!§.§4!6§);
         }
         if(this.§5!§.§&1§)
         {
            _loc1_ = this.§1v§(uint(this.§5!§.§&1§));
            _loc1_.y = 0;
            this.§=6§.addChild(_loc1_);
         }
      }
      
      protected function §1v§(param1:uint) : §2G§
      {
         return new §2G§(4096,4096,param1);
      }
      
      protected function §function§(param1:int) : void
      {
         if(§<h§.§%!]§)
         {
            §<h§.§%!]§.color = param1;
         }
      }
      
      public function §false§(param1:String) : void
      {
         this.§"!;§();
         §@!%§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§9%§(param1,this.§;W§);
      }
      
      public function §,T§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§<!=§ = null;
         if(param1 == this.§0a§)
         {
            return;
         }
         this.§0a§ = param1;
         for each(_loc3_ in this.§@!F§)
         {
            _loc3_.§,T§(param1);
         }
      }
      
      public function §,w§() : void
      {
         if(§2^§.§6m§("CHANNEL_AMBIENT") == null || !§2^§.§6m§("CHANNEL_AMBIENT").§"U§())
         {
            §2^§.§ !C§(this.§5!§.§6!9§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §%!_§() : void
      {
         §2^§.§<!^§("CHANNEL_AMBIENT");
      }
      
      public function §]!U§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§`x§.numChildren)
         {
            _loc2_ = this.§`x§.getChildAt(param1);
         }
         else if(param1 - this.§`x§.numChildren < this.§6!I§.numChildren)
         {
            _loc2_ = this.§6!I§.getChildAt(param1 - this.§`x§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §?'§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§"!-§ = param1;
         this.§`!X§ = param2;
         if(this.§@!F§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§@!F§.length)
            {
               this.§@!F§[_loc3_].setSideScroll(this.§"!-§,this.§`!X§);
               _loc3_++;
            }
         }
         if(this.§=6§ != null)
         {
            this.§=6§.scaleX = this.§=6§.scaleY = 1 / §?U§.§!q§;
            this.§=6§.x = -§?U§.§+g§ * (1 / §?U§.§!q§);
            this.§=6§.y = this.§;!§ - this.§`!X§;
         }
      }
      
      public function §#!,§() : String
      {
         return this.§5!§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
