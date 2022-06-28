package §4p§
{
   import §!!§.§>4§;
   import §!!X§.§&!E§;
   import §+!r§.§%l§;
   import §+!r§.§'!S§;
   import §+!r§.§@!a§;
   import §,6§.§!o§;
   import §1!T§.§&!v§;
   import §1!T§.§6!H§;
   import §6z§.§[g§;
   import §9E§.§1!w§;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   import §@4§.§,!]§;
   
   public class §#Q§
   {
      
      public static const §2I§:Boolean = true;
       
      
      private var §3!L§:§!o§;
      
      private var §?!?§:§%l§;
      
      private var §%7§:Vector.<§<>§>;
      
      private var §7W§:Sprite;
      
      private var §'!s§:Sprite;
      
      private var §]!$§:Sprite;
      
      private var §`!C§:Number;
      
      private var §;!B§:Number;
      
      private var §5!+§:Number;
      
      private var §;6§:Boolean = true;
      
      private var §%!Z§:Boolean = true;
      
      private var §!V§:§&!v§;
      
      private var §=q§:Number;
      
      public function §#Q§(param1:String, param2:Number, param3:§!o§, param4:Number)
      {
         this.§%7§ = new Vector.<§<>§>();
         super();
         this.§3!L§ = param3;
         this.§;!B§ = 0;
         this.§5!+§ = 0;
         this.§`!C§ = param2;
         this.§7W§ = new Sprite();
         this.§'!s§ = new Sprite();
         this.§]!$§ = new Sprite();
         this.§=q§ = param4;
         this.§&!F§(param1,param4);
      }
      
      public function get §8+§() : Boolean
      {
         return this.§;6§;
      }
      
      public function get §"V§() : Sprite
      {
         return this.§]!$§;
      }
      
      public function get §[o§() : Sprite
      {
         return this.§7W§;
      }
      
      public function get §]!=§() : Sprite
      {
         return this.§'!s§;
      }
      
      protected function get textureManager() : §!o§
      {
         return this.§3!L§;
      }
      
      public function dispose() : void
      {
         this.§0^§();
         if(this.§7W§)
         {
            this.§7W§.dispose();
            this.§7W§ = null;
         }
         if(this.§'!s§)
         {
            this.§'!s§.dispose();
            this.§'!s§ = null;
         }
         if(this.§]!$§)
         {
            this.§]!$§.dispose();
            this.§]!$§ = null;
         }
      }
      
      public function §[!b§() : Boolean
      {
         return this.§%!Z§;
      }
      
      public function §1B§(param1:Boolean) : void
      {
         if(this.§%!Z§ == param1)
         {
            return;
         }
         this.§%!Z§ = param1;
         if(!param1)
         {
            this.§0^§();
         }
         else
         {
            this.§&!F§(this.§?!?§.mName,this.§=q§);
         }
      }
      
      public function §+!_§() : String
      {
         return this.§?!?§.§96§;
      }
      
      private function §0^§() : void
      {
         while(this.§'!s§.numChildren > 0)
         {
            this.§'!s§.removeChildAt(0,true);
         }
         while(this.§7W§.numChildren > 0)
         {
            this.§7W§.removeChildAt(0,true);
         }
         while(this.§%7§.length > 0)
         {
            this.§%7§.pop().dispose();
         }
      }
      
      private function §&!F§(param1:String, param2:Number) : void
      {
         var _loc4_:§'!S§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§<>§ = null;
         this.§?!?§ = §@!a§.§^!o§(param1);
         if(this.§?!?§ == null)
         {
            §[g§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §>4§.§7H§;
            this.§?!?§ = §@!a§.§^!o§(param1);
         }
         this.§7W§.y = this.§`!C§;
         this.§'!s§.y = this.§`!C§;
         this.§]!$§.y = this.§`!C§;
         this.§&!A§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§?!?§.§%7§.length)
         {
            _loc4_ = this.§?!?§.§%7§[_loc3_];
            if(!§,!]§.§,?§ || !_loc4_.§,!"§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §<>§(_loc4_,_loc5_,this.§3!L§,param2);
               this.§%7§.push(_loc6_);
               if(_loc6_.§@!B§)
               {
                  this.§'!s§.addChild(_loc5_);
               }
               else
               {
                  this.§7W§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§'5§)
            {
               this.§,=§(parseInt(_loc4_.§'5§,16));
            }
            _loc3_++;
         }
      }
      
      private function §&!A§() : void
      {
         var _loc1_:§1!w§ = null;
         if(this.§?!?§.§36§)
         {
            this.§,=§(this.§?!?§.§36§);
         }
         if(this.§?!?§.§8!M§)
         {
            _loc1_ = this.createGroundQuad(uint(this.§?!?§.§8!M§));
            _loc1_.y = 0;
            this.§]!$§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §1!w§
      {
         return new §1!w§(4096,4096,param1);
      }
      
      private function §,=§(param1:int) : void
      {
         if(§,!]§.§!9§)
         {
            §,!]§.§!9§.color = param1;
         }
      }
      
      public function §&!P§(param1:String) : void
      {
         this.§0^§();
         §[g§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§&!F§(param1,this.§=q§);
      }
      
      public function §0g§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§<>§ = null;
         if(param1 == this.§;6§)
         {
            return;
         }
         this.§;6§ = param1;
         for each(_loc3_ in this.§%7§)
         {
            _loc3_.§0g§(param1);
         }
      }
      
      public function §4!w§() : void
      {
         if(§6!H§.§-^§("CHANNEL_AMBIENT") == null || !§6!H§.§-^§("CHANNEL_AMBIENT").§<!P§())
         {
            §6!H§.playSound(this.§?!?§.§5!e§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §&[§() : void
      {
         §6!H§.§1x§("CHANNEL_AMBIENT");
      }
      
      public function §]!4§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§7W§.numChildren)
         {
            _loc2_ = this.§7W§.getChildAt(param1);
         }
         else if(param1 - this.§7W§.numChildren < this.§'!s§.numChildren)
         {
            _loc2_ = this.§'!s§.getChildAt(param1 - this.§7W§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §@o§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§;!B§ = param1;
         this.§5!+§ = param2;
         if(this.§%7§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§%7§.length)
            {
               this.§%7§[_loc3_].setSideScroll(this.§;!B§,this.§5!+§);
               _loc3_++;
            }
         }
         if(this.§]!$§ != null)
         {
            this.§]!$§.scaleX = this.§]!$§.scaleY = 1 / §&!E§.§+!a§;
            this.§]!$§.x = -§&!E§.§1!t§ * (1 / §&!E§.§+!a§);
            this.§]!$§.y = this.§`!C§ - this.§5!+§;
         }
      }
      
      public function §7Z§() : String
      {
         return this.§?!?§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
