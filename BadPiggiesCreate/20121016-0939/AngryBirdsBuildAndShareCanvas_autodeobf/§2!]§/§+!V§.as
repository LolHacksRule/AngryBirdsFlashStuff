package §2!]§
{
   import §"v§.§9"§;
   import §&"5§.§7!P§;
   import §-!n§.§5!U§;
   import §-!n§.§7v§;
   import §6p§.§?%§;
   import §9=§.§'" §;
   import §9=§.§0!5§;
   import §9=§.§=!k§;
   import §=!#§.§`"=§;
   import §=!M§.§9!P§;
   import §default§.DisplayObject;
   import §default§.Sprite;
   import §default§.§^$§;
   
   public class §+!V§
   {
      
      public static const §6`§:Boolean = true;
       
      
      private var §2"!§:§7!P§;
      
      protected var §8!v§:§=!k§;
      
      protected var §^!a§:Vector.<§9!M§>;
      
      private var § !'§:Sprite;
      
      private var §7!8§:Sprite;
      
      private var §,+§:Sprite;
      
      private var §&D§:Number;
      
      private var §2!N§:Number;
      
      private var §+"?§:Number;
      
      private var §<K§:Boolean = true;
      
      private var §&Z§:Boolean = true;
      
      private var §;y§:§7v§;
      
      private var §?!"§:Number;
      
      public function §+!V§(param1:String, param2:Number, param3:§7!P§, param4:Number)
      {
         this.§^!a§ = new Vector.<§9!M§>();
         super();
         this.§2"!§ = param3;
         this.§2!N§ = 0;
         this.§+"?§ = 0;
         this.§&D§ = param2;
         this.§ !'§ = new Sprite();
         this.§7!8§ = new Sprite();
         this.§,+§ = new Sprite();
         this.§?!"§ = param4;
         this.§+!l§(param1,param4);
      }
      
      public function get §]",§() : Boolean
      {
         return this.§<K§;
      }
      
      public function get §@!%§() : Sprite
      {
         return this.§,+§;
      }
      
      public function get §&!Z§() : Sprite
      {
         return this.§ !'§;
      }
      
      public function get §1V§() : Sprite
      {
         return this.§7!8§;
      }
      
      protected function get §7!J§() : §7!P§
      {
         return this.§2"!§;
      }
      
      public function dispose() : void
      {
         this.§-!l§();
         if(this.§ !'§)
         {
            this.§ !'§.dispose();
            this.§ !'§ = null;
         }
         if(this.§7!8§)
         {
            this.§7!8§.dispose();
            this.§7!8§ = null;
         }
         if(this.§,+§)
         {
            this.§,+§.dispose();
            this.§,+§ = null;
         }
      }
      
      public function §4P§() : Boolean
      {
         return this.§&Z§;
      }
      
      public function §;p§(param1:Boolean) : void
      {
         if(this.§&Z§ == param1)
         {
            return;
         }
         this.§&Z§ = param1;
         if(!param1)
         {
            this.§-!l§();
         }
         else
         {
            this.§+!l§(this.§8!v§.mName,this.§?!"§);
         }
      }
      
      public function §!z§() : String
      {
         return this.§8!v§.§"V§;
      }
      
      private function §-!l§() : void
      {
         while(this.§7!8§.numChildren > 0)
         {
            this.§7!8§.removeChildAt(0,true);
         }
         while(this.§ !'§.numChildren > 0)
         {
            this.§ !'§.removeChildAt(0,true);
         }
         while(this.§^!a§.length > 0)
         {
            this.§^!a§.pop().dispose();
         }
      }
      
      protected function §<k§(param1:§=!k§, param2:String) : void
      {
      }
      
      private function §+!l§(param1:String, param2:Number) : void
      {
         var _loc4_:§'" § = null;
         var _loc5_:Sprite = null;
         var _loc6_:§9!M§ = null;
         this.§8!v§ = §0!5§.§;l§(param1);
         if(this.§8!v§ == null)
         {
            §9!P§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §9"§.§4!§;
            this.§8!v§ = §0!5§.§;l§(param1);
         }
         this.§<k§(this.§8!v§,param1);
         this.§ !'§.y = this.§&D§;
         this.§7!8§.y = this.§&D§;
         this.§,+§.y = this.§&D§;
         this.§+!c§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§8!v§.§^!a§.length)
         {
            _loc4_ = this.§8!v§.§^!a§[_loc3_];
            if(!§?%§.§ !J§ || !_loc4_.§6o§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§5!<§(_loc4_,_loc5_,this.§2"!§,param2);
               this.§^!a§.push(_loc6_);
               if(_loc6_.§3%§)
               {
                  this.§7!8§.addChild(_loc5_);
               }
               else
               {
                  this.§ !'§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§]!1§)
            {
               this.§4"0§(parseInt(_loc4_.§]!1§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §5!<§(param1:§'" §, param2:Sprite, param3:§7!P§, param4:Number) : §9!M§
      {
         return new §9!M§(param1,param2,param3,param4);
      }
      
      private function §+!c§() : void
      {
         var _loc1_:§^$§ = null;
         if(this.§8!v§.§=!4§)
         {
            this.§4"0§(this.§8!v§.§=!4§);
         }
         if(this.§8!v§.§1-§)
         {
            _loc1_ = this.§6""§(uint(this.§8!v§.§1-§));
            _loc1_.y = 0;
            this.§,+§.addChild(_loc1_);
         }
      }
      
      protected function §6""§(param1:uint) : §^$§
      {
         return new §^$§(4096,4096,param1);
      }
      
      protected function §4"0§(param1:int) : void
      {
         if(§?%§.§%b§)
         {
            §?%§.§%b§.color = param1;
         }
      }
      
      public function resetLevelBackground(param1:String) : void
      {
         this.§-!l§();
         §9!P§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§+!l§(param1,this.§?!"§);
      }
      
      public function §]D§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§9!M§ = null;
         if(param1 == this.§<K§)
         {
            return;
         }
         this.§<K§ = param1;
         for each(_loc3_ in this.§^!a§)
         {
            _loc3_.§]D§(param1);
         }
      }
      
      public function §^!g§() : void
      {
         if(§5!U§.§`!;§("CHANNEL_AMBIENT") == null || !§5!U§.§`!;§("CHANNEL_AMBIENT").§if §())
         {
            §5!U§.playSound(this.§8!v§.§=5§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §#!'§() : void
      {
         §5!U§.§+!7§("CHANNEL_AMBIENT");
      }
      
      public function §;s§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§ !'§.numChildren)
         {
            _loc2_ = this.§ !'§.getChildAt(param1);
         }
         else if(param1 - this.§ !'§.numChildren < this.§7!8§.numChildren)
         {
            _loc2_ = this.§7!8§.getChildAt(param1 - this.§ !'§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §%]§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§2!N§ = param1;
         this.§+"?§ = param2;
         if(this.§^!a§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§^!a§.length)
            {
               this.§^!a§[_loc3_].setSideScroll(this.§2!N§,this.§+"?§);
               _loc3_++;
            }
         }
         if(this.§,+§ != null)
         {
            this.§,+§.scaleX = this.§,+§.scaleY = 1 / §`"=§.§;!0§;
            this.§,+§.x = -§`"=§.§9!e§ * (1 / §`"=§.§;!0§);
            this.§,+§.y = this.§&D§ - this.§+"?§;
         }
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§8!v§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
