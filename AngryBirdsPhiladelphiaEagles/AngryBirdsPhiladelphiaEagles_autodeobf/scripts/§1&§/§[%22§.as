package §1&§
{
   import § N§.§6!O§;
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §#e§.§'?§;
   import §&^§.§&r§;
   import §&^§.§[!7§;
   import §-!O§.§?Z§;
   import §5!G§.§2! §;
   import §5!G§.§4!$§;
   import §5!G§.§>X§;
   import §5Z§.§[Z§;
   import §^]§.§[z§;
   import §`K§.§ L§;
   
   public class §["§
   {
      
      public static const §"p§:Boolean = true;
       
      
      private var §2"§:§'?§;
      
      protected var §6!@§:§2! §;
      
      protected var §8!<§:Vector.<§1!O§>;
      
      private var §2g§:Sprite;
      
      private var §%!<§:Sprite;
      
      private var §=?§:Sprite;
      
      private var §,g§:Number;
      
      private var §8U§:Number;
      
      private var §#&§:Number;
      
      private var §6o§:Boolean = true;
      
      private var §%!Q§:Boolean = true;
      
      private var §5!!§:§&r§;
      
      private var §5!E§:Number;
      
      public function §["§(param1:String, param2:Number, param3:§'?§, param4:Number)
      {
         this.§8!<§ = new Vector.<§1!O§>();
         super();
         this.§2"§ = param3;
         this.§8U§ = 0;
         this.§#&§ = 0;
         this.§,g§ = param2;
         this.§2g§ = new Sprite();
         this.§%!<§ = new Sprite();
         this.§=?§ = new Sprite();
         this.§5!E§ = param4;
         this.§7V§(param1,param4);
      }
      
      public function get §+C§() : Boolean
      {
         return this.§6o§;
      }
      
      public function get §3a§() : Sprite
      {
         return this.§=?§;
      }
      
      public function get §3!>§() : Sprite
      {
         return this.§2g§;
      }
      
      public function get §4B§() : Sprite
      {
         return this.§%!<§;
      }
      
      protected function get textureManager() : §'?§
      {
         return this.§2"§;
      }
      
      public function dispose() : void
      {
         this.§`S§();
         if(this.§2g§)
         {
            this.§2g§.dispose();
            this.§2g§ = null;
         }
         if(this.§%!<§)
         {
            this.§%!<§.dispose();
            this.§%!<§ = null;
         }
         if(this.§=?§)
         {
            this.§=?§.dispose();
            this.§=?§ = null;
         }
      }
      
      public function §?b§() : Boolean
      {
         return this.§%!Q§;
      }
      
      public function §^!6§(param1:Boolean) : void
      {
         if(this.§%!Q§ == param1)
         {
            return;
         }
         this.§%!Q§ = param1;
         if(!param1)
         {
            this.§`S§();
         }
         else
         {
            this.§7V§(this.§6!@§.mName,this.§5!E§);
         }
      }
      
      public function §'P§() : String
      {
         return this.§6!@§.§+!Q§;
      }
      
      private function §`S§() : void
      {
         while(this.§%!<§.numChildren > 0)
         {
            this.§%!<§.removeChildAt(0,true);
         }
         while(this.§2g§.numChildren > 0)
         {
            this.§2g§.removeChildAt(0,true);
         }
         while(this.§8!<§.length > 0)
         {
            this.§8!<§.pop().dispose();
         }
      }
      
      protected function §05§(param1:§2! §, param2:String) : void
      {
      }
      
      private function §7V§(param1:String, param2:Number) : void
      {
         var _loc4_:§4!$§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§1!O§ = null;
         this.§6!@§ = §>X§.§2H§(param1);
         if(this.§6!@§ == null)
         {
            § L§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §[z§.§"!N§;
            this.§6!@§ = §>X§.§2H§(param1);
         }
         this.§05§(this.§6!@§,param1);
         this.§2g§.y = this.§,g§;
         this.§%!<§.y = this.§,g§;
         this.§=?§.y = this.§,g§;
         this.§]!9§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§6!@§.§8!<§.length)
         {
            _loc4_ = this.§6!@§.§8!<§[_loc3_];
            if(!§[Z§.§-D§ || !_loc4_.§ ,§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§,#§(_loc4_,_loc5_,this.§2"§,param2);
               this.§8!<§.push(_loc6_);
               if(_loc6_.§;!J§)
               {
                  this.§%!<§.addChild(_loc5_);
               }
               else
               {
                  this.§2g§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§[!O§)
            {
               this.§-!%§(parseInt(_loc4_.§[!O§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §,#§(param1:§4!$§, param2:Sprite, param3:§'?§, param4:Number) : §1!O§
      {
         return new §1!O§(param1,param2,param3,param4);
      }
      
      private function §]!9§() : void
      {
         var _loc1_:§6!O§ = null;
         if(this.§6!@§.§0!§)
         {
            this.§-!%§(this.§6!@§.§0!§);
         }
         if(this.§6!@§.§'!Q§)
         {
            _loc1_ = this.§,!9§(uint(this.§6!@§.§'!Q§));
            _loc1_.y = 0;
            this.§=?§.addChild(_loc1_);
         }
      }
      
      protected function §,!9§(param1:uint) : §6!O§
      {
         return new §6!O§(4096,4096,param1);
      }
      
      protected function §-!%§(param1:int) : void
      {
         if(§[Z§.§%m§)
         {
            §[Z§.§%m§.color = param1;
         }
      }
      
      public function §`=§(param1:String) : void
      {
         this.§`S§();
         § L§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§7V§(param1,this.§5!E§);
      }
      
      public function §!Y§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§1!O§ = null;
         if(param1 == this.§6o§)
         {
            return;
         }
         this.§6o§ = param1;
         for each(_loc3_ in this.§8!<§)
         {
            _loc3_.§!Y§(param1);
         }
      }
      
      public function §<l§() : void
      {
         if(§[!7§.§-K§("CHANNEL_AMBIENT") == null || !§[!7§.§-K§("CHANNEL_AMBIENT").§+c§())
         {
            §[!7§.playSound(this.§6!@§.§]!6§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §,+§() : void
      {
         §[!7§.§9!K§("CHANNEL_AMBIENT");
      }
      
      public function §&h§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§2g§.numChildren)
         {
            _loc2_ = this.§2g§.getChildAt(param1);
         }
         else if(param1 - this.§2g§.numChildren < this.§%!<§.numChildren)
         {
            _loc2_ = this.§%!<§.getChildAt(param1 - this.§2g§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§8U§ = param1;
         this.§#&§ = param2;
         if(this.§8!<§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§8!<§.length)
            {
               this.§8!<§[_loc3_].setSideScroll(this.§8U§,this.§#&§);
               _loc3_++;
            }
         }
         if(this.§=?§ != null)
         {
            this.§=?§.scaleX = this.§=?§.scaleY = 1 / §?Z§.levelScale;
            this.§=?§.x = -§?Z§.§#!#§ * (1 / §?Z§.levelScale);
            this.§=?§.y = this.§,g§ - this.§#&§;
         }
      }
      
      public function §+!C§() : String
      {
         return this.§6!@§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
