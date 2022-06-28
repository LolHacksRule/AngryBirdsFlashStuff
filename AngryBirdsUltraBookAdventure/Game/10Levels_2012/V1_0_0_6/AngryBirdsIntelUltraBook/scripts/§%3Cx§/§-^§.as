package §<x§
{
   import §!!K§.§else§;
   import §"x§.§-8§;
   import §,!!§.§#!Y§;
   import §3!G§.§ y§;
   import §5!c§.§9'§;
   import §5!c§.§try§;
   import §7!B§.§;R§;
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §@^§.§"i§;
   import §@^§.§#<§;
   import §@^§.§<!T§;
   import §^!Y§.§'R§;
   
   public class §-^§
   {
      
      public static const §+a§:Boolean = true;
       
      
      private var §+]§:§'R§;
      
      private var §#!!§:§#<§;
      
      private var §,!T§:Vector.<§#Q§>;
      
      private var §@!^§:Sprite;
      
      private var §!3§:Sprite;
      
      private var §&P§:Sprite;
      
      private var §'G§:Number;
      
      private var §2!?§:Number;
      
      private var §5^§:Number;
      
      private var §2!-§:Boolean = true;
      
      private var §1!M§:Boolean = true;
      
      private var §[!L§:§try§;
      
      private var §!!-§:Number;
      
      public function §-^§(param1:String, param2:Number, param3:§'R§, param4:Number)
      {
         this.§,!T§ = new Vector.<§#Q§>();
         super();
         this.§+]§ = param3;
         this.§2!?§ = 0;
         this.§5^§ = 0;
         this.§'G§ = param2;
         this.§@!^§ = new Sprite();
         this.§!3§ = new Sprite();
         this.§&P§ = new Sprite();
         this.§!!-§ = param4;
         this.§]a§(param1,param4);
      }
      
      public function get §6!t§() : Boolean
      {
         return this.§2!-§;
      }
      
      public function get §5!0§() : Sprite
      {
         return this.§&P§;
      }
      
      public function get §'<§() : Sprite
      {
         return this.§@!^§;
      }
      
      public function get §%o§() : Sprite
      {
         return this.§!3§;
      }
      
      protected function get textureManager() : §'R§
      {
         return this.§+]§;
      }
      
      public function dispose() : void
      {
         this.§7!i§();
         if(this.§@!^§)
         {
            this.§@!^§.dispose();
            this.§@!^§ = null;
         }
         if(this.§!3§)
         {
            this.§!3§.dispose();
            this.§!3§ = null;
         }
         if(this.§&P§)
         {
            this.§&P§.dispose();
            this.§&P§ = null;
         }
      }
      
      public function §04§() : Boolean
      {
         return this.§1!M§;
      }
      
      public function §@!v§(param1:Boolean) : void
      {
         if(this.§1!M§ == param1)
         {
            return;
         }
         this.§1!M§ = param1;
         if(!param1)
         {
            this.§7!i§();
         }
         else
         {
            this.§]a§(this.§#!!§.mName,this.§!!-§);
         }
      }
      
      public function § 1§() : String
      {
         return this.§#!!§.§>A§;
      }
      
      private function §7!i§() : void
      {
         while(this.§!3§.numChildren > 0)
         {
            this.§!3§.removeChildAt(0,true);
         }
         while(this.§@!^§.numChildren > 0)
         {
            this.§@!^§.removeChildAt(0,true);
         }
         while(this.§,!T§.length > 0)
         {
            this.§,!T§.pop().dispose();
         }
      }
      
      private function §]a§(param1:String, param2:Number) : void
      {
         var _loc4_:§<!T§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§#Q§ = null;
         this.§#!!§ = §"i§.§<!F§(param1);
         if(this.§#!!§ == null)
         {
            §-8§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = § y§.§!n§;
            this.§#!!§ = §"i§.§<!F§(param1);
         }
         this.§@!^§.y = this.§'G§;
         this.§!3§.y = this.§'G§;
         this.§&P§.y = this.§'G§;
         this.§7L§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§#!!§.§,!T§.length)
         {
            _loc4_ = this.§#!!§.§,!T§[_loc3_];
            if(!§else§.§@g§ || !_loc4_.§;f§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §#Q§(_loc4_,_loc5_,this.§+]§,param2);
               this.§,!T§.push(_loc6_);
               if(_loc6_.§-!b§)
               {
                  this.§!3§.addChild(_loc5_);
               }
               else
               {
                  this.§@!^§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§[z§)
            {
               this.§7!v§(parseInt(_loc4_.§[z§,16));
            }
            _loc3_++;
         }
      }
      
      private function §7L§() : void
      {
         var _loc1_:§;R§ = null;
         if(this.§#!!§.§"7§)
         {
            this.§7!v§(this.§#!!§.§"7§);
         }
         if(this.§#!!§.§`!w§)
         {
            _loc1_ = this.createGroundQuad(uint(this.§#!!§.§`!w§));
            _loc1_.y = 0;
            this.§&P§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §;R§
      {
         return new §;R§(4096,4096,param1);
      }
      
      private function §7!v§(param1:int) : void
      {
         if(§else§.§^!A§)
         {
            §else§.§^!A§.color = param1;
         }
      }
      
      public function §"!j§(param1:String) : void
      {
         this.§7!i§();
         §-8§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§]a§(param1,this.§!!-§);
      }
      
      public function §9!p§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§#Q§ = null;
         if(param1 == this.§2!-§)
         {
            return;
         }
         this.§2!-§ = param1;
         for each(_loc3_ in this.§,!T§)
         {
            _loc3_.§9!p§(param1);
         }
      }
      
      public function §0!j§() : void
      {
         if(§9'§.§<!5§("CHANNEL_AMBIENT") == null || !§9'§.§<!5§("CHANNEL_AMBIENT").§;,§())
         {
            §9'§.playSound(this.§#!!§.§8%§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §5!e§() : void
      {
         §9'§.§7!,§("CHANNEL_AMBIENT");
      }
      
      public function §@!S§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§@!^§.numChildren)
         {
            _loc2_ = this.§@!^§.getChildAt(param1);
         }
         else if(param1 - this.§@!^§.numChildren < this.§!3§.numChildren)
         {
            _loc2_ = this.§!3§.getChildAt(param1 - this.§@!^§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §7!P§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§2!?§ = param1;
         this.§5^§ = param2;
         if(this.§,!T§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§,!T§.length)
            {
               this.§,!T§[_loc3_].setSideScroll(this.§2!?§,this.§5^§);
               _loc3_++;
            }
         }
         if(this.§&P§ != null)
         {
            this.§&P§.scaleX = this.§&P§.scaleY = 1 / §#!Y§.§0!_§;
            this.§&P§.x = -§#!Y§.§%!H§ * (1 / §#!Y§.§0!_§);
            this.§&P§.y = this.§'G§ - this.§5^§;
         }
      }
      
      public function §"c§() : String
      {
         return this.§#!!§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
