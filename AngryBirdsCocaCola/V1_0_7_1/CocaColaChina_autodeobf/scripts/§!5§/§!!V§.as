package §!5§
{
   import § F§.§3!&§;
   import §,!Q§.§2P§;
   import §,!Q§.DisplayObject;
   import §,!Q§.Sprite;
   import §-X§.§5!F§;
   import §1q§.§2W§;
   import §2l§.§]O§;
   import §7m§.§"!M§;
   import §7m§.§7I§;
   import §?@§.§"]§;
   import §`! §.§,u§;
   import §`! §.§1!#§;
   import §`! §.§]!=§;
   
   public class §!!V§
   {
      
      public static const § !A§:Boolean = true;
       
      
      private var §!!@§:§]O§;
      
      private var §%!7§:§]!=§;
      
      private var §9!R§:Vector.<§[!V§>;
      
      private var §^B§:Sprite;
      
      private var §0!$§:Sprite;
      
      private var §@L§:Sprite;
      
      private var §9X§:Number;
      
      private var §+!_§:Number;
      
      private var §-Y§:Number;
      
      private var §5L§:Boolean = true;
      
      private var §!e§:Boolean = true;
      
      private var §0!<§:§"!M§;
      
      private var §5?§:Number;
      
      public function §!!V§(param1:String, param2:Number, param3:§]O§, param4:Number)
      {
         this.§9!R§ = new Vector.<§[!V§>();
         super();
         this.§!!@§ = param3;
         this.§+!_§ = 0;
         this.§-Y§ = 0;
         this.§9X§ = param2;
         this.§^B§ = new Sprite();
         this.§0!$§ = new Sprite();
         this.§@L§ = new Sprite();
         this.§5?§ = param4;
         this.§36§(param1,param4);
      }
      
      public function get §,!3§() : Boolean
      {
         return this.§5L§;
      }
      
      public function get §-!O§() : Sprite
      {
         return this.§@L§;
      }
      
      public function get §<J§() : Sprite
      {
         return this.§^B§;
      }
      
      public function get § !#§() : Sprite
      {
         return this.§0!$§;
      }
      
      protected function get textureManager() : §]O§
      {
         return this.§!!@§;
      }
      
      public function dispose() : void
      {
         this.§@B§();
         if(this.§^B§)
         {
            this.§^B§.dispose();
            this.§^B§ = null;
         }
         if(this.§0!$§)
         {
            this.§0!$§.dispose();
            this.§0!$§ = null;
         }
         if(this.§@L§)
         {
            this.§@L§.dispose();
            this.§@L§ = null;
         }
      }
      
      public function §]X§() : Boolean
      {
         return this.§!e§;
      }
      
      public function §=!H§(param1:Boolean) : void
      {
         if(this.§!e§ == param1)
         {
            return;
         }
         this.§!e§ = param1;
         if(!param1)
         {
            this.§@B§();
         }
         else
         {
            this.§36§(this.§%!7§.mName,this.§5?§);
         }
      }
      
      public function §;!3§() : String
      {
         return this.§%!7§.§]s§;
      }
      
      private function §@B§() : void
      {
         while(this.§0!$§.numChildren > 0)
         {
            this.§0!$§.removeChildAt(0,true);
         }
         while(this.§^B§.numChildren > 0)
         {
            this.§^B§.removeChildAt(0,true);
         }
         while(this.§9!R§.length > 0)
         {
            this.§9!R§.pop().dispose();
         }
      }
      
      private function §36§(param1:String, param2:Number) : void
      {
         var _loc4_:§,u§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§[!V§ = null;
         this.§%!7§ = §1!#§.§extends§(param1);
         if(this.§%!7§ == null)
         {
            §"]§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §5!F§.§%R§;
            this.§%!7§ = §1!#§.§extends§(param1);
         }
         this.§^B§.y = this.§9X§;
         this.§0!$§.y = this.§9X§;
         this.§@L§.y = this.§9X§;
         this.§!!F§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§%!7§.§9!R§.length)
         {
            _loc4_ = this.§%!7§.§9!R§[_loc3_];
            if(!§3!&§.§@$§ || !_loc4_.§4J§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §[!V§(_loc4_,_loc5_,this.§!!@§,param2);
               this.§9!R§.push(_loc6_);
               if(_loc6_.§&m§)
               {
                  this.§0!$§.addChild(_loc5_);
               }
               else
               {
                  this.§^B§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§`0§)
            {
               this.§!!E§(parseInt(_loc4_.§`0§,16));
            }
            _loc3_++;
         }
      }
      
      private function §!!F§() : void
      {
         var _loc1_:§2P§ = null;
         if(this.§%!7§.§]!Y§)
         {
            this.§!!E§(this.§%!7§.§]!Y§);
         }
         if(this.§%!7§.§^>§)
         {
            _loc1_ = this.§-!X§(uint(this.§%!7§.§^>§));
            _loc1_.y = 0;
            this.§@L§.addChild(_loc1_);
         }
      }
      
      protected function §-!X§(param1:uint) : §2P§
      {
         return new §2P§(4096,4096,param1);
      }
      
      private function §!!E§(param1:int) : void
      {
         if(§3!&§.§<1§)
         {
            §3!&§.§<1§.color = param1;
         }
      }
      
      public function §],§(param1:String) : void
      {
         this.§@B§();
         §"]§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§36§(param1,this.§5?§);
      }
      
      public function §^T§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§[!V§ = null;
         if(param1 == this.§5L§)
         {
            return;
         }
         this.§5L§ = param1;
         for each(_loc3_ in this.§9!R§)
         {
            _loc3_.§^T§(param1);
         }
      }
      
      public function §9!!§() : void
      {
         if(§7I§.§"!#§("CHANNEL_AMBIENT") == null || !§7I§.§"!#§("CHANNEL_AMBIENT").§0M§())
         {
            §7I§.playSound(this.§%!7§.§"!0§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §<5§() : void
      {
         §7I§.§[p§("CHANNEL_AMBIENT");
      }
      
      public function §7!0§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§^B§.numChildren)
         {
            _loc2_ = this.§^B§.getChildAt(param1);
         }
         else if(param1 - this.§^B§.numChildren < this.§0!$§.numChildren)
         {
            _loc2_ = this.§0!$§.getChildAt(param1 - this.§^B§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §]H§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§+!_§ = param1;
         this.§-Y§ = param2;
         if(this.§9!R§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§9!R§.length)
            {
               this.§9!R§[_loc3_].setSideScroll(this.§+!_§,this.§-Y§);
               _loc3_++;
            }
         }
         if(this.§@L§ != null)
         {
            this.§@L§.scaleX = this.§@L§.scaleY = 1 / §2W§.§2!V§;
            this.§@L§.x = -§2W§.§%!;§ * (1 / §2W§.§2!V§);
            this.§@L§.y = this.§9X§ - this.§-Y§;
         }
      }
      
      public function §<0§() : String
      {
         return this.§%!7§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
