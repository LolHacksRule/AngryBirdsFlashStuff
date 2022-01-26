package §<[§
{
   import §!4§.§=!Z§;
   import §0C§.§;!Q§;
   import §;C§.§"!D§;
   import §;C§.§5!O§;
   import §@!§.§?! §;
   import §[!Q§.§ true§;
   import §]!J§.§@!P§;
   import §]!J§.§[Z§;
   import §]!J§.§`!^§;
   import §]_§.§!F§;
   import §null §.§>U§;
   import §null §.DisplayObject;
   import §null §.Sprite;
   
   public class §+A§
   {
      
      public static const §%!A§:Boolean = true;
       
      
      private var §`r§:§?! §;
      
      private var §6!!§:§[Z§;
      
      private var §%o§:Vector.<§ !%§>;
      
      private var §@o§:Sprite;
      
      private var §`^§:Sprite;
      
      private var §&V§:Sprite;
      
      private var §8Q§:Number;
      
      private var §7@§:Number;
      
      private var §]!,§:Number;
      
      private var §3!§:Boolean = true;
      
      private var §],§:Boolean = true;
      
      private var §`W§:§"!D§;
      
      private var § !<§:Number;
      
      public function §+A§(param1:String, param2:Number, param3:§?! §, param4:Number)
      {
         this.§%o§ = new Vector.<§ !%§>();
         super();
         this.§`r§ = param3;
         this.§7@§ = 0;
         this.§]!,§ = 0;
         this.§8Q§ = param2;
         this.§@o§ = new Sprite();
         this.§`^§ = new Sprite();
         this.§&V§ = new Sprite();
         this.§ !<§ = param4;
         this.§[=§(param1,param4);
      }
      
      public function get §6$§() : Boolean
      {
         return this.§3!§;
      }
      
      public function get §<!D§() : Sprite
      {
         return this.§&V§;
      }
      
      public function get §#B§() : Sprite
      {
         return this.§@o§;
      }
      
      public function get §&!G§() : Sprite
      {
         return this.§`^§;
      }
      
      protected function get §>A§() : §?! §
      {
         return this.§`r§;
      }
      
      public function dispose() : void
      {
         this.§0!§();
         if(this.§@o§)
         {
            this.§@o§.dispose();
            this.§@o§ = null;
         }
         if(this.§`^§)
         {
            this.§`^§.dispose();
            this.§`^§ = null;
         }
         if(this.§&V§)
         {
            this.§&V§.dispose();
            this.§&V§ = null;
         }
      }
      
      public function §@x§() : Boolean
      {
         return this.§],§;
      }
      
      public function §8M§(param1:Boolean) : void
      {
         if(this.§],§ == param1)
         {
            return;
         }
         this.§],§ = param1;
         if(!param1)
         {
            this.§0!§();
         }
         else
         {
            this.§[=§(this.§6!!§.mName,this.§ !<§);
         }
      }
      
      public function §9P§() : String
      {
         return this.§6!!§.§^!6§;
      }
      
      private function §0!§() : void
      {
         while(this.§`^§.numChildren > 0)
         {
            this.§`^§.removeChildAt(0,true);
         }
         while(this.§@o§.numChildren > 0)
         {
            this.§@o§.removeChildAt(0,true);
         }
         while(this.§%o§.length > 0)
         {
            this.§%o§.pop().dispose();
         }
      }
      
      private function §[=§(param1:String, param2:Number) : void
      {
         var _loc4_:§@!P§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§ !%§ = null;
         this.§6!!§ = §`!^§.§ !?§(param1);
         if(this.§6!!§ == null)
         {
            §=!Z§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §;!Q§.§+S§;
            this.§6!!§ = §`!^§.§ !?§(param1);
         }
         this.§@o§.y = this.§8Q§;
         this.§`^§.y = this.§8Q§;
         this.§&V§.y = this.§8Q§;
         this.§;!J§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§6!!§.§%o§.length)
         {
            _loc4_ = this.§6!!§.§%o§[_loc3_];
            if(!§!F§.§3h§ || !_loc4_.§ !U§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new § !%§(_loc4_,_loc5_,this.§`r§,param2);
               this.§%o§.push(_loc6_);
               if(_loc6_.§&-§)
               {
                  this.§`^§.addChild(_loc5_);
               }
               else
               {
                  this.§@o§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§]B§)
            {
               this.§"a§(parseInt(_loc4_.§]B§,16));
            }
            _loc3_++;
         }
      }
      
      private function §;!J§() : void
      {
         var _loc1_:§>U§ = null;
         if(this.§6!!§.§@!<§)
         {
            this.§"a§(this.§6!!§.§@!<§);
         }
         if(this.§6!!§.§;g§)
         {
            _loc1_ = this.§]`§(uint(this.§6!!§.§;g§));
            _loc1_.y = 0;
            this.§&V§.addChild(_loc1_);
         }
      }
      
      protected function §]`§(param1:uint) : §>U§
      {
         return new §>U§(4096,4096,param1);
      }
      
      private function §"a§(param1:int) : void
      {
         if(§!F§.§[M§)
         {
            §!F§.§[M§.color = param1;
         }
      }
      
      public function §7b§(param1:String) : void
      {
         this.§0!§();
         §=!Z§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§[=§(param1,this.§ !<§);
      }
      
      public function §2!_§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§ !%§ = null;
         if(param1 == this.§3!§)
         {
            return;
         }
         this.§3!§ = param1;
         for each(_loc3_ in this.§%o§)
         {
            _loc3_.§2!_§(param1);
         }
      }
      
      public function §9!H§() : void
      {
         if(§5!O§.§?4§("CHANNEL_AMBIENT") == null || !§5!O§.§?4§("CHANNEL_AMBIENT").§6!3§())
         {
            §5!O§.§-q§(this.§6!!§.§6!M§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §@!S§() : void
      {
         §5!O§.§<!1§("CHANNEL_AMBIENT");
      }
      
      public function §'Q§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§@o§.numChildren)
         {
            _loc2_ = this.§@o§.getChildAt(param1);
         }
         else if(param1 - this.§@o§.numChildren < this.§`^§.numChildren)
         {
            _loc2_ = this.§`^§.getChildAt(param1 - this.§@o§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §@^§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§7@§ = param1;
         this.§]!,§ = param2;
         if(this.§%o§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§%o§.length)
            {
               this.§%o§[_loc3_].setSideScroll(this.§7@§,this.§]!,§);
               _loc3_++;
            }
         }
         if(this.§&V§ != null)
         {
            this.§&V§.scaleX = this.§&V§.scaleY = 1 / § true§.§4Z§;
            this.§&V§.x = -§ true§.§5!$§ * (1 / § true§.§4Z§);
            this.§&V§.y = this.§8Q§ - this.§]!,§;
         }
      }
      
      public function §;w§() : String
      {
         return this.§6!!§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
