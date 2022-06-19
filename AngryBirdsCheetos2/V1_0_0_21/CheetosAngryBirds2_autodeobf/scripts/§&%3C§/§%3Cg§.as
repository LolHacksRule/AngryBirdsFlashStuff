package §&<§
{
   import §+!9§.§'!>§;
   import §+!9§.§1!3§;
   import §+!9§.§6!N§;
   import §,!K§.§[V§;
   import §-!Q§.§,!7§;
   import §-!Q§.§;l§;
   import §6;§.§%[§;
   import §9t§.§=!>§;
   import §>^§.§!6§;
   import §^a§.§ !'§;
   import §^a§.DisplayObject;
   import §^a§.Sprite;
   import §`![§.§!!K§;
   
   public class §<g§
   {
      
      public static const §4!R§:Boolean = true;
       
      
      private var §>!K§:§=!>§;
      
      protected var §^!R§:§1!3§;
      
      protected var §5?§:Vector.<§'P§>;
      
      private var §"!_§:Sprite;
      
      private var §-!Y§:Sprite;
      
      private var §>,§:Sprite;
      
      private var §3F§:Number;
      
      private var §]=§:Number;
      
      private var §7S§:Number;
      
      private var §<Y§:Boolean = true;
      
      private var §>o§:Boolean = true;
      
      private var §1!N§:§;l§;
      
      private var §2w§:Number;
      
      public function §<g§(param1:String, param2:Number, param3:§=!>§, param4:Number)
      {
         this.§5?§ = new Vector.<§'P§>();
         super();
         this.§>!K§ = param3;
         this.§]=§ = 0;
         this.§7S§ = 0;
         this.§3F§ = param2;
         this.§"!_§ = new Sprite();
         this.§-!Y§ = new Sprite();
         this.§>,§ = new Sprite();
         this.§2w§ = param4;
         this.§;!<§(param1,param4);
      }
      
      public function get §@H§() : Boolean
      {
         return this.§<Y§;
      }
      
      public function get §7J§() : Sprite
      {
         return this.§>,§;
      }
      
      public function get §9!6§() : Sprite
      {
         return this.§"!_§;
      }
      
      public function get §]X§() : Sprite
      {
         return this.§-!Y§;
      }
      
      protected function get §],§() : §=!>§
      {
         return this.§>!K§;
      }
      
      public function dispose() : void
      {
         this.§;7§();
         if(this.§"!_§)
         {
            this.§"!_§.dispose();
            this.§"!_§ = null;
         }
         if(this.§-!Y§)
         {
            this.§-!Y§.dispose();
            this.§-!Y§ = null;
         }
         if(this.§>,§)
         {
            this.§>,§.dispose();
            this.§>,§ = null;
         }
      }
      
      public function §&5§() : Boolean
      {
         return this.§>o§;
      }
      
      public function §;!i§(param1:Boolean) : void
      {
         if(this.§>o§ == param1)
         {
            return;
         }
         this.§>o§ = param1;
         if(!param1)
         {
            this.§;7§();
         }
         else
         {
            this.§;!<§(this.§^!R§.mName,this.§2w§);
         }
      }
      
      public function §+m§() : String
      {
         return this.§^!R§.§%`§;
      }
      
      private function §;7§() : void
      {
         while(this.§-!Y§.numChildren > 0)
         {
            this.§-!Y§.removeChildAt(0,true);
         }
         while(this.§"!_§.numChildren > 0)
         {
            this.§"!_§.removeChildAt(0,true);
         }
         while(this.§5?§.length > 0)
         {
            this.§5?§.pop().dispose();
         }
      }
      
      protected function §0X§(param1:§1!3§, param2:String) : void
      {
      }
      
      private function §;!<§(param1:String, param2:Number) : void
      {
         var _loc4_:§'!>§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§'P§ = null;
         this.§^!R§ = §6!N§.§'!U§(param1);
         if(this.§^!R§ == null)
         {
            §!6§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §!!K§.§,]§;
            this.§^!R§ = §6!N§.§'!U§(param1);
         }
         this.§0X§(this.§^!R§,param1);
         this.§"!_§.y = this.§3F§;
         this.§-!Y§.y = this.§3F§;
         this.§>,§.y = this.§3F§;
         this.§=H§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§^!R§.§5?§.length)
         {
            _loc4_ = this.§^!R§.§5?§[_loc3_];
            if(!§%[§.§4$§ || !_loc4_.§,!J§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§^!Z§(_loc4_,_loc5_,this.§>!K§,param2);
               this.§5?§.push(_loc6_);
               if(_loc6_.§[!]§)
               {
                  this.§-!Y§.addChild(_loc5_);
               }
               else
               {
                  this.§"!_§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§0s§)
            {
               this.§8!V§(parseInt(_loc4_.§0s§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §^!Z§(param1:§'!>§, param2:Sprite, param3:§=!>§, param4:Number) : §'P§
      {
         return new §'P§(param1,param2,param3,param4);
      }
      
      private function §=H§() : void
      {
         var _loc1_:§ !'§ = null;
         if(this.§^!R§.§6!2§)
         {
            this.§8!V§(this.§^!R§.§6!2§);
         }
         if(this.§^!R§.§%!M§)
         {
            _loc1_ = this.§4]§(uint(this.§^!R§.§%!M§));
            _loc1_.y = 0;
            this.§>,§.addChild(_loc1_);
         }
      }
      
      protected function §4]§(param1:uint) : § !'§
      {
         return new § !'§(4096,4096,param1);
      }
      
      protected function §8!V§(param1:int) : void
      {
         if(§%[§.§`1§)
         {
            §%[§.§`1§.color = param1;
         }
      }
      
      public function §`?§(param1:String, param2:§=!>§ = null) : void
      {
         if(param2)
         {
            this.§>!K§ = param2;
         }
         this.§;7§();
         §!6§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§;!<§(param1,this.§2w§);
      }
      
      public function §1L§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§'P§ = null;
         if(param1 == this.§<Y§)
         {
            return;
         }
         this.§<Y§ = param1;
         for each(_loc3_ in this.§5?§)
         {
            _loc3_.§1L§(param1);
         }
      }
      
      public function §^r§() : void
      {
         if(§,!7§.§-!§("CHANNEL_AMBIENT") == null || !§,!7§.§-!§("CHANNEL_AMBIENT").§`!N§())
         {
            §,!7§.playSound(this.§^!R§.§>Z§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §#!Y§() : void
      {
         §,!7§.§+!A§("CHANNEL_AMBIENT");
      }
      
      public function §2J§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§"!_§.numChildren)
         {
            _loc2_ = this.§"!_§.getChildAt(param1);
         }
         else if(param1 - this.§"!_§.numChildren < this.§-!Y§.numChildren)
         {
            _loc2_ = this.§-!Y§.getChildAt(param1 - this.§"!_§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §1q§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§]=§ = param1;
         this.§7S§ = param2;
         if(this.§5?§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§5?§.length)
            {
               this.§5?§[_loc3_].setSideScroll(this.§]=§,this.§7S§);
               _loc3_++;
            }
         }
         if(this.§>,§ != null)
         {
            this.§>,§.scaleX = this.§>,§.scaleY = 1 / §[V§.§+!>§;
            this.§>,§.x = -§[V§.§]!^§ * (1 / §[V§.§+!>§);
            this.§>,§.y = this.§3F§ - this.§7S§;
         }
      }
      
      public function §0!-§() : String
      {
         return this.§^!R§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
