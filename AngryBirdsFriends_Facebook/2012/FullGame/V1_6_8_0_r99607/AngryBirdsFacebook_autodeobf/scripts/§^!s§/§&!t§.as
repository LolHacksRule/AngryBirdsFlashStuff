package §^!s§
{
   import §+"6§.§5!H§;
   import §0!?§.§'!$§;
   import §1k§.§%4§;
   import §1k§.§'"9§;
   import §?"<§.§<"!§;
   import §[!z§.§!"=§;
   import §]&§.DisplayObject;
   import §]&§.Sprite;
   import §]&§.§[T§;
   import §^6§.§0!w§;
   import §`!$§.§,!$§;
   import §`!$§.§0$§;
   import §`!$§.§?W§;
   
   public class §&!t§
   {
      
      public static const §%""§:Boolean = true;
       
      
      private var §9s§:§<"!§;
      
      protected var §-A§:§0$§;
      
      protected var §`5§:Vector.<§=! §>;
      
      private var §@"'§:Sprite;
      
      private var §4'§:Sprite;
      
      private var §@5§:Sprite;
      
      private var §8i§:Number;
      
      private var §#p§:Number;
      
      private var §6!r§:Number;
      
      private var §#"8§:Boolean = true;
      
      private var §--§:Boolean = true;
      
      private var §4!G§:§'"9§;
      
      private var §5l§:Number;
      
      public function §&!t§(param1:String, param2:Number, param3:§<"!§, param4:Number)
      {
         this.§`5§ = new Vector.<§=! §>();
         super();
         this.§9s§ = param3;
         this.§#p§ = 0;
         this.§6!r§ = 0;
         this.§8i§ = param2;
         this.§@"'§ = new Sprite();
         this.§4'§ = new Sprite();
         this.§@5§ = new Sprite();
         this.§5l§ = param4;
         this.§;!§(param1,param4);
      }
      
      public function get §7q§() : Boolean
      {
         return this.§#"8§;
      }
      
      public function get §2p§() : Sprite
      {
         return this.§@5§;
      }
      
      public function get §0p§() : Sprite
      {
         return this.§@"'§;
      }
      
      public function get §3M§() : Sprite
      {
         return this.§4'§;
      }
      
      protected function get textureManager() : §<"!§
      {
         return this.§9s§;
      }
      
      public function dispose() : void
      {
         this.§&3§();
         if(this.§@"'§)
         {
            this.§@"'§.dispose();
            this.§@"'§ = null;
         }
         if(this.§4'§)
         {
            this.§4'§.dispose();
            this.§4'§ = null;
         }
         if(this.§@5§)
         {
            this.§@5§.dispose();
            this.§@5§ = null;
         }
      }
      
      public function §0O§() : Boolean
      {
         return this.§--§;
      }
      
      public function §5"!§(param1:Boolean) : void
      {
         if(this.§--§ == param1)
         {
            return;
         }
         this.§--§ = param1;
         if(!param1)
         {
            this.§&3§();
         }
         else
         {
            this.§;!§(this.§-A§.mName,this.§5l§);
         }
      }
      
      public function §,"8§() : String
      {
         return this.§-A§.§,!m§;
      }
      
      private function §&3§() : void
      {
         while(this.§4'§.numChildren > 0)
         {
            this.§4'§.removeChildAt(0,true);
         }
         while(this.§@"'§.numChildren > 0)
         {
            this.§@"'§.removeChildAt(0,true);
         }
         while(this.§`5§.length > 0)
         {
            this.§`5§.pop().dispose();
         }
      }
      
      protected function §!!"§(param1:§0$§, param2:String) : void
      {
      }
      
      private function §;!§(param1:String, param2:Number) : void
      {
         var _loc4_:§,!$§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§=! § = null;
         this.§-A§ = §?W§.§=&§(param1);
         if(this.§-A§ == null)
         {
            §'!$§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §!"=§.§7!s§;
            this.§-A§ = §?W§.§=&§(param1);
         }
         this.§!!"§(this.§-A§,param1);
         this.§@"'§.y = this.§8i§;
         this.§4'§.y = this.§8i§;
         this.§@5§.y = this.§8i§;
         this.§[!e§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§-A§.§`5§.length)
         {
            _loc4_ = this.§-A§.§`5§[_loc3_];
            if(!§5!H§.§#!l§ || !_loc4_.§4P§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§]![§(_loc4_,_loc5_,this.§9s§,param2);
               this.§`5§.push(_loc6_);
               if(_loc6_.§&@§)
               {
                  this.§4'§.addChild(_loc5_);
               }
               else
               {
                  this.§@"'§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§ <§)
            {
               this.§2B§(parseInt(_loc4_.§ <§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §]![§(param1:§,!$§, param2:Sprite, param3:§<"!§, param4:Number) : §=! §
      {
         return new §=! §(param1,param2,param3,param4);
      }
      
      private function §[!e§() : void
      {
         var _loc1_:§[T§ = null;
         if(this.§-A§.§ !J§)
         {
            this.§2B§(this.§-A§.§ !J§);
         }
         if(this.§-A§.§ !y§)
         {
            _loc1_ = this.createGroundQuad(uint(this.§-A§.§ !y§));
            _loc1_.y = 0;
            this.§@5§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §[T§
      {
         return new §[T§(4096,4096,param1);
      }
      
      protected function §2B§(param1:int) : void
      {
         if(§5!H§.§%n§)
         {
            §5!H§.§%n§.color = param1;
         }
      }
      
      public function §`"'§(param1:String) : void
      {
         this.§&3§();
         §'!$§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§;!§(param1,this.§5l§);
      }
      
      public function §!`§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§=! § = null;
         if(param1 == this.§#"8§)
         {
            return;
         }
         this.§#"8§ = param1;
         for each(_loc3_ in this.§`5§)
         {
            _loc3_.§!`§(param1);
         }
      }
      
      public function §&"B§() : void
      {
         if(§%4§.§+!y§("CHANNEL_AMBIENT") == null || !§%4§.§+!y§("CHANNEL_AMBIENT").§^^§())
         {
            §%4§.§>f§(this.§-A§.§?!Y§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §+!3§() : void
      {
         §%4§.§&"@§("CHANNEL_AMBIENT");
      }
      
      public function §%w§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§@"'§.numChildren)
         {
            _loc2_ = this.§@"'§.getChildAt(param1);
         }
         else if(param1 - this.§@"'§.numChildren < this.§4'§.numChildren)
         {
            _loc2_ = this.§4'§.getChildAt(param1 - this.§@"'§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §6!>§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§#p§ = param1;
         this.§6!r§ = param2;
         if(this.§`5§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§`5§.length)
            {
               this.§`5§[_loc3_].setSideScroll(this.§#p§,this.§6!r§);
               _loc3_++;
            }
         }
         if(this.§@5§ != null)
         {
            this.§@5§.scaleX = this.§@5§.scaleY = 1 / §0!w§.§7![§;
            this.§@5§.x = -§0!w§.§4!b§ * (1 / §0!w§.§7![§);
            this.§@5§.y = this.§8i§ - this.§6!r§;
         }
      }
      
      public function §;!Y§() : String
      {
         return this.§-A§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
