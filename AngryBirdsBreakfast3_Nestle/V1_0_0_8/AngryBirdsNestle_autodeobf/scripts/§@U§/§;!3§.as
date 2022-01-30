package §@U§
{
   import §-![§.§5!<§;
   import §-![§.DisplayObject;
   import §-![§.Sprite;
   import §6`§.§2a§;
   import §8q§.§+m§;
   import §8q§.§]d§;
   import §;4§.§]!%§;
   import §>D§.§ k§;
   import §>D§.§^§;
   import §^!<§.§#t§;
   
   public class §;!3§
   {
      
      public static const §2?§:Boolean = true;
       
      
      protected var §1!5§:§2a§;
      
      protected var §#!Y§:§ k§;
      
      protected var §@<§:Vector.<§3!Q§>;
      
      protected var §]!'§:Sprite;
      
      protected var § 5§:Sprite;
      
      protected var §5!8§:Sprite;
      
      protected var §!^§:Number;
      
      protected var §30§:Number;
      
      protected var §#!U§:Number;
      
      protected var §4!k§:Boolean = true;
      
      protected var §9!Y§:Boolean = true;
      
      protected var §#f§:§+m§;
      
      protected var §1X§:Number;
      
      protected var §<!a§:Boolean = true;
      
      protected var §3y§:int = 0;
      
      protected var §1+§:Number = 1.0;
      
      public function §;!3§(param1:§ k§, param2:Number, param3:§2a§, param4:Number, param5:Boolean = true)
      {
         this.§@<§ = new Vector.<§3!Q§>();
         super();
         this.§1!5§ = param3;
         this.§30§ = 0;
         this.§#!U§ = 0;
         this.§!^§ = param2;
         this.§]!'§ = new Sprite();
         this.§ 5§ = new Sprite();
         this.§5!8§ = new Sprite();
         this.§1X§ = param4;
         this.§<!a§ = param5;
         this.§"!@§(param1,param4);
      }
      
      public function get §;T§() : Boolean
      {
         return this.§4!k§;
      }
      
      public function get §<"2§() : Sprite
      {
         return this.§5!8§;
      }
      
      public function get §1i§() : Sprite
      {
         return this.§]!'§;
      }
      
      public function get §@!<§() : Sprite
      {
         return this.§ 5§;
      }
      
      public function get §[!G§() : int
      {
         return this.§3y§;
      }
      
      protected function get § X§() : §2a§
      {
         return this.§1!5§;
      }
      
      public function dispose() : void
      {
         this.§%!8§();
         this.§-!J§();
         if(this.§]!'§)
         {
            this.§]!'§.dispose();
            this.§]!'§ = null;
         }
         if(this.§ 5§)
         {
            this.§ 5§.dispose();
            this.§ 5§ = null;
         }
         if(this.§5!8§)
         {
            this.§5!8§.dispose();
            this.§5!8§ = null;
         }
      }
      
      public function §4Z§() : Boolean
      {
         return this.§9!Y§;
      }
      
      public function §7!X§(param1:Boolean) : void
      {
         if(this.§9!Y§ == param1)
         {
            return;
         }
         this.§9!Y§ = param1;
         if(!param1)
         {
            this.§%!8§();
         }
         else
         {
            this.§"!@§(this.§#!Y§,this.§1X§);
         }
      }
      
      public function §^v§() : String
      {
         return this.§#!Y§.§ §;
      }
      
      private function §%!8§() : void
      {
         while(this.§ 5§.numChildren > 0)
         {
            this.§ 5§.removeChildAt(0,true);
         }
         while(this.§]!'§.numChildren > 0)
         {
            this.§]!'§.removeChildAt(0,true);
         }
         while(this.§@<§.length > 0)
         {
            this.§@<§.pop().dispose();
         }
      }
      
      protected function §9!N§(param1:§ k§) : void
      {
      }
      
      protected function §"!@§(param1:§ k§, param2:Number) : void
      {
         var _loc4_:§^§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§3!Q§ = null;
         this.§#!Y§ = param1;
         this.§9!N§(this.§#!Y§);
         this.§]!'§.y = this.§!^§;
         this.§ 5§.y = this.§!^§;
         this.§5!8§.y = this.§!^§;
         this.§+!g§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§#!Y§.§!%§)
         {
            _loc4_ = this.§#!Y§.§[!O§(_loc3_);
            if(this.§<!a§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§7!,§(_loc4_,_loc5_,this.§ X§,param2);
               this.§@<§.push(_loc6_);
               if(_loc6_.§""4§)
               {
                  this.§ 5§.addChild(_loc5_);
               }
               else
               {
                  this.§]!'§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§%!B§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function §7!,§(param1:§^§, param2:Sprite, param3:§2a§, param4:Number) : §3!Q§
      {
         return new §3!Q§(param1,param2,param3,param4);
      }
      
      private function §+!g§() : void
      {
         var _loc1_:§5!<§ = null;
         if(this.§#!Y§.§^! §)
         {
            this.§%!B§(this.§#!Y§.§^! §);
         }
         if(this.§#!Y§.§1!e§)
         {
            _loc1_ = this.§`!r§(uint(this.§#!Y§.§1!e§));
            _loc1_.y = 0;
            this.§5!8§.addChild(_loc1_);
         }
      }
      
      protected function §`!r§(param1:uint) : §5!<§
      {
         return new §5!<§(4096,4096,param1);
      }
      
      private function §%!B§(param1:int) : void
      {
         this.§3y§ = param1;
      }
      
      public function §"r§(param1:§ k§) : void
      {
         this.§%!8§();
         §]!%§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§"!@§(param1,this.§1X§);
      }
      
      public function §;!7§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§3!Q§ = null;
         if(param1 == this.§4!k§)
         {
            return;
         }
         this.§4!k§ = param1;
         for each(_loc3_ in this.§@<§)
         {
            _loc3_.§;!7§(param1);
         }
      }
      
      public function §'G§() : void
      {
         if(§]d§.§`!?§("CHANNEL_AMBIENT") == null || !§]d§.§`!?§("CHANNEL_AMBIENT").§'_§())
         {
            §]d§.§^!J§(this.§+!=§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §-!J§() : void
      {
         §]d§.§<"+§("CHANNEL_AMBIENT");
      }
      
      public function get §+!=§() : String
      {
         return this.§#!Y§.§+!=§;
      }
      
      public function §1"7§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§]!'§.numChildren)
         {
            _loc2_ = this.§]!'§.getChildAt(param1);
         }
         else if(param1 - this.§]!'§.numChildren < this.§ 5§.numChildren)
         {
            _loc2_ = this.§ 5§.getChildAt(param1 - this.§]!'§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§30§ = param1;
         this.§#!U§ = param2;
         if(this.§@<§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§@<§.length)
            {
               this.§@<§[_loc8_].setScreenOffset(this.§30§,this.§#!U§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§5!8§ != null)
         {
            this.§5!8§.scaleX = this.§5!8§.scaleY = 1 / §#t§.§9!3§;
            this.§5!8§.x = 0;
            this.§5!8§.y = this.§!^§ - this.§#!U§ + 100;
         }
      }
      
      public function § 7§() : String
      {
         return this.§#!Y§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§3!Q§ = null;
         for each(_loc2_ in this.§@<§)
         {
            _loc2_.update(param1);
         }
      }
   }
}
