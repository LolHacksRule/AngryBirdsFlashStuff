package
{
   import §'w§.§ !7§;
   import §+c§.§6y§;
   import §+c§.§;L§;
   import §0!Y§.§-f§;
   import §0!Y§.DisplayObject;
   import §0!Y§.Sprite;
   import §6!?§.§`!O§;
   import §9![§.§1!i§;
   import §9![§.§4Y§;
   import §=!7§.§1!7§;
   
   public class §[!7§
   {
      
      public static const §6!S§:Boolean = true;
       
      
      private var §#=§:§`!O§;
      
      private var §#"$§:§;L§;
      
      private var §[!J§:Vector.<§7!,§>;
      
      private var §>!J§:Sprite;
      
      private var §>!C§:Sprite;
      
      private var §3!G§:Sprite;
      
      private var §?"#§:Number;
      
      private var §^!R§:Number;
      
      private var §[t§:Number;
      
      private var §@U§:Boolean = true;
      
      private var §'!o§:Boolean = true;
      
      private var §1g§:§4Y§;
      
      private var §7!$§:Number;
      
      private var §@n§:Boolean = true;
      
      private var §62§:int = 0;
      
      private var §>s§:Number = 1.0;
      
      public function §[!7§(param1:§;L§, param2:Number, param3:§`!O§, param4:Number, param5:Boolean = true)
      {
         this.§[!J§ = new Vector.<§7!,§>();
         super();
         this.§#=§ = param3;
         this.§^!R§ = 0;
         this.§[t§ = 0;
         this.§?"#§ = param2;
         this.§>!J§ = new Sprite();
         this.§>!C§ = new Sprite();
         this.§3!G§ = new Sprite();
         this.§7!$§ = param4;
         this.§@n§ = param5;
         this.§<!@§(param1,param4);
      }
      
      public function get §1G§() : Boolean
      {
         return this.§@U§;
      }
      
      public function get §?#§() : Sprite
      {
         return this.§3!G§;
      }
      
      public function get §^T§() : Sprite
      {
         return this.§>!J§;
      }
      
      public function get § e§() : Sprite
      {
         return this.§>!C§;
      }
      
      public function get §while§() : int
      {
         return this.§62§;
      }
      
      protected function get §&p§() : §`!O§
      {
         return this.§#=§;
      }
      
      public function dispose() : void
      {
         this.§0""§();
         this.§?§();
         if(this.§>!J§)
         {
            this.§>!J§.dispose();
            this.§>!J§ = null;
         }
         if(this.§>!C§)
         {
            this.§>!C§.dispose();
            this.§>!C§ = null;
         }
         if(this.§3!G§)
         {
            this.§3!G§.dispose();
            this.§3!G§ = null;
         }
      }
      
      public function §!1§() : Boolean
      {
         return this.§'!o§;
      }
      
      public function §&!L§(param1:Boolean) : void
      {
         if(this.§'!o§ == param1)
         {
            return;
         }
         this.§'!o§ = param1;
         if(!param1)
         {
            this.§0""§();
         }
         else
         {
            this.§<!@§(this.§#"$§,this.§7!$§);
         }
      }
      
      public function §2I§() : String
      {
         return this.§#"$§.§[W§;
      }
      
      private function §0""§() : void
      {
         while(this.§>!C§.numChildren > 0)
         {
            this.§>!C§.removeChildAt(0,true);
         }
         while(this.§>!J§.numChildren > 0)
         {
            this.§>!J§.removeChildAt(0,true);
         }
         while(this.§[!J§.length > 0)
         {
            this.§[!J§.pop().dispose();
         }
      }
      
      protected function §^F§(param1:§;L§) : void
      {
      }
      
      protected function §<!@§(param1:§;L§, param2:Number) : void
      {
         var _loc4_:§6y§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§7!,§ = null;
         this.§#"$§ = param1;
         this.§^F§(this.§#"$§);
         this.§>!J§.y = this.§?"#§;
         this.§>!C§.y = this.§?"#§;
         this.§3!G§.y = this.§?"#§;
         this.§[y§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§#"$§.§ !5§)
         {
            _loc4_ = this.§#"$§.§[&§(_loc3_);
            if(this.§@n§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§package§(_loc4_,_loc5_,this.§&p§,param2);
               this.§[!J§.push(_loc6_);
               if(_loc6_.§]p§)
               {
                  this.§>!C§.addChild(_loc5_);
               }
               else
               {
                  this.§>!J§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§4!%§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function §package§(param1:§6y§, param2:Sprite, param3:§`!O§, param4:Number) : §7!,§
      {
         return new §7!,§(param1,param2,param3,param4);
      }
      
      private function §[y§() : void
      {
         var _loc1_:§-f§ = null;
         if(this.§#"$§.§9x§)
         {
            this.§4!%§(this.§#"$§.§9x§);
         }
         if(this.§#"$§.§5]§)
         {
            _loc1_ = this.§4q§(uint(this.§#"$§.§5]§));
            _loc1_.y = 30;
            this.§3!G§.addChild(_loc1_);
         }
      }
      
      protected function §4q§(param1:uint) : §-f§
      {
         return new §-f§(4096,4096,param1);
      }
      
      private function §4!%§(param1:int) : void
      {
         this.§62§ = param1;
      }
      
      public function §0!%§(param1:§;L§, param2:§`!O§ = null) : void
      {
         if(param2)
         {
            this.§#=§ = param2;
         }
         this.§0""§();
         §1!7§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§<!@§(param1,this.§7!$§);
      }
      
      public function §>"§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§7!,§ = null;
         if(param1 == this.§@U§)
         {
            return;
         }
         this.§@U§ = param1;
         for each(_loc3_ in this.§[!J§)
         {
            _loc3_.§>"§(param1);
         }
      }
      
      public function §0T§() : void
      {
         if(§1!i§.§?1§("CHANNEL_AMBIENT") == null || !§1!i§.§?1§("CHANNEL_AMBIENT").§?G§())
         {
            §1!i§.§+!Y§(this.§+!C§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §?§() : void
      {
         §1!i§.§=!3§("CHANNEL_AMBIENT");
      }
      
      public function get §+!C§() : String
      {
         return this.§#"$§.§+!C§;
      }
      
      public function §=U§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§>!J§.numChildren)
         {
            _loc2_ = this.§>!J§.getChildAt(param1);
         }
         else if(param1 - this.§>!J§.numChildren < this.§>!C§.numChildren)
         {
            _loc2_ = this.§>!C§.getChildAt(param1 - this.§>!J§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§^!R§ = param1;
         this.§[t§ = param2;
         if(this.§[!J§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§[!J§.length)
            {
               this.§[!J§[_loc8_].setScreenOffset(this.§^!R§,this.§[t§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§3!G§ != null)
         {
            this.§3!G§.scaleX = this.§3!G§.scaleY = 1 / § !7§.§'!?§;
            this.§3!G§.x = 0;
            this.§3!G§.y = this.§?"#§ - this.§[t§;
         }
      }
      
      public function §'!R§() : String
      {
         return this.§#"$§.id;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
