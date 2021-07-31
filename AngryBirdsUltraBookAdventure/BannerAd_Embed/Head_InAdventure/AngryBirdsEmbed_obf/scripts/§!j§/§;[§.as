package §!j§
{
   import §#X§.§,!F§;
   import §#X§.§=J§;
   import §&o§.§<3§;
   import §&o§.DisplayObject;
   import §&o§.Sprite;
   import §1!-§.§@Z§;
   import §2!,§.§++§;
   import §2!,§.§8E§;
   import §2!,§.§@!2§;
   import §2k§.§`n§;
   import §3a§.§7!+§;
   import §9K§.§5!H§;
   import §=!0§.§>I§;
   
   public class §;[§
   {
      
      public static const §'@§:Boolean = true;
       
      
      private var §-M§:§5!H§;
      
      protected var §=K§:§8E§;
      
      protected var §2s§:Vector.<§5M§>;
      
      private var § !%§:Sprite;
      
      private var §2l§:Sprite;
      
      private var §#d§:Sprite;
      
      private var §`3§:Number;
      
      private var §,1§:Number;
      
      private var §;f§:Number;
      
      private var §"!H§:Boolean = true;
      
      private var §?;§:Boolean = true;
      
      private var §9V§:§=J§;
      
      private var §0U§:Number;
      
      public function §;[§(param1:String, param2:Number, param3:§5!H§, param4:Number)
      {
         this.§2s§ = new Vector.<§5M§>();
         super();
         this.§-M§ = param3;
         this.§,1§ = 0;
         this.§;f§ = 0;
         this.§`3§ = param2;
         this.§ !%§ = new Sprite();
         this.§2l§ = new Sprite();
         this.§#d§ = new Sprite();
         this.§0U§ = param4;
         this.§01§(param1,param4);
      }
      
      public function get §>!I§() : Boolean
      {
         return this.§"!H§;
      }
      
      public function get §&W§() : Sprite
      {
         return this.§#d§;
      }
      
      public function get §'K§() : Sprite
      {
         return this.§ !%§;
      }
      
      public function get §=@§() : Sprite
      {
         return this.§2l§;
      }
      
      protected function get textureManager() : §5!H§
      {
         return this.§-M§;
      }
      
      public function dispose() : void
      {
         this.§8w§();
         if(this.§ !%§)
         {
            this.§ !%§.dispose();
            this.§ !%§ = null;
         }
         if(this.§2l§)
         {
            this.§2l§.dispose();
            this.§2l§ = null;
         }
         if(this.§#d§)
         {
            this.§#d§.dispose();
            this.§#d§ = null;
         }
      }
      
      public function §^!$§() : Boolean
      {
         return this.§?;§;
      }
      
      public function §7!E§(param1:Boolean) : void
      {
         if(this.§?;§ == param1)
         {
            return;
         }
         this.§?;§ = param1;
         if(!param1)
         {
            this.§8w§();
         }
         else
         {
            this.§01§(this.§=K§.mName,this.§0U§);
         }
      }
      
      public function §!C§() : String
      {
         return this.§=K§.§2T§;
      }
      
      private function §8w§() : void
      {
         while(this.§2l§.numChildren > 0)
         {
            this.§2l§.removeChildAt(0,true);
         }
         while(this.§ !%§.numChildren > 0)
         {
            this.§ !%§.removeChildAt(0,true);
         }
         while(this.§2s§.length > 0)
         {
            this.§2s§.pop().dispose();
         }
      }
      
      protected function §,^§(param1:§8E§, param2:String) : void
      {
      }
      
      private function §01§(param1:String, param2:Number) : void
      {
         var _loc4_:§++§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§5M§ = null;
         this.§=K§ = §@!2§.§"@§(param1);
         if(this.§=K§ == null)
         {
            §7!+§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §@Z§.§try§;
            this.§=K§ = §@!2§.§"@§(param1);
         }
         this.§,^§(this.§=K§,param1);
         this.§ !%§.y = this.§`3§;
         this.§2l§.y = this.§`3§;
         this.§#d§.y = this.§`3§;
         this.§%q§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§=K§.§2s§.length)
         {
            _loc4_ = this.§=K§.§2s§[_loc3_];
            if(!§>I§.§0P§ || !_loc4_.§&!6§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§&a§(_loc4_,_loc5_,this.§-M§,param2);
               this.§2s§.push(_loc6_);
               if(_loc6_.§ R§)
               {
                  this.§2l§.addChild(_loc5_);
               }
               else
               {
                  this.§ !%§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§1?§)
            {
               this.§2U§(parseInt(_loc4_.§1?§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §&a§(param1:§++§, param2:Sprite, param3:§5!H§, param4:Number) : §5M§
      {
         return new §5M§(param1,param2,param3,param4);
      }
      
      private function §%q§() : void
      {
         var _loc1_:§<3§ = null;
         if(this.§=K§.§'1§)
         {
            this.§2U§(this.§=K§.§'1§);
         }
         if(this.§=K§.§6!7§)
         {
            _loc1_ = this.§''§(uint(this.§=K§.§6!7§));
            _loc1_.y = 0;
            this.§#d§.addChild(_loc1_);
         }
      }
      
      protected function §''§(param1:uint) : §<3§
      {
         return new §<3§(4096,4096,param1);
      }
      
      protected function §2U§(param1:int) : void
      {
         if(§>I§.§`S§)
         {
            §>I§.§`S§.color = param1;
         }
      }
      
      public function §2[§(param1:String, param2:§5!H§ = null) : void
      {
         if(param2)
         {
            this.§-M§ = param2;
         }
         this.§8w§();
         §7!+§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§01§(param1,this.§0U§);
      }
      
      public function §9C§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§5M§ = null;
         if(param1 == this.§"!H§)
         {
            return;
         }
         this.§"!H§ = param1;
         for each(_loc3_ in this.§2s§)
         {
            _loc3_.§9C§(param1);
         }
      }
      
      public function §@!K§() : void
      {
         if(§,!F§.§=!H§("CHANNEL_AMBIENT") == null || !§,!F§.§=!H§("CHANNEL_AMBIENT").§]n§())
         {
            §,!F§.§;v§(this.§=K§.final,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function § ! §() : void
      {
         §,!F§.§@!9§("CHANNEL_AMBIENT");
      }
      
      public function §@!B§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§ !%§.numChildren)
         {
            _loc2_ = this.§ !%§.getChildAt(param1);
         }
         else if(param1 - this.§ !%§.numChildren < this.§2l§.numChildren)
         {
            _loc2_ = this.§2l§.getChildAt(param1 - this.§ !%§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §?!<§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§,1§ = param1;
         this.§;f§ = param2;
         if(this.§2s§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§2s§.length)
            {
               this.§2s§[_loc3_].setSideScroll(this.§,1§,this.§;f§);
               _loc3_++;
            }
         }
         if(this.§#d§ != null)
         {
            this.§#d§.scaleX = this.§#d§.scaleY = 1 / §`n§.§&"§;
            this.§#d§.x = -§`n§.§!!7§ * (1 / §`n§.§&"§);
            this.§#d§.y = this.§`3§ - this.§;f§;
         }
      }
      
      public function §]!,§() : String
      {
         return this.§=K§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
