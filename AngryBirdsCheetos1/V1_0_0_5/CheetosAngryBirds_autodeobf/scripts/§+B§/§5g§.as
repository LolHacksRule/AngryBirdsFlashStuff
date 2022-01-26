package §+B§
{
   import §!!R§.DisplayObject;
   import §!!R§.Sprite;
   import §!!R§.§^!4§;
   import §#K§.§?I§;
   import §&!W§.§8!K§;
   import §&N§.§@,§;
   import §2!6§.§%!$§;
   import §2!6§.§break§;
   import §3]§.§"§;
   import §3]§.§5O§;
   import §3]§.§8[§;
   import §7W§.§ !+§;
   import §8!P§.§5p§;
   
   public class §5g§
   {
      
      public static const §,7§:Boolean = true;
       
      
      private var §&U§:§8!K§;
      
      private var §!!+§:§"§;
      
      private var §+Q§:Vector.<§^!R§>;
      
      private var §@<§:Sprite;
      
      private var §%2§:Sprite;
      
      private var §"E§:Sprite;
      
      private var §2[§:Number;
      
      private var §&5§:Number;
      
      private var §+!U§:Number;
      
      private var §6!U§:Boolean = true;
      
      private var §2N§:Boolean = true;
      
      private var § true§:§break§;
      
      private var §get §:Number;
      
      public function §5g§(param1:String, param2:Number, param3:§8!K§, param4:Number)
      {
         this.§+Q§ = new Vector.<§^!R§>();
         super();
         this.§&U§ = param3;
         this.§&5§ = 0;
         this.§+!U§ = 0;
         this.§2[§ = param2;
         this.§@<§ = new Sprite();
         this.§%2§ = new Sprite();
         this.§"E§ = new Sprite();
         this.§get § = param4;
         this.§ e§(param1,param4);
      }
      
      public function get §0Q§() : Boolean
      {
         return this.§6!U§;
      }
      
      public function get §[!B§() : Sprite
      {
         return this.§"E§;
      }
      
      public function get §41§() : Sprite
      {
         return this.§@<§;
      }
      
      public function get §+#§() : Sprite
      {
         return this.§%2§;
      }
      
      protected function get §"B§() : §8!K§
      {
         return this.§&U§;
      }
      
      public function dispose() : void
      {
         this.§]!S§();
         if(this.§@<§)
         {
            this.§@<§.dispose();
            this.§@<§ = null;
         }
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
      }
      
      public function §#H§() : Boolean
      {
         return this.§2N§;
      }
      
      public function §1K§(param1:Boolean) : void
      {
         if(this.§2N§ == param1)
         {
            return;
         }
         this.§2N§ = param1;
         if(!param1)
         {
            this.§]!S§();
         }
         else
         {
            this.§ e§(this.§!!+§.mName,this.§get §);
         }
      }
      
      public function §`B§() : String
      {
         return this.§!!+§.§]!R§;
      }
      
      private function §]!S§() : void
      {
         while(this.§%2§.numChildren > 0)
         {
            this.§%2§.removeChildAt(0,true);
         }
         while(this.§@<§.numChildren > 0)
         {
            this.§@<§.removeChildAt(0,true);
         }
         while(this.§+Q§.length > 0)
         {
            this.§+Q§.pop().dispose();
         }
      }
      
      private function § e§(param1:String, param2:Number) : void
      {
         var _loc4_:§5O§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§^!R§ = null;
         this.§!!+§ = §8[§.§8V§(param1);
         if(this.§!!+§ == null)
         {
            §@,§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §?I§.§<I§;
            this.§!!+§ = §8[§.§8V§(param1);
         }
         this.§@<§.y = this.§2[§;
         this.§%2§.y = this.§2[§;
         this.§"E§.y = this.§2[§;
         this.§`3§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§!!+§.§+Q§.length)
         {
            _loc4_ = this.§!!+§.§+Q§[_loc3_];
            if(!§ !+§.§?t§ || !_loc4_.§?3§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §^!R§(_loc4_,_loc5_,this.§&U§,param2);
               this.§+Q§.push(_loc6_);
               if(_loc6_.§4!R§)
               {
                  this.§%2§.addChild(_loc5_);
               }
               else
               {
                  this.§@<§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§'!O§)
            {
               this.§'!7§(parseInt(_loc4_.§'!O§,16));
            }
            _loc3_++;
         }
      }
      
      private function §`3§() : void
      {
         var _loc1_:§^!4§ = null;
         if(this.§!!+§.§]"§)
         {
            this.§'!7§(this.§!!+§.§]"§);
         }
         if(this.§!!+§.§%g§)
         {
            _loc1_ = this.§7o§(uint(this.§!!+§.§%g§));
            _loc1_.y = 0;
            this.§"E§.addChild(_loc1_);
         }
      }
      
      protected function §7o§(param1:uint) : §^!4§
      {
         return new §^!4§(4096,4096,param1);
      }
      
      private function §'!7§(param1:int) : void
      {
         if(§ !+§.§ Z§)
         {
            § !+§.§ Z§.color = param1;
         }
      }
      
      public function §?2§(param1:String) : void
      {
         this.§]!S§();
         §@,§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§ e§(param1,this.§get §);
      }
      
      public function §@!-§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§^!R§ = null;
         if(param1 == this.§6!U§)
         {
            return;
         }
         this.§6!U§ = param1;
         for each(_loc3_ in this.§+Q§)
         {
            _loc3_.§@!-§(param1);
         }
      }
      
      public function §0!#§() : void
      {
         if(§%!$§.§,!1§("CHANNEL_AMBIENT") == null || !§%!$§.§,!1§("CHANNEL_AMBIENT").§?!5§())
         {
            §%!$§.playSound(this.§!!+§.§&!D§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §?O§() : void
      {
         §%!$§.§,w§("CHANNEL_AMBIENT");
      }
      
      public function §4v§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§@<§.numChildren)
         {
            _loc2_ = this.§@<§.getChildAt(param1);
         }
         else if(param1 - this.§@<§.numChildren < this.§%2§.numChildren)
         {
            _loc2_ = this.§%2§.getChildAt(param1 - this.§@<§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §;f§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§&5§ = param1;
         this.§+!U§ = param2;
         if(this.§+Q§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§+Q§.length)
            {
               this.§+Q§[_loc3_].setSideScroll(this.§&5§,this.§+!U§);
               _loc3_++;
            }
         }
         if(this.§"E§ != null)
         {
            this.§"E§.scaleX = this.§"E§.scaleY = 1 / §5p§.§ !T§;
            this.§"E§.x = -§5p§.§7n§ * (1 / §5p§.§ !T§);
            this.§"E§.y = this.§2[§ - this.§+!U§;
         }
      }
      
      public function §''§() : String
      {
         return this.§!!+§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
