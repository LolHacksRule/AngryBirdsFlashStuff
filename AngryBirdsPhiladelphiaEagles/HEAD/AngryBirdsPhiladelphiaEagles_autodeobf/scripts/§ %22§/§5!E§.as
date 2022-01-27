package § "§
{
   import §'D§.§3h§;
   import §+y§.§#h§;
   import §+y§.§3V§;
   import §,!O§.§?9§;
   import §,!O§.§@y§;
   import §,!O§.§[!3§;
   import §<!N§.DisplayObject;
   import §<!N§.Sprite;
   import §<!N§.§^3§;
   import §?!;§.§;!,§;
   import §@V§.§`!5§;
   import §^'§.§ !C§;
   import §^h§.§2l§;
   
   public class §5!E§
   {
      
      public static const §9t§:Boolean = true;
       
      
      private var §1$§:§ !C§;
      
      protected var §`!P§:§[!3§;
      
      protected var §#!C§:Vector.<§=R§>;
      
      private var §;T§:Sprite;
      
      private var §4l§:Sprite;
      
      private var §2!§:Sprite;
      
      private var §%=§:Number;
      
      private var § 0§:Number;
      
      private var §7C§:Number;
      
      private var §,I§:Boolean = true;
      
      private var §"!9§:Boolean = true;
      
      private var §7F§:§#h§;
      
      private var §^!@§:Number;
      
      public function §5!E§(param1:String, param2:Number, param3:§ !C§, param4:Number)
      {
         this.§#!C§ = new Vector.<§=R§>();
         super();
         this.§1$§ = param3;
         this.§ 0§ = 0;
         this.§7C§ = 0;
         this.§%=§ = param2;
         this.§;T§ = new Sprite();
         this.§4l§ = new Sprite();
         this.§2!§ = new Sprite();
         this.§^!@§ = param4;
         this.§-3§(param1,param4);
      }
      
      public function get §<!0§() : Boolean
      {
         return this.§,I§;
      }
      
      public function get §7!'§() : Sprite
      {
         return this.§2!§;
      }
      
      public function get §9!6§() : Sprite
      {
         return this.§;T§;
      }
      
      public function get §#n§() : Sprite
      {
         return this.§4l§;
      }
      
      protected function get textureManager() : § !C§
      {
         return this.§1$§;
      }
      
      public function dispose() : void
      {
         this.§0+§();
         if(this.§;T§)
         {
            this.§;T§.dispose();
            this.§;T§ = null;
         }
         if(this.§4l§)
         {
            this.§4l§.dispose();
            this.§4l§ = null;
         }
         if(this.§2!§)
         {
            this.§2!§.dispose();
            this.§2!§ = null;
         }
      }
      
      public function §&W§() : Boolean
      {
         return this.§"!9§;
      }
      
      public function §'!+§(param1:Boolean) : void
      {
         if(this.§"!9§ == param1)
         {
            return;
         }
         this.§"!9§ = param1;
         if(!param1)
         {
            this.§0+§();
         }
         else
         {
            this.§-3§(this.§`!P§.mName,this.§^!@§);
         }
      }
      
      public function §+M§() : String
      {
         return this.§`!P§.§?!5§;
      }
      
      private function §0+§() : void
      {
         while(this.§4l§.numChildren > 0)
         {
            this.§4l§.removeChildAt(0,true);
         }
         while(this.§;T§.numChildren > 0)
         {
            this.§;T§.removeChildAt(0,true);
         }
         while(this.§#!C§.length > 0)
         {
            this.§#!C§.pop().dispose();
         }
      }
      
      protected function §?!O§(param1:§[!3§, param2:String) : void
      {
      }
      
      private function §-3§(param1:String, param2:Number) : void
      {
         var _loc4_:§@y§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§=R§ = null;
         this.§`!P§ = §?9§.§9!N§(param1);
         if(this.§`!P§ == null)
         {
            §`!5§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §;!,§.§,&§;
            this.§`!P§ = §?9§.§9!N§(param1);
         }
         this.§?!O§(this.§`!P§,param1);
         this.§;T§.y = this.§%=§;
         this.§4l§.y = this.§%=§;
         this.§2!§.y = this.§%=§;
         this.§>l§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§`!P§.§#!C§.length)
         {
            _loc4_ = this.§`!P§.§#!C§[_loc3_];
            if(!§2l§.§,X§ || !_loc4_.§7s§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§=!O§(_loc4_,_loc5_,this.§1$§,param2);
               this.§#!C§.push(_loc6_);
               if(_loc6_.§`o§)
               {
                  this.§4l§.addChild(_loc5_);
               }
               else
               {
                  this.§;T§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§,!#§)
            {
               this.§'=§(parseInt(_loc4_.§,!#§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §=!O§(param1:§@y§, param2:Sprite, param3:§ !C§, param4:Number) : §=R§
      {
         return new §=R§(param1,param2,param3,param4);
      }
      
      private function §>l§() : void
      {
         var _loc1_:§^3§ = null;
         if(this.§`!P§.§+!7§)
         {
            this.§'=§(this.§`!P§.§+!7§);
         }
         if(this.§`!P§.§ for§)
         {
            _loc1_ = this.§;!M§(uint(this.§`!P§.§ for§));
            _loc1_.y = 0;
            this.§2!§.addChild(_loc1_);
         }
      }
      
      protected function §;!M§(param1:uint) : §^3§
      {
         return new §^3§(4096,4096,param1);
      }
      
      protected function §'=§(param1:int) : void
      {
         if(§2l§.§7K§)
         {
            §2l§.§7K§.color = param1;
         }
      }
      
      public function §7!3§(param1:String) : void
      {
         this.§0+§();
         §`!5§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§-3§(param1,this.§^!@§);
      }
      
      public function §#U§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§=R§ = null;
         if(param1 == this.§,I§)
         {
            return;
         }
         this.§,I§ = param1;
         for each(_loc3_ in this.§#!C§)
         {
            _loc3_.§#U§(param1);
         }
      }
      
      public function §#!0§() : void
      {
         if(§3V§.§6q§("CHANNEL_AMBIENT") == null || !§3V§.§6q§("CHANNEL_AMBIENT").§6-§())
         {
            §3V§.playSound(this.§`!P§.§"e§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §37§() : void
      {
         §3V§.§5!A§("CHANNEL_AMBIENT");
      }
      
      public function §'<§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§;T§.numChildren)
         {
            _loc2_ = this.§;T§.getChildAt(param1);
         }
         else if(param1 - this.§;T§.numChildren < this.§4l§.numChildren)
         {
            _loc2_ = this.§4l§.getChildAt(param1 - this.§;T§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §%!H§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§ 0§ = param1;
         this.§7C§ = param2;
         if(this.§#!C§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§#!C§.length)
            {
               this.§#!C§[_loc3_].setSideScroll(this.§ 0§,this.§7C§);
               _loc3_++;
            }
         }
         if(this.§2!§ != null)
         {
            this.§2!§.scaleX = this.§2!§.scaleY = 1 / §3h§.levelScale;
            this.§2!§.x = -§3h§.§?!=§ * (1 / §3h§.levelScale);
            this.§2!§.y = this.§%=§ - this.§7C§;
         }
      }
      
      public function §%U§() : String
      {
         return this.§`!P§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
