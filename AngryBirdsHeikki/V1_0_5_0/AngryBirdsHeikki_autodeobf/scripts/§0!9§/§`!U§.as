package §0!9§
{
   import §1!K§.§>!<§;
   import §2!Q§.§'[§;
   import §2!Q§.§@!-§;
   import §=X§.§"!6§;
   import §>Q§.§5!5§;
   import §@!%§.§+i§;
   import §@!%§.§2!]§;
   import §@!%§.§^o§;
   import §[$§.§=K§;
   import §[=§.§=!I§;
   import §[=§.DisplayObject;
   import §[=§.Sprite;
   import §`!H§.§@!E§;
   
   public class §`!U§
   {
      
      public static const §6!,§:Boolean = true;
       
      
      private var §6!;§:§@!E§;
      
      private var §%A§:§+i§;
      
      private var §;'§:Vector.<§%![§>;
      
      private var §=,§:Sprite;
      
      private var §0!]§:Sprite;
      
      private var §;o§:Sprite;
      
      private var §,S§:Number;
      
      private var §>E§:Number;
      
      private var §-X§:Number;
      
      private var §24§:Boolean = true;
      
      private var §"!W§:Boolean = true;
      
      private var §4!c§:§@!-§;
      
      private var §!!!§:Number;
      
      public function §`!U§(param1:String, param2:Number, param3:§@!E§, param4:Number)
      {
         this.§;'§ = new Vector.<§%![§>();
         super();
         this.§6!;§ = param3;
         this.§>E§ = 0;
         this.§-X§ = 0;
         this.§,S§ = param2;
         this.§=,§ = new Sprite();
         this.§0!]§ = new Sprite();
         this.§;o§ = new Sprite();
         this.§!!!§ = param4;
         this.§,7§(param1,param4);
      }
      
      public function get §`2§() : Boolean
      {
         return this.§24§;
      }
      
      public function get § F§() : Sprite
      {
         return this.§;o§;
      }
      
      public function get §,,§() : Sprite
      {
         return this.§=,§;
      }
      
      public function get § K§() : Sprite
      {
         return this.§0!]§;
      }
      
      protected function get textureManager() : §@!E§
      {
         return this.§6!;§;
      }
      
      public function dispose() : void
      {
         this.§3;§();
         if(this.§=,§)
         {
            this.§=,§.dispose();
            this.§=,§ = null;
         }
         if(this.§0!]§)
         {
            this.§0!]§.dispose();
            this.§0!]§ = null;
         }
         if(this.§;o§)
         {
            this.§;o§.dispose();
            this.§;o§ = null;
         }
      }
      
      public function §2!<§() : Boolean
      {
         return this.§"!W§;
      }
      
      public function §2!A§(param1:Boolean) : void
      {
         if(this.§"!W§ == param1)
         {
            return;
         }
         this.§"!W§ = param1;
         if(!param1)
         {
            this.§3;§();
         }
         else
         {
            this.§,7§(this.§%A§.mName,this.§!!!§);
         }
      }
      
      public function §6B§() : String
      {
         return this.§%A§.§>"§;
      }
      
      private function §3;§() : void
      {
         while(this.§0!]§.numChildren > 0)
         {
            this.§0!]§.removeChildAt(0,true);
         }
         while(this.§=,§.numChildren > 0)
         {
            this.§=,§.removeChildAt(0,true);
         }
         while(this.§;'§.length > 0)
         {
            this.§;'§.pop().dispose();
         }
      }
      
      private function §,7§(param1:String, param2:Number) : void
      {
         var _loc4_:§^o§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§%![§ = null;
         this.§%A§ = §2!]§.§+!4§(param1);
         if(this.§%A§ == null)
         {
            §>!<§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §"!6§.§1O§;
            this.§%A§ = §2!]§.§+!4§(param1);
         }
         this.§=,§.y = this.§,S§;
         this.§0!]§.y = this.§,S§;
         this.§;o§.y = this.§,S§;
         this.§>!E§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§%A§.§;'§.length)
         {
            _loc4_ = this.§%A§.§;'§[_loc3_];
            if(!§5!5§.§-!+§ || !_loc4_.§9O§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §%![§(_loc4_,_loc5_,this.§6!;§,param2);
               this.§;'§.push(_loc6_);
               if(_loc6_.§-!K§)
               {
                  this.§0!]§.addChild(_loc5_);
               }
               else
               {
                  this.§=,§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§<!C§)
            {
               this.§?T§(parseInt(_loc4_.§<!C§,16));
            }
            _loc3_++;
         }
      }
      
      private function §>!E§() : void
      {
         var _loc1_:§=!I§ = null;
         if(this.§%A§.§!d§)
         {
            this.§?T§(this.§%A§.§!d§);
         }
         if(this.§%A§.§[!&§)
         {
            _loc1_ = this.§]! §(uint(this.§%A§.§[!&§));
            _loc1_.y = 0;
            this.§;o§.addChild(_loc1_);
         }
      }
      
      protected function §]! §(param1:uint) : §=!I§
      {
         return new §=!I§(4096,4096,param1);
      }
      
      private function §?T§(param1:int) : void
      {
         if(§5!5§.§5F§)
         {
            §5!5§.§5F§.color = param1;
         }
      }
      
      public function §-!E§(param1:String) : void
      {
         this.§3;§();
         §>!<§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§,7§(param1,this.§!!!§);
      }
      
      public function §#y§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§%![§ = null;
         if(param1 == this.§24§)
         {
            return;
         }
         this.§24§ = param1;
         for each(_loc3_ in this.§;'§)
         {
            _loc3_.§#y§(param1);
         }
      }
      
      public function §45§() : void
      {
         if(§'[§.§[!Z§("CHANNEL_AMBIENT") == null || !§'[§.§[!Z§("CHANNEL_AMBIENT").§;!V§())
         {
            §'[§.§"]§(this.§%A§.§;a§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §`=§() : void
      {
         §'[§.§,!?§("CHANNEL_AMBIENT");
      }
      
      public function §#H§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§=,§.numChildren)
         {
            _loc2_ = this.§=,§.getChildAt(param1);
         }
         else if(param1 - this.§=,§.numChildren < this.§0!]§.numChildren)
         {
            _loc2_ = this.§0!]§.getChildAt(param1 - this.§=,§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §@P§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§>E§ = param1;
         this.§-X§ = param2;
         if(this.§;'§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§;'§.length)
            {
               this.§;'§[_loc3_].setSideScroll(this.§>E§,this.§-X§);
               _loc3_++;
            }
         }
         if(this.§;o§ != null)
         {
            this.§;o§.scaleX = this.§;o§.scaleY = 1 / §=K§.§%-§;
            this.§;o§.x = -§=K§.§2>§ * (1 / §=K§.§%-§);
            this.§;o§.y = this.§,S§ - this.§-X§;
         }
      }
      
      public function §]C§() : String
      {
         return this.§%A§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
