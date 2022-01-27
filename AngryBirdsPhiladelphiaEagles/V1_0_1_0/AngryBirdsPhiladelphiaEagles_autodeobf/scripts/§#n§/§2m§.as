package §#n§
{
   import § !N§.§`v§;
   import §-!5§.§5s§;
   import §3H§.§!q§;
   import §3H§.DisplayObject;
   import §3H§.Sprite;
   import §5=§.§8G§;
   import §5J§.§>$§;
   import §[N§.§9k§;
   import §[N§.§>f§;
   import §^Q§.§<a§;
   import §`!&§.§-a§;
   import §`!&§.§<!N§;
   import §`!&§.§]! §;
   
   public class §2m§
   {
      
      public static const §"R§:Boolean = true;
       
      
      private var §<!-§:§`v§;
      
      protected var §3!A§:§<!N§;
      
      protected var §^t§:Vector.<§+h§>;
      
      private var §;!H§:Sprite;
      
      private var §@+§:Sprite;
      
      private var §,S§:Sprite;
      
      private var §]n§:Number;
      
      private var §['§:Number;
      
      private var §9!+§:Number;
      
      private var §7o§:Boolean = true;
      
      private var §%!@§:Boolean = true;
      
      private var §9I§:§>f§;
      
      private var §=6§:Number;
      
      public function §2m§(param1:String, param2:Number, param3:§`v§, param4:Number)
      {
         this.§^t§ = new Vector.<§+h§>();
         super();
         this.§<!-§ = param3;
         this.§['§ = 0;
         this.§9!+§ = 0;
         this.§]n§ = param2;
         this.§;!H§ = new Sprite();
         this.§@+§ = new Sprite();
         this.§,S§ = new Sprite();
         this.§=6§ = param4;
         this.§&!!§(param1,param4);
      }
      
      public function get §!X§() : Boolean
      {
         return this.§7o§;
      }
      
      public function get §#!G§() : Sprite
      {
         return this.§,S§;
      }
      
      public function get §7h§() : Sprite
      {
         return this.§;!H§;
      }
      
      public function get §[p§() : Sprite
      {
         return this.§@+§;
      }
      
      protected function get textureManager() : §`v§
      {
         return this.§<!-§;
      }
      
      public function dispose() : void
      {
         this.§"X§();
         if(this.§;!H§)
         {
            this.§;!H§.dispose();
            this.§;!H§ = null;
         }
         if(this.§@+§)
         {
            this.§@+§.dispose();
            this.§@+§ = null;
         }
         if(this.§,S§)
         {
            this.§,S§.dispose();
            this.§,S§ = null;
         }
      }
      
      public function each() : Boolean
      {
         return this.§%!@§;
      }
      
      public function §`!>§(param1:Boolean) : void
      {
         if(this.§%!@§ == param1)
         {
            return;
         }
         this.§%!@§ = param1;
         if(!param1)
         {
            this.§"X§();
         }
         else
         {
            this.§&!!§(this.§3!A§.mName,this.§=6§);
         }
      }
      
      public function §0f§() : String
      {
         return this.§3!A§.§;!?§;
      }
      
      private function §"X§() : void
      {
         while(this.§@+§.numChildren > 0)
         {
            this.§@+§.removeChildAt(0,true);
         }
         while(this.§;!H§.numChildren > 0)
         {
            this.§;!H§.removeChildAt(0,true);
         }
         while(this.§^t§.length > 0)
         {
            this.§^t§.pop().dispose();
         }
      }
      
      protected function §2!-§(param1:§<!N§, param2:String) : void
      {
      }
      
      private function §&!!§(param1:String, param2:Number) : void
      {
         var _loc4_:§-a§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§+h§ = null;
         this.§3!A§ = §]! §.§@D§(param1);
         if(this.§3!A§ == null)
         {
            §5s§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §8G§.§<+§;
            this.§3!A§ = §]! §.§@D§(param1);
         }
         this.§2!-§(this.§3!A§,param1);
         this.§;!H§.y = this.§]n§;
         this.§@+§.y = this.§]n§;
         this.§,S§.y = this.§]n§;
         this.§7!3§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§3!A§.§^t§.length)
         {
            _loc4_ = this.§3!A§.§^t§[_loc3_];
            if(!§>$§.§<8§ || !_loc4_.§%!7§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§%D§(_loc4_,_loc5_,this.§<!-§,param2);
               this.§^t§.push(_loc6_);
               if(_loc6_.§"!O§)
               {
                  this.§@+§.addChild(_loc5_);
               }
               else
               {
                  this.§;!H§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§7y§)
            {
               this.§=q§(parseInt(_loc4_.§7y§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §%D§(param1:§-a§, param2:Sprite, param3:§`v§, param4:Number) : §+h§
      {
         return new §+h§(param1,param2,param3,param4);
      }
      
      private function §7!3§() : void
      {
         var _loc1_:§!q§ = null;
         if(this.§3!A§.§6!'§)
         {
            this.§=q§(this.§3!A§.§6!'§);
         }
         if(this.§3!A§.§<p§)
         {
            _loc1_ = this.§=n§(uint(this.§3!A§.§<p§));
            _loc1_.y = 0;
            this.§,S§.addChild(_loc1_);
         }
      }
      
      protected function §=n§(param1:uint) : §!q§
      {
         return new §!q§(4096,4096,param1);
      }
      
      protected function §=q§(param1:int) : void
      {
         if(§>$§.§-U§)
         {
            §>$§.§-U§.color = param1;
         }
      }
      
      public function §-u§(param1:String) : void
      {
         this.§"X§();
         §5s§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§&!!§(param1,this.§=6§);
      }
      
      public function §38§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§+h§ = null;
         if(param1 == this.§7o§)
         {
            return;
         }
         this.§7o§ = param1;
         for each(_loc3_ in this.§^t§)
         {
            _loc3_.§38§(param1);
         }
      }
      
      public function §`%§() : void
      {
         if(§9k§.§"t§("CHANNEL_AMBIENT") == null || !§9k§.§"t§("CHANNEL_AMBIENT").§]!6§())
         {
            §9k§.playSound(this.§3!A§.§'N§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §5!"§() : void
      {
         §9k§.§3n§("CHANNEL_AMBIENT");
      }
      
      public function §><§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§;!H§.numChildren)
         {
            _loc2_ = this.§;!H§.getChildAt(param1);
         }
         else if(param1 - this.§;!H§.numChildren < this.§@+§.numChildren)
         {
            _loc2_ = this.§@+§.getChildAt(param1 - this.§;!H§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §!0§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§['§ = param1;
         this.§9!+§ = param2;
         if(this.§^t§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§^t§.length)
            {
               this.§^t§[_loc3_].setSideScroll(this.§['§,this.§9!+§);
               _loc3_++;
            }
         }
         if(this.§,S§ != null)
         {
            this.§,S§.scaleX = this.§,S§.scaleY = 1 / §<a§.levelScale;
            this.§,S§.x = -§<a§.§-!K§ * (1 / §<a§.levelScale);
            this.§,S§.y = this.§]n§ - this.§9!+§;
         }
      }
      
      public function §=r§() : String
      {
         return this.§3!A§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
