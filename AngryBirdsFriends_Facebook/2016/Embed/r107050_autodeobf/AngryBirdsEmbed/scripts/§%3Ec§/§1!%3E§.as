package §>c§
{
   import §#?§.§6!4§;
   import §%!E§.§-§;
   import §'6§.§?!L§;
   import §+[§.§%G§;
   import §+[§.§4J§;
   import §,!,§.§2t§;
   import §1!K§.§ M§;
   import §1!K§.§'T§;
   import §1!K§.§==§;
   import §90§.§0!'§;
   import §90§.DisplayObject;
   import §90§.Sprite;
   import §?j§.§9?§;
   
   public class §1!>§
   {
      
      public static const §[=§:Boolean = true;
       
      
      private var §[E§:§6!4§;
      
      protected var §^!>§:§'T§;
      
      protected var §@!,§:Vector.<§<N§>;
      
      private var §5Q§:Sprite;
      
      private var §^j§:Sprite;
      
      private var §@Q§:Sprite;
      
      private var §=+§:Number;
      
      private var §<!'§:Number;
      
      private var §4!N§:Number;
      
      private var §7!1§:Boolean = true;
      
      private var §6!7§:Boolean = true;
      
      private var §if§:§4J§;
      
      private var §&u§:Number;
      
      public function §1!>§(param1:String, param2:Number, param3:§6!4§, param4:Number)
      {
         this.§@!,§ = new Vector.<§<N§>();
         super();
         this.§[E§ = param3;
         this.§<!'§ = 0;
         this.§4!N§ = 0;
         this.§=+§ = param2;
         this.§5Q§ = new Sprite();
         this.§^j§ = new Sprite();
         this.§@Q§ = new Sprite();
         this.§&u§ = param4;
         this.§false§(param1,param4);
      }
      
      public function get §=9§() : Boolean
      {
         return this.§7!1§;
      }
      
      public function get §in§() : Sprite
      {
         return this.§@Q§;
      }
      
      public function get § U§() : Sprite
      {
         return this.§5Q§;
      }
      
      public function get §%J§() : Sprite
      {
         return this.§^j§;
      }
      
      protected function get textureManager() : §6!4§
      {
         return this.§[E§;
      }
      
      public function dispose() : void
      {
         this.§%8§();
         if(this.§5Q§)
         {
            this.§5Q§.dispose();
            this.§5Q§ = null;
         }
         if(this.§^j§)
         {
            this.§^j§.dispose();
            this.§^j§ = null;
         }
         if(this.§@Q§)
         {
            this.§@Q§.dispose();
            this.§@Q§ = null;
         }
      }
      
      public function §!!%§() : Boolean
      {
         return this.§6!7§;
      }
      
      public function §`9§(param1:Boolean) : void
      {
         if(this.§6!7§ == param1)
         {
            return;
         }
         this.§6!7§ = param1;
         if(!param1)
         {
            this.§%8§();
         }
         else
         {
            this.§false§(this.§^!>§.mName,this.§&u§);
         }
      }
      
      public function §,7§() : String
      {
         return this.§^!>§.§3Y§;
      }
      
      private function §%8§() : void
      {
         while(this.§^j§.numChildren > 0)
         {
            this.§^j§.removeChildAt(0,true);
         }
         while(this.§5Q§.numChildren > 0)
         {
            this.§5Q§.removeChildAt(0,true);
         }
         while(this.§@!,§.length > 0)
         {
            this.§@!,§.pop().dispose();
         }
      }
      
      protected function §-!6§(param1:§'T§, param2:String) : void
      {
      }
      
      private function §false§(param1:String, param2:Number) : void
      {
         var _loc4_:§ M§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§<N§ = null;
         this.§^!>§ = §==§.§]R§(param1);
         if(this.§^!>§ == null)
         {
            §?!L§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §9?§.§-k§;
            this.§^!>§ = §==§.§]R§(param1);
         }
         this.§-!6§(this.§^!>§,param1);
         this.§5Q§.y = this.§=+§;
         this.§^j§.y = this.§=+§;
         this.§@Q§.y = this.§=+§;
         this.§=N§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§^!>§.§@!,§.length)
         {
            _loc4_ = this.§^!>§.§@!,§[_loc3_];
            if(!§2t§.§89§ || !_loc4_.§]h§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§1!$§(_loc4_,_loc5_,this.§[E§,param2);
               this.§@!,§.push(_loc6_);
               if(_loc6_.§if §)
               {
                  this.§^j§.addChild(_loc5_);
               }
               else
               {
                  this.§5Q§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§`A§)
            {
               this.§3F§(parseInt(_loc4_.§`A§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §1!$§(param1:§ M§, param2:Sprite, param3:§6!4§, param4:Number) : §<N§
      {
         return new §<N§(param1,param2,param3,param4);
      }
      
      private function §=N§() : void
      {
         var _loc1_:§0!'§ = null;
         if(this.§^!>§.§ a§)
         {
            this.§3F§(this.§^!>§.§ a§);
         }
         if(this.§^!>§.§+!M§)
         {
            _loc1_ = this.§4=§(uint(this.§^!>§.§+!M§));
            _loc1_.y = 0;
            this.§@Q§.addChild(_loc1_);
         }
      }
      
      protected function §4=§(param1:uint) : §0!'§
      {
         return new §0!'§(4096,4096,param1);
      }
      
      protected function §3F§(param1:int) : void
      {
         if(§2t§.§,!E§)
         {
            §2t§.§,!E§.color = param1;
         }
      }
      
      public function §4V§(param1:String, param2:§6!4§ = null) : void
      {
         if(param2)
         {
            this.§[E§ = param2;
         }
         this.§%8§();
         §?!L§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§false§(param1,this.§&u§);
      }
      
      public function §?m§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§<N§ = null;
         if(param1 == this.§7!1§)
         {
            return;
         }
         this.§7!1§ = param1;
         for each(_loc3_ in this.§@!,§)
         {
            _loc3_.§?m§(param1);
         }
      }
      
      public function §8O§() : void
      {
         if(§%G§.§>Q§("CHANNEL_AMBIENT") == null || !§%G§.§>Q§("CHANNEL_AMBIENT").§?d§())
         {
            §%G§.§48§(this.§^!>§.§#k§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function § 8§() : void
      {
         §%G§.§8e§("CHANNEL_AMBIENT");
      }
      
      public function §%M§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§5Q§.numChildren)
         {
            _loc2_ = this.§5Q§.getChildAt(param1);
         }
         else if(param1 - this.§5Q§.numChildren < this.§^j§.numChildren)
         {
            _loc2_ = this.§^j§.getChildAt(param1 - this.§5Q§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §!!9§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§<!'§ = param1;
         this.§4!N§ = param2;
         if(this.§@!,§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§@!,§.length)
            {
               this.§@!,§[_loc3_].setSideScroll(this.§<!'§,this.§4!N§);
               _loc3_++;
            }
         }
         if(this.§@Q§ != null)
         {
            this.§@Q§.scaleX = this.§@Q§.scaleY = 1 / §-§.§1A§;
            this.§@Q§.x = -§-§.§#w§ * (1 / §-§.§1A§);
            this.§@Q§.y = this.§=+§ - this.§4!N§;
         }
      }
      
      public function § Z§() : String
      {
         return this.§^!>§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
