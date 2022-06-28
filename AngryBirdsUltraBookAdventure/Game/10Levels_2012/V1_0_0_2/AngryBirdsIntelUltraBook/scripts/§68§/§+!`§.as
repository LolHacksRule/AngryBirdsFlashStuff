package §68§
{
   import §"R§.§ !Q§;
   import §"R§.§`a§;
   import §'!9§.§%!g§;
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §,!Q§.§ !P§;
   import §,!Q§.§,!-§;
   import §,!Q§.§0@§;
   import §-w§.§,Q§;
   import §0!N§.§=+§;
   import §2!R§.§#C§;
   import §<&§.§^b§;
   import §^_§.§!>§;
   
   public class §+!`§
   {
      
      public static const §1+§:Boolean = true;
       
      
      private var §;!t§:§,Q§;
      
      private var §[!>§:§0@§;
      
      private var §3!>§:Vector.<§7L§>;
      
      private var §+§:Sprite;
      
      private var §=!6§:Sprite;
      
      private var §+!%§:Sprite;
      
      private var §^!X§:Number;
      
      private var §^S§:Number;
      
      private var §#q§:Number;
      
      private var §6N§:Boolean = true;
      
      private var §>L§:Boolean = true;
      
      private var §^f§:§`a§;
      
      private var §-!m§:Number;
      
      public function §+!`§(param1:String, param2:Number, param3:§,Q§, param4:Number)
      {
         this.§3!>§ = new Vector.<§7L§>();
         super();
         this.§;!t§ = param3;
         this.§^S§ = 0;
         this.§#q§ = 0;
         this.§^!X§ = param2;
         this.§+§ = new Sprite();
         this.§=!6§ = new Sprite();
         this.§+!%§ = new Sprite();
         this.§-!m§ = param4;
         this.§4c§(param1,param4);
      }
      
      public function get §"0§() : Boolean
      {
         return this.§6N§;
      }
      
      public function get §8!t§() : Sprite
      {
         return this.§+!%§;
      }
      
      public function get §@4§() : Sprite
      {
         return this.§+§;
      }
      
      public function get §-!O§() : Sprite
      {
         return this.§=!6§;
      }
      
      protected function get textureManager() : §,Q§
      {
         return this.§;!t§;
      }
      
      public function dispose() : void
      {
         this.§9H§();
         if(this.§+§)
         {
            this.§+§.dispose();
            this.§+§ = null;
         }
         if(this.§=!6§)
         {
            this.§=!6§.dispose();
            this.§=!6§ = null;
         }
         if(this.§+!%§)
         {
            this.§+!%§.dispose();
            this.§+!%§ = null;
         }
      }
      
      public function §]!&§() : Boolean
      {
         return this.§>L§;
      }
      
      public function §2!d§(param1:Boolean) : void
      {
         if(this.§>L§ == param1)
         {
            return;
         }
         this.§>L§ = param1;
         if(!param1)
         {
            this.§9H§();
         }
         else
         {
            this.§4c§(this.§[!>§.mName,this.§-!m§);
         }
      }
      
      public function §`!T§() : String
      {
         return this.§[!>§.§@-§;
      }
      
      private function §9H§() : void
      {
         while(this.§=!6§.numChildren > 0)
         {
            this.§=!6§.removeChildAt(0,true);
         }
         while(this.§+§.numChildren > 0)
         {
            this.§+§.removeChildAt(0,true);
         }
         while(this.§3!>§.length > 0)
         {
            this.§3!>§.pop().dispose();
         }
      }
      
      private function §4c§(param1:String, param2:Number) : void
      {
         var _loc4_:§,!-§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§7L§ = null;
         this.§[!>§ = § !P§.§^!'§(param1);
         if(this.§[!>§ == null)
         {
            §!>§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §=+§.§'!M§;
            this.§[!>§ = § !P§.§^!'§(param1);
         }
         this.§+§.y = this.§^!X§;
         this.§=!6§.y = this.§^!X§;
         this.§+!%§.y = this.§^!X§;
         this.§4!r§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§[!>§.§3!>§.length)
         {
            _loc4_ = this.§[!>§.§3!>§[_loc3_];
            if(!§^b§.§7h§ || !_loc4_.§;!^§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §7L§(_loc4_,_loc5_,this.§;!t§,param2);
               this.§3!>§.push(_loc6_);
               if(_loc6_.§[!7§)
               {
                  this.§=!6§.addChild(_loc5_);
               }
               else
               {
                  this.§+§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§=!c§)
            {
               this.§3!d§(parseInt(_loc4_.§=!c§,16));
            }
            _loc3_++;
         }
      }
      
      private function §4!r§() : void
      {
         var _loc1_:§%!g§ = null;
         if(this.§[!>§.§%s§)
         {
            this.§3!d§(this.§[!>§.§%s§);
         }
         if(this.§[!>§.§`!A§)
         {
            _loc1_ = this.createGroundQuad(uint(this.§[!>§.§`!A§));
            _loc1_.y = 0;
            this.§+!%§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §%!g§
      {
         return new §%!g§(4096,4096,param1);
      }
      
      private function §3!d§(param1:int) : void
      {
         if(§^b§.§9E§)
         {
            §^b§.§9E§.color = param1;
         }
      }
      
      public function §4!t§(param1:String) : void
      {
         this.§9H§();
         §!>§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§4c§(param1,this.§-!m§);
      }
      
      public function §"$§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§7L§ = null;
         if(param1 == this.§6N§)
         {
            return;
         }
         this.§6N§ = param1;
         for each(_loc3_ in this.§3!>§)
         {
            _loc3_.§"$§(param1);
         }
      }
      
      public function §#!C§() : void
      {
         if(§ !Q§.§5s§("CHANNEL_AMBIENT") == null || !§ !Q§.§5s§("CHANNEL_AMBIENT").§;J§())
         {
            § !Q§.playSound(this.§[!>§.§-r§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §>G§() : void
      {
         § !Q§.§9!t§("CHANNEL_AMBIENT");
      }
      
      public function §%4§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§+§.numChildren)
         {
            _loc2_ = this.§+§.getChildAt(param1);
         }
         else if(param1 - this.§+§.numChildren < this.§=!6§.numChildren)
         {
            _loc2_ = this.§=!6§.getChildAt(param1 - this.§+§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §9!=§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§^S§ = param1;
         this.§#q§ = param2;
         if(this.§3!>§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§3!>§.length)
            {
               this.§3!>§[_loc3_].setSideScroll(this.§^S§,this.§#q§);
               _loc3_++;
            }
         }
         if(this.§+!%§ != null)
         {
            this.§+!%§.scaleX = this.§+!%§.scaleY = 1 / §#C§.§-!k§;
            this.§+!%§.x = -§#C§.§]!J§ * (1 / §#C§.§-!k§);
            this.§+!%§.y = this.§^!X§ - this.§#q§;
         }
      }
      
      public function §@!W§() : String
      {
         return this.§[!>§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
