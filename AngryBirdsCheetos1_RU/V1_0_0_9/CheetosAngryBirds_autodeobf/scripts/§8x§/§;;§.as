package §8x§
{
   import §!U§.§'!8§;
   import §"!@§.§&;§;
   import §'!S§.§,!%§;
   import §'>§.§!B§;
   import §'>§.§;t§;
   import §'>§.§>!M§;
   import §-!6§.§>I§;
   import §5!G§.§-!;§;
   import §5!G§.§31§;
   import §7u§.§&x§;
   import §7u§.DisplayObject;
   import §7u§.Sprite;
   import §`!B§.§=m§;
   
   public class §;;§
   {
      
      public static const §'j§:Boolean = true;
       
      
      private var §7!W§:§=m§;
      
      private var §<!B§:§!B§;
      
      private var §"r§:Vector.<§,!3§>;
      
      private var §-!N§:Sprite;
      
      private var §@T§:Sprite;
      
      private var §4a§:Sprite;
      
      private var §3%§:Number;
      
      private var §^g§:Number;
      
      private var § if§:Number;
      
      private var §<T§:Boolean = true;
      
      private var §@%§:Boolean = true;
      
      private var §!h§:§-!;§;
      
      private var §98§:Number;
      
      public function §;;§(param1:String, param2:Number, param3:§=m§, param4:Number)
      {
         this.§"r§ = new Vector.<§,!3§>();
         super();
         this.§7!W§ = param3;
         this.§^g§ = 0;
         this.§ if§ = 0;
         this.§3%§ = param2;
         this.§-!N§ = new Sprite();
         this.§@T§ = new Sprite();
         this.§4a§ = new Sprite();
         this.§98§ = param4;
         this.§7K§(param1,param4);
      }
      
      public function get §=i§() : Boolean
      {
         return this.§<T§;
      }
      
      public function get §>6§() : Sprite
      {
         return this.§4a§;
      }
      
      public function get §^D§() : Sprite
      {
         return this.§-!N§;
      }
      
      public function get §<F§() : Sprite
      {
         return this.§@T§;
      }
      
      protected function get §59§() : §=m§
      {
         return this.§7!W§;
      }
      
      public function dispose() : void
      {
         this.§%!8§();
         if(this.§-!N§)
         {
            this.§-!N§.dispose();
            this.§-!N§ = null;
         }
         if(this.§@T§)
         {
            this.§@T§.dispose();
            this.§@T§ = null;
         }
         if(this.§4a§)
         {
            this.§4a§.dispose();
            this.§4a§ = null;
         }
      }
      
      public function §@!9§() : Boolean
      {
         return this.§@%§;
      }
      
      public function §@4§(param1:Boolean) : void
      {
         if(this.§@%§ == param1)
         {
            return;
         }
         this.§@%§ = param1;
         if(!param1)
         {
            this.§%!8§();
         }
         else
         {
            this.§7K§(this.§<!B§.mName,this.§98§);
         }
      }
      
      public function §3#§() : String
      {
         return this.§<!B§.§[E§;
      }
      
      private function §%!8§() : void
      {
         while(this.§@T§.numChildren > 0)
         {
            this.§@T§.removeChildAt(0,true);
         }
         while(this.§-!N§.numChildren > 0)
         {
            this.§-!N§.removeChildAt(0,true);
         }
         while(this.§"r§.length > 0)
         {
            this.§"r§.pop().dispose();
         }
      }
      
      private function §7K§(param1:String, param2:Number) : void
      {
         var _loc4_:§;t§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§,!3§ = null;
         this.§<!B§ = §>!M§.§@!`§(param1);
         if(this.§<!B§ == null)
         {
            §>I§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §&;§.§,!J§;
            this.§<!B§ = §>!M§.§@!`§(param1);
         }
         this.§-!N§.y = this.§3%§;
         this.§@T§.y = this.§3%§;
         this.§4a§.y = this.§3%§;
         this.§"K§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§<!B§.§"r§.length)
         {
            _loc4_ = this.§<!B§.§"r§[_loc3_];
            if(!§,!%§.§96§ || !_loc4_.§^Q§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §,!3§(_loc4_,_loc5_,this.§7!W§,param2);
               this.§"r§.push(_loc6_);
               if(_loc6_.§8!<§)
               {
                  this.§@T§.addChild(_loc5_);
               }
               else
               {
                  this.§-!N§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§>s§)
            {
               this.§ !B§(parseInt(_loc4_.§>s§,16));
            }
            _loc3_++;
         }
      }
      
      private function §"K§() : void
      {
         var _loc1_:§&x§ = null;
         if(this.§<!B§.§8!L§)
         {
            this.§ !B§(this.§<!B§.§8!L§);
         }
         if(this.§<!B§.§ !D§)
         {
            _loc1_ = this.§!!+§(uint(this.§<!B§.§ !D§));
            _loc1_.y = 0;
            this.§4a§.addChild(_loc1_);
         }
      }
      
      protected function §!!+§(param1:uint) : §&x§
      {
         return new §&x§(4096,4096,param1);
      }
      
      private function § !B§(param1:int) : void
      {
         if(§,!%§.§]!C§)
         {
            §,!%§.§]!C§.color = param1;
         }
      }
      
      public function §-8§(param1:String) : void
      {
         this.§%!8§();
         §>I§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§7K§(param1,this.§98§);
      }
      
      public function §9!O§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§,!3§ = null;
         if(param1 == this.§<T§)
         {
            return;
         }
         this.§<T§ = param1;
         for each(_loc3_ in this.§"r§)
         {
            _loc3_.§9!O§(param1);
         }
      }
      
      public function §false§() : void
      {
         if(§31§.§9!H§("CHANNEL_AMBIENT") == null || !§31§.§9!H§("CHANNEL_AMBIENT").§]!_§())
         {
            §31§.§>%§(this.§<!B§.§4!W§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §2!§() : void
      {
         §31§.§ !Z§("CHANNEL_AMBIENT");
      }
      
      public function § K§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§-!N§.numChildren)
         {
            _loc2_ = this.§-!N§.getChildAt(param1);
         }
         else if(param1 - this.§-!N§.numChildren < this.§@T§.numChildren)
         {
            _loc2_ = this.§@T§.getChildAt(param1 - this.§-!N§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §3!J§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§^g§ = param1;
         this.§ if§ = param2;
         if(this.§"r§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§"r§.length)
            {
               this.§"r§[_loc3_].setSideScroll(this.§^g§,this.§ if§);
               _loc3_++;
            }
         }
         if(this.§4a§ != null)
         {
            this.§4a§.scaleX = this.§4a§.scaleY = 1 / §'!8§.§3!0§;
            this.§4a§.x = -§'!8§.§?d§ * (1 / §'!8§.§3!0§);
            this.§4a§.y = this.§3%§ - this.§ if§;
         }
      }
      
      public function §!v§() : String
      {
         return this.§<!B§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
