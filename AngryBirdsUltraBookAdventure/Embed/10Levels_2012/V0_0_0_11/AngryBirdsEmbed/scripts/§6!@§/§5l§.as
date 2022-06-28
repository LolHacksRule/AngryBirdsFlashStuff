package §6!@§
{
   import §%$§.§"r§;
   import §%$§.§3V§;
   import §%$§.§<]§;
   import §&p§.§'_§;
   import §-!0§.§'!3§;
   import §0!<§.§#y§;
   import §>!C§.§9R§;
   import §?!?§.§3!E§;
   import §?!?§.§]t§;
   import §?^§.§?C§;
   import §?^§.DisplayObject;
   import §?^§.Sprite;
   import §[F§.§`m§;
   
   public class §5l§
   {
      
      public static const §37§:Boolean = true;
       
      
      private var § 7§:§'!3§;
      
      private var §>1§:§<]§;
      
      private var §[O§:Vector.<§6h§>;
      
      private var §&e§:Sprite;
      
      private var §1>§:Sprite;
      
      private var §'e§:Sprite;
      
      private var §0z§:Number;
      
      private var §[!!§:Number;
      
      private var §@$§:Number;
      
      private var §8F§:Boolean = true;
      
      private var §#!8§:Boolean = true;
      
      private var §&K§:§]t§;
      
      private var §%>§:Number;
      
      public function §5l§(param1:String, param2:Number, param3:§'!3§, param4:Number)
      {
         this.§[O§ = new Vector.<§6h§>();
         super();
         this.§ 7§ = param3;
         this.§[!!§ = 0;
         this.§@$§ = 0;
         this.§0z§ = param2;
         this.§&e§ = new Sprite();
         this.§1>§ = new Sprite();
         this.§'e§ = new Sprite();
         this.§%>§ = param4;
         this.§>-§(param1,param4);
      }
      
      public function get §![§() : Boolean
      {
         return this.§8F§;
      }
      
      public function get §9q§() : Sprite
      {
         return this.§'e§;
      }
      
      public function get §`6§() : Sprite
      {
         return this.§&e§;
      }
      
      public function get §^;§() : Sprite
      {
         return this.§1>§;
      }
      
      protected function get textureManager() : §'!3§
      {
         return this.§ 7§;
      }
      
      public function dispose() : void
      {
         this.§[!G§();
         if(this.§&e§)
         {
            this.§&e§.dispose();
            this.§&e§ = null;
         }
         if(this.§1>§)
         {
            this.§1>§.dispose();
            this.§1>§ = null;
         }
         if(this.§'e§)
         {
            this.§'e§.dispose();
            this.§'e§ = null;
         }
      }
      
      public function §[[§() : Boolean
      {
         return this.§#!8§;
      }
      
      public function §69§(param1:Boolean) : void
      {
         if(this.§#!8§ == param1)
         {
            return;
         }
         this.§#!8§ = param1;
         if(!param1)
         {
            this.§[!G§();
         }
         else
         {
            this.§>-§(this.§>1§.mName,this.§%>§);
         }
      }
      
      public function §"I§() : String
      {
         return this.§>1§.§&A§;
      }
      
      private function §[!G§() : void
      {
         while(this.§1>§.numChildren > 0)
         {
            this.§1>§.removeChildAt(0,true);
         }
         while(this.§&e§.numChildren > 0)
         {
            this.§&e§.removeChildAt(0,true);
         }
         while(this.§[O§.length > 0)
         {
            this.§[O§.pop().dispose();
         }
      }
      
      private function §>-§(param1:String, param2:Number) : void
      {
         var _loc4_:§"r§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§6h§ = null;
         this.§>1§ = §3V§.§9S§(param1);
         if(this.§>1§ == null)
         {
            §#y§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §9R§.§ !4§;
            this.§>1§ = §3V§.§9S§(param1);
         }
         this.§&e§.y = this.§0z§;
         this.§1>§.y = this.§0z§;
         this.§'e§.y = this.§0z§;
         this.§3!G§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§>1§.§[O§.length)
         {
            _loc4_ = this.§>1§.§[O§[_loc3_];
            if(!§'_§.§;'§ || !_loc4_.§`=§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §6h§(_loc4_,_loc5_,this.§ 7§,param2);
               this.§[O§.push(_loc6_);
               if(_loc6_.§#!5§)
               {
                  this.§1>§.addChild(_loc5_);
               }
               else
               {
                  this.§&e§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§#!<§)
            {
               this.§#@§(parseInt(_loc4_.§#!<§,16));
            }
            _loc3_++;
         }
      }
      
      private function §3!G§() : void
      {
         var _loc1_:§?C§ = null;
         if(this.§>1§.§;!<§)
         {
            this.§#@§(this.§>1§.§;!<§);
         }
         if(this.§>1§.§2!§)
         {
            _loc1_ = this.§!!4§(uint(this.§>1§.§2!§));
            _loc1_.y = 0;
            this.§'e§.addChild(_loc1_);
         }
      }
      
      protected function §!!4§(param1:uint) : §?C§
      {
         return new §?C§(4096,4096,param1);
      }
      
      private function §#@§(param1:int) : void
      {
         if(§'_§.§17§)
         {
            §'_§.§17§.color = param1;
         }
      }
      
      public function §9r§(param1:String) : void
      {
         this.§[!G§();
         §#y§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§>-§(param1,this.§%>§);
      }
      
      public function §#,§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§6h§ = null;
         if(param1 == this.§8F§)
         {
            return;
         }
         this.§8F§ = param1;
         for each(_loc3_ in this.§[O§)
         {
            _loc3_.§#,§(param1);
         }
      }
      
      public function §break§() : void
      {
         if(§3!E§.§8!§("CHANNEL_AMBIENT") == null || !§3!E§.§8!§("CHANNEL_AMBIENT").§!q§())
         {
            §3!E§.§<!,§(this.§>1§.§%b§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §!M§() : void
      {
         §3!E§.§9o§("CHANNEL_AMBIENT");
      }
      
      public function §4<§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§&e§.numChildren)
         {
            _loc2_ = this.§&e§.getChildAt(param1);
         }
         else if(param1 - this.§&e§.numChildren < this.§1>§.numChildren)
         {
            _loc2_ = this.§1>§.getChildAt(param1 - this.§&e§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §^-§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§[!!§ = param1;
         this.§@$§ = param2;
         if(this.§[O§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§[O§.length)
            {
               this.§[O§[_loc3_].setSideScroll(this.§[!!§,this.§@$§);
               _loc3_++;
            }
         }
         if(this.§'e§ != null)
         {
            this.§'e§.scaleX = this.§'e§.scaleY = 1 / §`m§.§;`§;
            this.§'e§.x = -§`m§.§0!6§ * (1 / §`m§.§;`§);
            this.§'e§.y = this.§0z§ - this.§@$§;
         }
      }
      
      public function §,C§() : String
      {
         return this.§>1§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
