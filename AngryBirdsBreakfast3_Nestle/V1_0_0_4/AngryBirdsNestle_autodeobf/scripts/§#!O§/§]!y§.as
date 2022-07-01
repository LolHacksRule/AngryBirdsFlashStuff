package §#!O§
{
   import §"I§.§=!U§;
   import §&!>§.§3!k§;
   import §&!>§.§3G§;
   import §-!f§.§7!6§;
   import §-!f§.DisplayObject;
   import §-!f§.Sprite;
   import §2?§.§!!m§;
   import §2?§.§1"§;
   import §6_§.§,!>§;
   import §>j§.§`y§;
   
   public class §]!y§
   {
      
      public static const §6!c§:Boolean = true;
       
      
      private var §'+§:§,!>§;
      
      private var §'G§:§1"§;
      
      private var §@![§:Vector.<§-u§>;
      
      private var §>"§:Sprite;
      
      private var §#9§:Sprite;
      
      private var §<"&§:Sprite;
      
      private var §#X§:Number;
      
      private var § !f§:Number;
      
      private var § N§:Number;
      
      private var §>&§:Boolean = true;
      
      private var §@"1§:Boolean = true;
      
      private var §5F§:§3G§;
      
      private var §3!s§:Number;
      
      private var §7U§:Boolean = true;
      
      private var §4""§:int = 0;
      
      private var §79§:Number = 1.0;
      
      public function §]!y§(param1:§1"§, param2:Number, param3:§,!>§, param4:Number, param5:Boolean = true)
      {
         this.§@![§ = new Vector.<§-u§>();
         super();
         this.§'+§ = param3;
         this.§ !f§ = 0;
         this.§ N§ = 0;
         this.§#X§ = param2;
         this.§>"§ = new Sprite();
         this.§#9§ = new Sprite();
         this.§<"&§ = new Sprite();
         this.§3!s§ = param4;
         this.§7U§ = param5;
         this.§,!n§(param1,param4);
      }
      
      public function get §["0§() : Boolean
      {
         return this.§>&§;
      }
      
      public function get §2N§() : Sprite
      {
         return this.§<"&§;
      }
      
      public function get §+!Z§() : Sprite
      {
         return this.§>"§;
      }
      
      public function get §,!Q§() : Sprite
      {
         return this.§#9§;
      }
      
      public function get §[!z§() : int
      {
         return this.§4""§;
      }
      
      protected function get §`!`§() : §,!>§
      {
         return this.§'+§;
      }
      
      public function dispose() : void
      {
         this.§<!_§();
         this.§83§();
         if(this.§>"§)
         {
            this.§>"§.dispose();
            this.§>"§ = null;
         }
         if(this.§#9§)
         {
            this.§#9§.dispose();
            this.§#9§ = null;
         }
         if(this.§<"&§)
         {
            this.§<"&§.dispose();
            this.§<"&§ = null;
         }
      }
      
      public function §%q§() : Boolean
      {
         return this.§@"1§;
      }
      
      public function § W§(param1:Boolean) : void
      {
         if(this.§@"1§ == param1)
         {
            return;
         }
         this.§@"1§ = param1;
         if(!param1)
         {
            this.§<!_§();
         }
         else
         {
            this.§,!n§(this.§'G§,this.§3!s§);
         }
      }
      
      public function §]!z§() : String
      {
         return this.§'G§.§<!;§;
      }
      
      private function §<!_§() : void
      {
         while(this.§#9§.numChildren > 0)
         {
            this.§#9§.removeChildAt(0,true);
         }
         while(this.§>"§.numChildren > 0)
         {
            this.§>"§.removeChildAt(0,true);
         }
         while(this.§@![§.length > 0)
         {
            this.§@![§.pop().dispose();
         }
      }
      
      protected function §`!j§(param1:§1"§) : void
      {
      }
      
      protected function §,!n§(param1:§1"§, param2:Number) : void
      {
         var _loc4_:§!!m§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§-u§ = null;
         this.§'G§ = param1;
         this.§`!j§(this.§'G§);
         this.§>"§.y = this.§#X§;
         this.§#9§.y = this.§#X§;
         this.§<"&§.y = this.§#X§;
         this.§+D§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§'G§.§;I§)
         {
            _loc4_ = this.§'G§.§!!t§(_loc3_);
            if(this.§7U§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§7!U§(_loc4_,_loc5_,this.§`!`§,param2);
               this.§@![§.push(_loc6_);
               if(_loc6_.§,!K§)
               {
                  this.§#9§.addChild(_loc5_);
               }
               else
               {
                  this.§>"§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§'!3§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function §7!U§(param1:§!!m§, param2:Sprite, param3:§,!>§, param4:Number) : §-u§
      {
         return new §-u§(param1,param2,param3,param4);
      }
      
      private function §+D§() : void
      {
         var _loc1_:§7!6§ = null;
         if(this.§'G§.§1-§)
         {
            this.§'!3§(this.§'G§.§1-§);
         }
         if(this.§'G§.§5B§)
         {
            _loc1_ = this.§@<§(uint(this.§'G§.§5B§));
            _loc1_.y = 30;
            this.§<"&§.addChild(_loc1_);
         }
      }
      
      protected function §@<§(param1:uint) : §7!6§
      {
         return new §7!6§(4096,4096,param1);
      }
      
      private function §'!3§(param1:int) : void
      {
         this.§4""§ = param1;
      }
      
      public function §%<§(param1:§1"§, param2:§,!>§ = null) : void
      {
         if(param2)
         {
            this.§'+§ = param2;
         }
         this.§<!_§();
         §=!U§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§,!n§(param1,this.§3!s§);
      }
      
      public function §^!9§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§-u§ = null;
         if(param1 == this.§>&§)
         {
            return;
         }
         this.§>&§ = param1;
         for each(_loc3_ in this.§@![§)
         {
            _loc3_.§^!9§(param1);
         }
      }
      
      public function §[!5§() : void
      {
         if(§3!k§.§]" §("CHANNEL_AMBIENT") == null || !§3!k§.§]" §("CHANNEL_AMBIENT").§="§())
         {
            §3!k§.§]"4§(this.§!x§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §83§() : void
      {
         §3!k§.§4[§("CHANNEL_AMBIENT");
      }
      
      public function get §!x§() : String
      {
         return this.§'G§.§!x§;
      }
      
      public function §-!@§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§>"§.numChildren)
         {
            _loc2_ = this.§>"§.getChildAt(param1);
         }
         else if(param1 - this.§>"§.numChildren < this.§#9§.numChildren)
         {
            _loc2_ = this.§#9§.getChildAt(param1 - this.§>"§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§ !f§ = param1;
         this.§ N§ = param2;
         if(this.§@![§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§@![§.length)
            {
               this.§@![§[_loc8_].setScreenOffset(this.§ !f§,this.§ N§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§<"&§ != null)
         {
            this.§<"&§.scaleX = this.§<"&§.scaleY = 1 / §`y§.§-n§;
            this.§<"&§.x = 0;
            this.§<"&§.y = this.§#X§ - this.§ N§;
         }
      }
      
      public function §5#§() : String
      {
         return this.§'G§.id;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
