package §'q§
{
   import §#!H§.§7V§;
   import §#K§.§ K§;
   import §#K§.§,3§;
   import §-!_§.§ v§;
   import §-!_§.§+!A§;
   import §-!_§.§?!!§;
   import §1!A§.§@!O§;
   import §1!A§.DisplayObject;
   import §1!A§.Sprite;
   import §8K§.§>g§;
   import §=q§.§?X§;
   import §^!&§.§;C§;
   import §`M§.§'C§;
   
   public class §,v§
   {
      
      public static const §#9§:Boolean = true;
       
      
      private var §2!_§:§>g§;
      
      private var §]#§:§+!A§;
      
      private var §!O§:Vector.<§<l§>;
      
      private var §use§:Sprite;
      
      private var §6!B§:Sprite;
      
      private var §!W§:Sprite;
      
      private var §7g§:Number;
      
      private var §>4§:Number;
      
      private var §%!-§:Number;
      
      private var §3t§:Boolean = true;
      
      private var §6!L§:Boolean = true;
      
      private var static:§ K§;
      
      private var §%A§:Number;
      
      public function §,v§(param1:String, param2:Number, param3:§>g§, param4:Number)
      {
         this.§!O§ = new Vector.<§<l§>();
         super();
         this.§2!_§ = param3;
         this.§>4§ = 0;
         this.§%!-§ = 0;
         this.§7g§ = param2;
         this.§use§ = new Sprite();
         this.§6!B§ = new Sprite();
         this.§!W§ = new Sprite();
         this.§%A§ = param4;
         this.§7!^§(param1,param4);
      }
      
      public function get §%U§() : Boolean
      {
         return this.§3t§;
      }
      
      public function get §#I§() : Sprite
      {
         return this.§!W§;
      }
      
      public function get §%G§() : Sprite
      {
         return this.§use§;
      }
      
      public function get §-[§() : Sprite
      {
         return this.§6!B§;
      }
      
      protected function get §^!"§() : §>g§
      {
         return this.§2!_§;
      }
      
      public function dispose() : void
      {
         this.§]D§();
         if(this.§use§)
         {
            this.§use§.dispose();
            this.§use§ = null;
         }
         if(this.§6!B§)
         {
            this.§6!B§.dispose();
            this.§6!B§ = null;
         }
         if(this.§!W§)
         {
            this.§!W§.dispose();
            this.§!W§ = null;
         }
      }
      
      public function §"!3§() : Boolean
      {
         return this.§6!L§;
      }
      
      public function §8!-§(param1:Boolean) : void
      {
         if(this.§6!L§ == param1)
         {
            return;
         }
         this.§6!L§ = param1;
         if(!param1)
         {
            this.§]D§();
         }
         else
         {
            this.§7!^§(this.§]#§.mName,this.§%A§);
         }
      }
      
      public function §]!J§() : String
      {
         return this.§]#§.§=!+§;
      }
      
      private function §]D§() : void
      {
         while(this.§6!B§.numChildren > 0)
         {
            this.§6!B§.removeChildAt(0,true);
         }
         while(this.§use§.numChildren > 0)
         {
            this.§use§.removeChildAt(0,true);
         }
         while(this.§!O§.length > 0)
         {
            this.§!O§.pop().dispose();
         }
      }
      
      private function §7!^§(param1:String, param2:Number) : void
      {
         var _loc4_:§ v§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§<l§ = null;
         this.§]#§ = §?!!§.§2!U§(param1);
         if(this.§]#§ == null)
         {
            §;C§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §?X§.§'%§;
            this.§]#§ = §?!!§.§2!U§(param1);
         }
         this.§use§.y = this.§7g§;
         this.§6!B§.y = this.§7g§;
         this.§!W§.y = this.§7g§;
         this.§5J§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§]#§.§!O§.length)
         {
            _loc4_ = this.§]#§.§!O§[_loc3_];
            if(!§'C§.§+w§ || !_loc4_.§[Q§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §<l§(_loc4_,_loc5_,this.§2!_§,param2);
               this.§!O§.push(_loc6_);
               if(_loc6_.§@i§)
               {
                  this.§6!B§.addChild(_loc5_);
               }
               else
               {
                  this.§use§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§1x§)
            {
               this.§"=§(parseInt(_loc4_.§1x§,16));
            }
            _loc3_++;
         }
      }
      
      private function §5J§() : void
      {
         var _loc1_:§@!O§ = null;
         if(this.§]#§.§<u§)
         {
            this.§"=§(this.§]#§.§<u§);
         }
         if(this.§]#§.§+L§)
         {
            _loc1_ = this.§?U§(uint(this.§]#§.§+L§));
            _loc1_.y = 0;
            this.§!W§.addChild(_loc1_);
         }
      }
      
      protected function §?U§(param1:uint) : §@!O§
      {
         return new §@!O§(4096,4096,param1);
      }
      
      private function §"=§(param1:int) : void
      {
         if(§'C§.§3b§)
         {
            §'C§.§3b§.color = param1;
         }
      }
      
      public function §9!<§(param1:String) : void
      {
         this.§]D§();
         §;C§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§7!^§(param1,this.§%A§);
      }
      
      public function §0!&§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§<l§ = null;
         if(param1 == this.§3t§)
         {
            return;
         }
         this.§3t§ = param1;
         for each(_loc3_ in this.§!O§)
         {
            _loc3_.§0!&§(param1);
         }
      }
      
      public function §#!I§() : void
      {
         if(§,3§.§'!4§("CHANNEL_AMBIENT") == null || !§,3§.§'!4§("CHANNEL_AMBIENT").§6F§())
         {
            §,3§.§7!=§(this.§]#§.§31§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §2!S§() : void
      {
         §,3§.§&[§("CHANNEL_AMBIENT");
      }
      
      public function §8p§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§use§.numChildren)
         {
            _loc2_ = this.§use§.getChildAt(param1);
         }
         else if(param1 - this.§use§.numChildren < this.§6!B§.numChildren)
         {
            _loc2_ = this.§6!B§.getChildAt(param1 - this.§use§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §4!B§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§>4§ = param1;
         this.§%!-§ = param2;
         if(this.§!O§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§!O§.length)
            {
               this.§!O§[_loc3_].setSideScroll(this.§>4§,this.§%!-§);
               _loc3_++;
            }
         }
         if(this.§!W§ != null)
         {
            this.§!W§.scaleX = this.§!W§.scaleY = 1 / §7V§.§+"§;
            this.§!W§.x = -§7V§.§?!0§ * (1 / §7V§.§+"§);
            this.§!W§.y = this.§7g§ - this.§%!-§;
         }
      }
      
      public function §[v§() : String
      {
         return this.§]#§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
