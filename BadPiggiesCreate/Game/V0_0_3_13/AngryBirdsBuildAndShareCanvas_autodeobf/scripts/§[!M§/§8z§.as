package §[!M§
{
   import §&W§.§7L§;
   import §-!+§.§6"6§;
   import §0s§.§];§;
   import §2b§.§"" §;
   import §;!@§.§+"+§;
   import §;!@§.§6f§;
   import §;!@§.§>!%§;
   import §>Z§.§5;§;
   import §>Z§.§??§;
   import §`"2§.§6!,§;
   import §`L§.§=!x§;
   import §`L§.DisplayObject;
   import §`L§.Sprite;
   
   public class §8z§
   {
      
      public static const §+!w§:Boolean = true;
       
      
      private var §>!t§:§6!,§;
      
      protected var §<!6§:§6f§;
      
      protected var §9C§:Vector.<§'#§>;
      
      private var §="7§:Sprite;
      
      private var §<!4§:Sprite;
      
      private var §[!x§:Sprite;
      
      private var §?!"§:Number;
      
      private var §`+§:Number;
      
      private var §[!4§:Number;
      
      private var §'!g§:Boolean = true;
      
      private var §,!`§:Boolean = true;
      
      private var §<0§:§??§;
      
      private var §?",§:Number;
      
      public function §8z§(param1:String, param2:Number, param3:§6!,§, param4:Number)
      {
         this.§9C§ = new Vector.<§'#§>();
         super();
         this.§>!t§ = param3;
         this.§`+§ = 0;
         this.§[!4§ = 0;
         this.§?!"§ = param2;
         this.§="7§ = new Sprite();
         this.§<!4§ = new Sprite();
         this.§[!x§ = new Sprite();
         this.§?",§ = param4;
         this.§'d§(param1,param4);
      }
      
      public function get §'!X§() : Boolean
      {
         return this.§'!g§;
      }
      
      public function get §1p§() : Sprite
      {
         return this.§[!x§;
      }
      
      public function get §;!d§() : Sprite
      {
         return this.§="7§;
      }
      
      public function get §`!e§() : Sprite
      {
         return this.§<!4§;
      }
      
      protected function get §4F§() : §6!,§
      {
         return this.§>!t§;
      }
      
      public function dispose() : void
      {
         this.§^]§();
         if(this.§="7§)
         {
            this.§="7§.dispose();
            this.§="7§ = null;
         }
         if(this.§<!4§)
         {
            this.§<!4§.dispose();
            this.§<!4§ = null;
         }
         if(this.§[!x§)
         {
            this.§[!x§.dispose();
            this.§[!x§ = null;
         }
      }
      
      public function §0"6§() : Boolean
      {
         return this.§,!`§;
      }
      
      public function §=""§(param1:Boolean) : void
      {
         if(this.§,!`§ == param1)
         {
            return;
         }
         this.§,!`§ = param1;
         if(!param1)
         {
            this.§^]§();
         }
         else
         {
            this.§'d§(this.§<!6§.mName,this.§?",§);
         }
      }
      
      public function §&L§() : String
      {
         return this.§<!6§.§8!B§;
      }
      
      private function §^]§() : void
      {
         while(this.§<!4§.numChildren > 0)
         {
            this.§<!4§.removeChildAt(0,true);
         }
         while(this.§="7§.numChildren > 0)
         {
            this.§="7§.removeChildAt(0,true);
         }
         while(this.§9C§.length > 0)
         {
            this.§9C§.pop().dispose();
         }
      }
      
      protected function §2]§(param1:§6f§, param2:String) : void
      {
      }
      
      private function §'d§(param1:String, param2:Number) : void
      {
         var _loc4_:§+"+§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§'#§ = null;
         this.§<!6§ = §>!%§.§?L§(param1);
         if(this.§<!6§ == null)
         {
            §7L§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §];§.§!!H§;
            this.§<!6§ = §>!%§.§?L§(param1);
         }
         this.§2]§(this.§<!6§,param1);
         this.§="7§.y = this.§?!"§;
         this.§<!4§.y = this.§?!"§;
         this.§[!x§.y = this.§?!"§;
         this.§#w§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§<!6§.§9C§.length)
         {
            _loc4_ = this.§<!6§.§9C§[_loc3_];
            if(!§6"6§.§5!f§ || !_loc4_.§;!O§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§-!O§(_loc4_,_loc5_,this.§>!t§,param2);
               this.§9C§.push(_loc6_);
               if(_loc6_.§6"§)
               {
                  this.§<!4§.addChild(_loc5_);
               }
               else
               {
                  this.§="7§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§=z§)
            {
               this.§^b§(parseInt(_loc4_.§=z§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §-!O§(param1:§+"+§, param2:Sprite, param3:§6!,§, param4:Number) : §'#§
      {
         return new §'#§(param1,param2,param3,param4);
      }
      
      private function §#w§() : void
      {
         var _loc1_:§=!x§ = null;
         if(this.§<!6§.§,9§)
         {
            this.§^b§(this.§<!6§.§,9§);
         }
         if(this.§<!6§.§9!>§)
         {
            _loc1_ = this.§>">§(uint(this.§<!6§.§9!>§));
            _loc1_.y = 0;
            this.§[!x§.addChild(_loc1_);
         }
      }
      
      protected function §>">§(param1:uint) : §=!x§
      {
         return new §=!x§(4096,4096,param1);
      }
      
      protected function §^b§(param1:int) : void
      {
         if(§6"6§.§^F§)
         {
            §6"6§.§^F§.color = param1;
         }
      }
      
      public function resetLevelBackground(param1:String) : void
      {
         this.§^]§();
         §7L§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§'d§(param1,this.§?",§);
      }
      
      public function § 5§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§'#§ = null;
         if(param1 == this.§'!g§)
         {
            return;
         }
         this.§'!g§ = param1;
         for each(_loc3_ in this.§9C§)
         {
            _loc3_.§ 5§(param1);
         }
      }
      
      public function §>n§() : void
      {
         if(§5;§.§+!7§("CHANNEL_AMBIENT") == null || !§5;§.§+!7§("CHANNEL_AMBIENT").§9!8§())
         {
            §5;§.playSound(this.§<!6§.§6!=§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §&A§() : void
      {
         §5;§.§@g§("CHANNEL_AMBIENT");
      }
      
      public function §%!8§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§="7§.numChildren)
         {
            _loc2_ = this.§="7§.getChildAt(param1);
         }
         else if(param1 - this.§="7§.numChildren < this.§<!4§.numChildren)
         {
            _loc2_ = this.§<!4§.getChildAt(param1 - this.§="7§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §=!0§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§`+§ = param1;
         this.§[!4§ = param2;
         if(this.§9C§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§9C§.length)
            {
               this.§9C§[_loc3_].setSideScroll(this.§`+§,this.§[!4§);
               _loc3_++;
            }
         }
         if(this.§[!x§ != null)
         {
            this.§[!x§.scaleX = this.§[!x§.scaleY = 1 / §"" §.§>!-§;
            this.§[!x§.x = -§"" §.§?!n§ * (1 / §"" §.§>!-§);
            this.§[!x§.y = this.§?!"§ - this.§[!4§;
         }
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§<!6§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
