package §-Y§
{
   import § !K§.§&&§;
   import § !K§.DisplayObject;
   import § !K§.Sprite;
   import §'!G§.§1C§;
   import §1q§.§2W§;
   import §6l§.§79§;
   import §7I§.§%'§;
   import §7I§.§<!0§;
   import §86§.§9]§;
   import §9!Y§.§!q§;
   import §`! §.§,u§;
   import §`! §.§1!#§;
   import §`! §.§]!=§;
   
   public class §5L§
   {
      
      public static const §%+§:Boolean = true;
       
      
      private var §!!@§:§!q§;
      
      private var §!e§:§]!=§;
      
      private var §9!R§:Vector.<§&m§>;
      
      private var §0!<§:Sprite;
      
      private var §5?§:Sprite;
      
      private var §,!3§:Sprite;
      
      private var §-!O§:Number;
      
      private var §<J§:Number;
      
      private var § !#§:Number;
      
      private var §]X§:Boolean = true;
      
      private var §;!3§:Boolean = true;
      
      private var §@B§:§%'§;
      
      private var §36§:Number;
      
      public function §5L§(param1:String, param2:Number, param3:§!q§, param4:Number)
      {
         this.§9!R§ = new Vector.<§&m§>();
         super();
         this.§!!@§ = param3;
         this.§<J§ = 0;
         this.§ !#§ = 0;
         this.§-!O§ = param2;
         this.§0!<§ = new Sprite();
         this.§5?§ = new Sprite();
         this.§,!3§ = new Sprite();
         this.§36§ = param4;
         this.§<0§(param1,param4);
      }
      
      public function get §!!F§() : Boolean
      {
         return this.§]X§;
      }
      
      public function get §-!X§() : Sprite
      {
         return this.§,!3§;
      }
      
      public function get §!!E§() : Sprite
      {
         return this.§0!<§;
      }
      
      public function get §],§() : Sprite
      {
         return this.§5?§;
      }
      
      protected function get textureManager() : §!q§
      {
         return this.§!!@§;
      }
      
      public function dispose() : void
      {
         this.§7!0§();
         if(this.§0!<§)
         {
            this.§0!<§.dispose();
            this.§0!<§ = null;
         }
         if(this.§5?§)
         {
            this.§5?§.dispose();
            this.§5?§ = null;
         }
         if(this.§,!3§)
         {
            this.§,!3§.dispose();
            this.§,!3§ = null;
         }
      }
      
      public function §9!!§() : Boolean
      {
         return this.§;!3§;
      }
      
      public function §=!H§(param1:Boolean) : void
      {
         if(this.§;!3§ == param1)
         {
            return;
         }
         this.§;!3§ = param1;
         if(!param1)
         {
            this.§7!0§();
         }
         else
         {
            this.§<0§(this.§!e§.mName,this.§36§);
         }
      }
      
      public function §<5§() : String
      {
         return this.§!e§.§]s§;
      }
      
      private function §7!0§() : void
      {
         while(this.§5?§.numChildren > 0)
         {
            this.§5?§.removeChildAt(0,true);
         }
         while(this.§0!<§.numChildren > 0)
         {
            this.§0!<§.removeChildAt(0,true);
         }
         while(this.§9!R§.length > 0)
         {
            this.§9!R§.pop().dispose();
         }
      }
      
      private function §<0§(param1:String, param2:Number) : void
      {
         var _loc4_:§,u§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§&m§ = null;
         this.§!e§ = §1!#§.§extends§(param1);
         if(this.§!e§ == null)
         {
            §1C§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §9]§.§8m§;
            this.§!e§ = §1!#§.§extends§(param1);
         }
         this.§0!<§.y = this.§-!O§;
         this.§5?§.y = this.§-!O§;
         this.§,!3§.y = this.§-!O§;
         this.§ !A§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§!e§.§9!R§.length)
         {
            _loc4_ = this.§!e§.§9!R§[_loc3_];
            if(!§79§.§,!>§ || !_loc4_.§4J§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §&m§(_loc4_,_loc5_,this.§!!@§,param2);
               this.§9!R§.push(_loc6_);
               if(_loc6_.§'!_§)
               {
                  this.§5?§.addChild(_loc5_);
               }
               else
               {
                  this.§0!<§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§`0§)
            {
               this.§ ?§(parseInt(_loc4_.§`0§,16));
            }
            _loc3_++;
         }
      }
      
      private function § !A§() : void
      {
         var _loc1_:§&&§ = null;
         if(this.§!e§.§]!Y§)
         {
            this.§ ?§(this.§!e§.§]!Y§);
         }
         if(this.§!e§.§^>§)
         {
            _loc1_ = this.§[!V§(uint(this.§!e§.§^>§));
            _loc1_.y = 0;
            this.§,!3§.addChild(_loc1_);
         }
      }
      
      protected function §[!V§(param1:uint) : §&&§
      {
         return new §&&§(4096,4096,param1);
      }
      
      private function § ?§(param1:int) : void
      {
         if(§79§.§#[§)
         {
            §79§.§#[§.color = param1;
         }
      }
      
      public function §[I§(param1:String) : void
      {
         this.§7!0§();
         §1C§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§<0§(param1,this.§36§);
      }
      
      public function §^T§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§&m§ = null;
         if(param1 == this.§]X§)
         {
            return;
         }
         this.§]X§ = param1;
         for each(_loc3_ in this.§9!R§)
         {
            _loc3_.§^T§(param1);
         }
      }
      
      public function §`!>§() : void
      {
         if(§<!0§.§9x§("CHANNEL_AMBIENT") == null || !§<!0§.§9x§("CHANNEL_AMBIENT").§0M§())
         {
            §<!0§.playSound(this.§!e§.§"!0§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §>!Y§() : void
      {
         §<!0§.§-w§("CHANNEL_AMBIENT");
      }
      
      public function §5]§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§0!<§.numChildren)
         {
            _loc2_ = this.§0!<§.getChildAt(param1);
         }
         else if(param1 - this.§0!<§.numChildren < this.§5?§.numChildren)
         {
            _loc2_ = this.§5?§.getChildAt(param1 - this.§0!<§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §'Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§<J§ = param1;
         this.§ !#§ = param2;
         if(this.§9!R§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§9!R§.length)
            {
               this.§9!R§[_loc3_].setSideScroll(this.§<J§,this.§ !#§);
               _loc3_++;
            }
         }
         if(this.§,!3§ != null)
         {
            this.§,!3§.scaleX = this.§,!3§.scaleY = 1 / §2W§.§2!V§;
            this.§,!3§.x = -§2W§.§%!;§ * (1 / §2W§.§2!V§);
            this.§,!3§.y = this.§-!O§ - this.§ !#§;
         }
      }
      
      public function §2S§() : String
      {
         return this.§!e§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
