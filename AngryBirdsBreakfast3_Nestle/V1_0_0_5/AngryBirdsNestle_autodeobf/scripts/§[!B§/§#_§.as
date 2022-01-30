package §[!B§
{
   import § 8§.§?!9§;
   import §,!q§.§#!H§;
   import §,!q§.DisplayObject;
   import §,!q§.Sprite;
   import §-!b§.§[E§;
   import §0!$§.§#!-§;
   import §@!6§.§-Z§;
   import §@!6§.§3!5§;
   import §@&§.§"! §;
   import §@&§.§%T§;
   
   public class §#_§
   {
      
      public static const §9g§:Boolean = true;
       
      
      private var §@=§:§[E§;
      
      private var §,'§:§"! §;
      
      private var §<G§:Vector.<§;!]§>;
      
      private var §7"%§:Sprite;
      
      private var §?!h§:Sprite;
      
      private var §%G§:Sprite;
      
      private var §]!I§:Number;
      
      private var §+!=§:Number;
      
      private var §&!F§:Number;
      
      private var §^!B§:Boolean = true;
      
      private var §5""§:Boolean = true;
      
      private var §,T§:§-Z§;
      
      private var §,3§:Number;
      
      private var §0x§:Boolean = true;
      
      private var §'"#§:int = 0;
      
      private var §?!C§:Number = 1.0;
      
      public function §#_§(param1:§"! §, param2:Number, param3:§[E§, param4:Number, param5:Boolean = true)
      {
         this.§<G§ = new Vector.<§;!]§>();
         super();
         this.§@=§ = param3;
         this.§+!=§ = 0;
         this.§&!F§ = 0;
         this.§]!I§ = param2;
         this.§7"%§ = new Sprite();
         this.§?!h§ = new Sprite();
         this.§%G§ = new Sprite();
         this.§,3§ = param4;
         this.§0x§ = param5;
         this.§7s§(param1,param4);
      }
      
      public function get §-p§() : Boolean
      {
         return this.§^!B§;
      }
      
      public function get §8Y§() : Sprite
      {
         return this.§%G§;
      }
      
      public function get §^!m§() : Sprite
      {
         return this.§7"%§;
      }
      
      public function get §1!T§() : Sprite
      {
         return this.§?!h§;
      }
      
      public function get §2'§() : int
      {
         return this.§'"#§;
      }
      
      protected function get §0p§() : §[E§
      {
         return this.§@=§;
      }
      
      public function dispose() : void
      {
         this.§[#§();
         this.§9!O§();
         if(this.§7"%§)
         {
            this.§7"%§.dispose();
            this.§7"%§ = null;
         }
         if(this.§?!h§)
         {
            this.§?!h§.dispose();
            this.§?!h§ = null;
         }
         if(this.§%G§)
         {
            this.§%G§.dispose();
            this.§%G§ = null;
         }
      }
      
      public function §`!y§() : Boolean
      {
         return this.§5""§;
      }
      
      public function §'F§(param1:Boolean) : void
      {
         if(this.§5""§ == param1)
         {
            return;
         }
         this.§5""§ = param1;
         if(!param1)
         {
            this.§[#§();
         }
         else
         {
            this.§7s§(this.§,'§,this.§,3§);
         }
      }
      
      public function §<-§() : String
      {
         return this.§,'§.§^v§;
      }
      
      private function §[#§() : void
      {
         while(this.§?!h§.numChildren > 0)
         {
            this.§?!h§.removeChildAt(0,true);
         }
         while(this.§7"%§.numChildren > 0)
         {
            this.§7"%§.removeChildAt(0,true);
         }
         while(this.§<G§.length > 0)
         {
            this.§<G§.pop().dispose();
         }
      }
      
      protected function §7b§(param1:§"! §) : void
      {
      }
      
      protected function §7s§(param1:§"! §, param2:Number) : void
      {
         var _loc4_:§%T§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§;!]§ = null;
         this.§,'§ = param1;
         this.§7b§(this.§,'§);
         this.§7"%§.y = this.§]!I§;
         this.§?!h§.y = this.§]!I§;
         this.§%G§.y = this.§]!I§;
         this.§-v§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§,'§.§&!E§)
         {
            _loc4_ = this.§,'§.§'G§(_loc3_);
            if(this.§0x§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§@!I§(_loc4_,_loc5_,this.§0p§,param2);
               this.§<G§.push(_loc6_);
               if(_loc6_.§]!d§)
               {
                  this.§?!h§.addChild(_loc5_);
               }
               else
               {
                  this.§7"%§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§>0§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function §@!I§(param1:§%T§, param2:Sprite, param3:§[E§, param4:Number) : §;!]§
      {
         return new §;!]§(param1,param2,param3,param4);
      }
      
      private function §-v§() : void
      {
         var _loc1_:§#!H§ = null;
         if(this.§,'§.§4!2§)
         {
            this.§>0§(this.§,'§.§4!2§);
         }
         if(this.§,'§.§^!L§)
         {
            _loc1_ = this.§?!F§(uint(this.§,'§.§^!L§));
            _loc1_.y = 30;
            this.§%G§.addChild(_loc1_);
         }
      }
      
      protected function §?!F§(param1:uint) : §#!H§
      {
         return new §#!H§(4096,4096,param1);
      }
      
      private function §>0§(param1:int) : void
      {
         this.§'"#§ = param1;
      }
      
      public function §2!I§(param1:§"! §, param2:§[E§ = null) : void
      {
         if(param2)
         {
            this.§@=§ = param2;
         }
         this.§[#§();
         §#!-§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§7s§(param1,this.§,3§);
      }
      
      public function §!!T§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§;!]§ = null;
         if(param1 == this.§^!B§)
         {
            return;
         }
         this.§^!B§ = param1;
         for each(_loc3_ in this.§<G§)
         {
            _loc3_.§!!T§(param1);
         }
      }
      
      public function §`@§() : void
      {
         if(§3!5§.§`!'§("CHANNEL_AMBIENT") == null || !§3!5§.§`!'§("CHANNEL_AMBIENT").§35§())
         {
            §3!5§.§<!9§(this.§>a§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §9!O§() : void
      {
         §3!5§.§55§("CHANNEL_AMBIENT");
      }
      
      public function get §>a§() : String
      {
         return this.§,'§.§>a§;
      }
      
      public function §2"4§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§7"%§.numChildren)
         {
            _loc2_ = this.§7"%§.getChildAt(param1);
         }
         else if(param1 - this.§7"%§.numChildren < this.§?!h§.numChildren)
         {
            _loc2_ = this.§?!h§.getChildAt(param1 - this.§7"%§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§+!=§ = param1;
         this.§&!F§ = param2;
         if(this.§<G§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§<G§.length)
            {
               this.§<G§[_loc8_].setScreenOffset(this.§+!=§,this.§&!F§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§%G§ != null)
         {
            this.§%G§.scaleX = this.§%G§.scaleY = 1 / §?!9§.§7C§;
            this.§%G§.x = 0;
            this.§%G§.y = this.§]!I§ - this.§&!F§;
         }
      }
      
      public function §`]§() : String
      {
         return this.§,'§.id;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
