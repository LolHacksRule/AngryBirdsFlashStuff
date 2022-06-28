package §@§
{
   import §#h§.§ !H§;
   import §#h§.§@b§;
   import §,_§.§-!!§;
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   import §3c§.§^z§;
   import §5`§.§?y§;
   import §8!>§.§ !4§;
   import §8!>§.§7!4§;
   import §8!>§.§@;§;
   import §=!B§.§^!9§;
   import §>K§.§9X§;
   import §catch§.§4@§;
   
   public class §5r§
   {
      
      public static const §0!G§:Boolean = true;
       
      
      private var §^S§:§?y§;
      
      private var §>k§:§@;§;
      
      private var § J§:Vector.<§15§>;
      
      private var §,!H§:Sprite;
      
      private var §!%§:Sprite;
      
      private var §!?§:Sprite;
      
      private var §^^§:Number;
      
      private var §8!@§:Number;
      
      private var §7p§:Number;
      
      private var §^! §:Boolean = true;
      
      private var §7!3§:Boolean = true;
      
      private var §5'§:§@b§;
      
      private var §"5§:Number;
      
      public function §5r§(param1:String, param2:Number, param3:§?y§, param4:Number)
      {
         this.§ J§ = new Vector.<§15§>();
         super();
         this.§^S§ = param3;
         this.§8!@§ = 0;
         this.§7p§ = 0;
         this.§^^§ = param2;
         this.§,!H§ = new Sprite();
         this.§!%§ = new Sprite();
         this.§!?§ = new Sprite();
         this.§"5§ = param4;
         this.§"8§(param1,param4);
      }
      
      public function get §0K§() : Boolean
      {
         return this.§^! §;
      }
      
      public function get §7!0§() : Sprite
      {
         return this.§!?§;
      }
      
      public function get §7s§() : Sprite
      {
         return this.§,!H§;
      }
      
      public function get §%>§() : Sprite
      {
         return this.§!%§;
      }
      
      protected function get textureManager() : §?y§
      {
         return this.§^S§;
      }
      
      public function dispose() : void
      {
         this.§8&§();
         if(this.§,!H§)
         {
            this.§,!H§.dispose();
            this.§,!H§ = null;
         }
         if(this.§!%§)
         {
            this.§!%§.dispose();
            this.§!%§ = null;
         }
         if(this.§!?§)
         {
            this.§!?§.dispose();
            this.§!?§ = null;
         }
      }
      
      public function §+u§() : Boolean
      {
         return this.§7!3§;
      }
      
      public function §]!!§(param1:Boolean) : void
      {
         if(this.§7!3§ == param1)
         {
            return;
         }
         this.§7!3§ = param1;
         if(!param1)
         {
            this.§8&§();
         }
         else
         {
            this.§"8§(this.§>k§.mName,this.§"5§);
         }
      }
      
      public function §8X§() : String
      {
         return this.§>k§.§[x§;
      }
      
      private function §8&§() : void
      {
         while(this.§!%§.numChildren > 0)
         {
            this.§!%§.removeChildAt(0,true);
         }
         while(this.§,!H§.numChildren > 0)
         {
            this.§,!H§.removeChildAt(0,true);
         }
         while(this.§ J§.length > 0)
         {
            this.§ J§.pop().dispose();
         }
      }
      
      private function §"8§(param1:String, param2:Number) : void
      {
         var _loc4_:§7!4§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§15§ = null;
         this.§>k§ = § !4§.§;h§(param1);
         if(this.§>k§ == null)
         {
            §9X§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §^!9§.§%[§;
            this.§>k§ = § !4§.§;h§(param1);
         }
         this.§,!H§.y = this.§^^§;
         this.§!%§.y = this.§^^§;
         this.§!?§.y = this.§^^§;
         this.§'!F§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§>k§.§ J§.length)
         {
            _loc4_ = this.§>k§.§ J§[_loc3_];
            if(!§4@§.§?!A§ || !_loc4_.§<!%§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §15§(_loc4_,_loc5_,this.§^S§,param2);
               this.§ J§.push(_loc6_);
               if(_loc6_.§6i§)
               {
                  this.§!%§.addChild(_loc5_);
               }
               else
               {
                  this.§,!H§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§0^§)
            {
               this.§[p§(parseInt(_loc4_.§0^§,16));
            }
            _loc3_++;
         }
      }
      
      private function §'!F§() : void
      {
         var _loc1_:§-!!§ = null;
         if(this.§>k§.§?!2§)
         {
            this.§[p§(this.§>k§.§?!2§);
         }
         if(this.§>k§.§3M§)
         {
            _loc1_ = this.§5E§(uint(this.§>k§.§3M§));
            _loc1_.y = 0;
            this.§!?§.addChild(_loc1_);
         }
      }
      
      protected function §5E§(param1:uint) : §-!!§
      {
         return new §-!!§(4096,4096,param1);
      }
      
      private function §[p§(param1:int) : void
      {
         if(§4@§.§0W§)
         {
            §4@§.§0W§.color = param1;
         }
      }
      
      public function §!!1§(param1:String) : void
      {
         this.§8&§();
         §9X§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§"8§(param1,this.§"5§);
      }
      
      public function §=K§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§15§ = null;
         if(param1 == this.§^! §)
         {
            return;
         }
         this.§^! § = param1;
         for each(_loc3_ in this.§ J§)
         {
            _loc3_.§=K§(param1);
         }
      }
      
      public function §>s§() : void
      {
         if(§ !H§.§%A§("CHANNEL_AMBIENT") == null || !§ !H§.§%A§("CHANNEL_AMBIENT").§'I§())
         {
            § !H§.§ !%§(this.§>k§.§6!@§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §!#§() : void
      {
         § !H§.§]%§("CHANNEL_AMBIENT");
      }
      
      public function §-M§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§,!H§.numChildren)
         {
            _loc2_ = this.§,!H§.getChildAt(param1);
         }
         else if(param1 - this.§,!H§.numChildren < this.§!%§.numChildren)
         {
            _loc2_ = this.§!%§.getChildAt(param1 - this.§,!H§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §+C§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§8!@§ = param1;
         this.§7p§ = param2;
         if(this.§ J§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§ J§.length)
            {
               this.§ J§[_loc3_].setSideScroll(this.§8!@§,this.§7p§);
               _loc3_++;
            }
         }
         if(this.§!?§ != null)
         {
            this.§!?§.scaleX = this.§!?§.scaleY = 1 / §^z§.§%!8§;
            this.§!?§.x = -§^z§.§<H§ * (1 / §^z§.§%!8§);
            this.§!?§.y = this.§^^§ - this.§7p§;
         }
      }
      
      public function §5U§() : String
      {
         return this.§>k§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
