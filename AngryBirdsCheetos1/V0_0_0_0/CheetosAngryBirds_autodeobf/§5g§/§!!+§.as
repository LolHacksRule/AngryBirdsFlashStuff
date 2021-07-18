package §5g§
{
   import § !+§.§0Z§;
   import §%!$§.§5v§;
   import §%!$§.§=m§;
   import §3]§.§"§;
   import §3]§.§5O§;
   import §3]§.§8[§;
   import §4W§.§!]§;
   import §5p§.§?M§;
   import §<!+§.§with§;
   import §@,§.§4h§;
   import §`a§.§?!N§;
   import §`a§.DisplayObject;
   import §`a§.Sprite;
   
   public class §!!+§
   {
      
      public static const §^!R§:Boolean = true;
       
      
      private var §5<§:§!]§;
      
      private var §@<§:§"§;
      
      private var §+Q§:Vector.<§!2§>;
      
      private var §%2§:Sprite;
      
      private var §"E§:Sprite;
      
      private var §2[§:Sprite;
      
      private var §&5§:Number;
      
      private var §+!U§:Number;
      
      private var §6!U§:Number;
      
      private var §2N§:Boolean = true;
      
      private var § true§:Boolean = true;
      
      private var §get §:§5v§;
      
      private var §0Q§:Number;
      
      public function §!!+§(param1:String, param2:Number, param3:§!]§, param4:Number)
      {
         this.§+Q§ = new Vector.<§!2§>();
         super();
         this.§5<§ = param3;
         this.§+!U§ = 0;
         this.§6!U§ = 0;
         this.§&5§ = param2;
         this.§%2§ = new Sprite();
         this.§"E§ = new Sprite();
         this.§2[§ = new Sprite();
         this.§0Q§ = param4;
         this.§`3§(param1,param4);
      }
      
      public function get §[!B§() : Boolean
      {
         return this.§2N§;
      }
      
      public function get §41§() : Sprite
      {
         return this.§2[§;
      }
      
      public function get §+#§() : Sprite
      {
         return this.§%2§;
      }
      
      public function get §#H§() : Sprite
      {
         return this.§"E§;
      }
      
      protected function get §#G§() : §!]§
      {
         return this.§5<§;
      }
      
      public function dispose() : void
      {
         this.§ e§();
         if(this.§%2§)
         {
            this.§%2§.dispose();
            this.§%2§ = null;
         }
         if(this.§"E§)
         {
            this.§"E§.dispose();
            this.§"E§ = null;
         }
         if(this.§2[§)
         {
            this.§2[§.dispose();
            this.§2[§ = null;
         }
      }
      
      public function §`B§() : Boolean
      {
         return this.§ true§;
      }
      
      public function §>!D§(param1:Boolean) : void
      {
         if(this.§ true§ == param1)
         {
            return;
         }
         this.§ true§ = param1;
         if(!param1)
         {
            this.§ e§();
         }
         else
         {
            this.§`3§(this.§@<§.mName,this.§0Q§);
         }
      }
      
      public function §]!S§() : String
      {
         return this.§@<§.§]!R§;
      }
      
      private function § e§() : void
      {
         while(this.§"E§.numChildren > 0)
         {
            this.§"E§.removeChildAt(0,true);
         }
         while(this.§%2§.numChildren > 0)
         {
            this.§%2§.removeChildAt(0,true);
         }
         while(this.§+Q§.length > 0)
         {
            this.§+Q§.pop().dispose();
         }
      }
      
      private function §`3§(param1:String, param2:Number) : void
      {
         var _loc4_:§5O§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§!2§ = null;
         this.§@<§ = §8[§.§8V§(param1);
         if(this.§@<§ == null)
         {
            §4h§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §with§.§+!-§;
            this.§@<§ = §8[§.§8V§(param1);
         }
         this.§%2§.y = this.§&5§;
         this.§"E§.y = this.§&5§;
         this.§2[§.y = this.§&5§;
         this.§7o§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§@<§.§+Q§.length)
         {
            _loc4_ = this.§@<§.§+Q§[_loc3_];
            if(!§0Z§.§=2§ || !_loc4_.§?3§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §!2§(_loc4_,_loc5_,this.§5<§,param2);
               this.§+Q§.push(_loc6_);
               if(_loc6_.§4H§)
               {
                  this.§"E§.addChild(_loc5_);
               }
               else
               {
                  this.§%2§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§'!O§)
            {
               this.§?2§(parseInt(_loc4_.§'!O§,16));
            }
            _loc3_++;
         }
      }
      
      private function §7o§() : void
      {
         var _loc1_:§?!N§ = null;
         if(this.§@<§.§]"§)
         {
            this.§?2§(this.§@<§.§]"§);
         }
         if(this.§@<§.§%g§)
         {
            _loc1_ = this.§'!7§(uint(this.§@<§.§%g§));
            _loc1_.y = 0;
            this.§2[§.addChild(_loc1_);
         }
      }
      
      protected function §'!7§(param1:uint) : §?!N§
      {
         return new §?!N§(4096,4096,param1);
      }
      
      private function §?2§(param1:int) : void
      {
         if(§0Z§.§4J§)
         {
            §0Z§.§4J§.color = param1;
         }
      }
      
      public function §0!#§(param1:String) : void
      {
         this.§ e§();
         §4h§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§`3§(param1,this.§0Q§);
      }
      
      public function §@!-§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§!2§ = null;
         if(param1 == this.§2N§)
         {
            return;
         }
         this.§2N§ = param1;
         for each(_loc3_ in this.§+Q§)
         {
            _loc3_.§@!-§(param1);
         }
      }
      
      public function §?O§() : void
      {
         if(§=m§.§,'§("CHANNEL_AMBIENT") == null || !§=m§.§,'§("CHANNEL_AMBIENT").§9y§())
         {
            §=m§.playSound(this.§@<§.§&!D§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §4v§() : void
      {
         §=m§.§+f§("CHANNEL_AMBIENT");
      }
      
      public function §''§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§%2§.numChildren)
         {
            _loc2_ = this.§%2§.getChildAt(param1);
         }
         else if(param1 - this.§%2§.numChildren < this.§"E§.numChildren)
         {
            _loc2_ = this.§"E§.getChildAt(param1 - this.§%2§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §<R§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§+!U§ = param1;
         this.§6!U§ = param2;
         if(this.§+Q§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§+Q§.length)
            {
               this.§+Q§[_loc3_].setSideScroll(this.§+!U§,this.§6!U§);
               _loc3_++;
            }
         }
         if(this.§2[§ != null)
         {
            this.§2[§.scaleX = this.§2[§.scaleY = 1 / §?M§.§]5§;
            this.§2[§.x = -§?M§.§&!N§ * (1 / §?M§.§]5§);
            this.§2[§.y = this.§&5§ - this.§6!U§;
         }
      }
      
      public function §,7§() : String
      {
         return this.§@<§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
