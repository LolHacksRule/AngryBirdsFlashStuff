package §2+§
{
   import §#!f§.§,!0§;
   import §#!f§.DisplayObject;
   import §#!f§.Sprite;
   import §%i§.§#`§;
   import §%i§.§8!A§;
   import §0i§.§]_§;
   import §1y§.§&!B§;
   import §2!@§.§,Z§;
   import §2!@§.§;!Z§;
   import §2!@§.§=b§;
   import §3!§.§-e§;
   import §8! §.§1_§;
   import §@!H§.§-f§;
   
   public class §]n§
   {
      
      public static const §=z§:Boolean = true;
       
      
      private var §-!<§:§-e§;
      
      protected var § !O§:§,Z§;
      
      protected var §4i§:Vector.<§6!3§>;
      
      private var §if §:Sprite;
      
      private var §8!$§:Sprite;
      
      private var §;o§:Sprite;
      
      private var §,1§:Number;
      
      private var §9!6§:Number;
      
      private var §7!8§:Number;
      
      private var §]!%§:Boolean = true;
      
      private var §^"§:Boolean = true;
      
      private var §3?§:§8!A§;
      
      private var §"!7§:Number;
      
      public function §]n§(param1:String, param2:Number, param3:§-e§, param4:Number)
      {
         this.§4i§ = new Vector.<§6!3§>();
         super();
         this.§-!<§ = param3;
         this.§9!6§ = 0;
         this.§7!8§ = 0;
         this.§,1§ = param2;
         this.§if § = new Sprite();
         this.§8!$§ = new Sprite();
         this.§;o§ = new Sprite();
         this.§"!7§ = param4;
         this.§;R§(param1,param4);
      }
      
      public function get §0c§() : Boolean
      {
         return this.§]!%§;
      }
      
      public function get §3H§() : Sprite
      {
         return this.§;o§;
      }
      
      public function get §<8§() : Sprite
      {
         return this.§if §;
      }
      
      public function get §%!]§() : Sprite
      {
         return this.§8!$§;
      }
      
      protected function get textureManager() : §-e§
      {
         return this.§-!<§;
      }
      
      public function dispose() : void
      {
         this.§%q§();
         if(this.§if §)
         {
            this.§if §.dispose();
            this.§if § = null;
         }
         if(this.§8!$§)
         {
            this.§8!$§.dispose();
            this.§8!$§ = null;
         }
         if(this.§;o§)
         {
            this.§;o§.dispose();
            this.§;o§ = null;
         }
      }
      
      public function §>h§() : Boolean
      {
         return this.§^"§;
      }
      
      public function §8t§(param1:Boolean) : void
      {
         if(this.§^"§ == param1)
         {
            return;
         }
         this.§^"§ = param1;
         if(!param1)
         {
            this.§%q§();
         }
         else
         {
            this.§;R§(this.§ !O§.mName,this.§"!7§);
         }
      }
      
      public function §#!P§() : String
      {
         return this.§ !O§.§0;§;
      }
      
      private function §%q§() : void
      {
         while(this.§8!$§.numChildren > 0)
         {
            this.§8!$§.removeChildAt(0,true);
         }
         while(this.§if §.numChildren > 0)
         {
            this.§if §.removeChildAt(0,true);
         }
         while(this.§4i§.length > 0)
         {
            this.§4i§.pop().dispose();
         }
      }
      
      protected function §3!P§(param1:§,Z§, param2:String) : void
      {
      }
      
      private function §;R§(param1:String, param2:Number) : void
      {
         var _loc4_:§=b§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§6!3§ = null;
         this.§ !O§ = §;!Z§.§9!V§(param1);
         if(this.§ !O§ == null)
         {
            §]_§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §1_§.§[§;
            this.§ !O§ = §;!Z§.§9!V§(param1);
         }
         this.§3!P§(this.§ !O§,param1);
         this.§if §.y = this.§,1§;
         this.§8!$§.y = this.§,1§;
         this.§;o§.y = this.§,1§;
         this.§1!'§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§ !O§.§4i§.length)
         {
            _loc4_ = this.§ !O§.§4i§[_loc3_];
            if(!§&!B§.§&!F§ || !_loc4_.§?O§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§%J§(_loc4_,_loc5_,this.§-!<§,param2);
               this.§4i§.push(_loc6_);
               if(_loc6_.§ ?§)
               {
                  this.§8!$§.addChild(_loc5_);
               }
               else
               {
                  this.§if §.addChild(_loc5_);
               }
            }
            else if(_loc4_.§"u§)
            {
               this.§3n§(parseInt(_loc4_.§"u§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §%J§(param1:§=b§, param2:Sprite, param3:§-e§, param4:Number) : §6!3§
      {
         return new §6!3§(param1,param2,param3,param4);
      }
      
      private function §1!'§() : void
      {
         var _loc1_:§,!0§ = null;
         if(this.§ !O§.§3d§)
         {
            this.§3n§(this.§ !O§.§3d§);
         }
         if(this.§ !O§.§0I§)
         {
            _loc1_ = this.§@!#§(uint(this.§ !O§.§0I§));
            _loc1_.y = 0;
            this.§;o§.addChild(_loc1_);
         }
      }
      
      protected function §@!#§(param1:uint) : §,!0§
      {
         return new §,!0§(4096,4096,param1);
      }
      
      protected function §3n§(param1:int) : void
      {
         if(§&!B§.§^8§)
         {
            §&!B§.§^8§.color = param1;
         }
      }
      
      public function §3c§(param1:String) : void
      {
         this.§%q§();
         §]_§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§;R§(param1,this.§"!7§);
      }
      
      public function §,;§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§6!3§ = null;
         if(param1 == this.§]!%§)
         {
            return;
         }
         this.§]!%§ = param1;
         for each(_loc3_ in this.§4i§)
         {
            _loc3_.§,;§(param1);
         }
      }
      
      public function §"s§() : void
      {
         if(§#`§.§10§("CHANNEL_AMBIENT") == null || !§#`§.§10§("CHANNEL_AMBIENT").§0m§())
         {
            §#`§.§2o§(this.§ !O§.§@4§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §<!+§() : void
      {
         §#`§.§>!e§("CHANNEL_AMBIENT");
      }
      
      public function §!1§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§if §.numChildren)
         {
            _loc2_ = this.§if §.getChildAt(param1);
         }
         else if(param1 - this.§if §.numChildren < this.§8!$§.numChildren)
         {
            _loc2_ = this.§8!$§.getChildAt(param1 - this.§if §.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §9!J§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§9!6§ = param1;
         this.§7!8§ = param2;
         if(this.§4i§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§4i§.length)
            {
               this.§4i§[_loc3_].setSideScroll(this.§9!6§,this.§7!8§);
               _loc3_++;
            }
         }
         if(this.§;o§ != null)
         {
            this.§;o§.scaleX = this.§;o§.scaleY = 1 / §-f§.§%!@§;
            this.§;o§.x = -§-f§.§&!H§ * (1 / §-f§.§%!@§);
            this.§;o§.y = this.§,1§ - this.§7!8§;
         }
      }
      
      public function §'V§() : String
      {
         return this.§ !O§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
