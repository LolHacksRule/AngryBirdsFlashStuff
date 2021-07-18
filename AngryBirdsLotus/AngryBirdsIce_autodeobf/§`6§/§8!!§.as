package §`6§
{
   import §-Z§.§?h§;
   import §1n§.§5#§;
   import §3"§.§8+§;
   import §3O§.§%!D§;
   import §3O§.§@6§;
   import §;!E§.§!c§;
   import §;!E§.§'`§;
   import §;!E§.§7D§;
   import §;8§.§3f§;
   import §[K§.§2!1§;
   import §^V§.§09§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   
   public class §8!!§
   {
      
      public static const §=t§:Boolean = true;
       
      
      private var §1y§:§5#§;
      
      private var §88§:§7D§;
      
      private var §=w§:Vector.<§+w§>;
      
      private var §2!F§:Sprite;
      
      private var §=!2§:Sprite;
      
      private var §=E§:Sprite;
      
      private var §9+§:Number;
      
      private var § f§:Number;
      
      private var § 4§:Number;
      
      private var § B§:Boolean = true;
      
      private var §1!;§:Boolean = true;
      
      private var §=!E§:§%!D§;
      
      private var §!H§:Number;
      
      public function §8!!§(param1:String, param2:Number, param3:§5#§, param4:Number)
      {
         this.§=w§ = new Vector.<§+w§>();
         super();
         this.§1y§ = param3;
         this.§ f§ = 0;
         this.§ 4§ = 0;
         this.§9+§ = param2;
         this.§2!F§ = new Sprite();
         this.§=!2§ = new Sprite();
         this.§=E§ = new Sprite();
         this.§!H§ = param4;
         this.§7$§(param1,param4);
      }
      
      public function get §93§() : Boolean
      {
         return this.§ B§;
      }
      
      public function get §9!=§() : Sprite
      {
         return this.§=E§;
      }
      
      public function get §`;§() : Sprite
      {
         return this.§2!F§;
      }
      
      public function get §[$§() : Sprite
      {
         return this.§=!2§;
      }
      
      protected function get textureManager() : §5#§
      {
         return this.§1y§;
      }
      
      public function dispose() : void
      {
         this.§%I§();
         if(this.§2!F§)
         {
            this.§2!F§.dispose();
            this.§2!F§ = null;
         }
         if(this.§=!2§)
         {
            this.§=!2§.dispose();
            this.§=!2§ = null;
         }
         if(this.§=E§)
         {
            this.§=E§.dispose();
            this.§=E§ = null;
         }
      }
      
      public function §>W§() : Boolean
      {
         return this.§1!;§;
      }
      
      public function §"3§(param1:Boolean) : void
      {
         if(this.§1!;§ == param1)
         {
            return;
         }
         this.§1!;§ = param1;
         if(!param1)
         {
            this.§%I§();
         }
         else
         {
            this.§7$§(this.§88§.mName,this.§!H§);
         }
      }
      
      public function §#!8§() : String
      {
         return this.§88§.§+F§;
      }
      
      private function §%I§() : void
      {
         while(this.§=!2§.numChildren > 0)
         {
            this.§=!2§.removeChildAt(0,true);
         }
         while(this.§2!F§.numChildren > 0)
         {
            this.§2!F§.removeChildAt(0,true);
         }
         while(this.§=w§.length > 0)
         {
            this.§=w§.pop().dispose();
         }
      }
      
      private function §7$§(param1:String, param2:Number) : void
      {
         var _loc4_:§'`§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§+w§ = null;
         this.§88§ = §!c§.§9!§(param1);
         if(this.§88§ == null)
         {
            §3f§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §8+§.§#0§;
            this.§88§ = §!c§.§9!§(param1);
         }
         this.§2!F§.y = this.§9+§;
         this.§=!2§.y = this.§9+§;
         this.§=E§.y = this.§9+§;
         this.§<c§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§88§.§=w§.length)
         {
            _loc4_ = this.§88§.§=w§[_loc3_];
            if(!§?h§.§7"§ || !_loc4_.§'A§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §+w§(_loc4_,_loc5_,this.§1y§,param2);
               this.§=w§.push(_loc6_);
               if(_loc6_.§>I§)
               {
                  this.§=!2§.addChild(_loc5_);
               }
               else
               {
                  this.§2!F§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§-!,§)
            {
               this.§[]§(parseInt(_loc4_.§-!,§,16));
            }
            _loc3_++;
         }
      }
      
      private function §<c§() : void
      {
         var _loc1_:§09§ = null;
         if(this.§88§.§?$§)
         {
            this.§[]§(this.§88§.§?$§);
         }
         if(this.§88§.§,O§)
         {
            _loc1_ = this.§>C§(uint(this.§88§.§,O§));
            _loc1_.y = 0;
            this.§=E§.addChild(_loc1_);
         }
      }
      
      protected function §>C§(param1:uint) : §09§
      {
         return new §09§(4096,4096,param1);
      }
      
      private function §[]§(param1:int) : void
      {
         if(§?h§.§ n§)
         {
            §?h§.§ n§.color = param1;
         }
      }
      
      public function §0!0§(param1:String) : void
      {
         this.§%I§();
         §3f§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§7$§(param1,this.§!H§);
      }
      
      public function §#i§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§+w§ = null;
         if(param1 == this.§ B§)
         {
            return;
         }
         this.§ B§ = param1;
         for each(_loc3_ in this.§=w§)
         {
            _loc3_.§#i§(param1);
         }
      }
      
      public function §0#§() : void
      {
         if(§@6§.§"7§("CHANNEL_AMBIENT") == null || !§@6§.§"7§("CHANNEL_AMBIENT").§%!'§())
         {
            §@6§.playSound(this.§88§.§,M§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §1!>§() : void
      {
         §@6§.§!>§("CHANNEL_AMBIENT");
      }
      
      public function §@!7§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§2!F§.numChildren)
         {
            _loc2_ = this.§2!F§.getChildAt(param1);
         }
         else if(param1 - this.§2!F§.numChildren < this.§=!2§.numChildren)
         {
            _loc2_ = this.§=!2§.getChildAt(param1 - this.§2!F§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§ f§ = param1;
         this.§ 4§ = param2;
         if(this.§=w§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§=w§.length)
            {
               this.§=w§[_loc3_].setSideScroll(this.§ f§,this.§ 4§);
               _loc3_++;
            }
         }
         if(this.§=E§ != null)
         {
            this.§=E§.scaleX = this.§=E§.scaleY = 1 / §2!1§.§;l§;
            this.§=E§.x = -§2!1§.§ !B§ * (1 / §2!1§.§;l§);
            this.§=E§.y = this.§9+§ - this.§ 4§;
         }
      }
      
      public function §?e§() : String
      {
         return this.§88§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
