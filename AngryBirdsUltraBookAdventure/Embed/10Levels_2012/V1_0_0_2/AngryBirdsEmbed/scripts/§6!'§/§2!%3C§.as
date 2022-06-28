package §6!'§
{
   import §#!;§.§;T§;
   import §'k§.§ >§;
   import §+!"§.§5!<§;
   import §5!%§.§%p§;
   import §5!%§.§4D§;
   import §5!%§.§`Z§;
   import §6J§.§&!;§;
   import §9W§.§3g§;
   import §9W§.DisplayObject;
   import §9W§.Sprite;
   import §@!!§.§=_§;
   import §@D§.§6I§;
   import §@D§.§`!%§;
   
   public class §2!<§
   {
      
      public static const §?V§:Boolean = true;
       
      
      private var §`!8§:§ >§;
      
      private var §6!7§:§`Z§;
      
      private var §,q§:Vector.<§6#§>;
      
      private var §3#§:Sprite;
      
      private var § A§:Sprite;
      
      private var §;8§:Sprite;
      
      private var §`a§:Number;
      
      private var § null§:Number;
      
      private var §>g§:Number;
      
      private var § if§:Boolean = true;
      
      private var §!_§:Boolean = true;
      
      private var §@0§:§`!%§;
      
      private var §6!,§:Number;
      
      public function §2!<§(param1:String, param2:Number, param3:§ >§, param4:Number)
      {
         this.§,q§ = new Vector.<§6#§>();
         super();
         this.§`!8§ = param3;
         this.§ null§ = 0;
         this.§>g§ = 0;
         this.§`a§ = param2;
         this.§3#§ = new Sprite();
         this.§ A§ = new Sprite();
         this.§;8§ = new Sprite();
         this.§6!,§ = param4;
         this.§`!3§(param1,param4);
      }
      
      public function get §2§() : Boolean
      {
         return this.§ if§;
      }
      
      public function get §?1§() : Sprite
      {
         return this.§;8§;
      }
      
      public function get §=d§() : Sprite
      {
         return this.§3#§;
      }
      
      public function get §4$§() : Sprite
      {
         return this.§ A§;
      }
      
      protected function get textureManager() : § >§
      {
         return this.§`!8§;
      }
      
      public function dispose() : void
      {
         this.§&!2§();
         if(this.§3#§)
         {
            this.§3#§.dispose();
            this.§3#§ = null;
         }
         if(this.§ A§)
         {
            this.§ A§.dispose();
            this.§ A§ = null;
         }
         if(this.§;8§)
         {
            this.§;8§.dispose();
            this.§;8§ = null;
         }
      }
      
      public function §-f§() : Boolean
      {
         return this.§!_§;
      }
      
      public function §`!G§(param1:Boolean) : void
      {
         if(this.§!_§ == param1)
         {
            return;
         }
         this.§!_§ = param1;
         if(!param1)
         {
            this.§&!2§();
         }
         else
         {
            this.§`!3§(this.§6!7§.mName,this.§6!,§);
         }
      }
      
      public function §8!#§() : String
      {
         return this.§6!7§.§2q§;
      }
      
      private function §&!2§() : void
      {
         while(this.§ A§.numChildren > 0)
         {
            this.§ A§.removeChildAt(0,true);
         }
         while(this.§3#§.numChildren > 0)
         {
            this.§3#§.removeChildAt(0,true);
         }
         while(this.§,q§.length > 0)
         {
            this.§,q§.pop().dispose();
         }
      }
      
      private function §`!3§(param1:String, param2:Number) : void
      {
         var _loc4_:§4D§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§6#§ = null;
         this.§6!7§ = §%p§.§9F§(param1);
         if(this.§6!7§ == null)
         {
            §5!<§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §&!;§.§7D§;
            this.§6!7§ = §%p§.§9F§(param1);
         }
         this.§3#§.y = this.§`a§;
         this.§ A§.y = this.§`a§;
         this.§;8§.y = this.§`a§;
         this.§@!8§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§6!7§.§,q§.length)
         {
            _loc4_ = this.§6!7§.§,q§[_loc3_];
            if(!§;T§.§>!,§ || !_loc4_.§`4§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §6#§(_loc4_,_loc5_,this.§`!8§,param2);
               this.§,q§.push(_loc6_);
               if(_loc6_.§;W§)
               {
                  this.§ A§.addChild(_loc5_);
               }
               else
               {
                  this.§3#§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§ t§)
            {
               this.§5a§(parseInt(_loc4_.§ t§,16));
            }
            _loc3_++;
         }
      }
      
      private function §@!8§() : void
      {
         var _loc1_:§3g§ = null;
         if(this.§6!7§.§6P§)
         {
            this.§5a§(this.§6!7§.§6P§);
         }
         if(this.§6!7§.§7!§)
         {
            _loc1_ = this.§=!A§(uint(this.§6!7§.§7!§));
            _loc1_.y = 0;
            this.§;8§.addChild(_loc1_);
         }
      }
      
      protected function §=!A§(param1:uint) : §3g§
      {
         return new §3g§(4096,4096,param1);
      }
      
      private function §5a§(param1:int) : void
      {
         if(§;T§.§,H§)
         {
            §;T§.§,H§.color = param1;
         }
      }
      
      public function §?v§(param1:String) : void
      {
         this.§&!2§();
         §5!<§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§`!3§(param1,this.§6!,§);
      }
      
      public function §^v§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§6#§ = null;
         if(param1 == this.§ if§)
         {
            return;
         }
         this.§ if§ = param1;
         for each(_loc3_ in this.§,q§)
         {
            _loc3_.§^v§(param1);
         }
      }
      
      public function §6!!§() : void
      {
         if(§6I§.§3t§("CHANNEL_AMBIENT") == null || !§6I§.§3t§("CHANNEL_AMBIENT").§^[§())
         {
            §6I§.§ ;§(this.§6!7§.§1q§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §]I§() : void
      {
         §6I§.§9w§("CHANNEL_AMBIENT");
      }
      
      public function §=4§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§3#§.numChildren)
         {
            _loc2_ = this.§3#§.getChildAt(param1);
         }
         else if(param1 - this.§3#§.numChildren < this.§ A§.numChildren)
         {
            _loc2_ = this.§ A§.getChildAt(param1 - this.§3#§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §-b§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§ null§ = param1;
         this.§>g§ = param2;
         if(this.§,q§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§,q§.length)
            {
               this.§,q§[_loc3_].setSideScroll(this.§ null§,this.§>g§);
               _loc3_++;
            }
         }
         if(this.§;8§ != null)
         {
            this.§;8§.scaleX = this.§;8§.scaleY = 1 / §=_§.§&!?§;
            this.§;8§.x = -§=_§.§[!#§ * (1 / §=_§.§&!?§);
            this.§;8§.y = this.§`a§ - this.§>g§;
         }
      }
      
      public function §]m§() : String
      {
         return this.§6!7§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
