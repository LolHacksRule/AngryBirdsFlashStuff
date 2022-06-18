package §=!F§
{
   import §+!E§.§,E§;
   import §+!E§.§5!J§;
   import §+!E§.§>!E§;
   import §7!7§.§ !$§;
   import §7!7§.§return§;
   import §7!P§.§-3§;
   import §9!a§.DisplayObject;
   import §9!a§.Sprite;
   import §9!a§.§]o§;
   import §=!,§.§9![§;
   import §=0§.§>O§;
   import §>N§.§"u§;
   import §^9§.§3A§;
   
   public class §'e§
   {
      
      public static const §5!,§:Boolean = true;
       
      
      private var §<!P§:§>O§;
      
      protected var §'F§:§,E§;
      
      protected var §#x§:Vector.<§%O§>;
      
      private var §!s§:Sprite;
      
      private var §?N§:Sprite;
      
      private var §0!=§:Sprite;
      
      private var §1_§:Number;
      
      private var §=z§:Number;
      
      private var §,!%§:Number;
      
      private var §8R§:Boolean = true;
      
      private var §^!6§:Boolean = true;
      
      private var §=b§:§ !$§;
      
      private var §+!?§:Number;
      
      public function §'e§(param1:String, param2:Number, param3:§>O§, param4:Number)
      {
         this.§#x§ = new Vector.<§%O§>();
         super();
         this.§<!P§ = param3;
         this.§=z§ = 0;
         this.§,!%§ = 0;
         this.§1_§ = param2;
         this.§!s§ = new Sprite();
         this.§?N§ = new Sprite();
         this.§0!=§ = new Sprite();
         this.§+!?§ = param4;
         this.§2!§(param1,param4);
      }
      
      public function get §9@§() : Boolean
      {
         return this.§8R§;
      }
      
      public function get §]U§() : Sprite
      {
         return this.§0!=§;
      }
      
      public function get §7%§() : Sprite
      {
         return this.§!s§;
      }
      
      public function get § !T§() : Sprite
      {
         return this.§?N§;
      }
      
      protected function get §!c§() : §>O§
      {
         return this.§<!P§;
      }
      
      public function dispose() : void
      {
         this.§-`§();
         if(this.§!s§)
         {
            this.§!s§.dispose();
            this.§!s§ = null;
         }
         if(this.§?N§)
         {
            this.§?N§.dispose();
            this.§?N§ = null;
         }
         if(this.§0!=§)
         {
            this.§0!=§.dispose();
            this.§0!=§ = null;
         }
      }
      
      public function §,b§() : Boolean
      {
         return this.§^!6§;
      }
      
      public function §[!F§(param1:Boolean) : void
      {
         if(this.§^!6§ == param1)
         {
            return;
         }
         this.§^!6§ = param1;
         if(!param1)
         {
            this.§-`§();
         }
         else
         {
            this.§2!§(this.§'F§.mName,this.§+!?§);
         }
      }
      
      public function §@!M§() : String
      {
         return this.§'F§.§4!G§;
      }
      
      private function §-`§() : void
      {
         while(this.§?N§.numChildren > 0)
         {
            this.§?N§.removeChildAt(0,true);
         }
         while(this.§!s§.numChildren > 0)
         {
            this.§!s§.removeChildAt(0,true);
         }
         while(this.§#x§.length > 0)
         {
            this.§#x§.pop().dispose();
         }
      }
      
      protected function §4!;§(param1:§,E§, param2:String) : void
      {
      }
      
      private function §2!§(param1:String, param2:Number) : void
      {
         var _loc4_:§5!J§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§%O§ = null;
         this.§'F§ = §>!E§.§%!4§(param1);
         if(this.§'F§ == null)
         {
            §-3§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §3A§.§7_§;
            this.§'F§ = §>!E§.§%!4§(param1);
         }
         this.§4!;§(this.§'F§,param1);
         this.§!s§.y = this.§1_§;
         this.§?N§.y = this.§1_§;
         this.§0!=§.y = this.§1_§;
         this.§-Z§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§'F§.§#x§.length)
         {
            _loc4_ = this.§'F§.§#x§[_loc3_];
            if(!§"u§.§,z§ || !_loc4_.§"! §)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§4§(_loc4_,_loc5_,this.§<!P§,param2);
               this.§#x§.push(_loc6_);
               if(_loc6_.§>g§)
               {
                  this.§?N§.addChild(_loc5_);
               }
               else
               {
                  this.§!s§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§&O§)
            {
               this.§@!'§(parseInt(_loc4_.§&O§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §4§(param1:§5!J§, param2:Sprite, param3:§>O§, param4:Number) : §%O§
      {
         return new §%O§(param1,param2,param3,param4);
      }
      
      private function §-Z§() : void
      {
         var _loc1_:§]o§ = null;
         if(this.§'F§.§]!X§)
         {
            this.§@!'§(this.§'F§.§]!X§);
         }
         if(this.§'F§.§,s§)
         {
            _loc1_ = this.§%#§(uint(this.§'F§.§,s§));
            _loc1_.y = 0;
            this.§0!=§.addChild(_loc1_);
         }
      }
      
      protected function §%#§(param1:uint) : §]o§
      {
         return new §]o§(4096,4096,param1);
      }
      
      protected function §@!'§(param1:int) : void
      {
         if(§"u§.§-2§)
         {
            §"u§.§-2§.color = param1;
         }
      }
      
      public function §0M§(param1:String) : void
      {
         this.§-`§();
         §-3§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§2!§(param1,this.§+!?§);
      }
      
      public function §2!;§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§%O§ = null;
         if(param1 == this.§8R§)
         {
            return;
         }
         this.§8R§ = param1;
         for each(_loc3_ in this.§#x§)
         {
            _loc3_.§2!;§(param1);
         }
      }
      
      public function §1T§() : void
      {
         if(§return§.§!!T§("CHANNEL_AMBIENT") == null || !§return§.§!!T§("CHANNEL_AMBIENT").§7`§())
         {
            §return§.§2!S§(this.§'F§.§+!0§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §;f§() : void
      {
         §return§.§null§("CHANNEL_AMBIENT");
      }
      
      public function §[!S§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§!s§.numChildren)
         {
            _loc2_ = this.§!s§.getChildAt(param1);
         }
         else if(param1 - this.§!s§.numChildren < this.§?N§.numChildren)
         {
            _loc2_ = this.§?N§.getChildAt(param1 - this.§!s§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §^!E§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§=z§ = param1;
         this.§,!%§ = param2;
         if(this.§#x§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§#x§.length)
            {
               this.§#x§[_loc3_].setSideScroll(this.§=z§,this.§,!%§);
               _loc3_++;
            }
         }
         if(this.§0!=§ != null)
         {
            this.§0!=§.scaleX = this.§0!=§.scaleY = 1 / §9![§.§+g§;
            this.§0!=§.x = -§9![§.§1`§ * (1 / §9![§.§+g§);
            this.§0!=§.y = this.§1_§ - this.§,!%§;
         }
      }
      
      public function §^a§() : String
      {
         return this.§'F§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
